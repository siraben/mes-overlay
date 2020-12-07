{ stdenv, fetchFromGitHub, gcc, git }:

stdenv.mkDerivation rec {
  pname = "m2-planet";
  version = "unstable-2020-12-05";

  src = fetchFromGitHub {
    owner = "oriansj";
    repo = pname;
    rev = "196c66d19ecefdfcb42391447a9916067e77045a";
    sha256 = "1x9jqwnqshgw70qy1zal852ai38hmlb346jb0mak2fq6j9wblpw8";
  };

  nativeBuildInputs = [ gcc git ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "CC=gcc" ];
}
