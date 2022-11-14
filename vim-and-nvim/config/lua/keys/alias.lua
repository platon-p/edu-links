local map = vim.api.nvim_set_keymap

-- nm
function nm(key, cmd)
    map('n', key, cmd, {noremap = true})
end

-- im
function im(key, cmd)
    map('i', key, cmd, {noremap = true})
end

-- vm
function vm(key, cmd)
    map('v', key, cmd, {noremap = true})
end

-- tm
function tm(key, cmd)
    map('t', key, cmd, {noremap = true})
end
