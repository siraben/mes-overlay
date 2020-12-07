{ stdenv, fetchgit, mescc-tools, guile }:

stdenv.mkDerivation {
  name = "mes";
  src = fetchgit {
    url = "https://gitlab.com/janneke/mes.git";
    rev = "a0560aff676b0fe8d7d50b365a75ed158347eb3a";
    sha256 = "00iw3qkdpzgsxlpkh882phdgarqsfvnvyr4yvl0rkk3r3kmmnr1f";
  };
  configureFlags = [ "--with-courage" "--with-system-libc" ];
  buildPhase = ''
    ./simple.sh
  '';
  nativeBuildInputs = [ mescc-tools guile ];
  patches = [ ./stdio.patch ];
  

  hardeningDisable = [ "all" ]; 
}
