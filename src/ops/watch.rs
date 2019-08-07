//! Run a BuildLoop for `shell.nix`, watching for input file changes.
//! Can be used together with `direnv`.
use crate::build_loop::{BuildError, BuildLoop};
use crate::cli::WatchOptions;
use crate::ops::{ok, ExitError, OpResult};
use crate::project::Project;
use std::io::Write;
use std::sync::mpsc::channel;
use std::thread;

/// See the documentation for lorri::cli::Command::Shell for more
/// details.
pub fn main(project: Project, opts: WatchOptions) -> OpResult {
    let (tx, rx) = channel();

    if opts.once {
        let mut build_loop = BuildLoop::new(&project);
        match build_loop.once() {
            Ok(_) => ok(),
            Err(BuildError::Unrecoverable(err)) => Err(ExitError::err(100, format!("{:?}", err))),
            Err(BuildError::Recoverable(exit_failure)) => {
                Err(ExitError::errmsg(format!("{:#?}", exit_failure)))
            }
        }
    } else {
        let build_thread = {
            thread::spawn(move || {
                let mut build_loop = BuildLoop::new(&project);
                build_loop.forever(tx);
            })
        };

        for msg in rx {
            println!("{:#?}", msg);
            let _ = std::io::stdout().flush();
        }

        build_thread.join().unwrap();

        ok()
    }
}
