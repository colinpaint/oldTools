l3
 ent 1 l4
 ent 2 l5
 ldoi 159
 ldci 0
 grti
 fjp l6
 lca' ****           '
 ldci 15
 ldci 7
 lda 1 6
 csp wrs
 ldci 0
 stri 0 10
 ldci 1
 stri 0 9
 ldci 1
 stri 0 5
 ldoi 159
 stri 0 11
l7
 lodi 0 5
 lodi 0 11
 leqi
 fjp l8
 lao 160
 lodi 0 5
 deci 1
 ixa 2
 stra 0 12
 loda 0 12
 indi 0
 stri 0 8
 loda 0 12
 indi 1
 stri 0 7
 lodi 0 8
 lodi 0 10
 equi
 fjp l9
 ldcc ','
 ldci 1
 lda 1 6
 csp wrc
 ujp l10
l9
l11
 lodi 0 9
 lodi 0 8
 lesi
 fjp l12
 ldcc ' '
 ldci 1
 lda 1 6
 csp wrc
 lodi 0 9
 ldci 1
 adi
 stri 0 9
 ujp l11
l12
 ldcc '^'
 ldci 1
 lda 1 6
 csp wrc
 lodi 0 8
 stri 0 10
l10
 lodi 0 7
 ldci 10
 lesi
 fjp l13
 ldci 1
 stri 0 6
 ujp l14
l13
 lodi 0 7
 ldci 100
 lesi
 fjp l15
 ldci 2
 stri 0 6
 ujp l16
l15
 ldci 3
 stri 0 6
l16
l14
 lodi 0 7
 lodi 0 6
 lda 1 6
 csp wri
 lodi 0 9
 lodi 0 6
 adi
 ldci 1
 adi
 stri 0 9
 lodi 0 5
 inci 1
 stri 0 5
 ujp l7
l8
 lda 1 6
 csp wln
 ldci 0
 sroi 159
l6
 ldoi 28
 ldci 1
 adi
 sroi 28
 ldob 31
 lao 5
 eof
 not
 and
 fjp l17
 ldoi 28
 ldci 6
 lda 1 6
 csp wri
 lca'                '
 ldci 2
 ldci 2
 lda 1 6
 csp wrs
 ldob 33
 fjp l18
 ldoi 27
 ldci 7
 lda 1 6
 csp wri
 ujp l19
l18
 ldoi 26
 ldci 7
 lda 1 6
 csp wri
l19
 ldcc ' '
 ldci 1
 lda 1 6
 csp wrc
l17
 ldci 0
 sroi 25
 retp
l4= 13
l5= 9
l20
 ent 1 l21
 ent 2 l22
 ldoi 159
 ldci 9
 geqi
 fjp l23
 lao 160
 ldci 10
 deci 1
 ixa 2
 inca 1
 ldci 255
 stoi
 ldci 10
 sroi 159
 ujp l24
l23
 ldoi 159
 ldci 1
 adi
 sroi 159
 lao 160
 ldoi 159
 deci 1
 ixa 2
 inca 1
 lodi 0 5
 stoi
l24
 lao 160
 ldoi 159
 deci 1
 ixa 2
 ldoi 25
 stoi
 retp
l21= 6
l22= 7
l29
 ent 1 l30
 ent 2 l31
 ldob 24
 fjp l32
 ldob 31
 fjp l33
 lda 2 6
 csp wln
l33
 mst 2
 cup 0 l3
l32
 lao 5
 eof
 not
 fjp l34
 lao 5
 csp eln
 srob 24
 lao 23
 lda 2 5
 csp rdc
 ldob 31
 fjp l35
 ldoc 23
 ldci 1
 lda 2 6
 csp wrc
l35
 ldoi 25
 ldci 1
 adi
 sroi 25
 ujp l36
l34
 lca'   *** eof      '
 ldci 11
 ldci 11
 lda 2 6
 csp wrs
 lca'encountered     '
 ldci 11
 ldci 11
 lda 2 6
 csp wrs
 lda 2 6
 csp wln
 ldcb 0
 strb 1 40
l36
 retp
l30= 5
l31= 9
l37
 ent 1 l38
 ent 2 l39
l40
 mst 1
 cup 0 l29
 ldoc 23
 ldcc '*'
 neqc
 fjp l41
 ldoc 23
 ldcc 't'
 equc
 fjp l42
 mst 1
 cup 0 l29
 ldoc 23
 ldcc '+'
 equc
 srob 29
 ujp l43
l42
 ldoc 23
 ldcc 'l'
 equc
 fjp l44
 mst 1
 cup 0 l29
 ldoc 23
 ldcc '+'
 equc
 srob 31
 ldob 31
 not
 fjp l45
 lda 2 6
 csp wln
l45
 ujp l46
l44
 ldoc 23
 ldcc 'd'
 equc
 fjp l47
 mst 1
 cup 0 l29
 ldoc 23
 ldcc '+'
 equc
 srob 34
 ujp l48
l47
 ldoc 23
 ldcc 'c'
 equc
 fjp l49
 mst 1
 cup 0 l29
 ldoc 23
 ldcc '+'
 equc
 srob 30
l49
l48
l46
l43
 mst 1
 cup 0 l29
l41
 ldoc 23
 ldcc ','
 neqc
 fjp l40
 retp
l38= 5
l39= 7
l25
 ent 1 l50
 ent 2 l51
l26
l52
l53
 ldoc 23
 ldcc ' '
 equc
 ldob 24
 not
 and
 fjp l54
 mst 0
 cup 0 l29
 ujp l53
l54
 ldob 24
 strb 0 40
 lodb 0 40
 fjp l55
 mst 0
 cup 0 l29
l55
 lodb 0 40
 not
 fjp l52
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 3
 equi
 fjp l56
 ldci 47
 sroi 9
 ldci 15
 sroi 10
 mst 1
 ldci 399
 cup 1 l20
 mst 0
 cup 0 l29
 ujp l57
l56
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ordi
 ujp l58
l60
 ldci 0
 stri 0 5
l61
 lodi 0 5
 ldci 8
 lesi
 fjp l62
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lao 14
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l62
 mst 0
 cup 0 l29
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ordi
 ldc( 2 3 4 5 6 7 8 9 10)
 inn
 fjp l61
 lodi 0 5
 ldoi 22
 geqi
 fjp l63
 lodi 0 5
 sroi 22
 ujp l64
l63
l65
 lao 14
 ldoi 22
 deci 1
 ixa 1
 ldcc ' '
 stoc
 ldoi 22
 ldci 1
 sbi
 sroi 22
 ldoi 22
 lodi 0 5
 equi
 fjp l65
l64
 lao 537
 lodi 0 5
 deci 1
 ixa 1
 indi 0
 stri 0 6
 lao 537
 lodi 0 5
 ldci 1
 adi
 deci 1
 ixa 1
 indi 0
 ldci 1
 sbi
 stri 0 41
l66
 lodi 0 6
 lodi 0 41
 leqi
 fjp l67
 lao 257
 lodi 0 6
 deci 1
 ixa 8
 lao 14
 equm 8
 fjp l68
 lao 546
 lodi 0 6
 deci 1
 ixa 1
 indi 0
 sroi 9
 lao 645
 lodi 0 6
 deci 1
 ixa 1
 indi 0
 sroi 10
 ujp l27
l68
 lodi 0 6
 inci 1
 stri 0 6
 ujp l66
l67
 ldci 0
 sroi 9
 ldci 15
 sroi 10
l27
 ujp l59
l69
 ldci 15
 sroi 10
 ldci 0
 stri 0 6
l70
 lodi 0 6
 ldci 1
 adi
 stri 0 6
 lodi 0 6
 ldoi 1508
 leqi
 fjp l71
 lda 0 7
 lodi 0 6
 deci 1
 ixa 1
 ldoc 23
 stoc
l71
 mst 0
 cup 0 l29
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 1
 neqi
 fjp l70
 ldoc 23
 ldcc '.'
 equc
 ldoc 23
 ldcc 'e'
 equc
 ior
 fjp l72
 lodi 0 6
 stri 0 5
 ldoc 23
 ldcc '.'
 equc
 fjp l73
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lodi 0 5
 ldoi 1508
 leqi
 fjp l74
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l74
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '.'
 equc
 fjp l75
 ldcc ':'
 sroc 23
 ujp l28
l75
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 1
 neqi
 fjp l76
 mst 1
 ldci 201
 cup 1 l20
 ujp l77
l76
l78
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lodi 0 5
 ldoi 1508
 leqi
 fjp l79
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l79
 mst 0
 cup 0 l29
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 1
 neqi
 fjp l78
l77
l73
 ldoc 23
 ldcc 'e'
 equc
 fjp l80
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lodi 0 5
 ldoi 1508
 leqi
 fjp l81
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l81
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '+'
 equc
 ldoc 23
 ldcc '-'
 equc
 ior
 fjp l82
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lodi 0 5
 ldoi 1508
 leqi
 fjp l83
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l83
 mst 0
 cup 0 l29
l82
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 1
 neqi
 fjp l84
 mst 1
 ldci 201
 cup 1 l20
 ujp l85
l84
l86
 lodi 0 5
 ldci 1
 adi
 stri 0 5
 lodi 0 5
 ldoi 1508
 leqi
 fjp l87
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 ldoc 23
 stoc
l87
 mst 0
 cup 0 l29
 lao 193
 ldoc 23
 ordc
 ixa 1
 indi 0
 ldci 1
 neqi
 fjp l86
l85
l80
 lda 0 39
 ldci 17
 csp new
 ldci 2
 sroi 9
 loda 0 39
 ldci 0
 stoi
 loda 0 39
 stra 0 41
 ldci 1
 stri 0 6
 ldci 16
 stri 0 42
l88
 lodi 0 6
 lodi 0 42
 leqi
 fjp l89
 loda 0 41
 inca 1
 lodi 0 6
 deci 1
 ixa 1
 ldcc ' '
 stoc
 lodi 0 6
 inci 1
 stri 0 6
 ujp l88
l89
 lodi 0 5
 ldoi 1508
 leqi
 fjp l90
 ldci 2
 stri 0 6
 lodi 0 5
 ldci 1
 adi
 stri 0 42
l91
 lodi 0 6
 lodi 0 42
 leqi
 fjp l92
 loda 0 41
 inca 1
 lodi 0 6
 deci 1
 ixa 1
 lda 0 7
 lodi 0 6
 ldci 1
 sbi
 deci 1
 ixa 1
 indc 0
 stoc
 lodi 0 6
 inci 1
 stri 0 6
 ujp l91
l92
 ujp l93
l90
 mst 1
 ldci 203
 cup 1 l20
 loda 0 41
 inca 1
 ldci 2
 deci 1
 ixa 1
 ldcc '0'
 stoc
 loda 0 41
 inca 1
 ldci 3
 deci 1
 ixa 1
 ldcc '.'
 stoc
 loda 0 41
 inca 1
 ldci 4
 deci 1
 ixa 1
 ldcc '0'
 stoc
l93
 loda 0 39
 sroa 12
 ujp l94
l72
l28
 lodi 0 6
 ldoi 1508
 grti
 fjp l95
 mst 1
 ldci 203
 cup 1 l20
 ldci 0
 sroi 12
 ujp l96
l95
 ldci 0
 sroi 12
 ldci 1
 stri 0 5
 lodi 0 6
 stri 0 41
l97
 lodi 0 5
 lodi 0 41
 leqi
 fjp l98
 ldoi 12
 ldoi 1509
 leqi
 fjp l99
 ldoi 12
 ldci 10
 mpi
 lao 1444
 lda 0 7
 lodi 0 5
 deci 1
 ixa 1
 indc 0
 ordc
 ixa 1
 indi 0
 adi
 sroi 12
 ujp l100
l99
 mst 1
 ldci 203
 cup 1 l20
 ldci 0
 sroi 12
l100
 lodi 0 5
 inci 1
 stri 0 5
 ujp l97
l98
 ldci 1
 sroi 9
l96
l94
 ujp l59
l101
 ldci 0
 sroi 13
 ldci 3
 sroi 9
 ldci 15
 sroi 10
l102
l103
 mst 0
 cup 0 l29
 ldoi 13
 ldci 1
 adi
 sroi 13
 ldoi 13
 ldci 16
 leqi
 fjp l104
 lda 0 23
 ldoi 13
 deci 1
 ixa 1
 ldoc 23
 stoc
l104
 ldob 24
 ldoc 23
 ldcc '''
 equc
 ior
 fjp l103
 ldob 24
 fjp l105
 mst 1
 ldci 202
 cup 1 l20
 ujp l106
l105
 mst 0
 cup 0 l29
l106
 ldoc 23
 ldcc '''
 neqc
 fjp l102
 ldoi 13
 ldci 1
 sbi
 sroi 13
 ldoi 13
 ldci 0
 equi
 fjp l107
 mst 1
 ldci 205
 cup 1 l20
 ujp l108
l107
 ldoi 13
 ldci 1
 equi
 fjp l109
 lda 0 23
 ldci 1
 deci 1
 ixa 1
 indc 0
 ordc
 sroi 12
 ujp l110
l109
 lda 0 39
 ldci 18
 csp new
 loda 0 39
 ldci 2
 stoi
 ldoi 13
 ldci 16
 grti
 fjp l111
 mst 1
 ldci 399
 cup 1 l20
 ldci 16
 sroi 13
l111
 loda 0 39
 stra 0 41
 loda 0 41
 inca 1
 ldoi 13
 stoi
 ldci 1
 stri 0 6
 ldoi 13
 stri 0 42
l112
 lodi 0 6
 lodi 0 42
 leqi
 fjp l113
 loda 0 41
 inca 2
 lodi 0 6
 deci 1
 ixa 1
 lda 0 23
 lodi 0 6
 deci 1
 ixa 1
 indc 0
 stoc
 lodi 0 6
 inci 1
 stri 0 6
 ujp l112
l113
 loda 0 39
 sroa 12
l110
l108
 ujp l59
l114
 ldci 15
 sroi 10
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '='
 equc
 fjp l115
 ldci 17
 sroi 9
 mst 0
 cup 0 l29
 ujp l116
l115
 ldci 16
 sroi 9
l116
 ujp l59
l117
 ldci 15
 sroi 10
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '.'
 equc
 fjp l118
 ldci 16
 sroi 9
 mst 0
 cup 0 l29
 ujp l119
l118
 ldci 14
 sroi 9
l119
 ujp l59
l120
 mst 0
 cup 0 l29
 ldci 7
 sroi 9
 ldoc 23
 ldcc '='
 equc
 fjp l121
 ldci 9
 sroi 10
 mst 0
 cup 0 l29
 ujp l122
l121
 ldoc 23
 ldcc '>'
 equc
 fjp l123
 ldci 12
 sroi 10
 mst 0
 cup 0 l29
 ujp l124
l123
 ldci 8
 sroi 10
l124
l122
 ujp l59
l125
 mst 0
 cup 0 l29
 ldci 7
 sroi 9
 ldoc 23
 ldcc '='
 equc
 fjp l126
 ldci 10
 sroi 10
 mst 0
 cup 0 l29
 ujp l127
l126
 ldci 11
 sroi 10
l127
 ujp l59
l128
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '*'
 equc
 fjp l129
 mst 0
 cup 0 l29
 ldoc 23
 ldcc '$'
 equc
 fjp l130
 mst 0
 cup 0 l37
l130
l131
l132
 ldoc 23
 ldcc '*'
 neqc
 lao 5
 eof
 not
 and
 fjp l133
 mst 0
 cup 0 l29
 ujp l132
l133
 mst 0
 cup 0 l29
 ldoc 23
 ldcc ')'
 equc
 lao 5
 eof
 ior
 fjp l131
 mst 0
 cup 0 l29
 ujp l26
l129
 ldci 8
 sroi 9
 ldci 15
 sroi 10
 ujp l59
l134
 lao 581
 ldoc 23
 ordc
 ixa 1
 indi 0
 sroi 9
 lao 680
 ldoc 23
 ordc
 ixa 1
 indi 0
 sroi 10
 mst 0
 cup 0 l29
 ujp l59
l135
 ldci 47
 sroi 9
 ujp l59
l58
 chki 0 10
 ldci 0
 sbi
 xjp l136
l136
 ujp l60
 ujp l69
 ujp l134
 ujc
 ujp l101
 ujp l114
 ujp l117
 ujp l120
 ujp l125
 ujp l128
 ujp l135
l59
l57
 retp
l50= 43
l51= 18
l137
 ent 1 l138
 ent 2 l139
 lda 0 6
 loda 0 5
 mov 8
 lao 54
 ldoi 52
 ixa 5
 inda 0
 stra 0 15
 loda 0 15
 ldcn
 equa
 fjp l140
 lao 54
 ldoi 52
 ixa 5
 loda 0 5
 stoa
 ujp l141
l140
l142
 loda 0 15
 stra 0 14
 loda 0 15
 lda 0 6
 equm 8
 fjp l143
 mst 1
 ldci 101
 cup 1 l20
 loda 0 15
 inda 8
 stra 0 15
 ldcb 0
 strb 0 16
 ujp l144
l143
 loda 0 15
 lda 0 6
 lesm 8
 fjp l145
 loda 0 15
 inda 8
 stra 0 15
 ldcb 0
 strb 0 16
 ujp l146
l145
 loda 0 15
 inda 9
 stra 0 15
 ldcb 1
 strb 0 16
l146
l144
 loda 0 15
 ldcn
 equa
 fjp l142
 lodb 0 16
 fjp l147
 loda 0 14
 inca 9
 loda 0 5
 stoa
 ujp l148
l147
 loda 0 14
 inca 8
 loda 0 5
 stoa
l148
l141
 loda 0 5
 inca 9
 ldcn
 stoa
 loda 0 5
 inca 8
 ldcn
 stoa
 retp
l138= 17
l139= 8
l149
 ent 1 l151
 ent 2 l152
l153
 loda 0 5
 ldcn
 neqa
 fjp l154
 loda 0 5
 lao 14
 equm 8
 fjp l155
 ujp l150
 ujp l156
l155
 loda 0 5
 lao 14
 lesm 8
 fjp l157
 loda 0 5
 inda 8
 stra 0 5
 ujp l158
l157
 loda 0 5
 inda 9
 stra 0 5
l158
l156
 ujp l153
l154
l150
 loda 0 6
 loda 0 5
 stoa
 retp
l151= 7
l152= 7
l159
 ent 1 l161
 ent 2 l162
 ldoi 52
 sroi 53
 ldci 0
 stri 0 8
l163
 ldoi 53
 lodi 0 8
 geqi
 fjp l164
 lao 54
 ldoi 53
 ixa 5
 inda 0
 stra 0 7
l165
 loda 0 7
 ldcn
 neqa
 fjp l166
 loda 0 7
 lao 14
 equm 8
 fjp l167
 loda 0 7
 indi 12
 ordi
 lods 0 5
 inn
 fjp l168
 ujp l160
 ujp l169
l168
 ldob 32
 fjp l170
 mst 1
 ldci 103
 cup 1 l20
l170
 loda 0 7
 inda 8
 stra 0 7
l169
 ujp l171
l167
 loda 0 7
 lao 14
 lesm 8
 fjp l172
 loda 0 7
 inda 8
 stra 0 7
 ujp l173
l172
 loda 0 7
 inda 9
 stra 0 7
l173
l171
 ujp l165
l166
 ldoi 53
 deci 1
 sroi 53
 ujp l163
l164
 ldob 32
 fjp l174
 mst 1
 ldci 104
 cup 1 l20
 ldci 0
 ordi
 lods 0 5
 inn
 fjp l175
 ldoa 48
 stra 0 7
 ujp l176
l175
 ldci 2
 ordi
 lods 0 5
 inn
 fjp l177
 ldoa 46
 stra 0 7
 ujp l178
l177
 ldci 3
 ordi
 lods 0 5
 inn
 fjp l179
 ldoa 45
 stra 0 7
 ujp l180
l179
 ldci 1
 ordi
 lods 0 5
 inn
 fjp l181
 ldoa 47
 stra 0 7
 ujp l182
l181
 ldci 4
 ordi
 lods 0 5
 inn
 fjp l183
 ldoa 44
 stra 0 7
 ujp l184
l183
 ldoa 43
 stra 0 7
l184
l182
l180
l178
l176
l174
l160
 loda 0 6
 loda 0 7
 stoa
 retp
l161= 9
l162= 9
l185
 ent 1 l186
 ent 2 l187
 loda 0 6
 ldci 0
 stoi
 loda 0 7
 ldci 0
 stoi
 loda 0 5
 ldcn
 neqa
 fjp l188
 loda 0 5
 stra 0 8
 loda 0 8
 indi 2
 ldci 1
 equi
 fjp l189
 loda 0 6
 loda 0 8
 indi 7
 stoi
 loda 0 7
 loda 0 8
 indi 5
 stoi
 ujp l190
l189
 loda 0 5
 ldoa 38
 equa
 fjp l191
 loda 0 6
 ldci 0
 stoi
 loda 0 7
 ldci 63
 stoi
 ujp l192
l191
 loda 0 8
 inda 4
 ldcn
 neqa
 fjp l193
 loda 0 7
 loda 0 8
 inda 4
 indi 14
 stoi
l193
l192
l190
l188
 retp
l186= 9
l187= 7
l194
 ent 1 l195
 ent 2 l196
 ldci 1
 stri 0 0
 loda 0 5
 ldcn
 neqa
 fjp l197
 loda 0 5
 stra 0 6
 loda 0 6
 indi 2
 ordi
 ujp l198
l200
 loda 0 5
 ldoa 40
 equa
 fjp l201
 ldci 1
 stri 0 0
 ujp l202
l201
 loda 0 5
 ldoa 37
 equa
 fjp l203
 ldci 1
 stri 0 0
 ujp l204
l203
 loda 0 6
 indi 3
 ldci 1
 equi
 fjp l205
 ldci 1
 stri 0 0
 ujp l206
l205
 loda 0 5
 ldoa 38
 equa
 fjp l207
 ldci 1
 stri 0 0
 ujp l208
l207
 loda 0 5
 ldoa 39
 equa
 fjp l209
 ldci 1
 stri 0 0
 ujp l210
l209
 ldci 1
 stri 0 0
l210
l208
l206
l204
l202
 ujp l199
l211
 mst 1
 loda 0 6
 inda 3
 cup 1 l194
 stri 0 0
 ujp l199
l212
 ldci 1
 stri 0 0
 ujp l199
l213
 ldci 1
 stri 0 0
 ujp l199
l214
 ldci 1
 stri 0 0
 ujp l199
l215
 mst 1
 loda 0 6
 inda 4
 cup 1 l194
 stri 0 0
 ujp l199
l216
 ldci 1
 stri 0 0
 ujp l199
l217
 mst 1
 ldci 501
 cup 1 l20
 ujp l199
l198
 chki 0 8
 ldci 0
 sbi
 xjp l218
l218
 ujp l200
 ujp l211
 ujp l212
 ujp l213
 ujp l215
 ujp l216
 ujp l214
 ujp l217
 ujp l217
l199
l197
 reti
l195= 7
l196= 8
l219
 ent 1 l220
 ent 2 l221
 mst 1
 loda 0 5
 cup 1 l194
 stri 0 8
 loda 0 6
 indi 0
 ldci 1
 sbi
 stri 0 7
 loda 0 6
 lodi 0 7
 lodi 0 8
 adi
 lodi 0 8
 lodi 0 7
 adi
 lodi 0 8
 mod
 sbi
 stoi
 retp
l220= 9
l221= 9
l225
 ent 1 l226
 ent 2 l227
 loda 0 5
 ldcn
 neqa
 fjp l228
 loda 0 5
 stra 0 6
 loda 0 6
 ldcb 1
 stob
 loda 0 6
 indi 2
 ordi
 ujp l229
l231
 ujp l230
l232
 mst 1
 loda 0 6
 inda 3
 cup 1 l225
 ujp l230
l233
 ujp l230
l234
 mst 1
 loda 0 6
 inda 3
 cup 1 l225
 ujp l230
l235
 mst 1
 loda 0 6
 inda 4
 cup 1 l225
 mst 1
 loda 0 6
 inda 3
 cup 1 l225
 ujp l230
l236
 mst 1
 loda 0 6
 inda 3
 cup 1 l224
 mst 1
 loda 0 6
 inda 4
 cup 1 l225
 ujp l230
l237
 mst 1
 loda 0 6
 inda 3
 cup 1 l225
 ujp l230
l238
 mst 1
 loda 0 6
 inda 4
 cup 1 l225
 ujp l230
l239
 mst 1
 loda 0 6
 inda 4
 cup 1 l225
 mst 1
 loda 0 6
 inda 3
 cup 1 l225
 ujp l230
l229
 chki 0 8
 ldci 0
 sbi
 xjp l240
l240
 ujp l231
 ujp l232
 ujp l233
 ujp l234
 ujp l235
 ujp l236
 ujp l237
 ujp l238
 ujp l239
l230
l228
 retp
l226= 7
l227= 17
l224
 ent 1 l241
 ent 2 l242
 loda 0 5
 ldcn
 neqa
 fjp l243
 loda 0 5
 stra 0 6
 mst 1
 loda 0 6
 inda 9
 cup 1 l224
 mst 1
 loda 0 6
 inda 8
 cup 1 l224
 mst 1
 loda 0 6
 inda 10
 cup 1 l225
l243
 retp
l241= 7
l242= 8
l223
 ent 1 l244
 ent 2 l245
 ldoi 52
 stri 0 5
 lodi 1 6
 stri 0 6
l246
 lodi 0 5
 lodi 0 6
 geqi
 fjp l247
 mst 0
 lao 54
 lodi 0 5
 ixa 5
 inda 0
 cup 1 l224
 lodi 0 5
 deci 1
 stri 0 5
 ujp l246
l247
 retp
l244= 7
l245= 7
l249
 ent 1 l250
 ent 2 l251
 loda 0 5
 ldcn
 neqa
 fjp l252
 loda 0 5
 stra 0 6
 loda 0 6
 indb 0
 fjp l253
 loda 0 6
 ldcb 0
 stob
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 5
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 6
 indi 1
 ldci 10
 lda 2 6
 csp wri
 loda 0 6
 indi 2
 ordi
 ujp l254
l256
 lca'scalar          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 loda 0 6
 indi 3
 ldci 0
 equi
 fjp l257
 lca'standard        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 ujp l258
l257
 lca'declared        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 4
 orda
 ldci 6
 lda 2 6
 csp wri
l258
 lda 2 6
 csp wln
 ujp l255
l259
 lca'subrange        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 6
 inda 3
 ldoa 39
 neqa
 fjp l260
 loda 0 6
 indi 7
 ldci 10
 lda 2 6
 csp wri
 loda 0 6
 indi 5
 ldci 10
 lda 2 6
 csp wri
 ujp l261
l260
 loda 0 6
 inda 7
 ldcn
 neqa
 loda 0 6
 inda 5
 ldcn
 neqa
 and
 fjp l262
 ldcc ' '
 ldci 1
 lda 2 6
 csp wrc
 loda 0 6
 inda 7
 inca 1
 ldci 9
 ldci 16
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 1
 lda 2 6
 csp wrc
 loda 0 6
 inda 5
 inca 1
 ldci 9
 ldci 16
 lda 2 6
 csp wrs
l262
l261
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 3
 cup 1 l249
 ujp l255
l263
 lca'pointer         '
 ldci 10
 ldci 7
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 ujp l255
l264
 lca'set             '
 ldci 10
 ldci 3
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 3
 cup 1 l249
 ujp l255
l265
 lca'array           '
 ldci 10
 ldci 5
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 4
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 4
 cup 1 l249
 mst 1
 loda 0 6
 inda 3
 cup 1 l249
 ujp l255
l266
 lca'record          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 4
 orda
 ldci 6
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 3
 cup 1 l248
 mst 1
 loda 0 6
 inda 4
 cup 1 l249
 ujp l255
l267
 lca'file            '
 ldci 10
 ldci 4
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 mst 1
 loda 0 6
 inda 3
 cup 1 l249
 ujp l255
l268
 lca'tagfld          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 4
 orda
 ldci 6
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 4
 cup 1 l249
 ujp l255
l269
 lca'variant         '
 ldci 10
 ldci 7
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 4
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 6
 inda 3
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 6
 indi 6
 ldci 10
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 mst 1
 loda 0 6
 inda 4
 cup 1 l249
 mst 1
 loda 0 6
 inda 3
 cup 1 l249
 ujp l255
l254
 chki 0 8
 ldci 0
 sbi
 xjp l270
l270
 ujp l256
 ujp l259
 ujp l263
 ujp l264
 ujp l265
 ujp l266
 ujp l267
 ujp l268
 ujp l269
l255
l253
l252
 retp
l250= 7
l251= 18
l248
 ent 1 l271
 ent 2 l272
 loda 0 5
 ldcn
 neqa
 fjp l273
 loda 0 5
 stra 0 7
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 5
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 1
 lda 2 6
 csp wrc
 loda 0 7
 ldci 9
 ldci 8
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 9
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 8
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 10
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 7
 indi 12
 ordi
 ujp l274
l276
 lca'type            '
 ldci 10
 ldci 4
 lda 2 6
 csp wrs
 ujp l275
l277
 lca'constant        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 11
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 7
 inda 10
 ldcn
 neqa
 fjp l278
 loda 0 7
 inda 10
 ldoa 39
 equa
 fjp l279
 loda 0 7
 inda 14
 ldcn
 neqa
 fjp l280
 ldcc ' '
 ldci 1
 lda 2 6
 csp wrc
 loda 0 7
 inda 14
 inca 1
 ldci 9
 ldci 16
 lda 2 6
 csp wrs
l280
 ujp l281
l279
 loda 0 7
 inda 10
 indi 2
 ldci 4
 equi
 fjp l282
 loda 0 7
 inda 14
 ldcn
 neqa
 fjp l283
 ldcc ' '
 ldci 1
 lda 2 6
 csp wrc
 loda 0 7
 inda 14
 stra 0 8
 ldci 1
 stri 0 6
 loda 0 8
 indi 1
 stri 0 9
l284
 lodi 0 6
 lodi 0 9
 leqi
 fjp l285
 loda 0 8
 inca 2
 lodi 0 6
 deci 1
 ixa 1
 indc 0
 ldci 1
 lda 2 6
 csp wrc
 lodi 0 6
 inci 1
 stri 0 6
 ujp l284
l285
l283
 ujp l286
l282
 loda 0 7
 indi 14
 ldci 10
 lda 2 6
 csp wri
l286
l281
l278
 ujp l275
l287
 lca'variable        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 loda 0 7
 indi 13
 ldci 0
 equi
 fjp l288
 lca'actual          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 ujp l289
l288
 lca'formal          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
l289
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 11
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 7
 indi 14
 ldci 10
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 indi 15
 ldci 6
 lda 2 6
 csp wri
 ujp l275
