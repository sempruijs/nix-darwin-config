# nix darwin config

**This repository is now archived. I merged this config into my [nixos-config](https://github.com/sempruijs/nixos-config).**

I use nix with home manager to configure the software that I use on an Apple Silicon mac.
I use [flake-parts](https://github.com/hercules-ci/flake-parts) so maybe it will work on intel based macs as well, but I have not tested that.

to install this configuration, make sure you have installed [nix](https://nixos.org/download.html) on your mac and run the following commands:

```shell
nix-shell -p git
git clone git@github.com:sempruijs/nix-darwin-config.git
cd nix-darwin-config
make darwin
```

I've configured helix and kitty to be lightmode and high contrast, which works well for my eyes, but this config is not accesibble to blind users, becose kittyis not accessible with VoiceOver.
