" Vim syntax file
" Language: Motorola 68000 assembly
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

if version >= 508 || !exists("did_m68k_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_m68k_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif
  HiLink megadriveNumericOperator Operator
  HiLink megadriveNumbers         Number

  HiLink megadriveLabel           Label
  HiLink megadriveDirective       Identifier
" PreProc
  HiLink megadriveString          String
  HiLink megadriveComment         Comment
  HiLink megadriveTodo            Todo

  HiLink asmm68kReg       Type
  HiLink asmm68kOps    Function
  HiLink asmm68kCond   Conditional

  delcommand HiLink
endif

let b:current_syntax="m68k"

