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
    mkdir -p $out/share/bash-completions


    cp comango $out/bin
    cp bash-completions $out/share/bash-completions/completions/comango
  '';
}
