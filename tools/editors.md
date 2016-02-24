
vim browser
  https://github.com/fanglingsu/vimb
  http://superuser.com/questions/452938/why-can-vim-open-large-files-faster-than-some-other-text-editors
  https://github.com/b4winckler/vim
  https://github.com/b4winckler/vim/blob/master/src/fileio.c
  https://github.com/b4winckler/vim/blob/master/src/memfile.c
  large file support
    https://github.com/neovim/neovim/issues/614
    http://stackoverflow.com/questions/45972/mmap-vs-reading-blocks
    http://stackoverflow.com/questions/258091/when-should-i-use-mmap-for-file-access
    > One area where I found mmap() to not be an advantage was when reading small files (under 16K). The overhead of page faulting to read the whole file was very high compared with just doing a single read() system call. This is because the kernel can sometimes satisify a read entirely in your time slice, meaning your code doesn't switch away. With a page fault, it seemed more likely that another program would be scheduled, making the file operation have a higher latency.

source browser example
  https://github.com/mafintosh/playback
