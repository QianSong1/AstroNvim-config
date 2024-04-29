-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

-------------------------------------- shell start ---------------------------------------------
vim.cmd [[
    autocmd BufNewFile *.sh exec ":call SeTitle()"
    func SeTitle()
    if expand("%:e")  == 'sh'
    call setline(1,"#!/bin/bash")
    call setline(2,"#")
    call setline(3,"#******************************************************************************************")
    call setline(4,"#Author:                QianSong")
    call setline(5,"#QQ:                    xxxxxxxxxx")
    call setline(6,"#Date:                  ".strftime("%Y-%m-%d"))
    call setline(7,"#FileName:              ".expand("%"))
    call setline(8,"#URL:                   https://github.com")
    call setline(9,"#Description:           The test script")
    call setline(10,"#Copyright (C):         QianSong ".strftime("%Y")." All rights reserved")
    call setline(11,"#******************************************************************************************")
    call setline(12,"")
    endif
    endfunc
    ]]
-------------------------------------- shell end -----------------------------------------------
