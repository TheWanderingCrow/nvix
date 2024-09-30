{ pkgs, lib, config, ...}: {
    config.plugins.treesitter = {
        enable = true;
    };
}