l290
 lca'field           '
 ldci 10
 ldci 5
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 11
 orda
 ldci 6
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 indi 13
 ldci 6
 lda 2 6
 csp wri
 ujp l275
l291
 loda 0 7
 indi 12
 ldci 4
 equi
 fjp l292
 lca'procedure       '
 ldci 10
 ldci 9
 lda 2 6
 csp wrs
 ujp l293
l292
 lca'function        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
l293
 loda 0 7
 indi 13
 ldci 0
 equi
 fjp l294
 lca'standard        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 loda 0 7
 indi 14
 ldci 10
 lda 2 6
 csp wri
 ujp l295
l294
 lca'declared        '
 ldci 10
 ldci 8
 lda 2 6
 csp wrs
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 inda 11
 orda
 ldci 6
 lda 2 6
 csp wri
 loda 0 7
 indi 14
 ldci 10
 lda 2 6
 csp wri
 ldcc ' '
 ldci 4
 lda 2 6
 csp wrc
 loda 0 7
 indi 15
 ldci 6
 lda 2 6
 csp wri
 loda 0 7
 indi 16
 ldci 0
 equi
 fjp l296
 lca'actual          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 loda 0 7
 indb 18
 fjp l297
 lca'forward         '
 ldci 10
 ldci 7
 lda 2 6
 csp wrs
 ujp l298
l297
 lca'notforward      '
 ldci 10
 ldci 10
 lda 2 6
 csp wrs
l298
 loda 0 7
 indb 17
 fjp l299
 lca'extern          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
 ujp l300
l299
 lca'not extern      '
 ldci 10
 ldci 10
 lda 2 6
 csp wrs
l300
 ujp l301
l296
 lca'formal          '
 ldci 10
 ldci 6
 lda 2 6
 csp wrs
l301
l295
 ujp l275
l274
 chki 0 5
 ldci 0
 sbi
 xjp l302
l302
 ujp l276
 ujp l277
 ujp l287
 ujp l290
 ujp l291
 ujp l291
l275
 lda 2 6
 csp wln
 mst 1
 loda 0 7
 inda 9
 cup 1 l248
 mst 1
 loda 0 7
 inda 8
 cup 1 l248
 mst 1
 loda 0 7
 inda 10
 cup 1 l249
l273
 retp
l271= 10
l272= 10
l222
 ent 1 l303
 ent 2 l304
 lda 1 6
 csp wln
 lda 1 6
 csp wln
 lda 1 6
 csp wln
 lodb 0 5
 fjp l305
 ldci 0
 stri 0 6
 ujp l306
l305
 ldoi 52
 stri 0 6
 lca' local          '
 ldci 6
 ldci 6
 lda 1 6
 csp wrs
l306
 lca' tables         '
 ldci 8
 ldci 8
 lda 1 6
 csp wrs
 lda 1 6
 csp wln
 lda 1 6
 csp wln
 mst 0
 cup 0 l223
 ldoi 52
 stri 0 7
 lodi 0 6
 stri 0 8
l307
 lodi 0 7
 lodi 0 8
 geqi
 fjp l308
 mst 0
 lao 54
 lodi 0 7
 ixa 5
 inda 0
 cup 1 l248
 lodi 0 7
 deci 1
 stri 0 7
 ujp l307
l308
 lda 1 6
 csp wln
 ldob 24
 not
 fjp l309
 ldcc ' '
 ldoi 25
 ldci 16
 adi
 lda 1 6
 csp wrc
l309
 retp
l303= 9
l304= 9
l310
 ent 1 l311
 ent 2 l312
 ldoi 1510
 ldci 1
 adi
 sroi 1510
 loda 0 5
 ldoi 1510
 stoi
 retp
l311= 6
l312= 7
l314
 ent 1 l315
 ent 2 l316
 lao 5
 eof
 not
 fjp l317
l318
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 lao 5
 eof
 not
 and
 fjp l319
 mst 2
 cup 0 l25
 ujp l318
l319
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 fjp l320
 mst 2
 cup 0 l25
l320
l317
 retp
l315= 6
l316= 7
l321
 ent 1 l322
 ent 2 l323
 ldcn
 stra 0 8
 loda 0 7
 inca 1
 ldci 0
 stoi
 ldoi 9
 ordi
 ldos 192
 inn
 not
 fjp l324
 mst 2
 ldci 50
 cup 1 l20
 mst 1
 lods 0 5
 ldos 192
 uni
 cup 1 l314
l324
 ldoi 9
 ordi
 ldos 192
 inn
 fjp l325
 ldoi 9
 ldci 3
 equi
 fjp l326
 ldoi 13
 ldci 1
 equi
 fjp l327
 ldoa 38
 stra 0 8
 ujp l328
l327
 lda 0 8
 ldci 5
 csp new
 loda 0 8
 stra 0 13
 loda 0 13
 inca 4
 ldoa 38
 stoa
 loda 0 13
 inca 3
 ldcn
 stoa
 loda 0 13
 inca 1
 ldoi 13
 ldci 1
 mpi
 stoi
 loda 0 13
 inca 2
 ldci 4
 stoi
l328
 loda 0 7
 lao 11
 mov 2
 mst 2
 cup 0 l25
 ujp l329
l326
 ldci 0
 stri 0 10
 ldoi 9
 ldci 6
 equi
 ldoi 10
 ordi
 ldc( 5 6)
 inn
 and
 fjp l330
 ldoi 10
 ldci 5
 equi
 fjp l331
 ldci 1
 stri 0 10
 ujp l332
l331
 ldci 2
 stri 0 10
l332
 mst 2
 cup 0 l25
l330
 ldoi 9
 ldci 0
 equi
 fjp l333
 mst 2
 ldc( 1)
 lda 0 9
 cup 2 l159
 loda 0 9
 stra 0 13
 loda 0 13
 inda 10
 stra 0 8
 loda 0 7
 loda 0 13
 inca 13
 mov 2
 lodi 0 10
 ldci 0
 neqi
 fjp l334
 loda 0 8
 ldoa 40
 equa
 fjp l335
 lodi 0 10
 ldci 2
 equi
 fjp l336
 loda 0 7
 inca 1
 loda 0 7
 indi 1
 ngi
 stoi
l336
 ujp l337
l335
 loda 0 8
 ldoa 39
 equa
 fjp l338
 lodi 0 10
 ldci 2
 equi
 fjp l339
 lda 0 11
 ldci 17
 csp new
 loda 0 7
 inda 1
 inca 1
 ldci 1
 deci 1
 ixa 1
 indc 0
 ldcc '-'
 equc
 fjp l340
 loda 0 11
 inca 1
 ldci 1
 deci 1
 ixa 1
 ldcc '+'
 stoc
 ujp l341
l340
 loda 0 11
 inca 1
 ldci 1
 deci 1
 ixa 1
 ldcc '-'
 stoc
l341
 ldci 2
 stri 0 12
 ldci 16
 stri 0 13
l342
 lodi 0 12
 lodi 0 13
 leqi
 fjp l343
 loda 0 11
 inca 1
 lodi 0 12
 deci 1
 ixa 1
 loda 0 7
 inda 1
 inca 1
 lodi 0 12
 deci 1
 ixa 1
 indc 0
 stoc
 lodi 0 12
 inci 1
 stri 0 12
 ujp l342
l343
 loda 0 7
 inca 1
 loda 0 11
 stoa
l339
 ujp l344
l338
 mst 2
 ldci 105
 cup 1 l20
l344
l337
l334
 mst 2
 cup 0 l25
 ujp l345
l333
 ldoi 9
 ldci 1
 equi
 fjp l346
 lodi 0 10
 ldci 2
 equi
 fjp l347
 ldoi 12
 ngi
 sroi 12
l347
 ldoa 40
 stra 0 8
 loda 0 7
 lao 11
 mov 2
 mst 2
 cup 0 l25
 ujp l348
l346
 ldoi 9
 ldci 2
 equi
 fjp l349
 lodi 0 10
 ldci 2
 equi
 fjp l350
 ldoa 12
 inca 1
 ldci 1
 deci 1
 ixa 1
 ldcc '-'
 stoc
l350
 ldoa 39
 stra 0 8
 loda 0 7
 lao 11
 mov 2
 mst 2
 cup 0 l25
 ujp l351
l349
 mst 2
 ldci 106
 cup 1 l20
 mst 1
 lods 0 5
 cup 1 l314
l351
l348
l345
l329
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 fjp l352
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 0 5
 cup 1 l314
l352
l325
 loda 0 6
 loda 0 8
 stoa
 retp
l322= 14
l323= 16
l353
 ent 1 l354
 ent 2 l355
 loda 0 5
 ldcn
 equa
 loda 0 6
 ldcn
 equa
 ior
 fjp l356
 ldcb 1
 strb 0 0
 ujp l357
l356
 mst 2
 loda 0 5
 lda 0 10
 lda 0 8
 cup 3 l185
 mst 2
 loda 0 6
 lda 0 9
 lda 0 7
 cup 3 l185
 lodi 0 10
 lodi 0 9
 equi
 lodi 0 8
 lodi 0 7
 equi
 and
 strb 0 0
l357
 retb
l354= 11
l355= 14
l358
 ent 1 l359
 ent 2 l360
 loda 0 5
 loda 0 6
 equa
 fjp l361
 ldcb 1
 strb 0 0
 ujp l362
l361
 loda 0 5
 ldcn
 neqa
 loda 0 6
 ldcn
 neqa
 and
 fjp l363
 loda 0 5
 indi 2
 loda 0 6
 indi 2
 equi
 fjp l364
 loda 0 5
 indi 2
 ordi
 ujp l365
l367
 ldcb 0
 strb 0 0
 ujp l366
l368
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l358
 strb 0 0
 ujp l366
l369
 ldcb 0
 strb 0 9
 ldoa 50
 stra 0 11
 ldoa 50
 stra 0 10
l370
 loda 0 11
 ldcn
 neqa
 fjp l371
 loda 0 11
 stra 0 12
 loda 0 12
 inda 1
 loda 0 5
 inda 3
 equa
 loda 0 12
 inda 0
 loda 0 6
 inda 3
 equa
 and
 fjp l372
 ldcb 1
 strb 0 9
l372
 loda 0 12
 inda 2
 stra 0 11
 ujp l370
l371
 lodb 0 9
 not
 fjp l373
 lda 0 11
 ldci 3
 csp new
 loda 0 11
 stra 0 12
 loda 0 12
 inca 1
 loda 0 5
 inda 3
 stoa
 loda 0 12
 loda 0 6
 inda 3
 stoa
 loda 0 12
 inca 2
 ldoa 50
 stoa
 loda 0 11
 sroa 50
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l358
 strb 0 9
l373
 lodb 0 9
 strb 0 0
 loda 0 10
 sroa 50
 ujp l366
l374
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l358
 strb 0 0
 ujp l366
l375
 mst 1
 loda 0 5
 inda 4
 loda 0 6
 inda 4
 cup 2 l358
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l358
 and
 strb 0 9
 lodb 0 9
 loda 0 5
 indi 1
 loda 0 6
 indi 1
 equi
 and
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l353
 and
 strb 0 0
 ujp l366
l376
 loda 0 5
 inda 3
 stra 0 8
 loda 0 6
 inda 3
 stra 0 7
 ldcb 1
 strb 0 9
l377
 loda 0 8
 ldcn
 neqa
 loda 0 7
 ldcn
 neqa
 and
 fjp l378
 lodb 0 9
 mst 1
 loda 0 8
 inda 10
 loda 0 7
 inda 10
 cup 2 l358
 and
 strb 0 9
 loda 0 8
 inda 11
 stra 0 8
 loda 0 7
 inda 11
 stra 0 7
 ujp l377
l378
 lodb 0 9
 loda 0 8
 ldcn
 equa
 and
 loda 0 7
 ldcn
 equa
 and
 loda 0 5
 inda 4
 ldcn
 equa
 and
 loda 0 6
 inda 4
 ldcn
 equa
 and
 strb 0 0
 ujp l366
l379
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 inda 3
 cup 2 l358
 strb 0 0
 ujp l366
l365
 chki 0 6
 ldci 0
 sbi
 xjp l380
l380
 ujp l367
 ujp l368
 ujp l369
 ujp l374
 ujp l375
 ujp l376
 ujp l379
l366
 ujp l381
l364
 loda 0 5
 indi 2
 ldci 1
 equi
 fjp l382
 mst 1
 loda 0 5
 inda 3
 loda 0 6
 cup 2 l358
 strb 0 0
 ujp l383
l382
 loda 0 6
 indi 2
 ldci 1
 equi
 fjp l384
 mst 1
 loda 0 5
 loda 0 6
 inda 3
 cup 2 l358
 strb 0 0
 ujp l385
l384
 ldcb 0
 strb 0 0
l385
l383
l381
 ujp l386
l363
 ldcb 1
 strb 0 0
l386
l362
 retb
l359= 13
l360= 16
l387
 ent 1 l388
 ent 2 l389
 ldcb 0
 strb 0 0
 loda 0 5
 ldcn
 neqa
 fjp l390
 loda 0 5
 indi 2
 ldci 4
 equi
 fjp l391
 mst 1
 loda 0 5
 inda 4
 ldoa 38
 cup 2 l358
 fjp l392
 ldcb 1
 strb 0 0
l392
l391
l390
 retb
l388= 6
l389= 7
l394
 ent 1 l395
 ent 2 l396
 loda 0 7
 ldci 1
 stoi
 ldoi 9
 ordi
 ldos 191
 inn
 not
 fjp l397
 mst 3
 ldci 1
 cup 1 l20
 mst 2
 lods 0 5
 ldos 191
 uni
 cup 1 l314
l397
 ldoi 9
 ordi
 ldos 191
 inn
 fjp l398
 ldoi 9
 ldci 8
 equi
 fjp l399
 ldoi 52
 stri 0 12
l400
 lao 54
 ldoi 52
 ixa 5
 indi 2
 ldci 0
 neqi
 fjp l401
 ldoi 52
 ldci 1
 sbi
 sroi 52
 ujp l400
l401
 lda 0 9
 ldci 5
 csp new
 loda 0 9
 stra 0 16
 loda 0 16
 inca 1
 ldci 1
 stoi
 loda 0 16
 inca 2
 ldci 0
 stoi
 loda 0 16
 inca 3
 ldci 1
 stoi
 ldcn
 stra 0 10
 ldci 0
 stri 0 13
l402
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l403
 lda 0 11
 ldci 15
 csp new
 loda 0 11
 stra 0 16
 loda 0 16
 lao 14
 mov 8
 loda 0 16
 inca 10
 loda 0 9
 stoa
 loda 0 16
 inca 11
 loda 0 10
 stoa
 loda 0 16
 inca 14
 lodi 0 13
 stoi
 loda 0 16
 inca 12
 ldci 1
 stoi
 mst 3
 loda 0 11
 cup 1 l137
 lodi 0 13
 ldci 1
 adi
 stri 0 13
 loda 0 11
 stra 0 10
 mst 3
 cup 0 l25
 ujp l404
l403
 mst 3
 ldci 2
 cup 1 l20
l404
 ldoi 9
 ordi
 lods 0 5
 ldc( 9 12)
 uni
 inn
 not
 fjp l405
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 9 12)
 uni
 cup 1 l314
l405
 ldoi 9
 ldci 12
 neqi
 fjp l402
 loda 0 9
 inca 4
 loda 0 10
 stoa
 lodi 0 12
 sroi 52
 ldoi 9
 ldci 9
 equi
 fjp l406
 mst 3
 cup 0 l25
 ujp l407
l406
 mst 3
 ldci 4
 cup 1 l20
l407
 ujp l408
l399
 ldoi 9
 ldci 0
 equi
 fjp l409
 mst 3
 ldc( 0 1)
 lda 0 11
 cup 2 l159
 mst 3
 cup 0 l25
 loda 0 11
 indi 12
 ldci 1
 equi
 fjp l410
 lda 0 9
 ldci 8
 csp new
 loda 0 9
 stra 0 16
 loda 0 11
 stra 0 17
 loda 0 16
 inca 3
 loda 0 17
 inda 10
 stoa
 loda 0 16
 inca 2
 ldci 1
 stoi
 mst 2
 loda 0 16
 inda 3
 cup 1 l387
 fjp l411
 mst 3
 ldci 148
 cup 1 l20
 loda 0 16
 inca 3
 ldcn
 stoa
l411
 loda 0 16
 inca 6
 loda 0 17
 inca 13
 mov 2
 loda 0 16
 inca 1
 ldci 1
 stoi
 ldoi 9
 ldci 16
 equi
 fjp l412
 mst 3
 cup 0 l25
 ujp l413
l412
 mst 3
 ldci 5
 cup 1 l20
l413
 mst 2
 lods 0 5
 lda 0 8
 lda 0 14
 cup 3 l321
 loda 0 9
 inca 4
 lda 0 14
 mov 2
 loda 0 9
 inda 3
 loda 0 8
 neqa
 fjp l414
 mst 3
 ldci 107
 cup 1 l20
l414
 ujp l415
l410
 loda 0 11
 inda 10
 stra 0 9
 loda 0 9
 ldcn
 neqa
 fjp l416
 loda 0 7
 loda 0 9
 indi 1
 stoi
l416
l415
 ujp l417
l409
 lda 0 9
 ldci 8
 csp new
 loda 0 9
 inca 2
 ldci 1
 stoi
 mst 2
 lods 0 5
 ldc( 16)
 uni
 lda 0 8
 lda 0 14
 cup 3 l321
 mst 2
 loda 0 8
 cup 1 l387
 fjp l418
 mst 3
 ldci 148
 cup 1 l20
 ldcn
 stra 0 8
l418
 loda 0 9
 stra 0 16
 loda 0 16
 inca 3
 loda 0 8
 stoa
 loda 0 16
 inca 6
 lda 0 14
 mov 2
 loda 0 16
 inca 1
 ldci 1
 stoi
 ldoi 9
 ldci 16
 equi
 fjp l419
 mst 3
 cup 0 l25
 ujp l420
l419
 mst 3
 ldci 5
 cup 1 l20
l420
 mst 2
 lods 0 5
 lda 0 8
 lda 0 14
 cup 3 l321
 loda 0 9
 inca 4
 lda 0 14
 mov 2
 loda 0 9
 inda 3
 loda 0 8
 neqa
 fjp l421
 mst 3
 ldci 107
 cup 1 l20
l421
l417
 loda 0 9
 ldcn
 neqa
 fjp l422
 loda 0 9
 stra 0 16
 loda 0 16
 indi 2
 ldci 1
 equi
 fjp l423
 loda 0 16
 inda 3
 ldcn
 neqa
 fjp l424
 loda 0 16
 inda 3
 ldoa 39
 equa
 fjp l425
 mst 3
 ldci 399
 cup 1 l20
 ujp l426
l425
 loda 0 16
 indi 7
 loda 0 16
 indi 5
 grti
 fjp l427
 mst 3
 ldci 102
 cup 1 l20
l427
l426
l424
l423
l422
l408
 loda 0 6
 loda 0 9
 stoa
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 fjp l428
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 cup 1 l314
l428
 ujp l429
l398
 loda 0 6
 ldcn
 stoa
l429
 retp
l395= 18
l396= 35
l430
 ent 1 l431
 ent 2 l432
 ldcn
 stra 0 7
 ldcn
 stra 0 15
 ldoi 9
 ordi
 lods 0 5
 ldc( 0 33)
 uni
 inn
 not
 fjp l433
 mst 3
 ldci 19
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 0 33)
 uni
 cup 1 l314
l433
l434
 ldoi 9
 ldci 0
 equi
 fjp l435
 loda 0 7
 stra 0 8
l436
 ldoi 9
 ldci 0
 equi
 fjp l437
 lda 0 10
 ldci 14
 csp new
 loda 0 10
 stra 0 21
 loda 0 21
 lao 14
 mov 8
 loda 0 21
 inca 10
 ldcn
 stoa
 loda 0 21
 inca 11
 loda 0 8
 stoa
 loda 0 21
 inca 12
 ldci 3
 stoi
 loda 0 10
 stra 0 8
 mst 3
 loda 0 10
 cup 1 l137
 mst 3
 cup 0 l25
 ujp l438
l437
 mst 3
 ldci 2
 cup 1 l20
l438
 ldoi 9
 ordi
 ldc( 12 16)
 inn
 not
 fjp l439
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 12 13 16 33)
 uni
 cup 1 l314
l439
 ldoi 9
 ldci 12
 neqi
 strb 2 9
 lodb 2 9
 not
 fjp l440
 mst 3
 cup 0 l25
l440
 lodb 2 9
 fjp l436
 ldoi 9
 ldci 16
 equi
 fjp l441
 mst 3
 cup 0 l25
 ujp l442
l441
 mst 3
 ldci 5
 cup 1 l20
l442
 mst 2
 lods 0 5
 ldc( 13 33)
 uni
 lda 0 15
 lda 0 16
 cup 3 l393
l443
 loda 0 8
 loda 0 7
 neqa
 fjp l444
 loda 0 8
 stra 0 21
 mst 3
 loda 0 15
 lda 1 13
 cup 2 l219
 loda 0 21
 inca 10
 loda 0 15
 stoa
 loda 0 21
 inca 13
 lodi 1 13
 stoi
 loda 0 21
 inda 11
 stra 0 8
 lodi 1 13
 lodi 0 16
 adi
 stri 1 13
 ujp l443
l444
 loda 0 10
 stra 0 7
l445
 ldoi 9
 ldci 13
 equi
 fjp l446
 mst 3
 cup 0 l25
 ldoi 9
 ordi
 lods 0 5
 ldc( 0 13 33)
 uni
 inn
 not
 fjp l447
 mst 3
 ldci 19
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 0 33)
 uni
 cup 1 l314
l447
 ujp l445
l446
 ujp l434
l435
 ldcn
 stra 0 8
l448
 loda 0 7
 ldcn
 neqa
 fjp l449
 loda 0 7
 stra 0 21
 loda 0 21
 inda 11
 stra 0 10
 loda 0 21
 inca 11
 loda 0 8
 stoa
 loda 0 7
 stra 0 8
 loda 0 10
 stra 0 7
 ujp l448
l449
 ldoi 9
 ldci 33
 equi
 fjp l450
 lda 0 15
 ldci 5
 csp new
 loda 0 15
 stra 0 21
 loda 0 21
 inca 3
 ldcn
 stoa
 loda 0 21
 inca 4
 ldcn
 stoa
 loda 0 21
 inca 2
 ldci 7
 stoi
 loda 0 6
 loda 0 15
 stoa
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l451
 lda 0 10
 ldci 14
 csp new
 loda 0 10
 stra 0 21
 loda 0 21
 lao 14
 mov 8
 loda 0 21
 inca 10
 ldcn
 stoa
 loda 0 21
 inca 12
 ldci 3
 stoi
 loda 0 21
 inca 11
 ldcn
 stoa
 loda 0 21
 inca 13
 lodi 1 13
 stoi
 mst 3
 loda 0 10
 cup 1 l137
 mst 3
 cup 0 l25
 ldoi 9
 ldci 16
 equi
 fjp l452
 mst 3
 cup 0 l25
 ujp l453
l452
 mst 3
 ldci 5
 cup 1 l20
l453
 ldoi 9
 ldci 0
 equi
 fjp l454
 mst 3
 ldc( 0)
 lda 0 9
 cup 2 l159
 loda 0 9
 inda 10
 stra 0 14
 loda 0 14
 ldcn
 neqa
 fjp l455
 mst 3
 loda 0 14
 lda 1 13
 cup 2 l219
 loda 0 10
 inca 13
 lodi 1 13
 stoi
 lodi 1 13
 loda 0 14
 indi 1
 adi
 stri 1 13
 loda 0 14
 indi 2
 ldci 1
 leqi
 mst 2
 loda 0 14
 cup 1 l387
 ior
 fjp l456
 mst 2
 ldoa 39
 loda 0 14
 cup 2 l358
 fjp l457
 mst 3
 ldci 109
 cup 1 l20
 ujp l458
l457
 mst 2
 loda 0 14
 cup 1 l387
 fjp l459
 mst 3
 ldci 399
 cup 1 l20
l459
l458
 loda 0 10
 inca 10
 loda 0 14
 stoa
 loda 0 15
 inca 3
 loda 0 10
 stoa
 ujp l460
l456
 mst 3
 ldci 110
 cup 1 l20
l460
l455
 mst 3
 cup 0 l25
 ujp l461
l454
 mst 3
 ldci 2
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 8 42)
 uni
 cup 1 l314
l461
 ujp l462
l451
 mst 3
 ldci 2
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 8 42)
 uni
 cup 1 l314
l462
 loda 0 15
 inca 1
 lodi 1 13
 stoi
 ldoi 9
 ldci 42
 equi
 fjp l463
 mst 3
 cup 0 l25
 ujp l464
l463
 mst 3
 ldci 8
 cup 1 l20
l464
 ldcn
 stra 0 14
 lodi 1 13
 stri 0 18
 lodi 1 13
 stri 0 17
l465
 ldcn
 stra 0 13
 ldoi 9
 ordi
 lods 0 5
 ldc( 13)
 uni
 inn
 not
 fjp l466
l467
 mst 2
 lods 0 5
 ldc( 8 12 16)
 uni
 lda 0 12
 lda 0 19
 cup 3 l321
 loda 0 15
 inda 3
 ldcn
 neqa
 fjp l468
 mst 2
 loda 0 15
 inda 3
 inda 10
 loda 0 12
 cup 2 l358
 not
 fjp l469
 mst 3
 ldci 111
 cup 1 l20
l469
l468
 lda 0 12
 ldci 7
 csp new
 loda 0 12
 stra 0 21
 loda 0 21
 inca 4
 loda 0 14
 stoa
 loda 0 21
 inca 3
 loda 0 13
 stoa
 loda 0 21
 inca 5
 lda 0 19
 mov 2
 loda 0 21
 inca 2
 ldci 8
 stoi
 loda 0 14
 stra 0 11
l470
 loda 0 11
 ldcn
 neqa
 fjp l471
 loda 0 11
 stra 0 21
 loda 0 21
 indi 6
 lodi 0 20
 equi
 fjp l472
 mst 3
 ldci 178
 cup 1 l20
l472
 loda 0 21
 inda 4
 stra 0 11
 ujp l470
l471
 loda 0 12
 stra 0 14
 loda 0 12
 stra 0 13
 ldoi 9
 ldci 12
 neqi
 strb 2 9
 lodb 2 9
 not
 fjp l473
 mst 3
 cup 0 l25
l473
 lodb 2 9
 fjp l467
 ldoi 9
 ldci 16
 equi
 fjp l474
 mst 3
 cup 0 l25
 ujp l475
l474
 mst 3
 ldci 5
 cup 1 l20
l475
 ldoi 9
 ldci 8
 equi
 fjp l476
 mst 3
 cup 0 l25
 ujp l477
l476
 mst 3
 ldci 9
 cup 1 l20
l477
 mst 1
 lods 0 5
 ldc( 9 13)
 uni
 lda 0 13
 cup 2 l430
 lodi 1 13
 lodi 0 17
 grti
 fjp l478
 lodi 1 13
 stri 0 17
l478
l479
 loda 0 12
 ldcn
 neqa
 fjp l480
 loda 0 12
 inda 3
 stra 0 11
 loda 0 12
 inca 3
 loda 0 13
 stoa
 loda 0 12
 inca 1
 lodi 1 13
 stoi
 loda 0 11
 stra 0 12
 ujp l479
l480
 ldoi 9
 ldci 9
 equi
 fjp l481
 mst 3
 cup 0 l25
 ldoi 9
 ordi
 lods 0 5
 ldc( 13)
 uni
 inn
 not
 fjp l482
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 ldc( 13)
 uni
 cup 1 l314
l482
 ujp l483
l481
 mst 3
 ldci 4
 cup 1 l20
l483
l466
 ldoi 9
 ldci 13
 neqi
 strb 2 9
 lodb 2 9
 not
 fjp l484
 lodi 0 18
 stri 1 13
 mst 3
 cup 0 l25
l484
 lodb 2 9
 fjp l465
 lodi 0 17
 stri 1 13
 loda 0 15
 inca 4
 loda 0 14
 stoa
 ujp l485
l450
 loda 0 6
 ldcn
 stoa
l485
 retp
l431= 22
l432= 49
l393
 ent 1 l486
 ent 2 l487
 ldoi 9
 ordi
 ldos 190
 inn
 not
 fjp l488
 mst 2
 ldci 10
 cup 1 l20
 mst 1
 lods 0 5
 ldos 190
 uni
 cup 1 l314
l488
 ldoi 9
 ordi
 ldos 190
 inn
 fjp l489
 ldoi 9
 ordi
 ldos 191
 inn
 fjp l490
 mst 0
 lods 0 5
 loda 0 6
 loda 0 7
 cup 3 l394
 ujp l491
l490
 ldoi 9
 ldci 15
 equi
 fjp l492
 lda 0 10
 ldci 4
 csp new
 loda 0 6
 loda 0 10
 stoa
 loda 0 10
 stra 0 17
 loda 0 17
 inca 3
 ldcn
 stoa
 loda 0 17
 inca 1
 ldci 1
 stoi
 loda 0 17
 inca 2
 ldci 2
 stoi
 mst 2
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l493
 ldcb 0
 srob 32
 mst 2
 ldc( 0)
 lda 0 12
 cup 2 l159
 ldcb 1
 srob 32
 loda 0 12
 ldcn
 equa
 fjp l494
 lda 0 12
 ldci 13
 csp new
 loda 0 12
 stra 0 17
 loda 0 17
 lao 14
 mov 8
 loda 0 17
 inca 10
 loda 0 10
 stoa
 loda 0 17
 inca 11
 ldoa 42
 stoa
 loda 0 17
 inca 12
 ldci 0
 stoi
 loda 0 12
 sroa 42
 ujp l495
l494
 loda 0 12
 inda 10
 ldcn
 neqa
 fjp l496
 loda 0 12
 inda 10
 indi 2
 ldci 6
 equi
 fjp l497
 mst 2
 ldci 108
 cup 1 l20
 ujp l498
l497
 loda 0 10
 inca 3
 loda 0 12
 inda 10
 stoa
l498
l496
l495
 mst 2
 cup 0 l25
 ujp l499
l493
 mst 2
 ldci 2
 cup 1 l20
l499
 ujp l500
l492
 ldoi 9
 ldci 26
 equi
 fjp l501
 mst 2
 cup 0 l25
 ldoi 9
 ordi
 ldos 185
 inn
 not
 fjp l502
 mst 2
 ldci 10
 cup 1 l20
 mst 1
 lods 0 5
 ldos 185
 uni
 cup 1 l314
l502
l501
 ldoi 9
 ldci 27
 equi
 fjp l503
 mst 2
 cup 0 l25
 ldoi 9
 ldci 10
 equi
 fjp l504
 mst 2
 cup 0 l25
 ujp l505
l504
 mst 2
 ldci 11
 cup 1 l20
