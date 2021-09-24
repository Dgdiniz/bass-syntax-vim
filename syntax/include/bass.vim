" Vim syntax file
" Language: Assembler directive highlighting for bass v14
" Version 1.0.0
" Maintainer: ARM9 / Douglas Diniz (www.manualdocodigo.com.br)

syn keyword bassTodo    contained todo fixme xxx warning danger note notice bug author date

syn match bassNumericOperator "[+-/*<>=&|^!#~]"

syn match bassNumbers "\%(\$\x\+\|0x\x\+\|\d\+\|%[01]\+\|0b[01]\+\|0o[0-7]\+\)\>"

syn match bassLabel "\<[_a-z][_a-z0-9.]*:\?"

syn keyword bassDirective arch architecture array array.size array.sort assert base binary: char: constant copy db dd define defined delete dequeue dl dq ds dw else endian enqueue error evaluate expression file.size file.exists fill float32 float64 function global hex: include inline insert macro map namespace notice origin output parent print pullvar pushvar putchar read scope tracker variable warning while
" todo: fix if keyword so multiline comment if 0 { works

syn match   bassComment "//.*$" contains=bassTodo
syn region  bassComment start="if 0 {" skip="//.*$" end="}" contains=bassTodo

syn region bassString       start="\""  skip=+\\"+ end="\"\|$"
syn region bassString       start="'"   skip=+\\'+ end="'\|$"

syn keyword asm65816Ops adc.b adc.w adc.l and.b and.w and.l asl.b asl.w bit.b bit.w
syn keyword asm65816Ops cmp.b cmp.w cmp.l cpx.b cpx.w cpy.b cpy.w dec.b dec.w
syn keyword asm65816Ops eor.b eor.w eor.l inc.b inc.w lda.b lda.w lda.l
syn keyword asm65816Ops ldx.b ldx.w ldy.b ldy.w lsr.b lsr.w ora.b ora.w ora.l
syn keyword asm65816Ops rol.b rol.w ror.b ror.w sbc.b sbc.w sbc.l
syn keyword asm65816Ops sta.b sta.w sta.l stx.b stx.w sty.b sty.w stz.b stz.w
syn keyword asm65816Ops trb.b tbr.w tsb.b tsb.w

syn keyword asmSpc700Ops clp str

