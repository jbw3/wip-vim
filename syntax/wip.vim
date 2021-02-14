if exists("b:current_syntax")
    finish
endif

syn keyword wipKeywords break cast continue extern fun in return var
syn keyword wipStructure struct
syn keyword wipConditional elif else for if while
syn keyword wipTypes bool i8 i16 i32 i64 isize str u8 u16 u32 u64 usize
syn match wipLineComment /#.*$/
syn region wipBlockComment start=/#!/ end=/!#/ contains=wipBlockComment
syn match wipIntegerConstants /\<\(0b[01_]\+\|0o[0-7_]\+\|[0-9][0-9_]*\|0x[0-9A-Fa-f_]\+\)\>/
syn keyword wipBoolConstants false true
syn region wipStrings start=/"/ end=/"/ contains=wipStringsEscape
syn match wipStringsEscape contained /\\\([\\'"nrt]\|x[0-9A-Fa-f]\{2\}\|u{[0-9A-Fa-f]\{1,8\}}\)/
syn match wipOperators '<<\|>>>\|>>\|==\|!=\|<=\|>=\|&&\|||\|+\|-\|*\|/\|%\|&\||\|\^\|!\|<\|>\|\.\.<\|\.\.'
syn match wipOperators '<<=\|>>>=\|>>=\|+=\|-=\|*=\|/=\|%=\|&=\||=\|\^=\|='

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax="wip"

hi def link wipKeywords         Keyword
hi def link wipStructure        Structure
hi def link wipConditional      Conditional
hi def link wipTypes            Type
hi def link wipLineComment      Comment
hi def link wipBlockComment     Comment
hi def link wipIntegerConstants Constant
hi def link wipBoolConstants    Constant
hi def link wipStrings          Constant
hi def link wipStringsEscape    Special
hi def link wipOperators        Operator
