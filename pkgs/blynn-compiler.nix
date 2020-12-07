{ stdenv, lib, fetchFromGitHub, help2man, texinfo, mescc-tools, mes-m2, m2-planet }:

stdenv.mkDerivation rec {
  name = "blynn-compiler";
  src = fetchFromGitHub {
    owner = "oriansj";
    repo = name;
    rev = "59df6010f4fe5987201f9417fd1346317c6c78bc";
    sha256 = "07vjk29nykhycxsvy9gf1d350qfwb2qhhxb0vm9v61cg806qgmc5";
  };

  nativeBuildInputs = [ help2man texinfo mescc-tools m2-planet mes-m2 ];

  postPatch = ''
    patchShebangs go.sh
  '';

  buildPhase = ''
    ./go.sh
  '';

  installPhase = ''
    mkdir -p $out/share
    cp bin/vm $out/share
  '';
}
