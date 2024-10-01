{ pkgs, lib, config, ...}: {
    config.plugins.neorg = {
        enable = true;
        modules = {
            "core.defaults" = {
                __empty = null;
            };
            "core.concealer" = {
                __empty = null;
            };
            "core.dirman" = {
                config = {
                    workspaces = {
                        notes = "~/Notes/Notes";
                        work = "~/Notes/Work";
                        auric = "~/Notes/Auric";
                        cpr = "~/Notes/CPR";
                    };
                    default_workspace = "notes";
                };
            };
        };
    };
}
