function set_var(args)
    vim.api.nvim_set_var(args.variable, args.value)
end

-- CSV
set_var({
    variable = "csv_autocmd_arrange",
    value = 1
})

-- Minimap
set_var({
    variable = "minimap_highlight_search",
    value = 1
})

set_var({
    variable = "minimap_auto_start_win_enter",
    value = 1
})

-- System copy

set_var({
    variable = "system_copy#copy_command",
    value = "xclip"
})

set_var({
    variable = "paste_copy#copy_command",
    value = "xclip -o"
})


-- Nvim-R
-- Enable folding
set_var({
    variable = "r_syntax_folding",
    value = 1
})

-- Split vertically for help
set_var({
    variable = "R_nvimpager",
    value = "vertical"
})

-- Set help width to 80 characters
set_var({
    variable = "R_help_w",
    value = 80
})

-- Don't autoinsert <- 
set_var({
    variable = "R_assign",
    value = 0
})

-- Use more colors
set_var({
    variable = "Rout_more_colors",
    value = 1
})

set_var({
    variable = "R_esc_term",
    value = 0
})

set_var({
    variable = "R_rconsole_width",
    value = 0
})

set_var({
    variable = "R_hl_term",
    value = 0
})

set_var({
    variable = "R_ls_env_tol",
    value = 1500
})

--set_var(
    --variable = "R_app",
    --value = "radian"
--)
set_var({
    variable = "R_cmd",
    value = "R"
})

set_var({
    variable = "R_path",
    value = '$HOME/micromamba/envs/r/bin'
})


--set_var(
    --variable = "R_args",
    --value = []
--)

--set_var(
    --variable = "R_vsplit",
    --value = 1
--)

--set_var(
    --variable = "R_nvim_wd",
    --value = 1
--)

--set_var(
    --variable = "R_wait",
    --value = 60000
--)

-- Vimtex
-- Use NeoVim remote to allow feedback about errors
set_var({
    variable = "vimtex_compiler_progname",
    value = "nvr"
})

-- Auto fold 
set_var({
    variable = "vimtex_fold_enabled",
    value = 1
})

set_var({
    variable = "vimtex_view_method",
    value = "skim"
})

-- fix me!
--let g:vimtex_compiler_latexmk = {
    --\ 'backend' : 'nvim',
    --\}

set_var({
    variable = "tex_flavor",
    value = "latex"
})
