" ===== Restore scroll position =========================================== {{{

" Vim centers the view on the cursor when returning to a buffer. I find this
" adds mental overhead, as the buffer isn't immediately recognized.
"
" This script (re)stores the scroll position for all buffers
"
" URL: https://vim.fandom.com/wiki/Avoid_scrolling_when_switch_buffers

function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" NOTE: Don't rewrite this in Lua! It can't be done with global variables unable
"       to store dicts/tables.

" ========================================================================== }}}

" vim: sw=2 ts=2 sts=2 tw=80 ft=vim fmr={{{,}}}

