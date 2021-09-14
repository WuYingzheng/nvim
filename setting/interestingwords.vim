" if to disable default mapping
" let g:interestingWordsDefaultMappings = 0

" nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
" vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
" nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

" nnoremap <silent> n :call WordNavigation(1)<cr>
" nnoremap <silent> N :call WordNavigation(0)<cr>

" To configure the colors for a GUI, add this to your .vimrc:
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
" And for a terminal:
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']

" Also, if you want to randomise the colors (applied to each new buffer),
let g:interestingWordsRandomiseColors = 0
