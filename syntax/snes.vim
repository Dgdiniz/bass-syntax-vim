" Vim syntax file
" Language: 65816, spc700 and SuperFX assembly, for bass
" Version 1.1.0
" Maintainer: ARM9 / Douglas Diniz (www.manualdocodigo.com.br)

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

so <sfile>:p:h/include/bass.vim
so <sfile>:p:h/include/instr_65816.vim
so <sfile>:p:h/include/instr_spc700.vim
so <sfile>:p:h/include/instr_gsu.vim
so <sfile>:p:h/include/keywords_snes.vim

if version >= 508 || !exists("did_snes_syntax_inits")
  if version > 508
    command -nargs=+ HiLink hi def link <args>
  else
    let did_snes_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  endif

  HiLink snesPpuWrite        Typedef
  HiLink snesPpuRead         Typedef
  HiLink snesApu             Typedef
  HiLink snesWram            Typedef
  HiLink snesCpuJoy          Typedef
  HiLink snesCpuWrite        Typedef
  HiLink snesCpuRead         Typedef
  HiLink snesCpuDma          Typedef
  HiLink snesConstant        Typedef

  HiLink bassNumericOperator Operator
  HiLink bassNumbers         Number
  HiLink bassLabel           Label
  HiLink bassDirective       Identifier
  HiLink bassString          String
  HiLink bassComment         Comment
  HiLink bassTodo            Todo

  HiLink asm65Reg            Type
  HiLink asm65816Ops         Function

  HiLink asmSpc700Reg        Type
  HiLink asmSpc700Ops        Function

  HiLink asmGsuReg           Type
  HiLink asmGsuOps           Function

  delcommand HiLink
endif

let b:current_syntax="snes"

