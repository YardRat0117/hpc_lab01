set number
set relativenumber

set tabstop=4
set softtabstop=0
set shiftwidth=4
set noexpandtab

set ignorecase
set smartcase

set wrap
set linebreak

call plug#begin()
Plug 'madox2/vim-ai'
Plug 'morhetz/gruvbox'
call plug#end()

let g:vim_ai_token_file_path = '~/.config/vim_ai_ds_api.token'
let g:vim_ai_roles_config_file = "~/.vimrc.d/vim-ai/roles.ini"

let g:vim_ai_chat = {
\	"options": {
\		"endpoint_url": "https://api.deepseek.com/chat/completions",
\		"model": "deepseek-chat",
\		"frequency_penalty": 0.0,
\		"presence_penalty": 0.0,
\		"temperature": 0.0,
\		"stream": 0,
\		"request_timeout": 200
\	},
\}


let g:vim_ai_edit= {
\   "options": {
\   	"endpoint_url": "https://api.deepseek.com/chat/completions", 
\       "model": "deepseek-chat",
\       "frequency_penalty": 0.0,
\       "presence_penalty": 0.0,
\       "temperature": 0.0,
\       "stream": 0,
\   },
\}