l505
 ldcn
 stra 0 9
l506
 lda 0 10
 ldci 5
 csp new
 loda 0 10
 stra 0 17
 loda 0 17
 inca 4
 loda 0 9
 stoa
 loda 0 17
 inca 3
 ldcn
 stoa
 loda 0 17
 inca 2
 ldci 4
 stoi
 loda 0 10
 stra 0 9
 mst 0
 lods 0 5
 ldc( 11 12 42)
 uni
 lda 0 8
 lda 0 14
 cup 3 l394
 loda 0 9
 inca 1
 lodi 0 14
 stoi
 loda 0 8
 ldcn
 neqa
 fjp l507
 loda 0 8
 indi 2
 ldci 1
 leqi
 fjp l508
 loda 0 8
 ldoa 39
 equa
 fjp l509
 mst 2
 ldci 109
 cup 1 l20
 ldcn
 stra 0 8
 ujp l510
l509
 loda 0 8
 ldoa 40
 equa
 fjp l511
 mst 2
 ldci 149
 cup 1 l20
 ldcn
 stra 0 8
l511
l510
 loda 0 10
 inca 3
 loda 0 8
 stoa
 ujp l512
l508
 mst 2
 ldci 113
 cup 1 l20
 ldcn
 stra 0 8
l512
l507
 ldoi 9
 ldci 12
 neqi
 strb 1 9
 lodb 1 9
 not
 fjp l513
 mst 2
 cup 0 l25
l513
 lodb 1 9
 fjp l506
 ldoi 9
 ldci 11
 equi
 fjp l514
 mst 2
 cup 0 l25
 ujp l515
l514
 mst 2
 ldci 12
 cup 1 l20
l515
 ldoi 9
 ldci 42
 equi
 fjp l516
 mst 2
 cup 0 l25
 ujp l517
l516
 mst 2
 ldci 8
 cup 1 l20
l517
 mst 1
 lods 0 5
 lda 0 10
 lda 0 14
 cup 3 l393
l518
 loda 0 9
 stra 0 17
 loda 0 17
 inda 4
 stra 0 8
 loda 0 17
 inca 4
 loda 0 10
 stoa
 loda 0 17
 inda 3
 ldcn
 neqa
 fjp l519
 mst 2
 loda 0 17
 inda 3
 lda 0 16
 lda 0 15
 cup 3 l185
 mst 2
 loda 0 10
 lda 0 14
 cup 2 l219
 lodi 0 14
 lodi 0 15
 lodi 0 16
 sbi
 ldci 1
 adi
 mpi
 stri 0 14
 loda 0 17
 inca 1
 lodi 0 14
 stoi
l519
 loda 0 9
 stra 0 10
 loda 0 8
 stra 0 9
 loda 0 9
 ldcn
 equa
 fjp l518
 ujp l520
l503
 ldoi 9
 ldci 28
 equi
 fjp l521
 mst 2
 cup 0 l25
 ldoi 52
 stri 0 11
 ldoi 52
 ldci 20
 lesi
 fjp l522
 ldoi 52
 ldci 1
 adi
 sroi 52
 lao 54
 ldoi 52
 ixa 5
 stra 0 17
 loda 0 17
 ldcn
 stoa
 loda 0 17
 inca 1
 ldcn
 stoa
 loda 0 17
 inca 2
 ldci 3
 stoi
 ujp l523
l522
 mst 2
 ldci 250
 cup 1 l20
l523
 ldci 0
 stri 0 13
 mst 0
 lods 0 5
 ldc( 13)
 dif
 ldc( 39)
 uni
 lda 0 9
 cup 2 l430
 lda 0 10
 ldci 5
 csp new
 loda 0 10
 stra 0 17
 loda 0 17
 inca 3
 lao 54
 ldoi 52
 ixa 5
 inda 0
 stoa
 loda 0 17
 inca 4
 loda 0 9
 stoa
 loda 0 17
 inca 1
 lodi 0 13
 stoi
 loda 0 17
 inca 2
 ldci 5
 stoi
 lodi 0 11
 sroi 52
 ldoi 9
 ldci 39
 equi
 fjp l524
 mst 2
 cup 0 l25
 ujp l525
l524
 mst 2
 ldci 13
 cup 1 l20
l525
 ujp l526
l521
 ldoi 9
 ldci 25
 equi
 fjp l527
 mst 2
 cup 0 l25
 ldoi 9
 ldci 42
 equi
 fjp l528
 mst 2
 cup 0 l25
 ujp l529
l528
 mst 2
 ldci 8
 cup 1 l20
l529
 mst 0
 lods 0 5
 lda 0 9
 lda 0 14
 cup 3 l394
 loda 0 9
 ldcn
 neqa
 fjp l530
 loda 0 9
 indi 2
 ldci 1
 grti
 fjp l531
 mst 2
 ldci 115
 cup 1 l20
 ldcn
 stra 0 9
 ujp l532
l531
 loda 0 9
 ldoa 39
 equa
 fjp l533
 mst 2
 ldci 114
 cup 1 l20
 ldcn
 stra 0 9
 ujp l534
l533
 loda 0 9
 ldoa 40
 equa
 fjp l535
 mst 2
 ldci 169
 cup 1 l20
 ldcn
 stra 0 9
 ujp l536
l535
 mst 2
 loda 0 9
 lda 0 16
 lda 0 15
 cup 3 l185
 lodi 0 16
 ldci 0
 lesi
 lodi 0 15
 ldci 47
 grti
 ior
 fjp l537
 mst 2
 ldci 169
 cup 1 l20
l537
l536
l534
l532
l530
 lda 0 10
 ldci 4
 csp new
 loda 0 10
 stra 0 17
 loda 0 17
 inca 3
 loda 0 9
 stoa
 loda 0 17
 inca 1
 ldci 1
 stoi
 loda 0 17
 inca 2
 ldci 3
 stoi
 ujp l538
l527
 ldoi 9
 ldci 29
 equi
 fjp l539
 mst 2
 cup 0 l25
 mst 2
 ldci 399
 cup 1 l20
 mst 1
 lods 0 5
 cup 1 l314
 ldcn
 stra 0 10
l539
l538
l526
l520
 loda 0 6
 loda 0 10
 stoa
l500
l491
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 fjp l540
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 0 5
 cup 1 l314
l540
 ujp l541
l489
 loda 0 6
 ldcn
 stoa
l541
 loda 0 6
 inda 0
 ldcn
 equa
 fjp l542
 loda 0 7
 ldci 1
 stoi
 ujp l543
l542
 loda 0 7
 loda 0 6
 inda 0
 indi 1
 stoi
l543
 retp
l486= 18
l487= 54
l544
 ent 1 l545
 ent 2 l546
l547
 ldoi 9
 ldci 1
 equi
 fjp l548
 lao 54
 ldoi 52
 ixa 5
 stra 0 8
 loda 0 8
 inda 1
 stra 0 5
 ldcb 0
 strb 0 6
l549
 loda 0 5
 ldcn
 neqa
 lodb 0 6
 not
 and
 fjp l550
 loda 0 5
 indi 3
 ldoi 12
 neqi
 fjp l551
 loda 0 5
 inda 0
 stra 0 5
 ujp l552
l551
 ldcb 1
 strb 0 6
 mst 2
 ldci 166
 cup 1 l20
l552
 ujp l549
l550
 lodb 0 6
 not
 fjp l553
 lda 0 5
 ldci 4
 csp new
 loda 0 5
 stra 0 9
 loda 0 9
 inca 3
 ldoi 12
 stoi
 mst 2
 lda 0 7
 cup 1 l310
 loda 0 9
 inca 1
 ldcb 0
 stob
 loda 0 9
 loda 0 8
 inda 1
 stoa
 loda 0 9
 inca 2
 lodi 0 7
 stoi
 loda 0 8
 inca 1
 loda 0 5
 stoa
l553
 mst 2
 cup 0 l25
 ujp l554
l548
 mst 2
 ldci 15
 cup 1 l20
l554
 ldoi 9
 ordi
 lods 1 5
 ldc( 12 13)
 uni
 inn
 not
 fjp l555
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 12 13)
 uni
 cup 1 l314
l555
 ldoi 9
 ldci 12
 neqi
 strb 1 9
 lodb 1 9
 not
 fjp l556
 mst 2
 cup 0 l25
l556
 lodb 1 9
 fjp l547
 ldoi 9
 ldci 13
 equi
 fjp l557
 mst 2
 cup 0 l25
 ujp l558
l557
 mst 2
 ldci 14
 cup 1 l20
l558
 retp
l545= 10
l546= 12
l559
 ent 1 l560
 ent 2 l561
 ldoi 9
 ldci 0
 neqi
 fjp l562
 mst 2
 ldci 2
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 0)
 uni
 cup 1 l314
l562
l563
 ldoi 9
 ldci 0
 equi
 fjp l564
 lda 0 5
 ldci 15
 csp new
 loda 0 5
 stra 0 9
 loda 0 9
 lao 14
 mov 8
 loda 0 9
 inca 10
 ldcn
 stoa
 loda 0 9
 inca 11
 ldcn
 stoa
 loda 0 9
 inca 12
 ldci 1
 stoi
 mst 2
 cup 0 l25
 ldoi 9
 ldci 7
 equi
 ldoi 10
 ldci 13
 equi
 and
 fjp l565
 mst 2
 cup 0 l25
 ujp l566
l565
 mst 2
 ldci 16
 cup 1 l20
l566
 mst 1
 lods 1 5
 ldc( 13)
 uni
 lda 0 6
 lda 0 7
 cup 3 l321
 mst 2
 loda 0 5
 cup 1 l137
 loda 0 5
 inca 10
 loda 0 6
 stoa
 loda 0 5
 inca 13
 lda 0 7
 mov 2
 ldoi 9
 ldci 13
 equi
 fjp l567
 mst 2
 cup 0 l25
 ldoi 9
 ordi
 lods 1 5
 ldc( 0)
 uni
 inn
 not
 fjp l568
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 0)
 uni
 cup 1 l314
l568
 ujp l569
l567
 mst 2
 ldci 14
 cup 1 l20
l569
 ujp l563
l564
 retp
l560= 10
l561= 15
l570
 ent 1 l571
 ent 2 l572
 ldoi 9
 ldci 0
 neqi
 fjp l573
 mst 2
 ldci 2
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 0)
 uni
 cup 1 l314
l573
l574
 ldoi 9
 ldci 0
 equi
 fjp l575
 lda 0 7
 ldci 13
 csp new
 loda 0 7
 stra 0 10
 loda 0 10
 lao 14
 mov 8
 loda 0 10
 inca 10
 ldcn
 stoa
 loda 0 10
 inca 12
 ldci 0
 stoi
 mst 2
 cup 0 l25
 ldoi 9
 ldci 7
 equi
 ldoi 10
 ldci 13
 equi
 and
 fjp l576
 mst 2
 cup 0 l25
 ujp l577
l576
 mst 2
 ldci 16
 cup 1 l20
l577
 mst 1
 lods 1 5
 ldc( 13)
 uni
 lda 0 8
 lda 0 9
 cup 3 l393
 mst 2
 loda 0 7
 cup 1 l137
 loda 0 7
 inca 10
 loda 0 8
 stoa
 ldoa 42
 stra 0 6
l578
 loda 0 6
 ldcn
 neqa
 fjp l579
 loda 0 6
 loda 0 7
 equm 8
 fjp l580
 loda 0 6
 inda 10
 inca 3
 loda 0 7
 inda 10
 stoa
 loda 0 6
 ldoa 42
 neqa
 fjp l581
 loda 0 5
 inca 11
 loda 0 6
 inda 11
 stoa
 ujp l582
l581
 loda 0 6
 inda 11
 sroa 42
l582
 ujp l583
l580
 loda 0 6
 stra 0 5
l583
 loda 0 6
 inda 11
 stra 0 6
 ujp l578
l579
 ldoi 9
 ldci 13
 equi
 fjp l584
 mst 2
 cup 0 l25
 ldoi 9
 ordi
 lods 1 5
 ldc( 0)
 uni
 inn
 not
 fjp l585
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 0)
 uni
 cup 1 l314
l585
 ujp l586
l584
 mst 2
 ldci 14
 cup 1 l20
l586
 ujp l574
l575
 ldoa 42
 ldcn
 neqa
 fjp l587
 mst 2
 ldci 117
 cup 1 l20
 lda 2 6
 csp wln
l588
 lca' type-id        '
 ldci 9
 ldci 9
 lda 2 6
 csp wrs
 ldoa 42
 ldci 8
 ldci 8
 lda 2 6
 csp wrs
 lda 2 6
 csp wln
 ldoa 42
 inda 11
 sroa 42
 ldoa 42
 ldcn
 equa
 fjp l588
 ldob 24
 not
 fjp l589
 ldcc ' '
 ldoi 25
 ldci 16
 adi
 lda 2 6
 csp wrc
l589
l587
 retp
l571= 11
l572= 20
l590
 ent 1 l591
 ent 2 l592
 ldcn
 stra 0 5
l593
l594
 ldoi 9
 ldci 0
 equi
 fjp l595
 lda 0 6
 ldci 16
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 14
 mov 8
 loda 0 9
 inca 11
 loda 0 5
 stoa
 loda 0 9
 inca 12
 ldci 2
 stoi
 loda 0 9
 inca 10
 ldcn
 stoa
 loda 0 9
 inca 13
 ldci 0
 stoi
 loda 0 9
 inca 14
 ldoi 51
 stoi
 mst 2
 loda 0 6
 cup 1 l137
 loda 0 6
 stra 0 5
 mst 2
 cup 0 l25
 ujp l596
l595
 mst 2
 ldci 2
 cup 1 l20
l596
 ldoi 9
 ordi
 lods 1 5
 ldc( 12 16)
 uni
 ldos 185
 uni
 inn
 not
 fjp l597
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 12 13 16)
 uni
 ldos 185
 uni
 cup 1 l314
l597
 ldoi 9
 ldci 12
 neqi
 strb 1 9
 lodb 1 9
 not
 fjp l598
 mst 2
 cup 0 l25
l598
 lodb 1 9
 fjp l594
 ldoi 9
 ldci 16
 equi
 fjp l599
 mst 2
 cup 0 l25
 ujp l600
l599
 mst 2
 ldci 5
 cup 1 l20
l600
 mst 1
 lods 1 5
 ldc( 13)
 uni
 ldos 185
 uni
 lda 0 7
 lda 0 8
 cup 3 l393
l601
 loda 0 5
 ldcn
 neqa
 fjp l602
 loda 0 5
 stra 0 9
 mst 2
 loda 0 7
 lao 27
 cup 2 l219
 loda 0 9
 inca 10
 loda 0 7
 stoa
 loda 0 9
 inca 15
 ldoi 27
 stoi
 ldoi 27
 lodi 0 8
 adi
 sroi 27
 loda 0 9
 inda 11
 stra 0 5
 ujp l601
l602
 ldoi 9
 ldci 13
 equi
 fjp l603
 mst 2
 cup 0 l25
 ldoi 9
 ordi
 lods 1 5
 ldc( 0)
 uni
 inn
 not
 fjp l604
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 0)
 uni
 cup 1 l314
l604
 ujp l605
l603
 mst 2
 ldci 14
 cup 1 l20
l605
 ldoi 9
 ldci 0
 neqi
 ldoi 9
 ordi
 ldos 185
 inn
 not
 and
 fjp l593
 ldoa 42
 ldcn
 neqa
 fjp l606
 mst 2
 ldci 117
 cup 1 l20
 lda 2 6
 csp wln
l607
 lca' type-id        '
 ldci 9
 ldci 9
 lda 2 6
 csp wrs
 ldoa 42
 ldci 8
 ldci 8
 lda 2 6
 csp wrs
 lda 2 6
 csp wln
 ldoa 42
 inda 11
 sroa 42
 ldoa 42
 ldcn
 equa
 fjp l607
 ldob 24
 not
 fjp l608
 ldcc ' '
 ldoi 25
 ldci 16
 adi
 lda 2 6
 csp wrc
l608
l606
 retp
l591= 10
l592= 23
l610
 ent 1 l611
 ent 2 l612
 ldcn
 stra 0 9
 ldoi 9
 ordi
 lods 0 5
 ldc( 8)
 uni
 inn
 not
 fjp l613
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 lods 0 5
 uni
 ldc( 8)
 uni
 cup 1 l314
l613
 ldoi 9
 ldci 8
 equi
 fjp l614
 lodb 1 11
 fjp l615
 mst 3
 ldci 119
 cup 1 l20
l615
 mst 3
 cup 0 l25
 ldoi 9
 ordi
 ldc( 0 21 22 24)
 inn
 not
 fjp l616
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 0 9)
 uni
 cup 1 l314
l616
l617
 ldoi 9
 ordi
 ldc( 0 21 22 24)
 inn
 fjp l618
 ldoi 9
 ldci 24
 equi
 fjp l619
 mst 3
 ldci 399
 cup 1 l20
l620
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l621
 lda 0 10
 ldci 17
 csp new
 loda 0 10
 stra 0 16
 loda 0 16
 lao 14
 mov 8
 loda 0 16
 inca 10
 ldcn
 stoa
 loda 0 16
 inca 11
 loda 0 9
 stoa
 loda 0 16
 inca 14
 ldoi 51
 stoi
 loda 0 16
 inca 12
 ldci 4
 stoi
 loda 0 16
 inca 13
 ldci 1
 stoi
 loda 0 16
 inca 16
 ldci 1
 stoi
 mst 3
 loda 0 10
 cup 1 l137
 loda 0 10
 stra 0 9
 mst 3
 ldoa 41
 lao 27
 cup 2 l219
 mst 3
 cup 0 l25
 ujp l622
l621
 mst 3
 ldci 2
 cup 1 l20
l622
 ldoi 9
 ordi
 lods 2 5
 ldc( 9 12 13)
 uni
 inn
 not
 fjp l623
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 9 12 13)
 uni
 cup 1 l314
l623
 ldoi 9
 ldci 12
 neqi
 fjp l620
 ujp l624
l619
 ldoi 9
 ldci 22
 equi
 fjp l625
 mst 3
 ldci 399
 cup 1 l20
 ldcn
 stra 0 8
l626
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l627
 lda 0 10
 ldci 17
 csp new
 loda 0 10
 stra 0 16
 loda 0 16
 lao 14
 mov 8
 loda 0 16
 inca 10
 ldcn
 stoa
 loda 0 16
 inca 11
 loda 0 8
 stoa
 loda 0 16
 inca 14
 ldoi 51
 stoi
 loda 0 16
 inca 12
 ldci 5
 stoi
 loda 0 16
 inca 13
 ldci 1
 stoi
 loda 0 16
 inca 16
 ldci 1
 stoi
 mst 3
 loda 0 10
 cup 1 l137
 loda 0 10
 stra 0 8
 mst 3
 ldoa 41
 lao 27
 cup 2 l219
 mst 3
 cup 0 l25
l627
 ldoi 9
 ordi
 ldc( 12 16)
 lods 2 5
 uni
 inn
 not
 fjp l628
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 9 12 13)
 uni
 cup 1 l314
l628
 ldoi 9
 ldci 12
 neqi
 fjp l626
 ldoi 9
 ldci 16
 equi
 fjp l629
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l630
 mst 3
 ldc( 0)
 lda 0 10
 cup 2 l159
 loda 0 10
 inda 10
 stra 0 11
 loda 0 11
 ldcn
 neqa
 fjp l631
 loda 0 11
 indi 2
 ordi
 ldc( 0 1 2)
 inn
 not
 fjp l632
 mst 3
 ldci 120
 cup 1 l20
 ldcn
 stra 0 11
l632
l631
 loda 0 8
 stra 0 7
l633
 loda 0 8
 ldcn
 neqa
 fjp l634
 loda 0 8
 inca 10
 loda 0 11
 stoa
 loda 0 8
 stra 0 10
 loda 0 8
 inda 11
 stra 0 8
 ujp l633
l634
 loda 0 10
 inca 11
 loda 0 9
 stoa
 loda 0 7
 stra 0 9
 mst 3
 cup 0 l25
 ujp l635
l630
 mst 3
 ldci 2
 cup 1 l20
l635
 ldoi 9
 ordi
 lods 2 5
 ldc( 9 13)
 uni
 inn
 not
 fjp l636
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 9 13)
 uni
 cup 1 l314
l636
 ujp l637
l629
 mst 3
 ldci 5
 cup 1 l20
l637
 ujp l638
l625
 ldoi 9
 ldci 21
 equi
 fjp l639
 ldci 1
 stri 0 12
 mst 3
 cup 0 l25
 ujp l640
l639
 ldci 0
 stri 0 12
l640
 ldcn
 stra 0 8
 ldci 0
 stri 0 15
l641
 ldoi 9
 ldci 0
 equi
 fjp l642
 lda 0 10
 ldci 16
 csp new
 loda 0 10
 stra 0 16
 loda 0 16
 lao 14
 mov 8
 loda 0 16
 inca 10
 ldcn
 stoa
 loda 0 16
 inca 12
 ldci 2
 stoi
 loda 0 16
 inca 13
 lodi 0 12
 stoi
 loda 0 16
 inca 11
 loda 0 8
 stoa
 loda 0 16
 inca 14
 ldoi 51
 stoi
 mst 3
 loda 0 10
 cup 1 l137
 loda 0 10
 stra 0 8
 lodi 0 15
 ldci 1
 adi
 stri 0 15
 mst 3
 cup 0 l25
l642
 ldoi 9
 ordi
 ldc( 12 16)
 lods 2 5
 uni
 inn
 not
 fjp l643
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 9 12 13)
 uni
 cup 1 l314
l643
 ldoi 9
 ldci 12
 neqi
 strb 2 9
 lodb 2 9
 not
 fjp l644
 mst 3
 cup 0 l25
l644
 lodb 2 9
 fjp l641
 ldoi 9
 ldci 16
 equi
 fjp l645
 mst 3
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l646
 mst 3
 ldc( 0)
 lda 0 10
 cup 2 l159
 loda 0 10
 inda 10
 stra 0 11
 ldci 1
 stri 0 14
 loda 0 11
 ldcn
 neqa
 fjp l647
 lodi 0 12
 ldci 0
 equi
 fjp l648
 loda 0 11
 indi 2
 ldci 3
 leqi
 fjp l649
 loda 0 11
 indi 1
 stri 0 14
 ujp l650
l649
 loda 0 11
 indi 2
 ldci 6
 equi
 fjp l651
 mst 3
 ldci 121
 cup 1 l20
l651
l650
l648
l647
 mst 3
 ldoa 41
 lda 0 14
 cup 2 l219
 loda 0 8
 stra 0 7
 mst 3
 ldoa 41
 lao 27
 cup 2 l219
 ldoi 27
 lodi 0 15
 lodi 0 14
 mpi
 adi
 sroi 27
 ldoi 27
 stri 0 13
l652
 loda 0 8
 ldcn
 neqa
 fjp l653
 loda 0 8
 stra 0 10
 loda 0 8
 stra 0 16
 loda 0 16
 inca 10
 loda 0 11
 stoa
 lodi 0 13
 lodi 0 14
 sbi
 stri 0 13
 loda 0 16
 inca 15
 lodi 0 13
 stoi
 loda 0 8
 inda 11
 stra 0 8
 ujp l652
l653
 loda 0 10
 inca 11
 loda 0 9
 stoa
 loda 0 7
 stra 0 9
 mst 3
 cup 0 l25
 ujp l654
l646
 mst 3
 ldci 2
 cup 1 l20
l654
 ldoi 9
 ordi
 lods 2 5
 ldc( 9 13)
 uni
 inn
 not
 fjp l655
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 9 13)
 uni
 cup 1 l314
l655
 ujp l656
l645
 mst 3
 ldci 5
 cup 1 l20
l656
l638
l624
 ldoi 9
 ldci 13
 equi
 fjp l657
 mst 3
 cup 0 l25
 ldoi 9
 ordi
 lods 2 5
 ldc( 0 21 22 24)
 uni
 inn
 not
 fjp l658
 mst 3
 ldci 7
 cup 1 l20
 mst 2
 lods 2 5
 ldc( 0 9)
 uni
 cup 1 l314
l658
l657
 ujp l617
l618
 ldoi 9
 ldci 9
 equi
 fjp l659
 mst 3
 cup 0 l25
 ldoi 9
 ordi
 lods 0 5
 lods 2 5
 uni
 inn
 not
 fjp l660
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 lods 2 5
 uni
 cup 1 l314
l660
 ujp l661
l659
 mst 3
 ldci 4
 cup 1 l20
l661
 ldcn
 stra 0 7
l662
 loda 0 9
 ldcn
 neqa
 fjp l663
 loda 0 9
 stra 0 16
 loda 0 16
 inda 11
 stra 0 8
 loda 0 16
 inca 11
 loda 0 7
 stoa
 loda 0 16
 indi 12
 ldci 2
 equi
 fjp l664
 loda 0 16
 inda 10
 ldcn
 neqa
 fjp l665
 loda 0 16
 indi 13
 ldci 0
 equi
 loda 0 16
 inda 10
 indi 2
 ldci 3
 grti
 and
 fjp l666
 mst 3
 loda 0 16
 inda 10
 lao 27
 cup 2 l219
 loda 0 16
 inca 15
 ldoi 27
 stoi
 ldoi 27
 loda 0 16
 inda 10
 indi 1
 adi
 sroi 27
l666
l665
l664
 loda 0 9
 stra 0 7
 loda 0 8
 stra 0 9
 ujp l662
l663
 loda 0 6
 loda 0 7
 stoa
 ujp l667
l614
 loda 0 6
 ldcn
 stoa
l667
 retp
l611= 17
l612= 53
l609
 ent 1 l668
 ent 2 l669
 ldoi 27
 stri 0 15
 ldci 5
 sroi 27
 ldcb 0
 strb 0 11
 ldoi 9
 ldci 0
 equi
 fjp l670
 mst 2
 lao 54
 ldoi 52
 ixa 5
 inda 0
 lda 0 9
 cup 2 l149
 loda 0 9
 ldcn
 neqa
 fjp l671
 loda 0 9
 indi 12
 ldci 4
 equi
 fjp l672
 loda 0 9
 indb 18
 lodi 0 5
 ldci 24
 equi
 and
 loda 0 9
 indi 16
 ldci 0
 equi
 and
 strb 0 11
 ujp l673
l672
 loda 0 9
 indi 12
 ldci 5
 equi
 fjp l674
 loda 0 9
 indb 18
 lodi 0 5
 ldci 22
 equi
 and
 loda 0 9
 indi 16
 ldci 0
 equi
 and
 strb 0 11
 ujp l675
l674
 ldcb 0
 strb 0 11
l675
l673
 lodb 0 11
 not
 fjp l676
 mst 2
 ldci 160
 cup 1 l20
l676
l671
 lodb 0 11
 not
 fjp l677
 lodi 0 5
 ldci 24
 equi
 fjp l678
 lda 0 9
 ldci 19
 csp new
 ujp l679
l678
 lda 0 9
 ldci 19
 csp new
l679
 loda 0 9
 stra 0 18
 loda 0 18
 lao 14
 mov 8
 loda 0 18
 inca 10
 ldcn
 stoa
 loda 0 18
 inca 17
 ldcb 0
 stob
 loda 0 18
 inca 14
 ldoi 51
 stoi
 mst 2
 lda 0 16
 cup 1 l310
 loda 0 18
 inca 13
 ldci 1
 stoi
 loda 0 18
 inca 16
 ldci 0
 stoi
 loda 0 18
 inca 15
 lodi 0 16
 stoi
 lodi 0 5
 ldci 24
 equi
 fjp l680
 loda 0 18
 inca 12
 ldci 4
 stoi
 ujp l681
l680
 loda 0 18
 inca 12
 ldci 5
 stoi
l681
 mst 2
 loda 0 9
 cup 1 l137
 ujp l682
l677
 loda 0 9
 inda 11
 stra 0 8
l683
 loda 0 8
 ldcn
 neqa
 fjp l684
 loda 0 8
 stra 0 18
 loda 0 18
 indi 12
 ldci 2
 equi
 fjp l685
 loda 0 18
 inda 10
 ldcn
 neqa
 fjp l686
 loda 0 18
 indi 15
 loda 0 18
 inda 10
 indi 1
 adi
 stri 0 14
 lodi 0 14
 ldoi 27
 grti
 fjp l687
 lodi 0 14
 sroi 27
l687
l686
l685
 loda 0 8
 inda 11
 stra 0 8
 ujp l683
l684
l682
 mst 2
 cup 0 l25
 ujp l688
l670
 mst 2
 ldci 2
 cup 1 l20
 ldoa 43
 stra 0 9
l688
 ldoi 51
 stri 0 6
 ldoi 52
 stri 0 12
 ldoi 51
 ldci 10
 lesi
 fjp l689
 ldoi 51
 ldci 1
 adi
 sroi 51
 ujp l690
l689
 mst 2
 ldci 251
 cup 1 l20
l690
 ldoi 52
 ldci 20
 lesi
 fjp l691
 ldoi 52
 ldci 1
 adi
 sroi 52
 lao 54
 ldoi 52
 ixa 5
 stra 0 18
 lodb 0 11
 fjp l692
 loda 0 18
 loda 0 9
 inda 11
 stoa
 ujp l693
l692
 loda 0 18
 ldcn
 stoa
l693
 loda 0 18
 inca 1
 ldcn
 stoa
 loda 0 18
 inca 2
 ldci 0
 stoi
 ujp l694
l691
 mst 2
 ldci 250
 cup 1 l20
l694
 lodi 0 5
 ldci 24
 equi
 fjp l695
 mst 0
 ldc( 13)
 lda 0 8
 cup 2 l610
 lodb 0 11
 not
 fjp l696
 loda 0 9
 inca 11
 loda 0 8
 stoa
l696
 ujp l697
l695
 mst 0
 ldc( 13 16)
 lda 0 8
 cup 2 l610
 lodb 0 11
 not
 fjp l698
 loda 0 9
 inca 11
 loda 0 8
 stoa
l698
 ldoi 9
 ldci 16
 equi
 fjp l699
 mst 2
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l700
 lodb 0 11
 fjp l701
 mst 2
 ldci 122
 cup 1 l20
l701
 mst 2
 ldc( 0)
 lda 0 8
 cup 2 l159
 loda 0 8
 inda 10
 stra 0 10
 loda 0 9
 inca 10
 loda 0 10
 stoa
 loda 0 10
 ldcn
 neqa
 fjp l702
 loda 0 10
 indi 2
 ordi
 ldc( 0 1 2)
 inn
 not
 fjp l703
 mst 2
 ldci 120
 cup 1 l20
 loda 0 9
 inca 10
 ldcn
 stoa
l703
l702
 mst 2
 cup 0 l25
 ujp l704
l700
 mst 2
 ldci 2
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 13)
 uni
 cup 1 l314
l704
 ujp l705
