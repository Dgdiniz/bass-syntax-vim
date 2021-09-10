" Vim syntax file
" Language: Motorola 68000 assembly and Sega Mega Drive syntax, for bass
" Version 1.0.0
" Maintainer: Douglas Diniz (www.manualdocodigo.com.br)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

so <sfile>:p:h/include/bass.vim
so <sfile>:p:h/include/instr_m68k.vim

if version >= 508 || !exists("did_megadrive_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_megadrive_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif

  HiLink bassNumericOperator Operator
  HiLink bassNumbers         Number

  HiLink bassLabel           Label
  HiLink bassDirective       Identifier
" PreProc
  HiLink bassString          String
  HiLink bassComment         Comment
  HiLink bassTodo            Todo

  HiLink asmm68kReg       Type
  HiLink asmm68kOps    Function
  HiLink asmm68kCond   Function

  delcommand HiLink
endif

let b:current_syntax="megadrive"

