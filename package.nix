{stdenv, ...}:
stdenv.mkDerivation {
  name = "neovimrc";
  src = ./.;
  installPhase = ''
    mkdir -p $out;
    cp -r \
      README.md \
      LICENSE* \
      CHANGELOG.md \
      CODE_OF_CONDUCT.md \
      AUTHORS \
      init.lua \
      lua \
      $out
  '';
}