l699
 lodb 0 11
 not
 fjp l706
 mst 2
 ldci 123
 cup 1 l20
l706
l705
l697
 ldoi 9
 ldci 13
 equi
 fjp l707
 mst 2
 cup 0 l25
 ujp l708
l707
 mst 2
 ldci 14
 cup 1 l20
l708
 ldoi 9
 ldci 30
 equi
 fjp l709
 lodb 0 11
 fjp l710
 mst 2
 ldci 161
 cup 1 l20
 ujp l711
l710
 loda 0 9
 inca 18
 ldcb 1
 stob
l711
 mst 2
 cup 0 l25
 ldoi 9
 ldci 13
 equi
 fjp l712
 mst 2
 cup 0 l25
 ujp l713
l712
 mst 2
 ldci 14
 cup 1 l20
l713
 ldoi 9
 ordi
 lods 1 5
 inn
 not
 fjp l714
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 cup 1 l314
l714
 ujp l715
l709
 loda 0 9
 inca 18
 ldcb 0
 stob
 lda 0 17
 csp sav
l716
 mst 2
 lods 1 5
 ldci 13
 loda 0 9
 cup 3 l313
 ldoi 9
 ldci 13
 equi
 fjp l717
 ldob 29
 fjp l718
 mst 2
 ldcb 0
 cup 1 l222
l718
 mst 2
 cup 0 l25
 ldoi 9
 ordi
 ldc( 22 24 31)
 inn
 not
 fjp l719
 mst 2
 ldci 6
 cup 1 l20
 mst 1
 lods 1 5
 cup 1 l314
l719
 ujp l720
l717
 mst 2
 ldci 14
 cup 1 l20
l720
 ldoi 9
 ordi
 ldc( 22 24 31)
 inn
 lao 5
 eof
 ior
 fjp l716
 loda 0 17
 csp rst
l715
 lodi 0 6
 sroi 51
 lodi 0 12
 sroi 52
 lodi 0 15
 sroi 27
 retp
l668= 19
l669= 38
l722
 ent 1 l723
 ent 2 l724
 lodi 1 85
 lao 1360
 lodi 0 5
 ixa 1
 indi 0
 ldci 1
 mpi
 adi
 stri 1 85
 lodi 1 85
 lodi 1 84
 grti
 fjp l725
 lodi 1 85
 stri 1 84
l725
 retp
l723= 6
l724= 8
l726
 ent 1 l727
 ent 2 l728
 ldoi 26
 ldci 10
 mod
 ldci 0
 equi
 fjp l729
 ldcc 'i'
 ldci 1
 lda 3 8
 csp wrc
 ldoi 26
 ldci 5
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l729
 retp
l727= 5
l728= 8
l730
 ent 1 l731
 ent 2 l732
 ldob 30
 fjp l733
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lda 3 8
 csp wln
l733
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l731= 6
l732= 9
l734
 ent 1 l735
 ent 2 l736
 ldob 30
 fjp l737
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lodi 0 5
 ldci 30
 equi
 fjp l738
 lao 1268
 lodi 0 6
 deci 1
 ixa 4
 ldci 12
 ldci 4
 lda 3 8
 csp wrs
 lda 3 8
 csp wln
 lodi 1 85
 lao 1421
 lodi 0 6
 deci 1
 ixa 1
 indi 0
 ldci 1
 mpi
 adi
 stri 1 85
 lodi 1 85
 lodi 1 84
 grti
 fjp l739
 lodi 1 85
 stri 1 84
l739
 ujp l740
l738
 lodi 0 5
 ldci 38
 equi
 fjp l741
 ldcc '''
 ldci 1
 lda 3 8
 csp wrc
 lda 1 15
 lodi 0 6
 deci 1
 ixa 1
 inda 0
 stra 0 8
 ldci 1
 stri 0 7
 loda 0 8
 indi 1
 stri 0 9
l742
 lodi 0 7
 lodi 0 9
 leqi
 fjp l743
 loda 0 8
 inca 2
 lodi 0 7
 deci 1
 ixa 1
 indc 0
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 7
 inci 1
 stri 0 7
 ujp l742
l743
 loda 0 8
 indi 1
 ldci 1
 adi
 stri 0 7
 ldci 16
 stri 0 9
l744
 lodi 0 7
 lodi 0 9
 leqi
 fjp l745
 ldcc ' '
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 7
 inci 1
 stri 0 7
 ujp l744
l745
 ldcc '''
 ldci 1
 lda 3 8
 csp wrc
 lda 3 8
 csp wln
 ujp l746
l741
 lodi 0 5
 ldci 42
 equi
 fjp l747
 lodi 0 6
 chr
 ldci 1
 lda 3 8
 csp wrc
 lda 3 8
 csp wln
 ujp l748
l747
 lodi 0 6
 ldci 12
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l748
l746
 mst 1
 lodi 0 5
 cup 1 l722
l740
l737
 ldoi 26
 ldci 1
 adi
 sroi 26
 retp
l735= 10
l736= 9
l749
 ent 1 l750
 ent 2 l751
 ldob 30
 fjp l752
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lodi 0 5
 ujp l753
l755
 ldcc ' '
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 6
 ldci 3
 lda 3 8
 csp wri
 lodi 0 7
 ldci 8
 lda 3 8
 csp wri
 lda 3 8
 csp wln
 ujp l754
l756
 lodi 0 6
 chr
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 6
 chr
 ldcc 'm'
 equc
 fjp l757
 lodi 0 7
 ldci 11
 lda 3 8
 csp wri
l757
 lda 3 8
 csp wln
 ujp l754
l758
 lodi 0 6
 ujp l759
l761
 lca'i               '
 ldci 2
 ldci 2
 lda 3 8
 csp wrs
 lodi 0 7
 ldci 10
 lda 3 8
 csp wri
 lda 3 8
 csp wln
 ujp l760
l762
 lca'r               '
 ldci 2
 ldci 2
 lda 3 8
 csp wrs
 lda 1 15
 lodi 0 7
 deci 1
 ixa 1
 inda 0
 stra 0 9
 ldci 1
 stri 0 8
 ldci 16
 stri 0 10
l763
 lodi 0 8
 lodi 0 10
 leqi
 fjp l764
 loda 0 9
 inca 1
 lodi 0 8
 deci 1
 ixa 1
 indc 0
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 8
 inci 1
 stri 0 8
 ujp l763
l764
 lda 3 8
 csp wln
 ujp l760
l765
 lca'b               '
 ldci 2
 ldci 2
 lda 3 8
 csp wrs
 lodi 0 7
 ldci 10
 lda 3 8
 csp wri
 lda 3 8
 csp wln
 ujp l760
l766
 ldcc 'n'
 ldci 1
 lda 3 8
 csp wrc
 lda 3 8
 csp wln
 ujp l760
