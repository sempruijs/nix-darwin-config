{
  enable = true;
  enableCompletion = true;
  enableSyntaxHighlighting = true;    
  shellAliases = {
    lg = "lazygit";
    hxt = "CARGO_TARGET_DIR=target/rust-analyzer nix run github:pinelang/helix-tree-explorer/tree_explore"; # Helix PR with tree explorer
    nd = "nix develop --command zsh";
  };
}