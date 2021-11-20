{ stdenv, fetchurl, runCommand }:
/* runCommand "comango" {} ''

  mkdir $out
  mkdir $out/bin

  cp ./comango $out/bin
'' */

stdenv.mkDerivation {
  name = "comango";

  src = ./.;
  isExecutable = true;
  dontBuild= true;
  installPhase = ''
    mkdir $out
    mkdir $out/bin

    cp comango $out/bin
  '';
}
