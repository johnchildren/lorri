# Generated by carnix 0.10.0: carnix generate-nix --src ../..
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO // rec {
# lorri-0.1.0

    crates.lorri."0.1.0" = deps: { features?(features_.lorri."0.1.0" deps {}) }: buildRustCrate {
      crateName = "lorri";
      version = "0.1.0";
      authors = [ "Graham Christensen <graham.christensen@target.com>" ];
      src = exclude [ ".git" "target" ] ./.;
      dependencies = mapFeatures features ([
        (cratesIO.crates."atomicwrites"."${deps."lorri"."0.1.0"."atomicwrites"}" deps)
        (cratesIO.crates."bincode"."${deps."lorri"."0.1.0"."bincode"}" deps)
        (cratesIO.crates."directories"."${deps."lorri"."0.1.0"."directories"}" deps)
        (cratesIO.crates."env_logger"."${deps."lorri"."0.1.0"."env_logger"}" deps)
        (cratesIO.crates."futures"."${deps."lorri"."0.1.0"."futures"}" deps)
        (cratesIO.crates."lazy_static"."${deps."lorri"."0.1.0"."lazy_static"}" deps)
        (cratesIO.crates."log"."${deps."lorri"."0.1.0"."log"}" deps)
        (cratesIO.crates."md5"."${deps."lorri"."0.1.0"."md5"}" deps)
        (cratesIO.crates."nix"."${deps."lorri"."0.1.0"."nix"}" deps)
        (cratesIO.crates."notify"."${deps."lorri"."0.1.0"."notify"}" deps)
        (cratesIO.crates."proptest"."${deps."lorri"."0.1.0"."proptest"}" deps)
        (cratesIO.crates."regex"."${deps."lorri"."0.1.0"."regex"}" deps)
        (cratesIO.crates."serde"."${deps."lorri"."0.1.0"."serde"}" deps)
        (cratesIO.crates."serde_derive"."${deps."lorri"."0.1.0"."serde_derive"}" deps)
        (cratesIO.crates."serde_json"."${deps."lorri"."0.1.0"."serde_json"}" deps)
        (cratesIO.crates."structopt"."${deps."lorri"."0.1.0"."structopt"}" deps)
        (cratesIO.crates."tempfile"."${deps."lorri"."0.1.0"."tempfile"}" deps)
        (cratesIO.crates."vec1"."${deps."lorri"."0.1.0"."vec1"}" deps)
      ]);
    };
    features_.lorri."0.1.0" = deps: f: updateFeatures f (rec {
      atomicwrites."${deps.lorri."0.1.0".atomicwrites}".default = true;
      bincode."${deps.lorri."0.1.0".bincode}".default = true;
      directories."${deps.lorri."0.1.0".directories}".default = true;
      env_logger."${deps.lorri."0.1.0".env_logger}".default = true;
      futures."${deps.lorri."0.1.0".futures}".default = true;
      lazy_static."${deps.lorri."0.1.0".lazy_static}".default = true;
      log."${deps.lorri."0.1.0".log}".default = true;
      lorri."0.1.0".default = (f.lorri."0.1.0".default or true);
      md5."${deps.lorri."0.1.0".md5}".default = true;
      nix."${deps.lorri."0.1.0".nix}".default = true;
      notify."${deps.lorri."0.1.0".notify}".default = true;
      proptest."${deps.lorri."0.1.0".proptest}".default = true;
      regex."${deps.lorri."0.1.0".regex}".default = true;
      serde."${deps.lorri."0.1.0".serde}".default = true;
      serde_derive."${deps.lorri."0.1.0".serde_derive}".default = true;
      serde_json."${deps.lorri."0.1.0".serde_json}".default = true;
      structopt."${deps.lorri."0.1.0".structopt}".default = true;
      tempfile."${deps.lorri."0.1.0".tempfile}".default = true;
      vec1."${deps.lorri."0.1.0".vec1}".default = true;
    }) [
      (cratesIO.features_.atomicwrites."${deps."lorri"."0.1.0"."atomicwrites"}" deps)
      (cratesIO.features_.bincode."${deps."lorri"."0.1.0"."bincode"}" deps)
      (cratesIO.features_.directories."${deps."lorri"."0.1.0"."directories"}" deps)
      (cratesIO.features_.env_logger."${deps."lorri"."0.1.0"."env_logger"}" deps)
      (cratesIO.features_.futures."${deps."lorri"."0.1.0"."futures"}" deps)
      (cratesIO.features_.lazy_static."${deps."lorri"."0.1.0"."lazy_static"}" deps)
      (cratesIO.features_.log."${deps."lorri"."0.1.0"."log"}" deps)
      (cratesIO.features_.md5."${deps."lorri"."0.1.0"."md5"}" deps)
      (cratesIO.features_.nix."${deps."lorri"."0.1.0"."nix"}" deps)
      (cratesIO.features_.notify."${deps."lorri"."0.1.0"."notify"}" deps)
      (cratesIO.features_.proptest."${deps."lorri"."0.1.0"."proptest"}" deps)
      (cratesIO.features_.regex."${deps."lorri"."0.1.0"."regex"}" deps)
      (cratesIO.features_.serde."${deps."lorri"."0.1.0"."serde"}" deps)
      (cratesIO.features_.serde_derive."${deps."lorri"."0.1.0"."serde_derive"}" deps)
      (cratesIO.features_.serde_json."${deps."lorri"."0.1.0"."serde_json"}" deps)
      (cratesIO.features_.structopt."${deps."lorri"."0.1.0"."structopt"}" deps)
      (cratesIO.features_.tempfile."${deps."lorri"."0.1.0"."tempfile"}" deps)
      (cratesIO.features_.vec1."${deps."lorri"."0.1.0"."vec1"}" deps)
    ];


