{ stdenvNoCC, fetchFromGitHub }:

stdenvNoCC.mkDerivation {
  name = "mescc-tools-seed";

  src = fetchFromGitHub {
    owner = "oriansj";
    repo = "mescc-tools-seed";
    rev = "402abf51640457991353e9213538ff98faad4231";
    sha256 = "0larbizmaqarkj77jzy8mzms0mg35z5d2sn91r9ay6fi4mwxfcbf";
  };

  makeFlags = [ "PREFIX=${placeholder "out"}" ];
  installPhase = ''
    mkdir -p $out/bin
    cp ./bin/* $out/bin
  '';
}