l767
 lca'c '             '
 ldci 3
 ldci 3
 lda 3 8
 csp wrs
 lodi 0 7
 chr
 ldci 1
 lda 3 8
 csp wrc
 ldcc '''
 ldci 1
 lda 3 8
 csp wrc
 lda 3 8
 csp wln
 ujp l760
l768
 ldcc '('
 ldci 1
 lda 3 8
 csp wrc
 lda 1 15
 lodi 0 7
 deci 1
 ixa 1
 inda 0
 stra 0 9
 ldci 0
 stri 0 8
 ldci 47
 stri 0 10
l769
 lodi 0 8
 lodi 0 10
 leqi
 fjp l770
 lodi 0 8
 loda 0 9
 inds 1
 inn
 fjp l771
 lodi 0 8
 ldci 3
 lda 3 8
 csp wri
l771
 lodi 0 8
 inci 1
 stri 0 8
 ujp l769
l770
 ldcc ')'
 ldci 1
 lda 3 8
 csp wrc
 lda 3 8
 csp wln
 ujp l760
l759
 chki 1 6
 ldci 1
 sbi
 xjp l772
l772
 ujp l761
 ujp l762
 ujp l765
 ujp l766
 ujp l768
 ujp l767
l760
 ujp l754
l753
 chki 45 56
 ldci 45
 sbi
 xjp l773
l773
 ujp l755
 ujc
 ujp l756
 ujp l756
 ujp l756
 ujp l755
 ujp l758
 ujp l756
 ujp l756
 ujp l755
 ujp l756
 ujp l755
l754
l752
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l750= 11
l751= 11
l774
 ent 1 l775
 ent 2 l776
 loda 0 5
 ldcn
 neqa
 fjp l777
 loda 0 5
 stra 0 6
 loda 0 6
 indi 2
 ordi
 ujp l778
l780
 loda 0 5
 ldoa 40
 equa
 fjp l781
 ldcc 'i'
 ldci 1
 lda 3 8
 csp wrc
 ujp l782
l781
 loda 0 5
 ldoa 37
 equa
 fjp l783
 ldcc 'b'
 ldci 1
 lda 3 8
 csp wrc
 ujp l784
l783
 loda 0 5
 ldoa 38
 equa
 fjp l785
 ldcc 'c'
 ldci 1
 lda 3 8
 csp wrc
 ujp l786
l785
 loda 0 6
 indi 3
 ldci 1
 equi
 fjp l787
 ldcc 'i'
 ldci 1
 lda 3 8
 csp wrc
 ujp l788
l787
 ldcc 'r'
 ldci 1
 lda 3 8
 csp wrc
l788
l786
l784
l782
 ujp l779
l789
 mst 1
 loda 0 6
 inda 3
 cup 1 l774
 ujp l779
l790
 ldcc 'a'
 ldci 1
 lda 3 8
 csp wrc
 ujp l779
l791
 ldcc 's'
 ldci 1
 lda 3 8
 csp wrc
 ujp l779
l792
 ldcc 'm'
 ldci 1
 lda 3 8
 csp wrc
 ujp l779
l793
 mst 3
 ldci 500
 cup 1 l20
 ujp l779
l778
 chki 0 8
 ldci 0
 sbi
 xjp l794
l794
 ujp l780
 ujp l789
 ujp l790
 ujp l791
 ujp l792
 ujp l792
 ujp l793
 ujp l793
 ujp l793
l779
l777
 retp
l775= 7
l776= 10
l795
 ent 1 l796
 ent 2 l797
 ldob 30
 fjp l798
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 mst 1
 loda 0 6
 cup 1 l774
 lda 3 8
 csp wln
l798
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l796= 7
l797= 9
l799
 ent 1 l800
 ent 2 l801
 ldob 30
 fjp l802
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 mst 1
 loda 0 7
 cup 1 l774
 lodi 0 6
 ldci 11
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l802
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l800= 8
l801= 9
l803
 ent 1 l804
 ent 2 l805
 ldob 30
 fjp l806
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 mst 1
 loda 0 8
 cup 1 l774
 lodi 0 6
 ldci 3
 ldci 5
 lodi 0 6
 abi
 ldci 99
 grti
 ordb
 mpi
 adi
 lda 3 8
 csp wri
 lodi 0 7
 ldci 8
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l806
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l804= 9
l805= 11
l807
 ent 1 l808
 ent 2 l809
 ldoa 180
 ldcn
 neqa
 fjp l810
 ldoi 181
 ordi
 ujp l811
l813
 ldoa 180
 indi 2
 ldci 0
 equi
 ldoa 180
 ldoa 39
 neqa
 and
 fjp l814
 ldoa 180
 ldoa 37
 equa
 fjp l815
 mst 1
 ldci 51
 ldci 3
 ldoi 183
 cup 3 l749
 ujp l816
l815
 ldoa 180
 ldoa 38
 equa
 fjp l817
 mst 1
 ldci 51
 ldci 6
 ldoi 183
 cup 3 l749
 ujp l818
l817
 mst 1
 ldci 51
 ldci 1
 ldoi 183
 cup 3 l749
l818
l816
 ujp l819
l814
 ldoa 180
 ldoa 36
 equa
 fjp l820
 mst 1
 ldci 51
 ldci 4
 ldci 0
 cup 3 l749
 ujp l821
l820
 lodi 1 80
 ldci 65
 geqi
 fjp l822
 mst 3
 ldci 254
 cup 1 l20
 ujp l823
l822
 lodi 1 80
 ldci 1
 adi
 stri 1 80
 lda 1 15
 lodi 1 80
 deci 1
 ixa 1
 ldoa 183
 stoa
 ldoa 180
 ldoa 39
 equa
 fjp l824
 mst 1
 ldci 51
 ldci 2
 lodi 1 80
 cup 3 l749
 ujp l825
l824
 mst 1
 ldci 51
 ldci 5
 lodi 1 80
 cup 3 l749
l825
l823
l821
l819
 ujp l812
l826
 ldoi 182
 ordi
 ujp l827
l829
 ldoi 183
 ldci 1
 leqi
 fjp l830
 mst 1
 ldci 39
 ldoi 184
 ldoa 180
 cup 3 l799
 ujp l831
l830
 mst 1
 ldci 54
 ldoi 51
 ldoi 183
 sbi
 ldoi 184
 ldoa 180
 cup 4 l803
l831
 ujp l828
l832
 mst 1
 ldci 35
 ldoi 183
 ldoa 180
 cup 3 l799
 ujp l828
l833
 mst 3
 ldci 400
 cup 1 l20
 ujp l828
l827
 chki 0 2
 ldci 0
 sbi
 xjp l834
l834
 ujp l829
 ujp l832
 ujp l833
l828
 ujp l812
l835
 ujp l812
l811
 chki 0 2
 ldci 0
 sbi
 xjp l836
l836
 ujp l813
 ujp l826
 ujp l835
l812
 ldci 2
 sroi 181
l810
 retp
l808= 5
l809= 38
l837
 ent 1 l838
 ent 2 l839
 loda 0 5
 stra 0 6
 loda 0 6
 inda 0
 ldcn
 neqa
 fjp l840
 loda 0 6
 indi 2
 ordi
 ujp l841
l843
 loda 0 6
 indi 3
 ldci 1
 leqi
 fjp l844
 mst 1
 ldci 43
 loda 0 6
 indi 4
 loda 0 6
 inda 0
 cup 3 l799
 ujp l845
l844
 mst 1
 ldci 56
 ldoi 51
 loda 0 6
 indi 3
 sbi
 loda 0 6
 indi 4
 loda 0 6
 inda 0
 cup 4 l803
l845
 ujp l842
l846
 loda 0 6
 indi 3
 ldci 0
 neqi
 fjp l847
 mst 3
 ldci 400
 cup 1 l20
 ujp l848
l847
 mst 1
 ldci 26
 loda 0 6
 inda 0
 cup 2 l795
l848
 ujp l842
l849
 mst 3
 ldci 400
 cup 1 l20
 ujp l842
l841
 chki 0 2
 ldci 0
 sbi
 xjp l850
l850
 ujp l843
 ujp l846
 ujp l849
l842
l840
 retp
l838= 7
l839= 18
l851
 ent 1 l852
 ent 2 l853
 ldoa 180
 ldcn
 neqa
 fjp l854
 ldoi 181
 ordi
 ujp l855
l857
 mst 2
 ldoa 180
 cup 1 l387
 fjp l858
 lodi 1 80
 ldci 65
 geqi
 fjp l859
 mst 3
 ldci 254
 cup 1 l20
 ujp l860
l859
 lodi 1 80
 ldci 1
 adi
 stri 1 80
 lda 1 15
 lodi 1 80
 deci 1
 ixa 1
 ldoa 183
 stoa
 mst 1
 ldci 38
 lodi 1 80
 cup 2 l734
l860
 ujp l861
l858
 mst 3
 ldci 400
 cup 1 l20
l861
 ujp l856
l862
 ldoi 182
 ordi
 ujp l863
l865
 ldoi 183
 ldci 1
 leqi
 fjp l866
 mst 1
 ldci 37
 ldoi 184
 cup 2 l734
 ujp l867
l866
 mst 1
 ldci 50
 ldoi 51
 ldoi 183
 sbi
 ldoi 184
 cup 3 l749
l867
 ujp l864
l868
 ldoi 183
 ldci 0
 neqi
 fjp l869
 mst 1
 ldci 34
 ldoi 183
 ldoa 36
 cup 3 l799
l869
 ujp l864
l870
 mst 3
 ldci 400
 cup 1 l20
 ujp l864
l863
 chki 0 2
 ldci 0
 sbi
 xjp l871
l871
 ujp l865
 ujp l868
 ujp l870
l864
 ujp l856
l872
 mst 3
 ldci 400
 cup 1 l20
 ujp l856
l855
 chki 0 2
 ldci 0
 sbi
 xjp l873
l873
 ujp l857
 ujp l862
 ujp l872
l856
 ldci 1
 sroi 181
 ldci 1
 sroi 182
 ldci 0
 sroi 183
l854
 retp
l852= 5
l853= 21
l874
 ent 1 l875
 ent 2 l876
 mst 1
 cup 0 l807
 ldoa 180
 ldcn
 neqa
 fjp l877
 ldoa 180
 ldoa 37
 neqa
 fjp l878
 mst 3
 ldci 144
 cup 1 l20
l878
l877
 ldob 30
 fjp l879
 mst 1
 cup 0 l726
 lao 1024
 ldci 33
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lca' l             '
 ldci 8
 ldci 2
 lda 3 8
 csp wrs
 lodi 0 5
 ldci 4
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l879
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 ldci 33
 cup 1 l722
 retp
l875= 6
l876= 10
l880
 ent 1 l881
 ent 2 l882
 ldob 30
 fjp l883
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lca' l             '
 ldci 8
 ldci 2
 lda 3 8
 csp wrs
 lodi 0 6
 ldci 4
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l883
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l881= 7
l882= 9
l884
 ent 1 l885
 ent 2 l886
 ldob 30
 fjp l887
 mst 1
 cup 0 l726
 lao 1024
 lodi 0 5
 ixa 4
 ldci 4
 ldci 4
 lda 3 8
 csp wrs
 lodi 0 6
 ldci 4
 lda 3 8
 csp wri
 ldcc 'l'
 ldci 4
 lda 3 8
 csp wrc
 lodi 0 7
 ldci 4
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l887
 ldoi 26
 ldci 1
 adi
 sroi 26
 mst 1
 lodi 0 5
 cup 1 l722
 retp
l885= 8
l886= 9
l888
 ent 1 l889
 ent 2 l890
 loda 0 5
 ldcn
 neqa
 fjp l891
 loda 0 5
 ldoa 40
 neqa
 fjp l892
 loda 0 5
 ldoa 39
 neqa
 fjp l893
 loda 0 5
 indi 2
 ldci 1
 leqi
 fjp l894
 mst 3
 loda 0 5
 lda 0 7
 lda 0 6
 cup 3 l185
 mst 1
 ldci 45
 lodi 0 7
 lodi 0 6
 loda 0 5
 cup 4 l803
l894
l893
l892
l891
 retp
l889= 8
l890= 12
l895
 ent 1 l896
 ent 2 l897
 ldob 30
 fjp l898
 ldcc 'l'
 ldci 1
 lda 3 8
 csp wrc
 lodi 0 5
 ldci 4
 lda 3 8
 csp wri
 lda 3 8
 csp wln
l898
 retp
l896= 6
l897= 8
l902
 ent 1 l903
 ent 2 l904
 loda 0 6
 stra 0 16
 loda 0 16
 inda 10
 sroa 180
 ldci 1
 sroi 181
 loda 0 16
 indi 12
 ordi
 ujp l905
l907
 loda 0 16
 indi 13
 ldci 0
 equi
 fjp l908
 ldci 0
 sroi 182
 loda 0 16
 indi 14
 sroi 183
 loda 0 16
 indi 15
 sroi 184
 ujp l909
l908
 mst 2
 ldci 54
 ldoi 51
 loda 0 16
 indi 14
 sbi
 loda 0 16
 indi 15
 ldoa 36
 cup 4 l803
 ldci 1
 sroi 182
 ldci 0
 sroi 183
l909
 ujp l906
l910
 lao 54
 ldoi 53
 ixa 5
 stra 0 17
 loda 0 17
 indi 2
 ldci 1
 equi
 fjp l911
 ldci 0
 sroi 182
 loda 0 17
 indi 3
 sroi 183
 loda 0 17
 indi 4
 loda 0 16
 indi 13
 adi
 sroi 184
 ujp l912
l911
 ldoi 51
 ldci 1
 equi
 fjp l913
 mst 2
 ldci 39
 loda 0 17
 indi 3
 ldoa 36
 cup 3 l799
 ujp l914
l913
 mst 2
 ldci 54
 ldci 0
 loda 0 17
 indi 3
 ldoa 36
 cup 4 l803
l914
 ldci 1
 sroi 182
 loda 0 16
 indi 13
 sroi 183
l912
 ujp l906
l915
 loda 0 16
 indi 13
 ldci 0
 equi
 fjp l916
 mst 4
 ldci 150
 cup 1 l20
 ldcn
 sroa 180
 ujp l917
l916
 loda 0 16
 indi 16
 ldci 1
 equi
 fjp l918
 mst 4
 ldci 151
 cup 1 l20
 ujp l919
l918
 loda 0 16
 indi 14
 ldci 1
 adi
 ldoi 51
 neqi
 loda 3 7
 loda 0 6
 neqa
 ior
 fjp l920
 mst 4
 ldci 177
 cup 1 l20
l920
l919
 ldci 0
 sroi 182
 loda 0 16
 indi 14
 ldci 1
 adi
 sroi 183
 ldci 0
 sroi 184
l917
 ujp l906
l905
 chki 2 5
 ldci 2
 sbi
 xjp l921
l921
 ujp l907
 ujp l910
 ujc
 ujp l915
l906
 ldoi 9
 ordi
 ldos 188
 lods 0 5
 uni
 inn
 not
 fjp l922
 mst 4
 ldci 59
 cup 1 l20
 mst 3
 ldos 188
 lods 0 5
 uni
 cup 1 l314
l922
l923
 ldoi 9
 ordi
 ldos 188
 inn
 fjp l924
 ldoi 9
 ldci 10
 equi
 fjp l925
l926
 lda 0 7
 lao 180
 mov 5
 loda 0 7
 ldcn
 neqa
 fjp l927
 loda 0 7
 indi 2
 ldci 4
 neqi
 fjp l928
 mst 4
 ldci 138
 cup 1 l20
 ldcn
 stra 0 7
l928
l927
 mst 2
 cup 0 l851
 mst 4
 cup 0 l25
 mst 1
 lods 0 5
 ldc( 11 12)
 uni
 cup 1 l901
 mst 2
 cup 0 l807
 ldoa 180
 ldcn
 neqa
 fjp l929
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l930
 mst 4
 ldci 113
 cup 1 l20
 ujp l931
l930
 mst 3
 ldoa 180
 ldoa 40
 cup 2 l358
 not
 fjp l932
 mst 2
 ldci 58
 ldoa 180
 cup 2 l795
l932
l931
l929
 loda 0 7
 ldcn
 neqa
 fjp l933
 loda 0 7
 stra 0 16
 mst 3
 loda 0 16
 inda 3
 ldoa 180
 cup 2 l358
 fjp l934
 loda 0 16
 inda 3
 ldcn
 neqa
 fjp l935
 mst 4
 loda 0 16
 inda 3
 lda 0 14
 lda 0 13
 cup 3 l185
 ldob 34
 fjp l936
 mst 2
 ldci 45
 lodi 0 14
 lodi 0 13
 ldoa 40
 cup 4 l803
l936
 lodi 0 14
 ldci 0
 grti
 fjp l937
 mst 2
 ldci 31
 lodi 0 14
 ldoa 40
 cup 3 l799
 ujp l938
l937
 lodi 0 14
 ldci 0
 lesi
 fjp l939
 mst 2
 ldci 34
 lodi 0 14
 ngi
 ldoa 40
 cup 3 l799
l939
l938
l935
 ujp l940
l934
 mst 4
 ldci 139
 cup 1 l20
l940
 loda 0 16
 inda 4
 sroa 180
 ldci 1
 sroi 181
 ldci 1
 sroi 182
 ldci 0
 sroi 183
 ldoa 180
 ldcn
 neqa
 fjp l941
 ldoa 180
 indi 1
 stri 0 15
 mst 4
 ldoa 180
 lda 0 15
 cup 2 l219
 mst 2
 ldci 36
 lodi 0 15
 cup 2 l734
l941
l933
 ldoi 9
 ldci 12
 neqi
 fjp l926
 ldoi 9
 ldci 11
 equi
 fjp l942
 mst 4
 cup 0 l25
 ujp l943
l942
 mst 4
 ldci 12
 cup 1 l20
l943
 ujp l944
l925
 ldoi 9
 ldci 14
 equi
 fjp l945
 ldoa 180
 ldcn
 neqa
 fjp l946
 ldoa 180
 indi 2
 ldci 5
 neqi
 fjp l947
 mst 4
 ldci 140
 cup 1 l20
 ldcn
 sroa 180
l947
l946
 mst 4
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l948
 ldoa 180
 ldcn
 neqa
 fjp l949
 mst 4
 ldoa 180
 inda 3
 lda 0 12
 cup 2 l149
 loda 0 12
 ldcn
 equa
 fjp l950
 mst 4
 ldci 152
 cup 1 l20
 ldcn
 sroa 180
 ujp l951
l950
 loda 0 12
 stra 0 16
 loda 0 16
 inda 10
 sroa 180
 ldoi 182
 ordi
 ujp l952
l954
 ldoi 184
 loda 0 16
 indi 13
 adi
 sroi 184
 ujp l953
l955
 ldoi 183
 loda 0 16
 indi 13
 adi
 sroi 183
 ujp l953
l956
 mst 4
 ldci 400
 cup 1 l20
 ujp l953
l952
 chki 0 2
 ldci 0
 sbi
 xjp l957
l957
 ujp l954
 ujp l955
 ujp l956
l953
l951
l949
 mst 4
 cup 0 l25
 ujp l958
l948
 mst 4
 ldci 2
 cup 1 l20
l958
 ujp l959
l945
 ldoa 180
 ldcn
 neqa
 fjp l960
 ldoa 180
 stra 0 16
 loda 0 16
 indi 2
 ldci 2
 equi
 fjp l961
 mst 2
 cup 0 l807
 loda 0 16
 inda 3
 sroa 180
 ldob 34
 fjp l962
 mst 2
 ldci 45
 ldci 1
 ldci 32767
 ldoa 36
 cup 4 l803
l962
 ldci 1
 sroi 181
 ldci 1
 sroi 182
 ldci 0
 sroi 183
 ujp l963
l961
 loda 0 16
 indi 2
 ldci 6
 equi
 fjp l964
 loda 0 16
 inda 3
 sroa 180
 ujp l965
l964
 mst 4
 ldci 141
 cup 1 l20
l965
l963
l960
 mst 4
 cup 0 l25
l959
l944
 ldoi 9
 ordi
 lods 0 5
 ldos 188
 uni
 inn
 not
 fjp l966
 mst 4
 ldci 6
 cup 1 l20
 mst 3
 lods 0 5
 ldos 188
 uni
 cup 1 l314
l966
 ujp l923
l924
 retp
l903= 18
l904= 61
l968
 ent 1 l969
 ent 2 l970
 ldoi 9
 ldci 0
 equi
 fjp l971
 mst 5
 ldc( 2 3)
 lda 0 6
 cup 2 l159
 mst 5
 cup 0 l25
 ujp l972
l971
 mst 5
 ldci 2
 cup 1 l20
 ldoa 46
 stra 0 6
l972
 mst 2
 lods 0 5
 loda 0 6
 cup 2 l902
 retp
l969= 7
l970= 10
l973
 ent 1 l974
 ent 2 l975
 mst 1
 lods 1 5
 ldc( 9)
 uni
 cup 1 l968
 mst 3
 cup 0 l851
 ldoa 180
 ldcn
 neqa
 fjp l976
 ldoa 180
 indi 2
 ldci 6
 neqi
 fjp l977
 mst 5
 ldci 116
 cup 1 l20
l977
l976
 lodi 1 7
 ldci 2
 leqi
 fjp l978
 mst 3
 ldci 30
 lodi 1 7
 cup 2 l734
 ujp l979
l978
 mst 5
 ldci 399
 cup 1 l20
l979
 retp
l974= 5
l975= 10
l980
 ent 1 l981
 ent 2 l982
 ldci 1
 stri 0 6
 ldci 5
 stri 0 7
 ldoi 9
 ldci 8
 equi
 fjp l983
 mst 5
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 ldoa 180
 stra 0 8
 ldcb 0
 strb 4 9
 loda 0 8
 ldcn
 neqa
 fjp l984
 loda 0 8
 indi 2
 ldci 6
 equi
 fjp l985
 loda 0 8
 stra 0 9
 loda 0 9
 inda 3
 ldoa 38
 equa
 fjp l986
 ldoi 183
 stri 0 6
 ldoi 184
 stri 0 7
 ujp l987
l986
 mst 5
 ldci 399
 cup 1 l20
l987
 ldoi 9
 ldci 9
 equi
 fjp l988
 lodi 1 7
 ldci 5
 equi
 fjp l989
 mst 5
 ldci 116
 cup 1 l20
l989
 ldcb 1
 strb 4 9
 ujp l990
l988
 ldoi 9
 ldci 12
 neqi
 fjp l991
 mst 5
 ldci 116
 cup 1 l20
 mst 4
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l314
l991
l990
 ldoi 9
 ldci 12
 equi
 fjp l992
 mst 5
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 ujp l993
l992
 ldcb 1
 strb 4 9
l993
l985
l984
 lodb 4 9
 not
 fjp l994
l995
 mst 3
 cup 0 l851
 mst 3
 ldci 50
 ldoi 51
 lodi 0 6
 sbi
 lodi 0 7
 cup 3 l749
 ldoa 180
 ldcn
 neqa
 fjp l996
 ldoa 180
 indi 2
 ldci 1
 leqi
 fjp l997
 mst 4
 ldoa 40
 ldoa 180
 cup 2 l358
 fjp l998
 mst 3
 ldci 30
 ldci 3
 cup 2 l734
 ujp l999
l998
 mst 4
 ldoa 39
 ldoa 180
 cup 2 l358
 fjp l1000
 mst 3
 ldci 30
 ldci 4
 cup 2 l734
 ujp l1001
l1000
 mst 4
 ldoa 38
 ldoa 180
 cup 2 l358
 fjp l1002
 mst 3
 ldci 30
 ldci 5
 cup 2 l734
 ujp l1003
l1002
 mst 5
 ldci 399
 cup 1 l20
l1003
l1001
l999
 ujp l1004
l997
 mst 5
 ldci 116
 cup 1 l20
l1004
l996
 ldoi 9
 ldci 12
 neqi
 strb 4 9
 lodb 4 9
 not
 fjp l1005
 mst 5
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
l1005
 lodb 4 9
 fjp l995
l994
 ldoi 9
 ldci 9
 equi
 fjp l1006
 mst 5
 cup 0 l25
 ujp l1007
l1006
 mst 5
 ldci 4
 cup 1 l20
l1007
 ujp l1008
l983
 lodi 1 7
 ldci 5
 equi
 fjp l1009
 mst 5
 ldci 116
 cup 1 l20
l1009
l1008
 lodi 1 7
 ldci 11
 equi
 fjp l1010
 mst 3
 ldci 50
 ldoi 51
 lodi 0 6
 sbi
 lodi 0 7
 cup 3 l749
 mst 3
 ldci 30
 ldci 21
 cup 2 l734
l1010
 retp
l981= 10
l982= 33
l1011
 ent 1 l1012
 ent 2 l1013
 lodi 1 7
 stri 0 7
 ldci 1
 stri 0 9
 ldci 5
 ldci 1
 adi
 stri 0 11
 ldoi 9
 ldci 8
 equi
 fjp l1014
 mst 5
 cup 0 l25
 mst 2
 lods 1 5
 ldc( 9 12 16)
 uni
 cup 1 l901
 ldoa 180
 stra 0 5
 ldcb 0
 strb 4 9
 loda 0 5
 ldcn
 neqa
 fjp l1015
 loda 0 5
 indi 2
 ldci 6
 equi
 fjp l1016
 loda 0 5
 stra 0 12
 loda 0 12
 inda 3
 ldoa 38
 equa
 fjp l1017
 ldoi 183
 stri 0 9
 ldoi 184
 stri 0 11
 ujp l1018
l1017
 mst 5
 ldci 399
 cup 1 l20
l1018
 ldoi 9
 ldci 9
 equi
 fjp l1019
 lodi 0 7
 ldci 6
 equi
 fjp l1020
 mst 5
 ldci 116
 cup 1 l20
l1020
 ldcb 1
 strb 4 9
 ujp l1021
l1019
 ldoi 9
 ldci 12
 neqi
 fjp l1022
 mst 5
 ldci 116
 cup 1 l20
 mst 4
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l314
l1022
l1021
 ldoi 9
 ldci 12
 equi
 fjp l1023
 mst 5
 cup 0 l25
 mst 2
 lods 1 5
 ldc( 9 12 16)
 uni
 cup 1 l901
 ujp l1024
l1023
 ldcb 1
 strb 4 9
l1024
l1016
l1015
 lodb 4 9
 not
 fjp l1025
l1026
 ldoa 180
 stra 0 5
 loda 0 5
 ldcn
 neqa
 fjp l1027
 loda 0 5
 indi 2
 ldci 1
 leqi
 fjp l1028
 mst 3
 cup 0 l807
 ujp l1029
l1028
 mst 3
 cup 0 l851
l1029
l1027
 ldoi 9
 ldci 16
 equi
 fjp l1030
 mst 5
 cup 0 l25
 mst 2
 lods 1 5
 ldc( 9 12 16)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1031
 ldoa 180
 ldoa 40
 neqa
 fjp l1032
 mst 5
 ldci 116
 cup 1 l20
l1032
l1031
 mst 3
 cup 0 l807
 ldcb 0
 strb 0 6
 ujp l1033
l1030
 ldcb 1
 strb 0 6
l1033
 ldoi 9
 ldci 16
 equi
 fjp l1034
 mst 5
 cup 0 l25
 mst 2
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1035
 ldoa 180
 ldoa 40
 neqa
 fjp l1036
 mst 5
 ldci 116
 cup 1 l20
l1036
l1035
 loda 0 5
 ldoa 39
 neqa
 fjp l1037
 mst 5
 ldci 124
 cup 1 l20
l1037
 mst 3
 cup 0 l807
 mst 5
 ldci 399
 cup 1 l20
 ujp l1038
l1034
 loda 0 5
 ldoa 40
 equa
 fjp l1039
 lodb 0 6
 fjp l1040
 mst 3
 ldci 51
 ldci 1
 ldci 10
 cup 3 l749
l1040
 mst 3
 ldci 50
 ldoi 51
 lodi 0 9
 sbi
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 6
 cup 2 l734
 ujp l1041
l1039
 loda 0 5
 ldoa 39
 equa
 fjp l1042
 lodb 0 6
 fjp l1043
 mst 3
 ldci 51
 ldci 1
 ldci 20
 cup 3 l749
l1043
 mst 3
 ldci 50
 ldoi 51
 lodi 0 9
 sbi
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 8
 cup 2 l734
 ujp l1044
l1042
 loda 0 5
 ldoa 38
 equa
 fjp l1045
 lodb 0 6
 fjp l1046
 mst 3
 ldci 51
 ldci 1
 ldci 1
 cup 3 l749
l1046
 mst 3
 ldci 50
 ldoi 51
 lodi 0 9
 sbi
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 9
 cup 2 l734
 ujp l1047
l1045
 loda 0 5
 ldcn
 neqa
 fjp l1048
 loda 0 5
 indi 2
 ldci 0
 equi
 fjp l1049
 mst 5
 ldci 399
 cup 1 l20
 ujp l1050
l1049
 mst 4
 loda 0 5
 cup 1 l387
 fjp l1051
 loda 0 5
 indi 1
 ldci 1
 dvi
 stri 0 10
 lodb 0 6
 fjp l1052
 mst 3
 ldci 51
 ldci 1
 lodi 0 10
 cup 3 l749
l1052
 mst 3
 ldci 51
 ldci 1
 lodi 0 10
 cup 3 l749
 mst 3
 ldci 50
 ldoi 51
 lodi 0 9
 sbi
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 10
 cup 2 l734
 ujp l1053
l1051
 mst 5
 ldci 116
 cup 1 l20
l1053
l1050
l1048
l1047
l1044
l1041
l1038
 ldoi 9
 ldci 12
 neqi
 strb 4 9
 lodb 4 9
 not
 fjp l1054
 mst 5
 cup 0 l25
 mst 2
 lods 1 5
 ldc( 9 12 16)
 uni
 cup 1 l901
l1054
 lodb 4 9
 fjp l1026
l1025
 ldoi 9
 ldci 9
 equi
 fjp l1055
 mst 5
 cup 0 l25
 ujp l1056
l1055
 mst 5
 ldci 4
 cup 1 l20
l1056
 ujp l1057
l1014
 lodi 1 7
 ldci 6
 equi
 fjp l1058
 mst 5
 ldci 116
 cup 1 l20
l1058
l1057
 lodi 0 7
 ldci 12
 equi
 fjp l1059
 mst 3
 ldci 50
 ldoi 51
 lodi 0 9
 sbi
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 22
 cup 2 l734
l1059
 retp
l1012= 13
l1013= 62
l1060
 ent 1 l1061
 ent 2 l1062
 mst 5
 ldci 399
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 ldcn
 stra 0 6
 ldcn
 stra 0 5
 ldoa 180
 ldcn
 neqa
 fjp l1063
 ldoa 180
 stra 0 7
 loda 0 7
 indi 2
 ldci 4
 equi
 fjp l1064
 loda 0 7
 inda 3
 stra 0 6
 loda 0 7
 inda 4
 stra 0 5
 ujp l1065
l1064
 mst 5
 ldci 116
 cup 1 l20
l1065
l1063
 ldoi 9
 ldci 12
 equi
 fjp l1066
 mst 5
 cup 0 l25
 ujp l1067
l1066
 mst 5
 ldci 20
 cup 1 l20
l1067
 mst 2
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1068
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1069
 mst 5
 ldci 116
 cup 1 l20
 ujp l1070
l1069
 mst 4
 loda 0 6
 ldoa 180
 cup 2 l358
 not
 fjp l1071
 mst 5
 ldci 116
 cup 1 l20
l1071
l1070
l1068
 ldoi 9
 ldci 12
 equi
 fjp l1072
 mst 5
 cup 0 l25
 ujp l1073
l1072
 mst 5
 ldci 20
 cup 1 l20
l1073
 mst 1
 lods 1 5
 ldc( 9)
 uni
 cup 1 l968
 ldoa 180
 ldcn
 neqa
 fjp l1074
 ldoa 180
 stra 0 7
 loda 0 7
 indi 2
 ldci 4
 equi
 fjp l1075
 mst 4
 loda 0 7
 inda 4
 loda 0 5
 cup 2 l358
 not
 mst 4
 loda 0 7
 inda 3
 loda 0 6
 cup 2 l358
 not
 ior
 fjp l1076
 mst 5
 ldci 116
 cup 1 l20
l1076
 ujp l1077
l1075
 mst 5
 ldci 116
 cup 1 l20
l1077
l1074
 retp
l1061= 8
l1062= 19
l1078
 ent 1 l1079
 ent 2 l1080
 mst 5
 ldci 399
 cup 1 l20
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 ldcn
 stra 0 6
 ldcn
 stra 0 5
 ldoa 180
 ldcn
 neqa
 fjp l1081
 ldoa 180
 stra 0 7
 loda 0 7
 indi 2
 ldci 4
 equi
 fjp l1082
 loda 0 7
 inda 3
 stra 0 6
 loda 0 7
 inda 4
 stra 0 5
 ujp l1083
l1082
 mst 5
 ldci 116
 cup 1 l20
l1083
l1081
 ldoi 9
 ldci 12
 equi
 fjp l1084
 mst 5
 cup 0 l25
 ujp l1085
l1084
 mst 5
 ldci 20
 cup 1 l20
l1085
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 ldoa 180
 ldcn
 neqa
 fjp l1086
 ldoa 180
 stra 0 7
 loda 0 7
 indi 2
 ldci 4
 equi
 fjp l1087
 mst 4
 loda 0 7
 inda 4
 loda 0 5
 cup 2 l358
 not
 mst 4
 loda 0 7
 inda 3
 loda 0 6
 cup 2 l358
 not
 ior
 fjp l1088
 mst 5
 ldci 116
 cup 1 l20
l1088
 ujp l1089
l1087
 mst 5
 ldci 116
 cup 1 l20
l1089
l1086
 ldoi 9
 ldci 12
 equi
 fjp l1090
 mst 5
 cup 0 l25
 ujp l1091
l1090
 mst 5
 ldci 20
 cup 1 l20
l1091
 mst 2
 lods 1 5
 ldc( 9)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1092
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1093
 mst 5
 ldci 116
 cup 1 l20
 ujp l1094
l1093
 mst 4
 loda 0 6
 ldoa 180
 cup 2 l358
 not
 fjp l1095
 mst 5
 ldci 116
 cup 1 l20
l1095
l1094
l1092
 retp
l1079= 8
l1080= 19
l1096
 ent 1 l1098
 ent 2 l1099
 mst 1
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l968
 mst 3
 cup 0 l851
 ldcn
 stra 0 6
 ldci 0
 stri 0 9
 ldci 0
 stri 0 11
 ldoa 180
 ldcn
 neqa
 fjp l1100
 ldoa 180
 stra 0 14
 loda 0 14
 indi 2
 ldci 2
 equi
 fjp l1101
 loda 0 14
 inda 3
 ldcn
 neqa
 fjp l1102
 loda 0 14
 inda 3
 indi 1
 stri 0 11
 loda 0 14
 inda 3
 indi 2
 ldci 5
 equi
 fjp l1103
 loda 0 14
 inda 3
 inda 4
 stra 0 6
l1103
l1102
 ujp l1104
l1101
 mst 5
 ldci 116
 cup 1 l20
l1104
l1100
l1105
 ldoi 9
 ldci 12
 equi
 fjp l1106
 mst 5
 cup 0 l25
 mst 4
 lods 1 5
 ldc( 9 12)
 uni
 lda 0 5
 lda 0 12
 cup 3 l321
 lodi 0 9
 ldci 1
 adi
 stri 0 9
 loda 0 6
 ldcn
 equa
 fjp l1107
 mst 5
 ldci 158
 cup 1 l20
 ujp l1108
l1107
 loda 0 6
 indi 2
 ldci 7
 neqi
 fjp l1109
 mst 5
 ldci 162
 cup 1 l20
 ujp l1110
l1109
 loda 0 6
 inda 3
 ldcn
 neqa
 fjp l1111
 mst 4
 loda 0 5
 cup 1 l387
 loda 0 5
 ldoa 39
 equa
 ior
 fjp l1112
 mst 5
 ldci 159
 cup 1 l20
 ujp l1113
l1112
 mst 4
 loda 0 6
 inda 3
 inda 10
 loda 0 5
 cup 2 l358
 fjp l1114
 loda 0 6
 inda 4
 stra 0 5
l1115
 loda 0 5
 ldcn
 neqa
 fjp l1116
 loda 0 5
 stra 0 14
 loda 0 14
 indi 6
 lodi 0 13
 equi
 fjp l1117
 loda 0 14
 indi 1
 stri 0 11
 loda 0 14
 inda 3
 stra 0 6
 ujp l1097
 ujp l1118
l1117
 loda 0 14
 inda 4
 stra 0 5
l1118
 ujp l1115
l1116
 loda 0 6
 indi 1
 stri 0 11
 ldcn
 stra 0 6
 ujp l1119
l1114
 mst 5
 ldci 116
 cup 1 l20
l1119
l1113
l1111
l1110
l1108
l1097
 ujp l1105
l1106
 mst 3
 ldci 51
 ldci 1
 lodi 0 11
 cup 3 l749
 mst 3
 ldci 30
 ldci 12
 cup 2 l734
 retp
l1098= 15
l1099= 20
l1120
 ent 1 l1121
 ent 2 l1122
 mst 1
 lods 1 5
 ldc( 9)
 uni
 cup 1 l968
 ldoa 180
 ldcn
 neqa
 fjp l1123
 ldoa 180
 indi 2
 ldci 2
 equi
 fjp l1124
 mst 3
 cup 0 l851
 mst 3
 ldci 30
 ldci 23
 cup 2 l734
 ujp l1125
l1124
 mst 5
 ldci 116
 cup 1 l20
l1125
l1123
 retp
l1121= 5
l1122= 9
l1126
 ent 1 l1127
 ent 2 l1128
 mst 1
 lods 1 5
 ldc( 9)
 uni
 cup 1 l968
 ldoa 180
 ldcn
 neqa
 fjp l1129
 ldoa 180
 indi 2
 ldci 2
 equi
 fjp l1130
 mst 3
 cup 0 l807
 mst 3
 ldci 30
 ldci 13
 cup 2 l734
 ujp l1131
l1130
 mst 5
 ldci 116
 cup 1 l20
l1131
l1129
 retp
l1127= 5
l1128= 9
l1132
 ent 1 l1133
 ent 2 l1134
 ldoa 180
 ldcn
 neqa
 fjp l1135
 ldoa 180
 ldoa 40
 equa
 fjp l1136
 mst 3
 ldci 0
 cup 1 l730
 ujp l1137
l1136
 ldoa 180
 ldoa 39
 equa
 fjp l1138
 mst 3
 ldci 1
 cup 1 l730
 ujp l1139
l1138
 mst 5
 ldci 125
 cup 1 l20
 ldoa 40
 sroa 180
l1139
l1137
l1135
 retp
l1133= 5
l1134= 9
l1140
 ent 1 l1141
 ent 2 l1142
 ldoa 180
 ldcn
 neqa
 fjp l1143
 ldoa 180
 ldoa 40
 equa
 fjp l1144
 mst 3
 ldci 24
 cup 1 l730
 ujp l1145
l1144
 ldoa 180
 ldoa 39
 equa
 fjp l1146
 mst 3
 ldci 25
 cup 1 l730
 ujp l1147
l1146
 mst 5
 ldci 125
 cup 1 l20
 ldoa 40
 sroa 180
l1147
l1145
l1143
 retp
l1141= 5
l1142= 9
l1148
 ent 1 l1149
 ent 2 l1150
 ldoa 180
 ldcn
 neqa
 fjp l1151
 ldoa 180
 ldoa 39
 neqa
 fjp l1152
 mst 5
 ldci 125
 cup 1 l20
l1152
l1151
 mst 3
 ldci 27
 cup 1 l730
 ldoa 40
 sroa 180
 retp
l1149= 5
l1150= 8
l1153
 ent 1 l1154
 ent 2 l1155
 ldoa 180
 ldcn
 neqa
 fjp l1156
 ldoa 180
 ldoa 40
 neqa
 fjp l1157
 mst 5
 ldci 125
 cup 1 l20
l1157
l1156
 mst 3
 ldci 20
 cup 1 l730
 ldoa 37
 sroa 180
 retp
l1154= 5
l1155= 8
l1158
 ent 1 l1159
 ent 2 l1160
 ldoa 180
 ldcn
 neqa
 fjp l1161
 ldoa 180
 indi 2
 ldci 3
 geqi
 fjp l1162
 mst 5
 ldci 125
 cup 1 l20
l1162
l1161
 mst 3
 ldci 58
 ldoa 180
 cup 2 l795
 ldoa 40
 sroa 180
 retp
l1159= 5
l1160= 9
l1163
 ent 1 l1164
 ent 2 l1165
 ldoa 180
 ldcn
 neqa
 fjp l1166
 ldoa 180
 ldoa 40
 neqa
 fjp l1167
 mst 5
 ldci 125
 cup 1 l20
l1167
l1166
 mst 3
 ldci 59
 cup 1 l730
 ldoa 38
 sroa 180
 retp
l1164= 5
l1165= 8
l1168
 ent 1 l1169
 ent 2 l1170
 ldoa 180
 ldcn
 neqa
 fjp l1171
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1172
 mst 5
 ldci 125
 cup 1 l20
l1172
l1171
 lodi 1 7
 ldci 7
 equi
 fjp l1173
 mst 3
 ldci 31
 ldci 1
 ldoa 180
 cup 3 l799
 ujp l1174
l1173
 mst 3
 ldci 34
 ldci 1
 ldoa 180
 cup 3 l799
l1174
 retp
l1169= 5
l1170= 12
l1175
 ent 1 l1176
 ent 2 l1177
 ldoi 9
 ldci 8
 equi
 fjp l1178
 mst 5
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 9)
 uni
 cup 1 l968
 ldoi 9
 ldci 9
 equi
 fjp l1179
 mst 5
 cup 0 l25
 ujp l1180
l1179
 mst 5
 ldci 4
 cup 1 l20
l1180
 ujp l1181
l1178
 ldoa 35
 sroa 180
 ldci 1
 sroi 181
 ldci 0
 sroi 182
 ldci 1
 sroi 183
 ldci 5
 sroi 184
l1181
 mst 3
 cup 0 l851
 ldoa 180
 ldcn
 neqa
 fjp l1182
 ldoa 180
 indi 2
 ldci 6
 neqi
 fjp l1183
 mst 5
 ldci 125
 cup 1 l20
l1183
l1182
 lodi 1 7
 ldci 9
 equi
 fjp l1184
 mst 3
 ldci 8
 cup 1 l730
 ujp l1185
l1184
 mst 3
 ldci 30
 ldci 14
 cup 2 l734
l1185
 ldoa 37
 sroa 180
 retp
l1176= 5
l1177= 12
l1186
 ent 1 l1187
 ent 2 l1188
 ldci 0
 stri 0 11
 loda 1 6
 stra 0 12
 loda 0 12
 inda 11
 stra 0 6
 loda 0 12
 indi 16
 stri 0 8
 loda 0 12
 indb 17
 not
 fjp l1189
 mst 3
 ldci 41
 ldoi 51
 loda 0 12
 indi 14
 sbi
 cup 2 l734
l1189
 ldoi 9
 ldci 8
 equi
 fjp l1190
 ldoi 27
 stri 0 10
l1191
 ldcb 0
 strb 0 9
 lodi 0 8
 ldci 0
 equi
 fjp l1192
 loda 0 6
 ldcn
 equa
 fjp l1193
 mst 5
 ldci 126
 cup 1 l20
 ujp l1194
l1193
 loda 0 6
 indi 12
 ordi
 ldc( 4 5)
 inn
 strb 0 9
l1194
 ujp l1195
l1192
 mst 5
 ldci 399
 cup 1 l20
l1195
 mst 5
 cup 0 l25
 lodb 0 9
 fjp l1196
 mst 5
 ldci 399
 cup 1 l20
 ldoi 9
 ldci 0
 neqi
 fjp l1197
 mst 5
 ldci 2
 cup 1 l20
 mst 4
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l314
 ujp l1198
l1197
 loda 0 6
 indi 12
 ldci 4
 equi
 fjp l1199
 mst 5
 ldc( 4)
 lda 0 5
 cup 2 l159
 ujp l1200
l1199
 mst 5
 ldc( 5)
 lda 0 5
 cup 2 l159
 mst 4
 loda 0 5
 inda 10
 loda 0 6
 inda 10
 cup 2 l358
 not
 fjp l1201
 mst 5
 ldci 128
 cup 1 l20
l1201
l1200
 mst 5
 cup 0 l25
 ldoi 9
 ordi
 lods 1 5
 ldc( 9 12)
 uni
 inn
 not
 fjp l1202
 mst 5
 ldci 6
 cup 1 l20
 mst 4
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l314
l1202
l1198
 ujp l1203
l1196
 mst 2
 lods 1 5
 ldc( 9 12)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1204
 lodi 0 8
 ldci 0
 equi
 fjp l1205
 loda 0 6
 ldcn
 neqa
 fjp l1206
 loda 0 6
 inda 10
 stra 0 7
 loda 0 7
 ldcn
 neqa
 fjp l1207
 loda 0 6
 indi 13
 ldci 0
 equi
 fjp l1208
 loda 0 7
 indi 2
 ldci 3
 leqi
 fjp l1209
 mst 3
 cup 0 l807
 ldob 34
 fjp l1210
 mst 3
 loda 0 7
 cup 1 l888
l1210
 mst 4
 ldoa 39
 loda 0 7
 cup 2 l358
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1211
 mst 3
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1211
 lodi 0 11
 loda 0 7
 indi 1
 adi
 stri 0 11
 mst 5
 ldoa 41
 lda 0 11
 cup 2 l219
 ujp l1212
l1209
 mst 3
 cup 0 l851
 lodi 0 11
 ldci 1
 adi
 stri 0 11
 mst 5
 ldoa 41
 lda 0 11
 cup 2 l219
l1212
 ujp l1213
l1208
 ldoi 181
 ldci 1
 equi
 fjp l1214
 mst 3
 cup 0 l851
 lodi 0 11
 ldci 1
 adi
 stri 0 11
 mst 5
 ldoa 41
 lda 0 11
 cup 2 l219
 ujp l1215
l1214
 mst 5
 ldci 154
 cup 1 l20
l1215
l1213
 mst 4
 loda 0 7
 ldoa 180
 cup 2 l358
 not
 fjp l1216
 mst 5
 ldci 142
 cup 1 l20
l1216
l1207
l1206
 ujp l1217
l1205
l1217
l1204
l1203
 lodi 0 8
 ldci 0
 equi
 loda 0 6
 ldcn
 neqa
 and
 fjp l1218
 loda 0 6
 inda 11
 stra 0 6
l1218
 ldoi 9
 ldci 12
 neqi
 fjp l1191
 lodi 0 10
 sroi 27
 ldoi 9
 ldci 9
 equi
 fjp l1219
 mst 5
 cup 0 l25
 ujp l1220
l1219
 mst 5
 ldci 4
 cup 1 l20
l1220
l1190
 lodi 0 8
 ldci 0
 equi
 fjp l1221
 loda 0 6
 ldcn
 neqa
 fjp l1222
 mst 5
 ldci 126
 cup 1 l20
l1222
 loda 1 6
 stra 0 12
 loda 0 12
 indb 17
 fjp l1223
 mst 3
 ldci 30
 loda 0 12
 indi 15
 cup 2 l734
 ujp l1224
l1223
 mst 3
 ldci 46
 lodi 0 11
 loda 0 12
 indi 15
 cup 3 l884
l1224
l1221
 loda 1 6
 inda 10
 sroa 180
 retp
l1187= 13
l1188= 41
l967
 ent 1 l1225
 ent 2 l1226
 loda 0 6
 indi 13
 ldci 0
 equi
 fjp l1227
 loda 0 6
 indi 14
 stri 0 7
 loda 0 6
 indi 12
 ldci 4
 equi
 fjp l1228
 lodi 0 7
 ldc( 5 6 11 12)
 inn
 not
 fjp l1229
 ldoi 9
 ldci 8
 equi
 fjp l1230
 mst 4
 cup 0 l25
 ujp l1231
l1230
 mst 4
 ldci 9
 cup 1 l20
l1231
l1229
 lodi 0 7
 ujp l1232
l1234
 mst 0
 cup 0 l973
 ujp l1233
l1235
 mst 0
 cup 0 l980
 ujp l1233
l1236
 mst 0
 cup 0 l1011
 ujp l1233
l1237
 mst 0
 cup 0 l1060
 ujp l1233
l1238
 mst 0
 cup 0 l1078
 ujp l1233
l1239
 mst 0
 cup 0 l1096
 ujp l1233
l1240
 mst 0
 cup 0 l1126
 ujp l1233
l1241
 mst 0
 cup 0 l1120
 ujp l1233
l1232
 chki 1 13
 ldci 1
 sbi
 xjp l1242
l1242
 ujp l1234
 ujp l1234
 ujp l1234
 ujp l1234
 ujp l1235
 ujp l1236
 ujp l1237
 ujp l1238
 ujp l1239
 ujp l1240
 ujp l1235
 ujp l1236
 ujp l1241
l1233
 lodi 0 7
 ldc( 5 6 11 12)
 inn
 not
 fjp l1243
 ldoi 9
 ldci 9
 equi
 fjp l1244
 mst 4
 cup 0 l25
 ujp l1245
l1244
 mst 4
 ldci 4
 cup 1 l20
l1245
l1243
 ujp l1246
l1228
 lodi 0 7
 ldci 8
 leqi
 fjp l1247
 ldoi 9
 ldci 8
 equi
 fjp l1248
 mst 4
 cup 0 l25
 ujp l1249
l1248
 mst 4
 ldci 9
 cup 1 l20
l1249
 mst 1
 lods 0 5
 ldc( 9)
 uni
 cup 1 l901
 mst 2
 cup 0 l807
l1247
 lodi 0 7
 ujp l1250
l1252
 mst 0
 cup 0 l1132
 ujp l1251
l1253
 mst 0
 cup 0 l1140
 ujp l1251
l1254
 mst 0
 cup 0 l1148
 ujp l1251
l1255
 mst 0
 cup 0 l1153
 ujp l1251
l1256
 mst 0
 cup 0 l1158
 ujp l1251
l1257
 mst 0
 cup 0 l1163
 ujp l1251
l1258
 mst 0
 cup 0 l1168
 ujp l1251
l1259
 mst 0
 cup 0 l1175
 ujp l1251
l1250
 chki 1 10
 ldci 1
 sbi
 xjp l1260
l1260
 ujp l1252
 ujp l1253
 ujp l1254
 ujp l1255
 ujp l1256
 ujp l1257
 ujp l1258
 ujp l1258
 ujp l1259
 ujp l1259
l1251
 lodi 0 7
 ldci 8
 leqi
 fjp l1261
 ldoi 9
 ldci 9
 equi
 fjp l1262
 mst 4
 cup 0 l25
 ujp l1263
l1262
 mst 4
 ldci 4
 cup 1 l20
l1263
l1261
l1246
 ujp l1264
l1227
 mst 0
 cup 0 l1186
l1264
 retp
l1225= 8
l1226= 11
l1267
 ent 1 l1268
 ent 2 l1269
 ldoi 9
 ordi
 ldos 187
 inn
 not
 fjp l1270
 mst 7
 ldci 58
 cup 1 l20
 mst 6
 lods 0 5
 ldos 187
 uni
 cup 1 l314
 ldcn
 sroa 180
l1270
l1271
 ldoi 9
 ordi
 ldos 187
 inn
 fjp l1272
 ldoi 9
 ordi
 ujp l1273
l1275
 mst 7
 ldc( 1 2 3 5)
 lda 0 6
 cup 2 l159
 mst 7
 cup 0 l25
 loda 0 6
 indi 12
 ldci 5
 equi
 fjp l1276
 mst 4
 lods 0 5
 loda 0 6
 cup 2 l967
 ldci 2
 sroi 181
 ldoa 180
 ldcn
 neqa
 fjp l1277
 ldoa 180
 indi 2
 ldci 1
 equi
 fjp l1278
 ldoa 180
 inda 3
 sroa 180
l1278
l1277
 ujp l1279
l1276
 loda 0 6
 indi 12
 ldci 1
 equi
 fjp l1280
 loda 0 6
 stra 0 11
 loda 0 11
 inda 10
 sroa 180
 ldci 0
 sroi 181
 lao 182
 loda 0 11
 inca 13
 mov 2
 ujp l1281
l1280
 mst 4
 lods 0 5
 loda 0 6
 cup 2 l902
 ldoa 180
 ldcn
 neqa
 fjp l1282
 ldoa 180
 stra 0 11
 loda 0 11
 indi 2
 ldci 1
 equi
 fjp l1283
 loda 0 11
 inda 3
 sroa 180
l1283
l1282
l1281
l1279
 ujp l1274
l1284
 ldoa 40
 sroa 180
 ldci 0
 sroi 181
 lao 182
 lao 11
 mov 2
 mst 7
 cup 0 l25
 ujp l1274
l1285
 ldoa 39
 sroa 180
 ldci 0
 sroi 181
 lao 182
 lao 11
 mov 2
 mst 7
 cup 0 l25
 ujp l1274
l1286
 ldoi 13
 ldci 1
 equi
 fjp l1287
 ldoa 38
 sroa 180
 ujp l1288
l1287
 lda 0 10
 ldci 5
 csp new
 loda 0 10
 stra 0 11
 loda 0 11
 inca 4
 ldoa 38
 stoa
 loda 0 11
 inca 2
 ldci 4
 stoi
 loda 0 11
 inca 3
 ldcn
 stoa
 loda 0 11
 inca 1
 ldoi 13
 ldci 1
 mpi
 stoi
 loda 0 10
 sroa 180
l1288
 ldci 0
 sroi 181
 lao 182
 lao 11
 mov 2
 mst 7
 cup 0 l25
 ujp l1274
l1289
 mst 7
 cup 0 l25
 mst 4
 lods 0 5
 ldc( 9)
 uni
 cup 1 l901
 ldoi 9
 ldci 9
 equi
 fjp l1290
 mst 7
 cup 0 l25
 ujp l1291
l1290
 mst 7
 ldci 4
 cup 1 l20
l1291
 ujp l1274
l1292
 mst 7
 cup 0 l25
 mst 1
 lods 0 5
 cup 1 l1267
 mst 5
 cup 0 l807
 mst 5
 ldci 19
 cup 1 l730
 ldoa 180
 ldcn
 neqa
 fjp l1293
 ldoa 180
 ldoa 37
 neqa
 fjp l1294
 mst 7
 ldci 135
 cup 1 l20
 ldcn
 sroa 180
l1294
l1293
 ujp l1274
l1295
 mst 7
 cup 0 l25
 ldc()
 strs 0 9
 ldcb 0
 strb 0 8
 lda 0 10
 ldci 4
 csp new
 loda 0 10
 stra 0 11
 loda 0 11
 inca 3
 ldcn
 stoa
 loda 0 11
 inca 1
 ldci 1
 stoi
 loda 0 11
 inca 2
 ldci 3
 stoi
 ldoi 9
 ldci 11
 equi
 fjp l1296
 loda 0 10
 sroa 180
 ldci 0
 sroi 181
 mst 7
 cup 0 l25
 ujp l1297
l1296
l1298
 mst 4
 lods 0 5
 ldc( 11 12)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1299
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1300
 mst 7
 ldci 136
 cup 1 l20
 ldcn
 sroa 180
 ujp l1301
l1300
 mst 6
 loda 0 10
 inda 3
 ldoa 180
 cup 2 l358
 fjp l1302
 ldoi 181
 ldci 0
 equi
 fjp l1303
 ldoi 183
 ldci 0
 lesi
 ldoi 183
 ldci 47
 grti
 ior
 fjp l1304
 mst 7
 ldci 304
 cup 1 l20
 ujp l1305
l1304
 lods 0 9
 ldoi 183
 sgs
 uni
 strs 0 9
l1305
 ujp l1306
l1303
 mst 5
 cup 0 l807
 mst 6
 ldoa 180
 ldoa 40
 cup 2 l358
 not
 fjp l1307
 mst 5
 ldci 58
 ldoa 180
 cup 2 l795
l1307
 mst 5
 ldci 23
 cup 1 l730
 lodb 0 8
 fjp l1308
 mst 5
 ldci 28
 cup 1 l730
 ujp l1309
l1308
 ldcb 1
 strb 0 8
l1309
l1306
 loda 0 10
 inca 3
 ldoa 180
 stoa
 loda 0 10
 sroa 180
 ujp l1310
l1302
 mst 7
 ldci 137
 cup 1 l20
l1310
l1301
l1299
 ldoi 9
 ldci 12
 neqi
 strb 6 9
 lodb 6 9
 not
 fjp l1311
 mst 7
 cup 0 l25
l1311
 lodb 6 9
 fjp l1298
 ldoi 9
 ldci 11
 equi
 fjp l1312
 mst 7
 cup 0 l25
 ujp l1313
l1312
 mst 7
 ldci 12
 cup 1 l20
l1313
l1297
 lodb 0 8
 fjp l1314
 lods 0 9
 ldc()
 neqs
 fjp l1315
 lda 0 7
 ldci 2
 csp new
 loda 0 7
 inca 1
 lods 0 9
 stos
 loda 0 7
 ldci 1
 stoi
 lodi 5 80
 ldci 65
 equi
 fjp l1316
 mst 7
 ldci 254
 cup 1 l20
 ujp l1317
l1316
 lodi 5 80
 ldci 1
 adi
 stri 5 80
 lda 5 15
 lodi 5 80
 deci 1
 ixa 1
 loda 0 7
 stoa
 mst 5
 ldci 51
 ldci 5
 lodi 5 80
 cup 3 l749
 mst 5
 ldci 28
 cup 1 l730
 ldci 2
 sroi 181
l1317
l1315
 ujp l1318
l1314
 lda 0 7
 ldci 2
 csp new
 loda 0 7
 inca 1
 lods 0 9
 stos
 loda 0 7
 ldci 1
 stoi
 loda 0 7
 sroa 183
l1318
 ujp l1274
l1273
 chki 0 10
 ldci 0
 sbi
 xjp l1319
l1319
 ujp l1275
 ujp l1284
 ujp l1285
 ujp l1286
 ujp l1292
 ujc
 ujc
 ujc
 ujp l1289
 ujc
 ujp l1295
l1274
 ldoi 9
 ordi
 lods 0 5
 inn
 not
 fjp l1320
 mst 7
 ldci 6
 cup 1 l20
 mst 6
 lods 0 5
 ldos 187
 uni
 cup 1 l314
l1320
 ujp l1271
l1272
 retp
l1268= 12
l1269= 37
l1266
 ent 1 l1321
 ent 2 l1322
 mst 0
 lods 0 5
 ldc( 5)
 uni
 cup 1 l1267
l1323
 ldoi 9
 ldci 5
 equi
 fjp l1324
 mst 4
 cup 0 l807
 lda 0 6
 lao 180
 mov 5
 ldoi 10
 stri 0 11
 mst 6
 cup 0 l25
 mst 0
 lods 0 5
 ldc( 5)
 uni
 cup 1 l1267
 mst 4
 cup 0 l807
 loda 0 6
 ldcn
 neqa
 ldoa 180
 ldcn
 neqa
 and
 fjp l1325
 lodi 0 11
 ordi
 ujp l1326
l1328
 loda 0 6
 ldoa 40
 equa
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1329
 mst 4
 ldci 15
 cup 1 l730
 ujp l1330
l1329
 loda 0 6
 ldoa 40
 equa
 fjp l1331
 mst 4
 ldci 9
 cup 1 l730
 ldoa 39
 stra 0 6
 ujp l1332
l1331
 ldoa 180
 ldoa 40
 equa
 fjp l1333
 mst 4
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1333
l1332
 loda 0 6
 ldoa 39
 equa
 ldoa 180
 ldoa 39
 equa
 and
 fjp l1334
 mst 4
 ldci 16
 cup 1 l730
 ujp l1335
l1334
 loda 0 6
 indi 2
 ldci 3
 equi
 mst 5
 loda 0 6
 ldoa 180
 cup 2 l358
 and
 fjp l1336
 mst 4
 ldci 12
 cup 1 l730
 ujp l1337
l1336
 mst 6
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1337
l1335
l1330
 ujp l1327
l1338
 ldoa 180
 ldoa 40
 equa
 fjp l1339
 mst 4
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1339
 loda 0 6
 ldoa 40
 equa
 fjp l1340
 mst 4
 ldci 9
 cup 1 l730
 ldoa 39
 stra 0 6
l1340
 loda 0 6
 ldoa 39
 equa
 ldoa 180
 ldoa 39
 equa
 and
 fjp l1341
 mst 4
 ldci 7
 cup 1 l730
 ujp l1342
l1341
 mst 6
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1342
 ujp l1327
l1343
 loda 0 6
 ldoa 40
 equa
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1344
 mst 4
 ldci 6
 cup 1 l730
 ujp l1345
l1344
 mst 6
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1345
 ujp l1327
l1346
 loda 0 6
 ldoa 40
 equa
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1347
 mst 4
 ldci 14
 cup 1 l730
 ujp l1348
l1347
 mst 6
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1348
 ujp l1327
l1349
 loda 0 6
 ldoa 37
 equa
 ldoa 180
 ldoa 37
 equa
 and
 fjp l1350
 mst 4
 ldci 4
 cup 1 l730
 ujp l1351
l1350
 mst 6
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1351
 ujp l1327
l1326
 chki 0 4
 ldci 0
 sbi
 xjp l1352
l1352
 ujp l1328
 ujp l1338
 ujp l1349
 ujp l1343
 ujp l1346
l1327
 ujp l1353
l1325
 ldcn
 sroa 180
l1353
 ujp l1323
l1324
 retp
l1321= 12
l1322= 26
l1265
 ent 1 l1354
 ent 2 l1355
 ldcb 0
 strb 0 12
 ldoi 9
 ldci 6
 equi
 ldoi 10
 ordi
 ldc( 5 6)
 inn
 and
 fjp l1356
 ldoi 10
 ldci 6
 equi
 strb 0 12
 mst 5
 cup 0 l25
l1356
 mst 0
 lods 0 5
 ldc( 6)
 uni
 cup 1 l1266
 lodb 0 12
 fjp l1357
 mst 3
 cup 0 l807
 ldoa 180
 ldoa 40
 equa
 fjp l1358
 mst 3
 ldci 17
 cup 1 l730
 ujp l1359
l1358
 ldoa 180
 ldoa 39
 equa
 fjp l1360
 mst 3
 ldci 18
 cup 1 l730
 ujp l1361
l1360
 mst 5
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1361
l1359
l1357
l1362
 ldoi 9
 ldci 6
 equi
 fjp l1363
 mst 3
 cup 0 l807
 lda 0 6
 lao 180
 mov 5
 ldoi 10
 stri 0 11
 mst 5
 cup 0 l25
 mst 0
 lods 0 5
 ldc( 6)
 uni
 cup 1 l1266
 mst 3
 cup 0 l807
 loda 0 6
 ldcn
 neqa
 ldoa 180
 ldcn
 neqa
 and
 fjp l1364
 lodi 0 11
 ordi
 ujp l1365
l1367
 loda 0 6
 ldoa 40
 equa
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1368
 mst 3
 ldci 2
 cup 1 l730
 ujp l1369
l1368
 loda 0 6
 ldoa 40
 equa
 fjp l1370
 mst 3
 ldci 9
 cup 1 l730
 ldoa 39
 stra 0 6
 ujp l1371
l1370
 ldoa 180
 ldoa 40
 equa
 fjp l1372
 mst 3
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1372
l1371
 loda 0 6
 ldoa 39
 equa
 ldoa 180
 ldoa 39
 equa
 and
 fjp l1373
 mst 3
 ldci 3
 cup 1 l730
 ujp l1374
l1373
 loda 0 6
 indi 2
 ldci 3
 equi
 mst 4
 loda 0 6
 ldoa 180
 cup 2 l358
 and
 fjp l1375
 mst 3
 ldci 28
 cup 1 l730
 ujp l1376
l1375
 mst 5
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1376
l1374
l1369
 ujp l1366
l1377
 loda 0 6
 ldoa 40
 equa
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1378
 mst 3
 ldci 21
 cup 1 l730
 ujp l1379
l1378
 loda 0 6
 ldoa 40
 equa
 fjp l1380
 mst 3
 ldci 9
 cup 1 l730
 ldoa 39
 stra 0 6
 ujp l1381
l1380
 ldoa 180
 ldoa 40
 equa
 fjp l1382
 mst 3
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1382
l1381
 loda 0 6
 ldoa 39
 equa
 ldoa 180
 ldoa 39
 equa
 and
 fjp l1383
 mst 3
 ldci 22
 cup 1 l730
 ujp l1384
l1383
 loda 0 6
 indi 2
 ldci 3
 equi
 mst 4
 loda 0 6
 ldoa 180
 cup 2 l358
 and
 fjp l1385
 mst 3
 ldci 5
 cup 1 l730
 ujp l1386
l1385
 mst 5
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1386
l1384
l1379
 ujp l1366
l1387
 loda 0 6
 ldoa 37
 equa
 ldoa 180
 ldoa 37
 equa
 and
 fjp l1388
 mst 3
 ldci 13
 cup 1 l730
 ujp l1389
l1388
 mst 5
 ldci 134
 cup 1 l20
 ldcn
 sroa 180
l1389
 ujp l1366
l1365
 chki 5 7
 ldci 5
 sbi
 xjp l1390
l1390
 ujp l1367
 ujp l1377
 ujp l1387
l1366
 ujp l1391
l1364
 ldcn
 sroa 180
l1391
 ujp l1362
l1363
 retp
l1354= 13
l1355= 28
l901
 ent 1 l1392
 ent 2 l1393
 mst 0
 lods 0 5
 ldc( 7)
 uni
 cup 1 l1265
 ldoi 9
 ldci 7
 equi
 fjp l1394
 ldoa 180
 ldcn
 neqa
 fjp l1395
 ldoa 180
 indi 2
 ldci 3
 leqi
 fjp l1396
 mst 2
 cup 0 l807
 ujp l1397
l1396
 mst 2
 cup 0 l851
l1397
l1395
 lda 0 6
 lao 180
 mov 5
 ldoi 10
 stri 0 11
 lodi 0 11
 ldci 14
 equi
 fjp l1398
 mst 3
 ldoa 180
 ldoa 40
 cup 2 l358
 not
 fjp l1399
 mst 2
 ldci 58
 ldoa 180
 cup 2 l795
l1399
l1398
 mst 4
 cup 0 l25
 mst 0
 lods 0 5
 cup 1 l1265
 ldoa 180
 ldcn
 neqa
 fjp l1400
 ldoa 180
 indi 2
 ldci 3
 leqi
 fjp l1401
 mst 2
 cup 0 l807
 ujp l1402
l1401
 mst 2
 cup 0 l851
l1402
l1400
 loda 0 6
 ldcn
 neqa
 ldoa 180
 ldcn
 neqa
 and
 fjp l1403
 lodi 0 11
 ldci 14
 equi
 fjp l1404
 ldoa 180
 indi 2
 ldci 3
 equi
 fjp l1405
 mst 3
 loda 0 6
 ldoa 180
 inda 3
 cup 2 l358
 fjp l1406
 mst 2
 ldci 11
 cup 1 l730
 ujp l1407
l1406
 mst 4
 ldci 129
 cup 1 l20
 ldcn
 sroa 180
l1407
 ujp l1408
l1405
 mst 4
 ldci 130
 cup 1 l20
 ldcn
 sroa 180
l1408
 ujp l1409
l1404
 loda 0 6
 ldoa 180
 neqa
 fjp l1410
 loda 0 6
 ldoa 40
 equa
 fjp l1411
 mst 2
 ldci 9
 cup 1 l730
 ldoa 39
 stra 0 6
 ujp l1412
l1411
 ldoa 180
 ldoa 40
 equa
 fjp l1413
 mst 2
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1413
l1412
l1410
 mst 3
 loda 0 6
 ldoa 180
 cup 2 l358
 fjp l1414
 loda 0 6
 indi 1
 stri 0 13
 loda 0 6
 indi 2
 ordi
 ujp l1415
l1417
 loda 0 6
 ldoa 39
 equa
 fjp l1418
 ldcc 'r'
 strc 0 12
 ujp l1419
l1418
 loda 0 6
 ldoa 37
 equa
 fjp l1420
 ldcc 'b'
 strc 0 12
 ujp l1421
l1420
 loda 0 6
 ldoa 38
 equa
 fjp l1422
 ldcc 'c'
 strc 0 12
 ujp l1423
l1422
 ldcc 'i'
 strc 0 12
l1423
l1421
l1419
 ujp l1416
l1424
 lodi 0 11
 ordi
 ldc( 8 9 10 11)
 inn
 fjp l1425
 mst 4
 ldci 131
 cup 1 l20
l1425
 ldcc 'a'
 strc 0 12
 ujp l1416
l1426
 lodi 0 11
 ordi
 ldc( 8 11)
 inn
 fjp l1427
 mst 4
 ldci 132
 cup 1 l20
l1427
 ldcc 's'
 strc 0 12
 ujp l1416
l1428
 mst 3
 loda 0 6
 cup 1 l387
 not
 fjp l1429
 mst 4
 ldci 134
 cup 1 l20
l1429
 ldcc 'm'
 strc 0 12
 ujp l1416
l1430
 mst 4
 ldci 134
 cup 1 l20
 ldcc 'm'
 strc 0 12
 ujp l1416
l1431
 mst 4
 ldci 133
 cup 1 l20
 ldcc 'f'
 strc 0 12
 ujp l1416
l1415
 chki 0 6
 ldci 0
 sbi
 xjp l1432
l1432
 ujp l1417
 ujc
 ujp l1424
 ujp l1426
 ujp l1428
 ujp l1430
 ujp l1431
l1416
 lodi 0 11
 ordi
 ujp l1433
l1435
 mst 2
 ldci 53
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1436
 mst 2
 ldci 52
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1437
 mst 2
 ldci 49
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1438
 mst 2
 ldci 48
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1439
 mst 2
 ldci 55
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1440
 mst 2
 ldci 47
 lodc 0 12
 ordc
 lodi 0 13
 cup 3 l749
 ujp l1434
l1433
 chki 8 13
 ldci 8
 sbi
 xjp l1441
l1441
 ujp l1435
 ujp l1436
 ujp l1438
 ujp l1437
 ujp l1439
 ujp l1440
l1434
 ujp l1442
l1414
 mst 4
 ldci 129
 cup 1 l20
l1442
l1409
l1403
 ldoa 37
 sroa 180
 ldci 2
 sroi 181
l1394
 retp
l1392= 14
l1393= 42
l1443
 ent 1 l1444
 ent 2 l1445
 mst 1
 lods 1 5
 ldc( 17)
 uni
 loda 0 5
 cup 2 l902
 ldoi 9
 ldci 17
 equi
 fjp l1446
 ldoa 180
 ldcn
 neqa
 fjp l1447
 ldoi 182
 ldci 0
 neqi
 ldoa 180
 indi 2
 ldci 3
 grti
 ior
 fjp l1448
 mst 2
 cup 0 l851
l1448
l1447
 lda 0 6
 lao 180
 mov 5
 mst 4
 cup 0 l25
 mst 1
 lods 1 5
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1449
 ldoa 180
 indi 2
 ldci 3
 leqi
 fjp l1450
 mst 2
 cup 0 l807
 ujp l1451
l1450
 mst 2
 cup 0 l851
l1451
l1449
 loda 0 6
 ldcn
 neqa
 ldoa 180
 ldcn
 neqa
 and
 fjp l1452
 mst 3
 ldoa 39
 loda 0 6
 cup 2 l358
 ldoa 180
 ldoa 40
 equa
 and
 fjp l1453
 mst 2
 ldci 10
 cup 1 l730
 ldoa 39
 sroa 180
l1453
 mst 3
 loda 0 6
 ldoa 180
 cup 2 l358
 fjp l1454
 loda 0 6
 indi 2
 ordi
 ujp l1455
l1457
 ldob 34
 fjp l1458
 mst 2
 loda 0 6
 cup 1 l888
l1458
 mst 2
 lda 0 6
 cup 1 l837
 ujp l1456
l1459
 ldob 34
 fjp l1460
 mst 2
 ldci 45
 ldci 0
 ldci 32767
 ldoa 36
 cup 4 l803
l1460
 mst 2
 lda 0 6
 cup 1 l837
 ujp l1456
l1461
 mst 2
 lda 0 6
 cup 1 l837
 ujp l1456
l1462
 mst 2
 ldci 40
 loda 0 6
 indi 1
 cup 2 l734
 ujp l1456
l1463
 mst 4
 ldci 146
 cup 1 l20
 ujp l1456
l1455
 chki 0 6
 ldci 0
 sbi
 xjp l1464
l1464
 ujp l1457
 ujp l1457
 ujp l1459
 ujp l1461
 ujp l1462
 ujp l1462
 ujp l1463
l1456
 ujp l1465
l1454
 mst 4
 ldci 129
 cup 1 l20
l1465
l1452
 ujp l1466
l1446
 mst 4
 ldci 51
 cup 1 l20
l1466
 retp
l1444= 11
l1445= 24
l1467
 ent 1 l1468
 ent 2 l1469
 ldoi 9
 ldci 1
 equi
 fjp l1470
 ldcb 0
 strb 0 6
 ldoi 52
 stri 0 8
l1471
 lao 54
 lodi 0 8
 ixa 5
 indi 2
 ldci 0
 neqi
 fjp l1472
 lodi 0 8
 ldci 1
 sbi
 stri 0 8
 ujp l1471
l1472
 lodi 0 8
 stri 0 7
l1473
 lao 54
 lodi 0 8
 ixa 5
 inda 1
 stra 0 5
l1474
 loda 0 5
 ldcn
 neqa
 lodb 0 6
 not
 and
 fjp l1475
 loda 0 5
 stra 0 9
 loda 0 9
 indi 3
 ldoi 12
 equi
 fjp l1476
 ldcb 1
 strb 0 6
 lodi 0 8
 lodi 0 7
 equi
 fjp l1477
 mst 2
 ldci 57
 loda 0 9
 indi 2
 cup 2 l880
 ujp l1478
l1477
 mst 4
 ldci 399
 cup 1 l20
l1478
 ujp l1479
l1476
 loda 0 9
 inda 0
 stra 0 5
l1479
 ujp l1474
l1475
 lodi 0 8
 ldci 1
 sbi
 stri 0 8
 lodb 0 6
 lodi 0 8
 ldci 0
 equi
 ior
 fjp l1473
 lodb 0 6
 not
 fjp l1480
 mst 4
 ldci 167
 cup 1 l20
l1480
 mst 4
 cup 0 l25
 ujp l1481
l1470
 mst 4
 ldci 15
 cup 1 l20
l1481
 retp
l1468= 10
l1469= 11
l1482
 ent 1 l1483
 ent 2 l1484
l1485
l1486
 mst 2
 lods 1 5
 ldc( 13 39)
 uni
 cup 1 l899
 ldoi 9
 ordi
 ldos 186
 inn
 not
 fjp l1486
 ldoi 9
 ldci 13
 neqi
 strb 3 9
 lodb 3 9
 not
 fjp l1487
 mst 4
 cup 0 l25
l1487
 lodb 3 9
 fjp l1485
 ldoi 9
 ldci 39
 equi
 fjp l1488
 mst 4
 cup 0 l25
 ujp l1489
l1488
 mst 4
 ldci 13
 cup 1 l20
l1489
 retp
l1483= 5
l1484= 8
l1490
 ent 1 l1491
 ent 2 l1492
 mst 1
 lods 1 5
 ldc( 46)
 uni
 cup 1 l901
 mst 4
 lda 0 6
 cup 1 l310
 mst 2
 lodi 0 6
 cup 1 l874
 ldoi 9
 ldci 46
 equi
 fjp l1493
 mst 4
 cup 0 l25
 ujp l1494
l1493
 mst 4
 ldci 52
 cup 1 l20
l1494
 mst 2
 lods 1 5
 ldc( 40)
 uni
 cup 1 l899
 ldoi 9
 ldci 40
 equi
 fjp l1495
 mst 4
 lda 0 5
 cup 1 l310
 mst 2
 ldci 57
 lodi 0 5
 cup 2 l880
 mst 2
 lodi 0 6
 cup 1 l895
 mst 4
 cup 0 l25
 mst 2
 lods 1 5
 cup 1 l899
 mst 2
 lodi 0 5
 cup 1 l895
 ujp l1496
l1495
 mst 2
 lodi 0 6
 cup 1 l895
l1496
 retp
l1491= 7
l1492= 17
l1497
 ent 1 l1499
 ent 2 l1500
 mst 1
 lods 1 5
 ldc( 12 16 42)
 uni
 cup 1 l901
 mst 2
 cup 0 l807
 mst 4
 lda 0 16
 cup 1 l310
 ldoa 180
 stra 0 6
 loda 0 6
 ldcn
 neqa
 fjp l1501
 loda 0 6
 indi 2
 ldci 0
 neqi
 loda 0 6
 ldoa 39
 equa
 ior
 fjp l1502
 mst 4
 ldci 144
 cup 1 l20
 ldcn
 stra 0 6
 ujp l1503
l1502
 mst 3
 loda 0 6
 ldoa 40
 cup 2 l358
 not
 fjp l1504
 mst 2
 ldci 58
 loda 0 6
 cup 2 l795
l1504
l1503
l1501
 mst 2
 ldci 57
 lodi 0 16
 cup 2 l880
 ldoi 9
 ldci 42
 equi
 fjp l1505
 mst 4
 cup 0 l25
 ujp l1506
l1505
 mst 4
 ldci 8
 cup 1 l20
l1506
 ldcn
 stra 0 10
 mst 4
 lda 0 17
 cup 1 l310
l1507
 ldcn
 stra 0 7
 mst 4
 lda 0 15
 cup 1 l310
 ldoi 9
 ordi
 ldc( 13 39)
 inn
 not
 fjp l1508
l1509
 mst 3
 lods 1 5
 ldc( 12 16)
 uni
 lda 0 5
 lda 0 11
 cup 3 l321
 loda 0 6
 ldcn
 neqa
 fjp l1510
 mst 3
 loda 0 6
 loda 0 5
 cup 2 l358
 fjp l1511
 loda 0 10
 stra 0 9
 ldcn
 stra 0 8
l1512
 loda 0 9
 ldcn
 neqa
 fjp l1513
 loda 0 9
 stra 0 18
 loda 0 18
 indi 2
 lodi 0 12
 leqi
 fjp l1514
 loda 0 18
 indi 2
 lodi 0 12
 equi
 fjp l1515
 mst 4
 ldci 156
 cup 1 l20
l1515
 ujp l1498
l1514
 loda 0 9
 stra 0 8
 loda 0 18
 inda 0
 stra 0 9
 ujp l1512
l1513
l1498
 lda 0 7
 ldci 3
 csp new
 loda 0 7
 stra 0 18
 loda 0 18
 loda 0 9
 stoa
 loda 0 18
 inca 2
 lodi 0 12
 stoi
 loda 0 18
 inca 1
 lodi 0 15
 stoi
 loda 0 8
 ldcn
 equa
 fjp l1516
 loda 0 7
 stra 0 10
 ujp l1517
l1516
 loda 0 8
 loda 0 7
 stoa
l1517
 ujp l1518
l1511
 mst 4
 ldci 147
 cup 1 l20
l1518
l1510
 ldoi 9
 ldci 12
 neqi
 strb 3 9
 lodb 3 9
 not
 fjp l1519
 mst 4
 cup 0 l25
l1519
 lodb 3 9
 fjp l1509
 ldoi 9
 ldci 16
 equi
 fjp l1520
 mst 4
 cup 0 l25
 ujp l1521
l1520
 mst 4
 ldci 5
 cup 1 l20
l1521
 mst 2
 lodi 0 15
 cup 1 l895
l1522
 mst 2
 lods 1 5
 ldc( 13)
 uni
 cup 1 l899
 ldoi 9
 ordi
 ldos 186
 inn
 not
 fjp l1522
 loda 0 7
 ldcn
 neqa
 fjp l1523
 mst 2
 ldci 57
 lodi 0 17
 cup 2 l880
l1523
l1508
 ldoi 9
 ldci 13
 neqi
 strb 3 9
 lodb 3 9
 not
 fjp l1524
 mst 4
 cup 0 l25
l1524
 lodb 3 9
 fjp l1507
 mst 2
 lodi 0 16
 cup 1 l895
 loda 0 10
 ldcn
 neqa
 fjp l1525
 loda 0 10
 indi 2
 stri 0 13
 loda 0 10
 stra 0 9
 ldcn
 stra 0 10
l1526
 loda 0 9
 inda 0
 stra 0 8
 loda 0 9
 loda 0 10
 stoa
 loda 0 9
 stra 0 10
 loda 0 8
 stra 0 9
 loda 0 9
 ldcn
 equa
 fjp l1526
 loda 0 10
 indi 2
 stri 0 14
 lodi 0 13
 lodi 0 14
 sbi
 ldci 1000
 lesi
 fjp l1527
 mst 2
 ldci 45
 lodi 0 14
 lodi 0 13
 ldoa 40
 cup 4 l803
 mst 2
 ldci 51
 ldci 1
 lodi 0 14
 cup 3 l749
 mst 2
 ldci 21
 cup 1 l730
 mst 4
 lda 0 16
 cup 1 l310
 mst 2
 ldci 44
 lodi 0 16
 cup 2 l880
 mst 2
 lodi 0 16
 cup 1 l895
l1528
 loda 0 10
 stra 0 18
l1529
 loda 0 18
 indi 2
 lodi 0 14
 grti
 fjp l1530
 mst 2
 ldci 60
 cup 1 l730
 lodi 0 14
 ldci 1
 adi
 stri 0 14
 ujp l1529
l1530
 mst 2
 ldci 57
 loda 0 18
 indi 1
 cup 2 l880
 loda 0 18
 inda 0
 stra 0 10
 lodi 0 14
 ldci 1
 adi
 stri 0 14
 loda 0 10
 ldcn
 equa
 fjp l1528
 mst 2
 lodi 0 17
 cup 1 l895
 ujp l1531
l1527
 mst 4
 ldci 157
 cup 1 l20
l1531
l1525
 ldoi 9
 ldci 39
 equi
 fjp l1532
 mst 4
 cup 0 l25
 ujp l1533
l1532
 mst 4
 ldci 13
 cup 1 l20
l1533
 retp
l1499= 19
l1500= 47
l1534
 ent 1 l1535
 ent 2 l1536
 mst 4
 lda 0 5
 cup 1 l310
 mst 2
 lodi 0 5
 cup 1 l895
l1537
 mst 2
 lods 1 5
 ldc( 13 41)
 uni
 cup 1 l899
 ldoi 9
 ordi
 ldos 186
 inn
 fjp l1538
 mst 4
 ldci 14
 cup 1 l20
l1538
 ldoi 9
 ordi
 ldos 186
 inn
 not
 fjp l1537
l1539
 ldoi 9
 ldci 13
 equi
 fjp l1540
 mst 4
 cup 0 l25
l1541
 mst 2
 lods 1 5
 ldc( 13 41)
 uni
 cup 1 l899
 ldoi 9
 ordi
 ldos 186
 inn
 fjp l1542
 mst 4
 ldci 14
 cup 1 l20
l1542
 ldoi 9
 ordi
 ldos 186
 inn
 not
 fjp l1541
 ujp l1539
l1540
 ldoi 9
 ldci 41
 equi
 fjp l1543
 mst 4
 cup 0 l25
 mst 1
 lods 1 5
 cup 1 l901
 mst 2
 lodi 0 5
 cup 1 l874
 ujp l1544
l1543
 mst 4
 ldci 53
 cup 1 l20
l1544
 retp
l1535= 6
l1536= 14
l1545
 ent 1 l1546
 ent 2 l1547
 mst 4
 lda 0 6
 cup 1 l310
 mst 2
 lodi 0 6
 cup 1 l895
 mst 1
 lods 1 5
 ldc( 43)
 uni
 cup 1 l901
 mst 4
 lda 0 5
 cup 1 l310
 mst 2
 lodi 0 5
 cup 1 l874
 ldoi 9
 ldci 43
 equi
 fjp l1548
 mst 4
 cup 0 l25
 ujp l1549
l1548
 mst 4
 ldci 54
 cup 1 l20
l1549
 mst 2
 lods 1 5
 cup 1 l899
 mst 2
 ldci 57
 lodi 0 6
 cup 2 l880
 mst 2
 lodi 0 5
 cup 1 l895
 retp
l1546= 7
l1547= 15
l1550
 ent 1 l1551
 ent 2 l1552
 ldoi 27
 stri 0 14
 ldcn
 stra 0 5
 ldci 1
 stri 0 6
 ldci 0
 stri 0 7
 ldoi 51
 stri 0 8
 ldci 0
 stri 0 9
 ldoi 9
 ldci 0
 equi
 fjp l1553
 mst 4
 ldc( 2)
 lda 1 6
 cup 2 l159
 loda 1 6
 stra 0 15
 loda 0 15
 inda 10
 stra 0 5
 ldci 1
 stri 0 6
 loda 0 15
 indi 13
 ldci 0
 equi
 fjp l1554
 ldci 0
 stri 0 7
 loda 0 15
 indi 14
 stri 0 8
 loda 0 15
 indi 15
 stri 0 9
 ujp l1555
l1554
 mst 4
 ldci 155
 cup 1 l20
 ldcn
 stra 0 5
l1555
 loda 0 5
 ldcn
 neqa
 fjp l1556
 loda 0 5
 indi 2
 ldci 1
 grti
 mst 3
 ldoa 39
 loda 0 5
 cup 2 l358
 ior
 fjp l1557
 mst 4
 ldci 143
 cup 1 l20
 ldcn
 stra 0 5
l1557
l1556
 mst 4
 cup 0 l25
 ujp l1558
l1553
 mst 4
 ldci 2
 cup 1 l20
 mst 3
 lods 1 5
 ldc( 17 43 44 45)
 uni
 cup 1 l314
l1558
 ldoi 9
 ldci 17
 equi
 fjp l1559
 mst 4
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 43 44 45)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1560
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1561
 mst 4
 ldci 144
 cup 1 l20
 ujp l1562
l1561
 mst 3
 loda 0 5
 ldoa 180
 cup 2 l358
 fjp l1563
 mst 2
 cup 0 l807
 mst 2
 lda 0 5
 cup 1 l837
 ujp l1564
l1563
 mst 4
 ldci 145
 cup 1 l20
l1564
l1562
l1560
 ujp l1565
l1559
 mst 4
 ldci 51
 cup 1 l20
 mst 3
 lods 1 5
 ldc( 43 44 45)
 uni
 cup 1 l314
l1565
 ldoi 9
 ordi
 ldc( 44 45)
 inn
 fjp l1566
 ldoi 9
 stri 0 11
 mst 4
 cup 0 l25
 mst 1
 lods 1 5
 ldc( 43)
 uni
 cup 1 l901
 ldoa 180
 ldcn
 neqa
 fjp l1567
 ldoa 180
 indi 2
 ldci 0
 neqi
 fjp l1568
 mst 4
 ldci 144
 cup 1 l20
 ujp l1569
l1568
 mst 3
 loda 0 5
 ldoa 180
 cup 2 l358
 fjp l1570
 mst 2
 cup 0 l807
 mst 3
 loda 0 5
 ldoa 40
 cup 2 l358
 not
 fjp l1571
 mst 2
 ldci 58
 ldoa 180
 cup 2 l795
l1571
 mst 4
 ldoa 40
 lao 27
 cup 2 l219
 mst 2
 ldci 56
 ldci 0
 ldoi 27
 ldoa 40
 cup 4 l803
 mst 4
 lda 0 12
 cup 1 l310
 mst 2
 lodi 0 12
 cup 1 l895
 lao 180
 lda 0 5
 mov 5
 mst 2
 cup 0 l807
 mst 3
 ldoa 180
 ldoa 40
 cup 2 l358
 not
 fjp l1572
 mst 2
 ldci 58
 ldoa 180
 cup 2 l795
l1572
 mst 2
 ldci 54
 ldci 0
 ldoi 27
 ldoa 40
 cup 4 l803
 ldoi 27
 ldci 1
 adi
 sroi 27
 ldoi 27
 lodi 2 88
 grti
 fjp l1573
 ldoi 27
 stri 2 88
l1573
 lodi 0 11
 ldci 44
 equi
 fjp l1574
 mst 2
 ldci 52
 ldcc 'i'
 ordc
 ldci 1
 cup 3 l749
 ujp l1575
l1574
 mst 2
 ldci 48
 ldcc 'i'
 ordc
 ldci 1
 cup 3 l749
l1575
 ujp l1576
l1570
 mst 4
 ldci 145
 cup 1 l20
l1576
l1569
l1567
 ujp l1577
l1566
 mst 4
 ldci 55
 cup 1 l20
 mst 3
 lods 1 5
 ldc( 43)
 uni
 cup 1 l314
l1577
 mst 4
 lda 0 13
 cup 1 l310
 mst 2
 ldci 33
 lodi 0 13
 cup 2 l880
 ldoi 9
 ldci 43
 equi
 fjp l1578
 mst 4
 cup 0 l25
 ujp l1579
l1578
 mst 4
 ldci 54
 cup 1 l20
l1579
 mst 2
 lods 1 5
 cup 1 l899
 lao 180
 lda 0 5
 mov 5
 mst 2
 cup 0 l807
 lodi 0 11
 ldci 44
 equi
 fjp l1580
 mst 2
 ldci 34
 ldci 1
 ldoa 180
 cup 3 l799
 ujp l1581
l1580
 mst 2
 ldci 31
 ldci 1
 ldoa 180
 cup 3 l799
l1581
 mst 2
 lda 0 5
 cup 1 l837
 mst 2
 ldci 57
 lodi 0 12
 cup 2 l880
 mst 2
 lodi 0 13
 cup 1 l895
 lodi 0 14
 sroi 27
 retp
l1551= 16
l1552= 65
l1582
 ent 1 l1583
 ent 2 l1584
 ldci 0
 stri 0 6
 ldoi 27
 stri 0 7
l1585
 ldoi 9
 ldci 0
 equi
 fjp l1586
 mst 4
 ldc( 2 3)
 lda 0 5
 cup 2 l159
 mst 4
 cup 0 l25
 ujp l1587
l1586
 mst 4
 ldci 2
 cup 1 l20
 ldoa 46
 stra 0 5
l1587
 mst 1
 lods 1 5
 ldc( 12 43)
 uni
 loda 0 5
 cup 2 l902
 ldoa 180
 ldcn
 neqa
 fjp l1588
 ldoa 180
 indi 2
 ldci 5
 equi
 fjp l1589
 ldoi 52
 ldci 20
 lesi
 fjp l1590
 ldoi 52
 ldci 1
 adi
 sroi 52
 lodi 0 6
 ldci 1
 adi
 stri 0 6
 lao 54
 ldoi 52
 ixa 5
 stra 0 8
 loda 0 8
 ldoa 180
 inda 3
 stoa
 loda 0 8
 inca 1
 ldcn
 stoa
 ldoi 182
 ldci 0
 equi
 fjp l1591
 lao 54
 ldoi 52
 ixa 5
 stra 0 8
 loda 0 8
 inca 2
 ldci 1
 stoi
 loda 0 8
 inca 3
 ldoi 183
 stoi
 loda 0 8
 inca 4
 ldoi 184
 stoi
 ujp l1592
l1591
 mst 2
 cup 0 l851
 mst 4
 ldoa 36
 lao 27
 cup 2 l219
 mst 2
 ldci 56
 ldci 0
 ldoi 27
 ldoa 36
 cup 4 l803
 lao 54
 ldoi 52
 ixa 5
 stra 0 8
 loda 0 8
 inca 2
 ldci 2
 stoi
 loda 0 8
 inca 3
 ldoi 27
 stoi
 ldoi 27
 ldci 1
 adi
 sroi 27
 ldoi 27
 lodi 2 88
 grti
 fjp l1593
 ldoi 27
 stri 2 88
l1593
l1592
 ujp l1594
l1590
 mst 4
 ldci 250
 cup 1 l20
l1594
 ujp l1595
l1589
 mst 4
 ldci 140
 cup 1 l20
l1595
l1588
 ldoi 9
 ldci 12
 neqi
 strb 3 9
 lodb 3 9
 not
 fjp l1596
 mst 4
 cup 0 l25
l1596
 lodb 3 9
 fjp l1585
 ldoi 9
 ldci 43
 equi
 fjp l1597
 mst 4
 cup 0 l25
 ujp l1598
l1597
 mst 4
 ldci 54
 cup 1 l20
l1598
 mst 2
 lods 1 5
 cup 1 l899
 ldoi 52
 lodi 0 6
 sbi
 sroi 52
 lodi 0 7
 sroi 27
 retp
l1583= 9
l1584= 22
l899
 ent 1 l1599
 ent 2 l1600
 ldoi 9
 ldci 1
 equi
 fjp l1601
 lao 54
 ldoi 51
 ixa 5
 inda 1
 stra 0 7
l1602
 loda 0 7
 ldcn
 neqa
 fjp l1603
 loda 0 7
 stra 0 8
 loda 0 8
 indi 3
 ldoi 12
 equi
 fjp l1604
 loda 0 8
 indb 1
 fjp l1605
 mst 3
 ldci 165
 cup 1 l20
l1605
 mst 1
 loda 0 8
 indi 2
 cup 1 l895
 loda 0 8
 inca 1
 ldcb 1
 stob
 ujp l900
 ujp l1606
l1604
 loda 0 8
 inda 0
 stra 0 7
l1606
 ujp l1602
l1603
 mst 3
 ldci 167
 cup 1 l20
l900
 mst 3
 cup 0 l25
 ldoi 9
 ldci 16
 equi
 fjp l1607
 mst 3
 cup 0 l25
 ujp l1608
l1607
 mst 3
 ldci 5
 cup 1 l20
l1608
l1601
 ldoi 9
 ordi
 lods 0 5
 ldc( 0)
 uni
 inn
 not
 fjp l1609
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 cup 1 l314
l1609
 ldoi 9
 ordi
 ldos 186
 ldc( 0)
 uni
 inn
 fjp l1610
 ldoi 9
 ordi
 ujp l1611
l1613
 mst 3
 ldc( 2 3 4 5)
 lda 0 6
 cup 2 l159
 mst 3
 cup 0 l25
 loda 0 6
 indi 12
 ldci 4
 equi
 fjp l1614
 mst 0
 lods 0 5
 loda 0 6
 cup 2 l967
 ujp l1615
l1614
 mst 0
 loda 0 6
 cup 1 l1443
l1615
 ujp l1612
l1616
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1482
 ujp l1612
l1617
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1467
 ujp l1612
l1618
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1490
 ujp l1612
l1619
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1497
 ujp l1612
l1620
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1545
 ujp l1612
l1621
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1534
 ujp l1612
l1622
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1550
 ujp l1612
l1623
 mst 3
 cup 0 l25
 mst 0
 cup 0 l1582
 ujp l1612
l1611
 chki 0 38
 ldci 0
 sbi
 xjp l1624
l1624
 ujp l1613
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujc
 ujp l1616
 ujp l1618
 ujp l1619
 ujp l1621
 ujp l1620
 ujp l1622
 ujp l1623
 ujp l1617
l1612
 ldoi 9
 ordi
 ldc( 13 39 40 41)
 inn
 not
 fjp l1625
 mst 3
 ldci 6
 cup 1 l20
 mst 2
 lods 0 5
 cup 1 l314
l1625
l1610
 retp
l1599= 9
l1600= 18
l721
 ent 1 l1626
 ent 2 l1627
 loda 1 7
 ldcn
 neqa
 fjp l1628
 loda 1 7
 indi 15
 stri 0 82
 ujp l1629
l1628
 mst 2
 lda 0 82
 cup 1 l310
l1629
 ldci 0
 stri 0 80
 ldci 5
 stri 0 85
 ldci 5
 stri 0 84
 mst 0
 lodi 0 82
 cup 1 l895
 mst 2
 lda 0 81
 cup 1 l310
 mst 2
 lda 0 86
 cup 1 l310
 mst 0
 ldci 32
 ldci 1
 lodi 0 81
 cup 3 l884
 mst 0
 ldci 32
 ldci 2
 lodi 0 86
 cup 3 l884
 loda 1 7
 ldcn
 neqa
 fjp l1630
 ldci 5
 stri 0 87
 loda 1 7
 inda 11
 stra 0 89
l1631
 loda 0 89
 ldcn
 neqa
 fjp l1632
 loda 0 89
 stra 0 91
 mst 2
 ldoa 41
 lda 0 87
 cup 2 l219
 loda 0 91
 indi 12
 ldci 2
 equi
 fjp l1633
 loda 0 91
 inda 10
 ldcn
 neqa
 fjp l1634
 loda 0 91
 inda 10
 indi 2
 ldci 3
 grti
 fjp l1635
 loda 0 91
 indi 13
 ldci 0
 equi
 fjp l1636
 mst 0
 ldci 50
 ldci 0
 loda 0 91
 indi 15
 cup 3 l749
 mst 0
 ldci 54
 ldci 0
 lodi 0 87
 ldoa 36
 cup 4 l803
 mst 0
 ldci 40
 loda 0 91
 inda 10
 indi 1
 cup 2 l734
l1636
 lodi 0 87
 ldci 1
 adi
 stri 0 87
 ujp l1637
l1635
 lodi 0 87
 loda 0 91
 inda 10
 indi 1
 adi
 stri 0 87
l1637
l1634
l1633
 loda 0 89
 inda 11
 stra 0 89
 ujp l1631
l1632
l1630
 ldoi 27
 stri 0 88
l1638
l1639
 mst 0
 lods 0 5
 ldc( 13 39)
 uni
 cup 1 l899
 ldoi 9
 ordi
 ldos 186
 inn
 not
 fjp l1639
 ldoi 9
 ldci 13
 neqi
 strb 1 9
 lodb 1 9
 not
 fjp l1640
 mst 2
 cup 0 l25
l1640
 lodb 1 9
 fjp l1638
 ldoi 9
 ldci 39
 equi
 fjp l1641
 mst 2
 cup 0 l25
 ujp l1642
l1641
 mst 2
 ldci 13
 cup 1 l20
l1642
 lao 54
 ldoi 52
 ixa 5
 inda 1
 stra 0 90
l1643
 loda 0 90
 ldcn
 neqa
 fjp l1644
 loda 0 90
 stra 0 91
 loda 0 91
 indb 1
 not
 fjp l1645
 mst 2
 ldci 168
 cup 1 l20
 lda 2 6
 csp wln
 lca' label          '
 ldci 7
 ldci 7
 lda 2 6
 csp wrs
 loda 0 91
 indi 3
 ldci 10
 lda 2 6
 csp wri
 lda 2 6
 csp wln
 ldcc ' '
 ldoi 25
 ldci 16
 adi
 lda 2 6
 csp wrc
l1645
 loda 0 91
 inda 0
 stra 0 90
 ujp l1643
l1644
 loda 1 7
 ldcn
 neqa
 fjp l1646
 loda 1 7
 inda 10
 ldcn
 equa
 fjp l1647
 mst 0
 ldci 42
 ldcc 'p'
 ordc
 cup 2 l734
 ujp l1648
l1647
 mst 0
 ldci 42
 loda 1 7
 inda 10
 cup 2 l795
l1648
 mst 2
 ldoa 41
 lda 0 88
 cup 2 l219
 ldob 30
 fjp l1649
 ldcc 'l'
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 81
 ldci 4
 lda 2 8
 csp wri
 ldcc '='
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 88
 ldci 10
 lda 2 8
 csp wri
 lda 2 8
 csp wln
 ldcc 'l'
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 86
 ldci 4
 lda 2 8
 csp wri
 ldcc '='
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 84
 ldci 10
 lda 2 8
 csp wri
 lda 2 8
 csp wln
l1649
 ujp l1650
l1646
 mst 0
 ldci 42
 ldcc 'p'
 ordc
 cup 2 l734
 mst 2
 ldoa 41
 lda 0 88
 cup 2 l219
 ldob 30
 fjp l1651
 ldcc 'l'
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 81
 ldci 4
 lda 2 8
 csp wri
 ldcc '='
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 88
 ldci 10
 lda 2 8
 csp wri
 lda 2 8
 csp wln
 ldcc 'l'
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 86
 ldci 4
 lda 2 8
 csp wri
 ldcc '='
 ldci 1
 lda 2 8
 csp wrc
 lodi 0 84
 ldci 10
 lda 2 8
 csp wri
 lda 2 8
 csp wln
 ldcc 'q'
 ldci 1
 lda 2 8
 csp wrc
 lda 2 8
 csp wln
l1651
 ldci 0
 sroi 26
 mst 0
 ldci 41
 ldci 0
 cup 2 l734
 mst 0
 ldci 46
 ldci 0
 lodi 0 82
 cup 3 l884
 mst 0
 ldci 29
 cup 1 l730
 ldob 30
 fjp l1652
 ldcc 'q'
 ldci 1
 lda 2 8
 csp wrc
 lda 2 8
 csp wln
l1652
 lda 0 7
 lao 14
 mov 8
l1653
 ldoa 49
 ldcn
 neqa
 fjp l1654
 ldoa 49
 stra 0 91
 loda 0 91
 lca'input           '
 equm 8
 loda 0 91
 lca'output          '
 equm 8
 ior
 loda 0 91
 lca'prd             '
 equm 8
 ior
 loda 0 91
 lca'prr             '
 equm 8
 ior
 not
 fjp l1655
 lao 14
 loda 0 91
 mov 8
 mst 2
 ldc( 2)
 lda 0 6
 cup 2 l159
 loda 0 6
 inda 10
 ldcn
 neqa
 fjp l1656
 loda 0 6
 inda 10
 indi 2
 ldci 6
 neqi
 fjp l1657
 lda 2 6
 csp wln
 ldcc ' '
 ldci 8
 lda 2 6
 csp wrc
 lca'undeclared      '
 ldci 11
 ldci 11
 lda 2 6
 csp wrs
 lca'external        '
 ldci 9
 ldci 9
 lda 2 6
 csp wrs
 lca'file            '
 ldci 4
 ldci 4
 lda 2 6
 csp wrs
 ldoa 49
 ldci 8
 ldci 8
 lda 2 6
 csp wrs
 lda 2 6
 csp wln
 ldcc ' '
 ldoi 25
 ldci 16
 adi
 lda 2 6
 csp wrc
l1657
l1656
l1655
 ldoa 49
 inda 8
 sroa 49
 ujp l1653
l1654
 lao 14
 lda 0 7
 mov 8
 ldob 29
 fjp l1658
 lda 2 6
 csp wln
 mst 2
 ldcb 1
 cup 1 l222
l1658
l1650
 retp
l1626= 92
l1627= 51
l313
 ent 1 l1659
 ent 2 l1660
 ldcb 1
 srob 33
l1661
 ldoi 9
 ldci 18
 equi
 fjp l1662
 mst 1
 cup 0 l25
 mst 0
 cup 0 l544
l1662
 ldoi 9
 ldci 19
 equi
 fjp l1663
 mst 1
 cup 0 l25
 mst 0
 cup 0 l559
l1663
 ldoi 9
 ldci 20
 equi
 fjp l1664
 mst 1
 cup 0 l25
 mst 0
 cup 0 l570
l1664
 ldoi 9
 ldci 21
 equi
 fjp l1665
 mst 1
 cup 0 l25
 mst 0
 cup 0 l590
l1665
l1666
 ldoi 9
 ordi
 ldc( 22 24)
 inn
 fjp l1667
 ldoi 9
 stri 0 8
 mst 1
 cup 0 l25
 mst 0
 lodi 0 8
 cup 1 l609
 ujp l1666
l1667
 ldoi 9
 ldci 31
 neqi
 fjp l1668
 mst 1
 ldci 18
 cup 1 l20
 mst 0
 lods 0 5
 cup 1 l314
l1668
 ldoi 9
 ordi
 ldos 186
 inn
 lao 5
 eof
 ior
 fjp l1661
 ldcb 0
 srob 33
 ldoi 9
 ldci 31
 equi
 fjp l1669
 mst 1
 cup 0 l25
 ujp l1670
l1669
 mst 1
 ldci 17
 cup 1 l20
l1670
l1671
 mst 0
 lods 0 5
 ldc( 33)
 uni
 cup 1 l721
 ldoi 9
 lodi 0 6
 neqi
 fjp l1672
 mst 1
 ldci 6
 cup 1 l20
 mst 0
 lods 0 5
 cup 1 l314
l1672
 ldoi 9
 lodi 0 6
 equi
 ldoi 9
 ordi
 ldos 189
 inn
 ior
 lao 5
 eof
 ior
 fjp l1671
 retp
l1659= 10
l1660= 15
l1673
 ent 1 l1674
 ent 2 l1675
 ldoi 9
 ldci 23
 equi
 fjp l1676
 mst 1
 cup 0 l25
 ldoi 9
 ldci 0
 neqi
 fjp l1677
 mst 1
 ldci 2
 cup 1 l20
l1677
 mst 1
 cup 0 l25
 ldoi 9
 ordi
 ldc( 8 13)
 inn
 not
 fjp l1678
 mst 1
 ldci 14
 cup 1 l20
l1678
 ldoi 9
 ldci 8
 equi
 fjp l1679
l1680
 mst 1
 cup 0 l25
 ldoi 9
 ldci 0
 equi
 fjp l1681
 lda 0 6
 ldci 9
 csp new
 loda 0 6
 stra 0 7
 loda 0 7
 lao 14
 mov 8
 loda 0 7
 inca 8
 ldoa 49
 stoa
 loda 0 6
 sroa 49
 mst 1
 cup 0 l25
 ldoi 9
 ordi
 ldc( 9 12)
 inn
 not
 fjp l1682
 mst 1
 ldci 20
 cup 1 l20
l1682
 ujp l1683
l1681
 mst 1
 ldci 2
 cup 1 l20
l1683
 ldoi 9
 ldci 12
 neqi
 fjp l1680
 ldoi 9
 ldci 9
 neqi
 fjp l1684
 mst 1
 ldci 4
 cup 1 l20
l1684
 mst 1
 cup 0 l25
l1679
 ldoi 9
 ldci 13
 neqi
 fjp l1685
 mst 1
 ldci 14
 cup 1 l20
 ujp l1686
l1685
 mst 1
 cup 0 l25
l1686
l1676
l1687
 mst 1
 lods 0 5
 ldci 14
 ldcn
 cup 3 l313
 ldoi 9
 ldci 14
 neqi
 fjp l1688
 mst 1
 ldci 21
 cup 1 l20
l1688
 ldoi 9
 ldci 14
 equi
 lao 5
 eof
 ior
 fjp l1687
 ldob 31
 fjp l1689
 lda 1 6
 csp wln
l1689
 ldoi 159
 ldci 0
 neqi
 fjp l1690
 ldcb 0
 srob 31
 mst 1
 cup 0 l3
l1690
 retp
l1674= 8
l1675= 17
l1691
 ent 1 l1692
 ent 2 l1693
 lao 744
 ldci 1
 deci 1
 ixa 8
 lca'false           '
 mov 8
 lao 744
 ldci 2
 deci 1
 ixa 8
 lca'true            '
 mov 8
 lao 744
 ldci 3
 deci 1
 ixa 8
 lca'input           '
 mov 8
 lao 744
 ldci 4
 deci 1
 ixa 8
 lca'output          '
 mov 8
 lao 744
 ldci 5
 deci 1
 ixa 8
 lca'get             '
 mov 8
 lao 744
 ldci 6
 deci 1
 ixa 8
 lca'put             '
 mov 8
 lao 744
 ldci 7
 deci 1
 ixa 8
 lca'reset           '
 mov 8
 lao 744
 ldci 8
 deci 1
 ixa 8
 lca'rewrite         '
 mov 8
 lao 744
 ldci 9
 deci 1
 ixa 8
 lca'read            '
 mov 8
 lao 744
 ldci 10
 deci 1
 ixa 8
 lca'write           '
 mov 8
 lao 744
 ldci 11
 deci 1
 ixa 8
 lca'pack            '
 mov 8
 lao 744
 ldci 12
 deci 1
 ixa 8
 lca'unpack          '
 mov 8
 lao 744
 ldci 13
 deci 1
 ixa 8
 lca'new             '
 mov 8
 lao 744
 ldci 14
 deci 1
 ixa 8
 lca'release         '
 mov 8
 lao 744
 ldci 15
 deci 1
 ixa 8
 lca'readln          '
 mov 8
 lao 744
 ldci 16
 deci 1
 ixa 8
 lca'writeln         '
 mov 8
 lao 744
 ldci 17
 deci 1
 ixa 8
 lca'abs             '
 mov 8
 lao 744
 ldci 18
 deci 1
 ixa 8
 lca'sqr             '
 mov 8
 lao 744
 ldci 19
 deci 1
 ixa 8
 lca'trunc           '
 mov 8
 lao 744
 ldci 20
 deci 1
 ixa 8
 lca'odd             '
 mov 8
 lao 744
 ldci 21
 deci 1
 ixa 8
 lca'ord             '
 mov 8
 lao 744
 ldci 22
 deci 1
 ixa 8
 lca'chr             '
 mov 8
 lao 744
 ldci 23
 deci 1
 ixa 8
 lca'pred            '
 mov 8
 lao 744
 ldci 24
 deci 1
 ixa 8
 lca'succ            '
 mov 8
 lao 744
 ldci 25
 deci 1
 ixa 8
 lca'eof             '
 mov 8
 lao 744
 ldci 26
 deci 1
 ixa 8
 lca'eoln            '
 mov 8
 lao 744
 ldci 27
 deci 1
 ixa 8
 lca'sin             '
 mov 8
 lao 744
 ldci 28
 deci 1
 ixa 8
 lca'cos             '
 mov 8
 lao 744
 ldci 29
 deci 1
 ixa 8
 lca'exp             '
 mov 8
 lao 744
 ldci 30
 deci 1
 ixa 8
 lca'sqrt            '
 mov 8
 lao 744
 ldci 31
 deci 1
 ixa 8
 lca'ln              '
 mov 8
 lao 744
 ldci 32
 deci 1
 ixa 8
 lca'arctan          '
 mov 8
 lao 744
 ldci 33
 deci 1
 ixa 8
 lca'prd             '
 mov 8
 lao 744
 ldci 34
 deci 1
 ixa 8
 lca'prr             '
 mov 8
 lao 744
 ldci 35
 deci 1
 ixa 8
 lca'mark            '
 mov 8
 retp
l1692= 5
l1693= 7
l1694
 ent 1 l1695
 ent 2 l1696
 lao 40
 ldci 4
 csp new
 ldoa 40
 stra 0 6
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 0
 stoi
 loda 0 6
 inca 3
 ldci 0
 stoi
 lao 39
 ldci 4
 csp new
 ldoa 39
 stra 0 6
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 0
 stoi
 loda 0 6
 inca 3
 ldci 0
 stoi
 lao 38
 ldci 4
 csp new
 ldoa 38
 stra 0 6
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 0
 stoi
 loda 0 6
 inca 3
 ldci 0
 stoi
 lao 37
 ldci 5
 csp new
 ldoa 37
 stra 0 6
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 0
 stoi
 loda 0 6
 inca 3
 ldci 1
 stoi
 lao 36
 ldci 4
 csp new
 ldoa 36
 stra 0 6
 loda 0 6
 inca 3
 ldcn
 stoa
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 2
 stoi
 lao 41
 ldci 4
 csp new
 ldoa 41
 stra 0 6
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 0
 stoi
 loda 0 6
 inca 3
 ldci 0
 stoi
 lao 35
 ldci 4
 csp new
 ldoa 35
 stra 0 6
 loda 0 6
 inca 3
 ldoa 38
 stoa
 loda 0 6
 inca 1
 ldci 1
 stoi
 loda 0 6
 inca 2
 ldci 6
 stoi
 retp
l1695= 7
l1696= 7
l1697
 ent 1 l1698
 ent 2 l1699
 lda 0 6
 ldci 13
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'integer         '
 mov 8
 loda 0 8
 inca 10
 ldoa 40
 stoa
 loda 0 8
 inca 12
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lda 0 6
 ldci 13
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'real            '
 mov 8
 loda 0 8
 inca 10
 ldoa 39
 stoa
 loda 0 8
 inca 12
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lda 0 6
 ldci 13
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'char            '
 mov 8
 loda 0 8
 inca 10
 ldoa 38
 stoa
 loda 0 8
 inca 12
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lda 0 6
 ldci 13
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'boolean         '
 mov 8
 loda 0 8
 inca 10
 ldoa 37
 stoa
 loda 0 8
 inca 12
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 ldcn
 stra 0 5
 ldci 1
 stri 0 7
 ldci 2
 stri 0 8
l1700
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1701
 lda 0 6
 ldci 15
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldoa 37
 stoa
 loda 0 9
 inca 11
 loda 0 5
 stoa
 loda 0 9
 inca 14
 lodi 0 7
 ldci 1
 sbi
 stoi
 loda 0 9
 inca 12
 ldci 1
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 loda 0 6
 stra 0 5
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1700
l1701
 ldoa 37
 inca 4
 loda 0 6
 stoa
 lda 0 6
 ldci 15
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'nil             '
 mov 8
 loda 0 8
 inca 10
 ldoa 36
 stoa
 loda 0 8
 inca 11
 ldcn
 stoa
 loda 0 8
 inca 14
 ldci 0
 stoi
 loda 0 8
 inca 12
 ldci 1
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 ldci 3
 stri 0 7
 ldci 4
 stri 0 8
l1702
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1703
 lda 0 6
 ldci 16
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldoa 35
 stoa
 loda 0 9
 inca 12
 ldci 2
 stoi
 loda 0 9
 inca 13
 ldci 0
 stoi
 loda 0 9
 inca 11
 ldcn
 stoa
 loda 0 9
 inca 14
 ldci 1
 stoi
 loda 0 9
 inca 15
 ldci 5
 lodi 0 7
 ldci 3
 sbi
 ldci 1
 mpi
 adi
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1702
l1703
 ldci 33
 stri 0 7
 ldci 34
 stri 0 8
l1704
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1705
 lda 0 6
 ldci 16
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldoa 35
 stoa
 loda 0 9
 inca 12
 ldci 2
 stoi
 loda 0 9
 inca 13
 ldci 0
 stoi
 loda 0 9
 inca 11
 ldcn
 stoa
 loda 0 9
 inca 14
 ldci 1
 stoi
 loda 0 9
 inca 15
 ldci 5
 lodi 0 7
 ldci 31
 sbi
 ldci 1
 mpi
 adi
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1704
l1705
 ldci 5
 stri 0 7
 ldci 16
 stri 0 8
l1706
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1707
 lda 0 6
 ldci 15
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldcn
 stoa
 loda 0 9
 inca 11
 ldcn
 stoa
 loda 0 9
 inca 14
 lodi 0 7
 ldci 4
 sbi
 stoi
 loda 0 9
 inca 12
 ldci 4
 stoi
 loda 0 9
 inca 13
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1706
l1707
 lda 0 6
 ldci 15
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lao 744
 ldci 35
 deci 1
 ixa 8
 mov 8
 loda 0 8
 inca 10
 ldcn
 stoa
 loda 0 8
 inca 11
 ldcn
 stoa
 loda 0 8
 inca 14
 ldci 13
 stoi
 loda 0 8
 inca 12
 ldci 4
 stoi
 loda 0 8
 inca 13
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 ldci 17
 stri 0 7
 ldci 26
 stri 0 8
l1708
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1709
 lda 0 6
 ldci 15
 csp new
 loda 0 6
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldcn
 stoa
 loda 0 9
 inca 11
 ldcn
 stoa
 loda 0 9
 inca 14
 lodi 0 7
 ldci 16
 sbi
 stoi
 loda 0 9
 inca 12
 ldci 5
 stoi
 loda 0 9
 inca 13
 ldci 0
 stoi
 mst 1
 loda 0 6
 cup 1 l137
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1708
l1709
 lda 0 6
 ldci 16
 csp new
 loda 0 6
 stra 0 8
 loda 0 8
 lca'                '
 mov 8
 loda 0 8
 inca 10
 ldoa 39
 stoa
 loda 0 8
 inca 12
 ldci 2
 stoi
 loda 0 8
 inca 13
 ldci 0
 stoi
 loda 0 8
 inca 11
 ldcn
 stoa
 loda 0 8
 inca 14
 ldci 1
 stoi
 loda 0 8
 inca 15
 ldci 0
 stoi
 ldci 27
 stri 0 7
 ldci 32
 stri 0 8
l1710
 lodi 0 7
 lodi 0 8
 leqi
 fjp l1711
 lda 0 5
 ldci 19
 csp new
 loda 0 5
 stra 0 9
 loda 0 9
 lao 744
 lodi 0 7
 deci 1
 ixa 8
 mov 8
 loda 0 9
 inca 10
 ldoa 39
 stoa
 loda 0 9
 inca 11
 loda 0 6
 stoa
 loda 0 9
 inca 18
 ldcb 0
 stob
 loda 0 9
 inca 17
 ldcb 1
 stob
 loda 0 9
 inca 14
 ldci 0
 stoi
 loda 0 9
 inca 15
 lodi 0 7
 ldci 12
 sbi
 stoi
 loda 0 9
 inca 12
 ldci 5
 stoi
 loda 0 9
 inca 13
 ldci 1
 stoi
 loda 0 9
 inca 16
 ldci 0
 stoi
 mst 1
 loda 0 5
 cup 1 l137
 lodi 0 7
 inci 1
 stri 0 7
 ujp l1710
l1711
 retp
l1698= 10
l1699= 19
l1712
 ent 1 l1713
 ent 2 l1714
 lao 48
 ldci 13
 csp new
 ldoa 48
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 12
 ldci 0
 stoi
 lao 47
 ldci 15
 csp new
 ldoa 47
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 11
 ldcn
 stoa
 loda 0 5
 inca 14
 ldci 0
 stoi
 loda 0 5
 inca 12
 ldci 1
 stoi
 lao 46
 ldci 16
 csp new
 ldoa 46
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 13
 ldci 0
 stoi
 loda 0 5
 inca 11
 ldcn
 stoa
 loda 0 5
 inca 14
 ldci 0
 stoi
 loda 0 5
 inca 15
 ldci 0
 stoi
 loda 0 5
 inca 12
 ldci 2
 stoi
 lao 45
 ldci 14
 csp new
 ldoa 45
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 11
 ldcn
 stoa
 loda 0 5
 inca 13
 ldci 0
 stoi
 loda 0 5
 inca 12
 ldci 3
 stoi
 lao 44
 ldci 19
 csp new
 ldoa 44
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 18
 ldcb 0
 stob
 loda 0 5
 inca 11
 ldcn
 stoa
 loda 0 5
 inca 17
 ldcb 0
 stob
 loda 0 5
 inca 14
 ldci 0
 stoi
 mst 1
 loda 0 5
 inca 15
 cup 1 l310
 loda 0 5
 inca 12
 ldci 4
 stoi
 loda 0 5
 inca 13
 ldci 1
 stoi
 loda 0 5
 inca 16
 ldci 0
 stoi
 lao 43
 ldci 19
 csp new
 ldoa 43
 stra 0 5
 loda 0 5
 lca'                '
 mov 8
 loda 0 5
 inca 10
 ldcn
 stoa
 loda 0 5
 inca 11
 ldcn
 stoa
 loda 0 5
 inca 18
 ldcb 0
 stob
 loda 0 5
 inca 17
 ldcb 0
 stob
 loda 0 5
 inca 14
 ldci 0
 stoi
 mst 1
 loda 0 5
 inca 15
 cup 1 l310
 loda 0 5
 inca 12
 ldci 5
 stoi
 loda 0 5
 inca 13
 ldci 1
 stoi
 loda 0 5
 inca 16
 ldci 0
 stoi
 retp
l1713= 6
l1714= 9
l1715
 ent 1 l1716
 ent 2 l1717
 ldcn
 sroa 42
 ldcb 0
 srob 29
 ldcb 1
 srob 31
 ldcb 0
 srob 30
 ldcb 1
 srob 34
 ldcb 1
 srob 33
 ldcb 1
 srob 32
 ldci 0
 sroi 159
 ldci 0
 sroi 1510
 ldci 8
 sroi 22
 ldcn
 sroa 49
 ldci 5
 ldci 4
 ldci 1
 mpi
 adi
 sroi 27
 ldci 3
 sroi 26
 ldcb 1
 srob 24
 ldci 0
 sroi 28
 ldcc ' '
 sroc 23
 ldci 0
 sroi 25
 ldcn
 sroa 50
 ldci 32767
 ldci 10
 dvi
 sroi 1509
 ldci 16
 ldci 1
 sbi
 sroi 1508
 retp
l1716= 5
l1717= 8
l1718
 ent 1 l1719
 ent 2 l1720
 ldc( 0 1 2 3 6)
 sros 192
 ldc( 8)
 ldos 192
 uni
 sros 191
 ldc( 15 25 26 27 28 29)
 ldos 191
 uni
 sros 190
 ldc( 25 27 28 29)
 sros 185
 ldc( 18 19 20 21 22 24 31)
 sros 189
 ldc( 10 14 15)
 sros 188
 ldc( 0 1 2 3 4 8 10)
 sros 187
 ldc( 31 32 33 34 35 36 37 38)
 sros 186
 retp
l1719= 5
l1720= 7
l1722
 ent 1 l1723
 ent 2 l1724
 lao 257
 ldci 1
 deci 1
 ixa 8
 lca'if              '
 mov 8
 lao 257
 ldci 2
 deci 1
 ixa 8
 lca'do              '
 mov 8
 lao 257
 ldci 3
 deci 1
 ixa 8
 lca'of              '
 mov 8
 lao 257
 ldci 4
 deci 1
 ixa 8
 lca'to              '
 mov 8
 lao 257
 ldci 5
 deci 1
 ixa 8
 lca'in              '
 mov 8
 lao 257
 ldci 6
 deci 1
 ixa 8
 lca'or              '
 mov 8
 lao 257
 ldci 7
 deci 1
 ixa 8
 lca'end             '
 mov 8
 lao 257
 ldci 8
 deci 1
 ixa 8
 lca'for             '
 mov 8
 lao 257
 ldci 9
 deci 1
 ixa 8
 lca'var             '
 mov 8
 lao 257
 ldci 10
 deci 1
 ixa 8
 lca'div             '
 mov 8
 lao 257
 ldci 11
 deci 1
 ixa 8
 lca'mod             '
 mov 8
 lao 257
 ldci 12
 deci 1
 ixa 8
 lca'set             '
 mov 8
 lao 257
 ldci 13
 deci 1
 ixa 8
 lca'and             '
 mov 8
 lao 257
 ldci 14
 deci 1
 ixa 8
 lca'not             '
 mov 8
 lao 257
 ldci 15
 deci 1
 ixa 8
 lca'then            '
 mov 8
 lao 257
 ldci 16
 deci 1
 ixa 8
 lca'else            '
 mov 8
 lao 257
 ldci 17
 deci 1
 ixa 8
 lca'with            '
 mov 8
 lao 257
 ldci 18
 deci 1
 ixa 8
 lca'goto            '
 mov 8
 lao 257
 ldci 19
 deci 1
 ixa 8
 lca'case            '
 mov 8
 lao 257
 ldci 20
 deci 1
 ixa 8
 lca'type            '
 mov 8
 lao 257
 ldci 21
 deci 1
 ixa 8
 lca'file            '
 mov 8
 lao 257
 ldci 22
 deci 1
 ixa 8
 lca'begin           '
 mov 8
 lao 257
 ldci 23
 deci 1
 ixa 8
 lca'until           '
 mov 8
 lao 257
 ldci 24
 deci 1
 ixa 8
 lca'while           '
 mov 8
 lao 257
 ldci 25
 deci 1
 ixa 8
 lca'array           '
 mov 8
 lao 257
 ldci 26
 deci 1
 ixa 8
 lca'const           '
 mov 8
 lao 257
 ldci 27
 deci 1
 ixa 8
 lca'label           '
 mov 8
 lao 257
 ldci 28
 deci 1
 ixa 8
 lca'repeat          '
 mov 8
 lao 257
 ldci 29
 deci 1
 ixa 8
 lca'record          '
 mov 8
 lao 257
 ldci 30
 deci 1
 ixa 8
 lca'downto          '
 mov 8
 lao 257
 ldci 31
 deci 1
 ixa 8
 lca'packed          '
 mov 8
 lao 257
 ldci 32
 deci 1
 ixa 8
 lca'forward         '
 mov 8
 lao 257
 ldci 33
 deci 1
 ixa 8
 lca'program         '
 mov 8
 lao 257
 ldci 34
 deci 1
 ixa 8
 lca'function        '
 mov 8
 lao 257
 ldci 35
 deci 1
 ixa 8
 lca'procedur        '
 mov 8
 lao 537
 ldci 1
 deci 1
 ixa 1
 ldci 1
 stoi
 lao 537
 ldci 2
 deci 1
 ixa 1
 ldci 1
 stoi
 lao 537
 ldci 3
 deci 1
 ixa 1
 ldci 7
 stoi
 lao 537
 ldci 4
 deci 1
 ixa 1
 ldci 15
 stoi
 lao 537
 ldci 5
 deci 1
 ixa 1
 ldci 22
 stoi
 lao 537
 ldci 6
 deci 1
 ixa 1
 ldci 28
 stoi
 lao 537
 ldci 7
 deci 1
 ixa 1
 ldci 32
 stoi
 lao 537
 ldci 8
 deci 1
 ixa 1
 ldci 34
 stoi
 lao 537
 ldci 9
 deci 1
 ixa 1
 ldci 36
 stoi
 retp
l1723= 5
l1724= 7
l1725
 ent 1 l1726
 ent 2 l1727
 lao 546
 ldci 1
 deci 1
 ixa 1
 ldci 32
 stoi
 lao 546
 ldci 2
 deci 1
 ixa 1
 ldci 43
 stoi
 lao 546
 ldci 3
 deci 1
 ixa 1
 ldci 42
 stoi
 lao 546
 ldci 4
 deci 1
 ixa 1
 ldci 44
 stoi
 lao 546
 ldci 5
 deci 1
 ixa 1
 ldci 7
 stoi
 lao 546
 ldci 6
 deci 1
 ixa 1
 ldci 6
 stoi
 lao 546
 ldci 7
 deci 1
 ixa 1
 ldci 39
 stoi
 lao 546
 ldci 8
 deci 1
 ixa 1
 ldci 36
 stoi
 lao 546
 ldci 9
 deci 1
 ixa 1
 ldci 21
 stoi
 lao 546
 ldci 10
 deci 1
 ixa 1
 ldci 5
 stoi
 lao 546
 ldci 11
 deci 1
 ixa 1
 ldci 5
 stoi
 lao 546
 ldci 12
 deci 1
 ixa 1
 ldci 25
 stoi
 lao 546
 ldci 13
 deci 1
 ixa 1
 ldci 5
 stoi
 lao 546
 ldci 14
 deci 1
 ixa 1
 ldci 4
 stoi
 lao 546
 ldci 15
 deci 1
 ixa 1
 ldci 46
 stoi
 lao 546
 ldci 16
 deci 1
 ixa 1
 ldci 40
 stoi
 lao 546
 ldci 17
 deci 1
 ixa 1
 ldci 37
 stoi
 lao 546
 ldci 18
 deci 1
 ixa 1
 ldci 38
 stoi
 lao 546
 ldci 19
 deci 1
 ixa 1
 ldci 33
 stoi
 lao 546
 ldci 20
 deci 1
 ixa 1
 ldci 20
 stoi
 lao 546
 ldci 21
 deci 1
 ixa 1
 ldci 29
 stoi
 lao 546
 ldci 22
 deci 1
 ixa 1
 ldci 31
 stoi
 lao 546
 ldci 23
 deci 1
 ixa 1
 ldci 41
 stoi
 lao 546
 ldci 24
 deci 1
 ixa 1
 ldci 35
 stoi
 lao 546
 ldci 25
 deci 1
 ixa 1
 ldci 27
 stoi
 lao 546
 ldci 26
 deci 1
 ixa 1
 ldci 19
 stoi
 lao 546
 ldci 27
 deci 1
 ixa 1
 ldci 18
 stoi
 lao 546
 ldci 28
 deci 1
 ixa 1
 ldci 34
 stoi
 lao 546
 ldci 29
 deci 1
 ixa 1
 ldci 28
 stoi
 lao 546
 ldci 30
 deci 1
 ixa 1
 ldci 45
 stoi
 lao 546
 ldci 31
 deci 1
 ixa 1
 ldci 26
 stoi
 lao 546
 ldci 32
 deci 1
 ixa 1
 ldci 30
 stoi
 lao 546
 ldci 33
 deci 1
 ixa 1
 ldci 23
 stoi
 lao 546
 ldci 34
 deci 1
 ixa 1
 ldci 22
 stoi
 lao 546
 ldci 35
 deci 1
 ixa 1
 ldci 24
 stoi
 lao 581
 ldcc '+'
 ordc
 ixa 1
 ldci 6
 stoi
 lao 581
 ldcc '-'
 ordc
 ixa 1
 ldci 6
 stoi
 lao 581
 ldcc '*'
 ordc
 ixa 1
 ldci 5
 stoi
 lao 581
 ldcc '/'
 ordc
 ixa 1
 ldci 5
 stoi
 lao 581
 ldcc '('
 ordc
 ixa 1
 ldci 8
 stoi
 lao 581
 ldcc ')'
 ordc
 ixa 1
 ldci 9
 stoi
 lao 581
 ldcc '$'
 ordc
 ixa 1
 ldci 47
 stoi
 lao 581
 ldcc '='
 ordc
 ixa 1
 ldci 7
 stoi
 lao 581
 ldcc ' '
 ordc
 ixa 1
 ldci 47
 stoi
 lao 581
 ldcc ','
 ordc
 ixa 1
 ldci 12
 stoi
 lao 581
 ldcc '.'
 ordc
 ixa 1
 ldci 14
 stoi
 lao 581
 ldcc '''
 ordc
 ixa 1
 ldci 47
 stoi
 lao 581
 ldcc '['
 ordc
 ixa 1
 ldci 10
 stoi
 lao 581
 ldcc ']'
 ordc
 ixa 1
 ldci 11
 stoi
 lao 581
 ldcc ':'
 ordc
 ixa 1
 ldci 16
 stoi
 lao 581
 ldcc '^'
 ordc
 ixa 1
 ldci 15
 stoi
 lao 581
 ldcc '<'
 ordc
 ixa 1
 ldci 7
 stoi
 lao 581
 ldcc '>'
 ordc
 ixa 1
 ldci 7
 stoi
 lao 581
 ldcc ';'
 ordc
 ixa 1
 ldci 13
 stoi
 retp
