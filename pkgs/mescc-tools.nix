{ stdenv, fetchgit, git, gcc }:

stdenv.mkDerivation {
  pname = "mescc-tools";
  version = "unstable-2020-12-05";

  src = fetchgit {
    url = "https://git.savannah.nongnu.org/git/mescc-tools.git";
    rev = "ee0a38e6adad7e27b79fe308af1a87b96238371f ";
    sha256 = "1mjvp3y0npq2zrg736jd7cs5rizh6vi0n6cmfvnick2yb28q9vy2";
  };

  nativeBuildInputs = [ git gcc ];

  installPhase = ''
    mkdir -p $out/bin
    cp bin/* $out/bin
  '';

  makeFlags = [ "PREFIX=${placeholder "out"}" ];
}