# end

  };

  lorri = crates.crates.lorri."0.1.0" deps;
  __all = [ (lorri {}) ];
  deps.aho_corasick."0.6.10" = {
    memchr = "2.2.0";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.6";
  };
  deps.atomicwrites."0.2.3" = {
    tempdir = "0.3.7";
    nix = "0.14.0";
    winapi = "0.3.6";
  };
  deps.atty."0.2.11" = {
    termion = "1.5.1";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.autocfg."0.1.2" = {};
  deps.bincode."1.1.3" = {
    byteorder = "1.3.1";
    serde = "1.0.88";
    autocfg = "0.1.2";
  };
  deps.bit_set."0.5.0" = {
    bit_vec = "0.5.0";
  };
  deps.bit_vec."0.5.0" = {};
  deps.bitflags."1.0.4" = {};
  deps.byteorder."1.3.1" = {};
  deps.cc."1.0.37" = {};
  deps.cfg_if."0.1.6" = {};
  deps.clap."2.32.0" = {
    atty = "0.2.11";
    bitflags = "1.0.4";
    strsim = "0.7.0";
    textwrap = "0.10.0";
    unicode_width = "0.1.5";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.0.4";
  };
  deps.directories."1.0.2" = {
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.env_logger."0.6.0" = {
    atty = "0.2.11";
    humantime = "1.2.0";
    log = "0.4.6";
    regex = "1.1.0";
    termcolor = "1.0.4";
  };
  deps.filetime."0.2.7" = {
    cfg_if = "0.1.6";
    redox_syscall = "0.1.51";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.fnv."1.0.6" = {};
  deps.fsevent."0.4.0" = {
    bitflags = "1.0.4";
    fsevent_sys = "2.0.1";
  };
  deps.fsevent_sys."2.0.1" = {
    libc = "0.2.55";
  };
  deps.fuchsia_cprng."0.1.1" = {};
  deps.fuchsia_zircon."0.3.3" = {
    bitflags = "1.0.4";
    fuchsia_zircon_sys = "0.3.3";
  };
  deps.fuchsia_zircon_sys."0.3.3" = {};
  deps.futures."0.1.25" = {};
  deps.heck."0.3.1" = {
    unicode_segmentation = "1.2.1";
  };
  deps.humantime."1.2.0" = {
    quick_error = "1.2.2";
  };
  deps.inotify."0.6.1" = {
    bitflags = "1.0.4";
    inotify_sys = "0.1.3";
    libc = "0.2.55";
  };
  deps.inotify_sys."0.1.3" = {
    libc = "0.2.55";
  };
  deps.iovec."0.1.2" = {
    libc = "0.2.55";
    winapi = "0.2.8";
  };
  deps.itoa."0.4.3" = {};
  deps.kernel32_sys."0.2.2" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
  deps.lazy_static."1.2.0" = {
    spin = "0.4.10";
  };
  deps.lazycell."1.2.1" = {};
  deps.libc."0.2.55" = {};
  deps.log."0.4.6" = {
    cfg_if = "0.1.6";
  };
  deps.lorri."0.1.0" = {
    atomicwrites = "0.2.3";
    bincode = "1.1.3";
    directories = "1.0.2";
    env_logger = "0.6.0";
    futures = "0.1.25";
    lazy_static = "1.2.0";
    log = "0.4.6";
    md5 = "0.6.1";
    nix = "0.14.0";
    notify = "4.0.13";
    proptest = "0.9.1";
    regex = "1.1.0";
    serde = "1.0.88";
    serde_derive = "1.0.88";
    serde_json = "1.0.38";
    structopt = "0.2.14";
    tempfile = "3.0.7";
    vec1 = "1.1.0";
  };
  deps.md5."0.6.1" = {};
  deps.memchr."2.2.0" = {};
  deps.mio."0.6.16" = {
    iovec = "0.1.2";
    lazycell = "1.2.1";
    log = "0.4.6";
    net2 = "0.2.33";
    slab = "0.4.2";
    fuchsia_zircon = "0.3.3";
    fuchsia_zircon_sys = "0.3.3";
    libc = "0.2.55";
    kernel32_sys = "0.2.2";
    miow = "0.2.1";
    winapi = "0.2.8";
  };
  deps.mio_extras."2.0.5" = {
    lazycell = "1.2.1";
    log = "0.4.6";
    mio = "0.6.16";
    slab = "0.4.2";
  };
  deps.miow."0.2.1" = {
    kernel32_sys = "0.2.2";
    net2 = "0.2.33";
    winapi = "0.2.8";
    ws2_32_sys = "0.2.1";
  };
  deps.net2."0.2.33" = {
    cfg_if = "0.1.6";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.nix."0.14.0" = {
    bitflags = "1.0.4";
    cfg_if = "0.1.6";
    libc = "0.2.55";
    void = "1.0.2";
  };
  deps.notify."4.0.13" = {
    bitflags = "1.0.4";
    filetime = "0.2.7";
    libc = "0.2.55";
    walkdir = "2.2.7";
    inotify = "0.6.1";
    mio = "0.6.16";
    mio_extras = "2.0.5";
    fsevent = "0.4.0";
    fsevent_sys = "2.0.1";
    kernel32_sys = "0.2.2";
    winapi = "0.3.6";
  };
  deps.num_traits."0.2.6" = {};
  deps.proc_macro2."0.4.27" = {
    unicode_xid = "0.1.0";
  };
  deps.proptest."0.9.1" = {
    bit_set = "0.5.0";
    bitflags = "1.0.4";
    byteorder = "1.3.1";
    lazy_static = "1.2.0";
    num_traits = "0.2.6";
    quick_error = "1.2.2";
    rand = "0.6.5";
    rand_chacha = "0.1.1";
    rand_xorshift = "0.1.1";
    regex_syntax = "0.6.5";
    rusty_fork = "0.2.1";
    tempfile = "3.0.7";
  };
  deps.quick_error."1.2.2" = {};
  deps.quote."0.6.11" = {
    proc_macro2 = "0.4.27";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.rand."0.6.5" = {
    rand_chacha = "0.1.1";
    rand_core = "0.4.0";
    rand_hc = "0.1.0";
    rand_isaac = "0.1.1";
    rand_jitter = "0.1.3";
    rand_os = "0.1.2";
    rand_pcg = "0.1.1";
    rand_xorshift = "0.1.1";
    autocfg = "0.1.2";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.rand_chacha."0.1.1" = {
    rand_core = "0.3.1";
    autocfg = "0.1.2";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.0";
  };
  deps.rand_core."0.4.0" = {};
  deps.rand_hc."0.1.0" = {
    rand_core = "0.3.1";
  };
  deps.rand_isaac."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rand_jitter."0.1.3" = {
    rand_core = "0.4.0";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.rand_os."0.1.2" = {
    rand_core = "0.4.0";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.rand_pcg."0.1.1" = {
    rand_core = "0.3.1";
    rustc_version = "0.2.3";
  };
  deps.rand_xorshift."0.1.1" = {
    rand_core = "0.3.1";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.51" = {};
  deps.redox_termios."0.1.1" = {
    redox_syscall = "0.1.51";
  };
  deps.regex."1.1.0" = {
    aho_corasick = "0.6.10";
    memchr = "2.2.0";
    regex_syntax = "0.6.5";
    thread_local = "0.3.6";
    utf8_ranges = "1.0.2";
  };
  deps.regex_syntax."0.6.5" = {
    ucd_util = "0.1.3";
  };
  deps.remove_dir_all."0.5.1" = {
    winapi = "0.3.6";
  };
  deps.rustc_version."0.2.3" = {
    semver = "0.9.0";
  };
  deps.rusty_fork."0.2.1" = {
    fnv = "1.0.6";
    quick_error = "1.2.2";
    tempfile = "3.0.7";
    wait_timeout = "0.1.5";
  };
  deps.ryu."0.2.7" = {};
  deps.same_file."1.0.4" = {
    winapi_util = "0.1.2";
  };
  deps.semver."0.9.0" = {
    semver_parser = "0.7.0";
  };
  deps.semver_parser."0.7.0" = {};
  deps.serde."1.0.88" = {};
  deps.serde_derive."1.0.88" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    syn = "0.15.26";
  };
  deps.serde_json."1.0.38" = {
    itoa = "0.4.3";
    ryu = "0.2.7";
    serde = "1.0.88";
  };
  deps.slab."0.4.2" = {};
  deps.spin."0.4.10" = {};
  deps.strsim."0.7.0" = {};
  deps.structopt."0.2.14" = {
    clap = "2.32.0";
    structopt_derive = "0.2.14";
  };
  deps.structopt_derive."0.2.14" = {
    heck = "0.3.1";
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    syn = "0.15.26";
  };
  deps.syn."0.15.26" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    unicode_xid = "0.1.0";
  };
  deps.tempdir."0.3.7" = {
    rand = "0.4.6";
    remove_dir_all = "0.5.1";
  };
  deps.tempfile."3.0.7" = {
    cfg_if = "0.1.6";
    rand = "0.6.5";
    remove_dir_all = "0.5.1";
    redox_syscall = "0.1.51";
    libc = "0.2.55";
    winapi = "0.3.6";
  };
  deps.termcolor."1.0.4" = {
    wincolor = "1.0.1";
  };
  deps.termion."1.5.1" = {
    libc = "0.2.55";
    redox_syscall = "0.1.51";
    redox_termios = "0.1.1";
  };
  deps.textwrap."0.10.0" = {
    unicode_width = "0.1.5";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.2.0";
  };
  deps.ucd_util."0.1.3" = {};
  deps.unicode_segmentation."1.2.1" = {};
  deps.unicode_width."0.1.5" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.utf8_ranges."1.0.2" = {};
  deps.vec1."1.1.0" = {};
  deps.vec_map."0.8.1" = {};
  deps.void."1.0.2" = {};
  deps.wait_timeout."0.1.5" = {
    libc = "0.2.55";
  };
  deps.walkdir."2.2.7" = {
    same_file = "1.0.4";
    winapi = "0.3.6";
    winapi_util = "0.1.2";
  };
  deps.winapi."0.2.8" = {};
  deps.winapi."0.3.6" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_build."0.1.1" = {};
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_util."0.1.2" = {
    winapi = "0.3.6";
  };
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.wincolor."1.0.1" = {
    winapi = "0.3.6";
    winapi_util = "0.1.2";
  };
  deps.ws2_32_sys."0.2.1" = {
    winapi = "0.2.8";
    winapi_build = "0.1.1";
  };
}
