{ config, pkgs, lib, inputs, ...}: 
{
    home.stateVersion = "22.05";

    home.packages = with pkgs; [
        git 
        git-lfs
        neofetch
    ];

    # Hide "last login" message on new terminal.
    home.file.".hushlogin".text = "";
        
    # programs.ssh doesn't work well for darwin.
    home.file.".ssh/config".text = ''
        Host *
            AddKeysToAgent yes
            UseKeychain yes
            IdentityFile ~/.ssh/id_ed25519  
    '';

}