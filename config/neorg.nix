{ pkgs, lib, config, ...}: {
    config.plugins.neorg = {
        enable = true;
        modules = {
            "core.defaults" = {
                __empty = null;
            };
        };
    };
}
