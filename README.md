# .dotfiles
Up until recently, I didn't care much about my dotfiles. 
My workflow was primarily based on using 
[Oh My Tmux](https://github.com/gpakosz/.tmux) and 
[amix/vimrc basic](https://github.com/amix/vimrc).

I have also started coding in Golang for an internship project which 
has shifted my needs from writing a single file ctf exploit script
to developing a functional tool spanning multiple files and libraries.

Then I came across [spacemac](https://www.spacemacs.org/) 
- which brought me to [spacevim](https://spacevim.org/)
- which brought me to [coc.nvim](https://github.com/neoclide/coc.nvim)
- which brought me to using [lua for neovim configuration][neovim-lua]

Somewhere along the google searches, I remembered using `Ctrl-hjkl` for windows
navigation in vim. I started wondering if I could do the same with tmux.
`C-a` made it easier than `C-b` but was still a pain on my pinky.
Could I do no prefix and just `Ctrl-hjkl`. And yes, turns out I can!
The fancy configurations I was using had so much that I never used and
yet were keeping me from things I would have jumped on to have any day.
At this point, I am deciding to have an intentional smaller set of configs
for things that I want. The online provided configs were a great crutch
to begin. Now that I am more aware of what is possible, I am branching out.

This repo is setup in alignment with [this atlassian blogpost][atlassian-dotfiles].

[neovim-lua]: https://neovim.io/doc/user/lua.html

[atlassian-dotfiles]: https://www.atlassian.com/git/tutorials/dotfiles
