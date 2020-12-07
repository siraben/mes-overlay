{ stdenv, fetchFromGitHub, gcc, mescc-tools }:

stdenv.mkDerivation rec {
  pname = "mes-m2";
  version = "unstable-2020-11-08";

  src = fetchFromGitHub {
    owner = "oriansj";
    repo = pname;
    rev = "6105916f9a58a879fc71f84c3df4fa622696a3ee";
    sha256 = "0h3wivrvwz8czilpii155xxkhm15hfhawmiih248ggkanpjmkcvm";
  };

  nativeBuildInputs = [ mescc-tools gcc ];
  makeFlags = [ "PREFIX=${placeholder "out"}" "CC=gcc" ];
}