l1726= 5
l1727= 7
l1728
 ent 1 l1729
 ent 2 l1730
 ldci 1
 stri 0 5
 ldci 35
 stri 0 7
l1731
 lodi 0 5
 lodi 0 7
 leqi
 fjp l1732
 lao 645
 lodi 0 5
 deci 1
 ixa 1
 ldci 15
 stoi
 lodi 0 5
 inci 1
 stri 0 5
 ujp l1731
l1732
 lao 645
 ldci 5
 deci 1
 ixa 1
 ldci 14
 stoi
 lao 645
 ldci 10
 deci 1
 ixa 1
 ldci 3
 stoi
 lao 645
 ldci 11
 deci 1
 ixa 1
 ldci 4
 stoi
 lao 645
 ldci 6
 deci 1
 ixa 1
 ldci 7
 stoi
 lao 645
 ldci 13
 deci 1
 ixa 1
 ldci 2
 stoi
 ldci 0
 stri 0 5
 ldci 63
 stri 0 7
l1733
 lodi 0 5
 lodi 0 7
 leqi
 fjp l1734
 lao 680
 lodi 0 5
 chr
 ordc
 ixa 1
 ldci 15
 stoi
 lodi 0 5
 inci 1
 stri 0 5
 ujp l1733
l1734
 lao 680
 ldcc '+'
 ordc
 ixa 1
 ldci 5
 stoi
 lao 680
 ldcc '-'
 ordc
 ixa 1
 ldci 6
 stoi
 lao 680
 ldcc '*'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 680
 ldcc '/'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 680
 ldcc '='
 ordc
 ixa 1
 ldci 13
 stoi
 lao 680
 ldcc '<'
 ordc
 ixa 1
 ldci 8
 stoi
 lao 680
 ldcc '>'
 ordc
 ixa 1
 ldci 11
 stoi
 retp
