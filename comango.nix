{ stdenv, fetchurl, runCommand }:

stdenv.mkDerivation {
  name = "comango";

  src = ./.;
  isExecutable = true;
  dontBuild= true;
  installPhase = ''
    mkdir $out
    mkdir $out/bin
    mkdir -p $out/share/bash-completions/completions


    cp comango $out/bin
    cp bash-completions $out/share/bash-completion/completions/comango
  '';
}
