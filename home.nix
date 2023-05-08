{ config, pkgs, lib, inputs, ...}: 
{
    home.stateVersion = "22.05";

    home.packages = with pkgs; [
        nushell
        git 
        git-lfs
        gh
        lazygit
        neofetch
        pandoc
        haskellPackages.latex
        librsvg
        python3
        texlive.combined.scheme-full        
        tree
        nodePackages.webpack
        nodePackages.webpack-cli
        ruby
        cocoapods
        slides
        ripgrep

        inputs.nrc.packages.${pkgs.system}.default
        inputs.justhash.packages.${pkgs.system}.default
    ];
    # Hide "last login" message on new terminal.
    home.file.".hushlogin".text = "";
        
    # programs.ssh doesn't work well for darwin.
    home.file.".ssh/config".text = ''
        Host *
            AddKeysToAgent yes
            UseKeychain yes
            IdentityFile ~/.ssh/id_rsa
    '';

    programs.helix = import ./programs/helix.nix inputs.helix.packages.${pkgs.system}.default;
    programs.kitty = import ./programs/kitty.nix pkgs.kitty;
}