l1729= 8
l1730= 7
l1735
 ent 1 l1736
 ent 2 l1737
 lao 1268
 ldci 1
 deci 1
 ixa 4
 lca' get            '
 mov 4
 lao 1268
 ldci 2
 deci 1
 ixa 4
 lca' put            '
 mov 4
 lao 1268
 ldci 3
 deci 1
 ixa 4
 lca' rdi            '
 mov 4
 lao 1268
 ldci 4
 deci 1
 ixa 4
 lca' rdr            '
 mov 4
 lao 1268
 ldci 5
 deci 1
 ixa 4
 lca' rdc            '
 mov 4
 lao 1268
 ldci 6
 deci 1
 ixa 4
 lca' wri            '
 mov 4
 lao 1268
 ldci 7
 deci 1
 ixa 4
 lca' wro            '
 mov 4
 lao 1268
 ldci 8
 deci 1
 ixa 4
 lca' wrr            '
 mov 4
 lao 1268
 ldci 9
 deci 1
 ixa 4
 lca' wrc            '
 mov 4
 lao 1268
 ldci 10
 deci 1
 ixa 4
 lca' wrs            '
 mov 4
 lao 1268
 ldci 11
 deci 1
 ixa 4
 lca' pak            '
 mov 4
 lao 1268
 ldci 12
 deci 1
 ixa 4
 lca' new            '
 mov 4
 lao 1268
 ldci 13
 deci 1
 ixa 4
 lca' rst            '
 mov 4
 lao 1268
 ldci 14
 deci 1
 ixa 4
 lca' eln            '
 mov 4
 lao 1268
 ldci 15
 deci 1
 ixa 4
 lca' sin            '
 mov 4
 lao 1268
 ldci 16
 deci 1
 ixa 4
 lca' cos            '
 mov 4
 lao 1268
 ldci 17
 deci 1
 ixa 4
 lca' exp            '
 mov 4
 lao 1268
 ldci 18
 deci 1
 ixa 4
 lca' sqt            '
 mov 4
 lao 1268
 ldci 19
 deci 1
 ixa 4
 lca' log            '
 mov 4
 lao 1268
 ldci 20
 deci 1
 ixa 4
 lca' atn            '
 mov 4
 lao 1268
 ldci 21
 deci 1
 ixa 4
 lca' rln            '
 mov 4
 lao 1268
 ldci 22
 deci 1
 ixa 4
 lca' wln            '
 mov 4
 lao 1268
 ldci 23
 deci 1
 ixa 4
 lca' sav            '
 mov 4
 retp
