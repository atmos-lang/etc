" Vim syntax file
" Language:     Atmos
" Maintainer:   Francisco Sant'Anna <francisco.santanna@gmail.com>
" Last Change:  2025 May

if exists("b:current_syntax")
    finish
endif

syn iskeyword 33,39,45,46,63,95,97-122

syn match   Comment   ";;.*$"
syn region  Comment   start=/;;;$/ end=/;;;$/

syn region  String    start=/\v"/ skip=/\v(\\[\\"]){-1}/ end=/\v"/
syn match   String    "'.'"
"syntax region String start=/\v'/ skip=/\v(\\[\\"]){-1}/ end=/\v'/
syn region  String    start='"' end='"'

syn match   Constant  '\d\+'
syn keyword Constant  false nil true

syn keyword Function  dump error pub
syn keyword Function  assert print require type

syn keyword Function  copy
"syn match   Function  '\<\(to\|random\|math\)'
"syn match   Function  '\<\(pico\|iup\)'

syn match   Type      ':[a-zA-Z0-9\.]\+'

syn match   Statement '[\+\-\*\/\%\>\<\=\|\&\~]'

syn keyword Statement it

syn keyword Statement abort await break catch coro defer do
syn keyword Statement else emit escape every false func if ifs
syn keyword Statement in loop match nil par par_and par_or
syn keyword Statement pin resume return set spawn status task
syn keyword Statement tasks test toggle thread throw true until
syn keyword Statement val var yield watching where with while

syn keyword Statement skip

syn keyword Todo      TODO FIXME XXX
