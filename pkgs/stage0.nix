{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "stage0";
  # nativeBuildInputs = [ git ];
  src = fetchFromGitHub {
    owner = "oriansj";
    repo = "stage0";
    rev = "3d47e20cbc1ce120b26a05f3caa4828e867bd698";
    sha256 = "103bwp0szdi38304n7qvrbxbnqd74n47kzy33d51wf7rsgvaiikp";
  };
  makeFlags = [ "PREFIX=${placeholder "out"}" ];
  installPhase = ''
    mkdir -p $out/bin
    cp ./bin/* $out/bin
  '';
}