l1736= 5
l1737= 7
l1738
 ent 1 l1739
 ent 2 l1740
 lao 1024
 ldci 0
 ixa 4
 lca' abi            '
 mov 4
 lao 1024
 ldci 1
 ixa 4
 lca' abr            '
 mov 4
 lao 1024
 ldci 2
 ixa 4
 lca' adi            '
 mov 4
 lao 1024
 ldci 3
 ixa 4
 lca' adr            '
 mov 4
 lao 1024
 ldci 4
 ixa 4
 lca' and            '
 mov 4
 lao 1024
 ldci 5
 ixa 4
 lca' dif            '
 mov 4
 lao 1024
 ldci 6
 ixa 4
 lca' dvi            '
 mov 4
 lao 1024
 ldci 7
 ixa 4
 lca' dvr            '
 mov 4
 lao 1024
 ldci 8
 ixa 4
 lca' eof            '
 mov 4
 lao 1024
 ldci 9
 ixa 4
 lca' flo            '
 mov 4
 lao 1024
 ldci 10
 ixa 4
 lca' flt            '
 mov 4
 lao 1024
 ldci 11
 ixa 4
 lca' inn            '
 mov 4
 lao 1024
 ldci 12
 ixa 4
 lca' int            '
 mov 4
 lao 1024
 ldci 13
 ixa 4
 lca' ior            '
 mov 4
 lao 1024
 ldci 14
 ixa 4
 lca' mod            '
 mov 4
 lao 1024
 ldci 15
 ixa 4
 lca' mpi            '
 mov 4
 lao 1024
 ldci 16
 ixa 4
 lca' mpr            '
 mov 4
 lao 1024
 ldci 17
 ixa 4
 lca' ngi            '
 mov 4
 lao 1024
 ldci 18
 ixa 4
 lca' ngr            '
 mov 4
 lao 1024
 ldci 19
 ixa 4
 lca' not            '
 mov 4
 lao 1024
 ldci 20
 ixa 4
 lca' odd            '
 mov 4
 lao 1024
 ldci 21
 ixa 4
 lca' sbi            '
 mov 4
 lao 1024
 ldci 22
 ixa 4
 lca' sbr            '
 mov 4
 lao 1024
 ldci 23
 ixa 4
 lca' sgs            '
 mov 4
 lao 1024
 ldci 24
 ixa 4
 lca' sqi            '
 mov 4
 lao 1024
 ldci 25
 ixa 4
 lca' sqr            '
 mov 4
 lao 1024
 ldci 26
 ixa 4
 lca' sto            '
 mov 4
 lao 1024
 ldci 27
 ixa 4
 lca' trc            '
 mov 4
 lao 1024
 ldci 28
 ixa 4
 lca' uni            '
 mov 4
 lao 1024
 ldci 29
 ixa 4
 lca' stp            '
 mov 4
 lao 1024
 ldci 30
 ixa 4
 lca' csp            '
 mov 4
 lao 1024
 ldci 31
 ixa 4
 lca' dec            '
 mov 4
 lao 1024
 ldci 32
 ixa 4
 lca' ent            '
 mov 4
 lao 1024
 ldci 33
 ixa 4
 lca' fjp            '
 mov 4
 lao 1024
 ldci 34
 ixa 4
 lca' inc            '
 mov 4
 lao 1024
 ldci 35
 ixa 4
 lca' ind            '
 mov 4
 lao 1024
 ldci 36
 ixa 4
 lca' ixa            '
 mov 4
 lao 1024
 ldci 37
 ixa 4
 lca' lao            '
 mov 4
 lao 1024
 ldci 38
 ixa 4
 lca' lca            '
 mov 4
 lao 1024
 ldci 39
 ixa 4
 lca' ldo            '
 mov 4
 lao 1024
 ldci 40
 ixa 4
 lca' mov            '
 mov 4
 lao 1024
 ldci 41
 ixa 4
 lca' mst            '
 mov 4
 lao 1024
 ldci 42
 ixa 4
 lca' ret            '
 mov 4
 lao 1024
 ldci 43
 ixa 4
 lca' sro            '
 mov 4
 lao 1024
 ldci 44
 ixa 4
 lca' xjp            '
 mov 4
 lao 1024
 ldci 45
 ixa 4
 lca' chk            '
 mov 4
 lao 1024
 ldci 46
 ixa 4
 lca' cup            '
 mov 4
 lao 1024
 ldci 47
 ixa 4
 lca' equ            '
 mov 4
 lao 1024
 ldci 48
 ixa 4
 lca' geq            '
 mov 4
 lao 1024
 ldci 49
 ixa 4
 lca' grt            '
 mov 4
 lao 1024
 ldci 50
 ixa 4
 lca' lda            '
 mov 4
 lao 1024
 ldci 51
 ixa 4
 lca' ldc            '
 mov 4
 lao 1024
 ldci 52
 ixa 4
 lca' leq            '
 mov 4
 lao 1024
 ldci 53
 ixa 4
 lca' les            '
 mov 4
 lao 1024
 ldci 54
 ixa 4
 lca' lod            '
 mov 4
 lao 1024
 ldci 55
 ixa 4
 lca' neq            '
 mov 4
 lao 1024
 ldci 56
 ixa 4
 lca' str            '
 mov 4
 lao 1024
 ldci 57
 ixa 4
 lca' ujp            '
 mov 4
 lao 1024
 ldci 58
 ixa 4
 lca' ord            '
 mov 4
 lao 1024
 ldci 59
 ixa 4
 lca' chr            '
 mov 4
 lao 1024
 ldci 60
 ixa 4
 lca' ujc            '
 mov 4
 retp
l1739= 5
l1740= 7
l1741
 ent 1 l1742
 ent 2 l1743
 ldci 0
 stri 0 5
 ldci 63
 stri 0 6
l1744
 lodi 0 5
 lodi 0 6
 leqi
 fjp l1745
 lao 193
 lodi 0 5
 chr
 ordc
 ixa 1
 ldci 3
 stoi
 lodi 0 5
 inci 1
 stri 0 5
 ujp l1744
l1745
 lao 193
 ldcc 'a'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'b'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'c'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'd'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'e'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'f'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'g'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'h'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'i'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'j'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'k'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'l'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'm'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'n'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'o'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'p'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'q'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'r'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 's'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 't'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'u'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'v'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'w'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'x'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'y'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc 'z'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 193
 ldcc '0'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '1'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '2'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '3'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '4'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '5'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '6'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '7'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '8'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '9'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 193
 ldcc '+'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '-'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '*'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '/'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '('
 ordc
 ixa 1
 ldci 9
 stoi
 lao 193
 ldcc ')'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '$'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '='
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc ' '
 ordc
 ixa 1
 ldci 10
 stoi
 lao 193
 ldcc ','
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '.'
 ordc
 ixa 1
 ldci 6
 stoi
 lao 193
 ldcc '''
 ordc
 ixa 1
 ldci 4
 stoi
 lao 193
 ldcc '['
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc ']'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc ':'
 ordc
 ixa 1
 ldci 5
 stoi
 lao 193
 ldcc '^'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc ';'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 193
 ldcc '<'
 ordc
 ixa 1
 ldci 7
 stoi
 lao 193
 ldcc '>'
 ordc
 ixa 1
 ldci 8
 stoi
 lao 1444
 ldcc '0'
 ordc
 ixa 1
 ldci 0
 stoi
 lao 1444
 ldcc '1'
 ordc
 ixa 1
 ldci 1
 stoi
 lao 1444
 ldcc '2'
 ordc
 ixa 1
 ldci 2
 stoi
 lao 1444
 ldcc '3'
 ordc
 ixa 1
 ldci 3
 stoi
 lao 1444
 ldcc '4'
 ordc
 ixa 1
 ldci 4
 stoi
 lao 1444
 ldcc '5'
 ordc
 ixa 1
 ldci 5
 stoi
 lao 1444
 ldcc '6'
 ordc
 ixa 1
 ldci 6
 stoi
 lao 1444
 ldcc '7'
 ordc
 ixa 1
 ldci 7
 stoi
 lao 1444
 ldcc '8'
 ordc
 ixa 1
 ldci 8
 stoi
 lao 1444
 ldcc '9'
 ordc
 ixa 1
 ldci 9
 stoi
 retp
l1742= 7
l1743= 7
l1746
 ent 1 l1747
 ent 2 l1748
 lao 1360
 ldci 0
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 1
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 2
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 3
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 4
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 5
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 6
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 7
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 8
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 9
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 10
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 11
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 12
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 13
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 14
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 15
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 16
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 17
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 18
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 19
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 20
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 21
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 22
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 23
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 24
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 25
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 26
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1360
 ldci 27
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 28
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 29
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 30
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 31
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 32
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 33
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 34
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 35
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 36
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 37
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 38
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 39
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 40
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1360
 ldci 41
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 42
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 43
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 44
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 45
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 46
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 47
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 48
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 49
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 50
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 51
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 52
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 53
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 54
 ixa 1
 ldci 1
 stoi
 lao 1360
 ldci 55
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 56
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1360
 ldci 57
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 58
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 59
 ixa 1
 ldci 0
 stoi
 lao 1360
 ldci 60
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 1
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1421
 ldci 2
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1421
 ldci 3
 deci 1
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1421
 ldci 4
 deci 1
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1421
 ldci 5
 deci 1
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1421
 ldci 6
 deci 1
 ixa 1
 ldci 3
 ngi
 stoi
 lao 1421
 ldci 7
 deci 1
 ixa 1
 ldci 3
 ngi
 stoi
 lao 1421
 ldci 8
 deci 1
 ixa 1
 ldci 3
 ngi
 stoi
 lao 1421
 ldci 9
 deci 1
 ixa 1
 ldci 3
 ngi
 stoi
 lao 1421
 ldci 10
 deci 1
 ixa 1
 ldci 4
 ngi
 stoi
 lao 1421
 ldci 11
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 12
 deci 1
 ixa 1
 ldci 2
 ngi
 stoi
 lao 1421
 ldci 13
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1421
 ldci 14
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 15
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 16
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 17
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 18
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 19
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 20
 deci 1
 ixa 1
 ldci 0
 stoi
 lao 1421
 ldci 21
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1421
 ldci 22
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 lao 1421
 ldci 23
 deci 1
 ixa 1
 ldci 1
 ngi
 stoi
 retp
l1747= 5
l1748= 7
l1721
 ent 1 l1749
 ent 2 l1750
 mst 0
 cup 0 l1722
 mst 0
 cup 0 l1725
 mst 0
 cup 0 l1728
 mst 0
 cup 0 l1738
 mst 0
 cup 0 l1735
 mst 0
 cup 0 l1741
 mst 0
 cup 0 l1746
 retp
l1749= 5
l1750= 5
l1751
 ent 1 l1752
 ent 2 l1753
 lao 5
 csp get
 mst 0
 cup 0 l1715
 mst 0
 cup 0 l1718
 mst 0
 cup 0 l1721
 ldci 0
 sroi 51
 ldci 0
 sroi 52
 lao 54
 ldci 0
 ixa 5
 stra 0 1511
 ldoa 1511
 ldcn
 stoa
 ldoa 1511
 inca 1
 ldcn
 stoa
 ldoa 1511
 inca 2
 ldci 0
 stoi
 mst 0
 cup 0 l1694
 mst 0
 cup 0 l1691
 mst 0
 cup 0 l1697
 mst 0
 cup 0 l1712
 ldci 1
 sroi 52
 ldci 1
 sroi 51
 lao 54
 ldci 1
 ixa 5
 stra 0 1511
 ldoa 1511
 ldcn
 stoa
 ldoa 1511
 inca 1
 ldcn
 stoa
 ldoa 1511
 inca 2
 ldci 0
 stoi
 lao 8
 mst 0
 cup 0 l25
 mst 0
 ldos 189
 ldos 186
 uni
 ldc( 33)
 dif
 cup 1 l1673
 retp
l1752= 1512
l1753= 8
q
 mst 0
 cup 0 l1751
 stp
q
