{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    act
    nodePackages.bash-language-server
    shellcheck
    shfmt
  ];
}
