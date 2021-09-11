" Vim syntax file
" Language: Highlighting for Nes console
" Version 1.0.0
" Maintainer: Douglas Diniz (www.manualdocodigo.com.br)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

so <sfile>:p:h/include/bass.vim
so <sfile>:p:h/include/instr_6502.vim

if version >= 508 || !exists("did_nes_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_nes_syntax_inits = 1
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

  HiLink asm6502Reg          Type
  HiLink asm6502Ops          Function

  delcommand HiLink
endif

let b:current_syntax="nes"

