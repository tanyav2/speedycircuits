@alice_in = global [32 x i32] [i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0]
@bob_in = global [32 x i32] [i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0]
@cons = global [33 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]

define i64 @main() {
	%w0 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 0)
	%w1 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 1)
	%w2 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 2)
	%w3 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 3)
	%w4 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 4)
	%w5 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 5)
	%w6 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 6)
	%w7 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 7)
	%w8 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 8)
	%w9 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 9)
	%w10 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 10)
	%w11 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 11)
	%w12 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 12)
	%w13 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 13)
	%w14 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 14)
	%w15 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 15)
	%w16 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 16)
	%w17 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 17)
	%w18 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 18)
	%w19 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 19)
	%w20 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 20)
	%w21 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 21)
	%w22 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 22)
	%w23 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 23)
	%w24 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 24)
	%w25 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 25)
	%w26 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 26)
	%w27 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 27)
	%w28 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 28)
	%w29 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 29)
	%w30 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 30)
	%w31 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 31)
	%w32 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 0)
	%w33 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 1)
	%w34 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 2)
	%w35 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 3)
	%w36 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 4)
	%w37 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 5)
	%w38 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 6)
	%w39 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 7)
	%w40 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 8)
	%w41 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 9)
	%w42 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 10)
	%w43 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 11)
	%w44 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 12)
	%w45 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 13)
	%w46 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 14)
	%w47 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 15)
	%w48 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 16)
	%w49 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 17)
	%w50 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 18)
	%w51 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 19)
	%w52 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 20)
	%w53 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 21)
	%w54 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 22)
	%w55 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 23)
	%w56 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 24)
	%w57 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 25)
	%w58 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 26)
	%w59 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 27)
	%w60 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 28)
	%w61 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 29)
	%w62 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 30)
	%w63 = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 31)
	%w64 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 0)
	%w98 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 1)
	%w104 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 2)
	%w110 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 3)
	%w121 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 4)
	%w127 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 5)
	%w133 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 6)
	%w144 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 7)
	%w160 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 8)
	%w166 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 9)
	%w172 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 10)
	%w183 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 11)
	%w189 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 12)
	%w195 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 13)
	%w206 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 14)
	%w222 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 15)
	%w243 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 16)
	%w249 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 17)
	%w255 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 18)
	%w266 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 19)
	%w272 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 20)
	%w278 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 21)
	%w289 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 22)
	%w305 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 23)
	%w311 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 24)
	%w317 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 25)
	%w328 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 26)
	%w334 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 27)
	%w340 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 28)
	%w351 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 29)
	%w367 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 30)
	%w388 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 31)
	%w414 = load i32, i32* getelementptr ([33 x i32], [33 x i32]* @cons, i32 0, i32 32)


	%w66 = xor i32 %w0, %w32
	%w67 = xor i32 %w1, %w33
	%w68 = xor i32 %w2, %w34
	%w69 = xor i32 %w3, %w35
	%w70 = xor i32 %w4, %w36
	%w71 = xor i32 %w5, %w37
	%w72 = xor i32 %w6, %w38
	%w73 = xor i32 %w7, %w39
	%w74 = xor i32 %w8, %w40
	%w75 = xor i32 %w9, %w41
	%w76 = xor i32 %w10, %w42
	%w77 = xor i32 %w11, %w43
	%w78 = xor i32 %w12, %w44
	%w79 = xor i32 %w13, %w45
	%w80 = xor i32 %w14, %w46
	%w81 = xor i32 %w15, %w47
	%w82 = xor i32 %w16, %w48
	%w83 = xor i32 %w17, %w49
	%w84 = xor i32 %w18, %w50
	%w85 = xor i32 %w19, %w51
	%w86 = xor i32 %w20, %w52
	%w87 = xor i32 %w21, %w53
	%w88 = xor i32 %w22, %w54
	%w89 = xor i32 %w23, %w55
	%w90 = xor i32 %w24, %w56
	%w91 = xor i32 %w25, %w57
	%w92 = xor i32 %w26, %w58
	%w93 = xor i32 %w27, %w59
	%w94 = xor i32 %w28, %w60
	%w95 = xor i32 %w29, %w61
	%w96 = xor i32 %w30, %w62
	%w97 = xor i32 %w31, %w63
	%w99 = xor i32 %w66, %w98
	%w100 = xor i32 %w67, %w98
	%w101 = xor i32 %w66, %w100
	%w102 = and i32 %w99, %w100
	%w103 = xor i32 %w98, %w102
	%w105 = xor i32 %w68, %w104
	%w106 = xor i32 %w69, %w104
	%w107 = xor i32 %w68, %w106
	%w108 = and i32 %w105, %w106
	%w109 = xor i32 %w104, %w108
	%w111 = xor i32 %w101, %w110
	%w112 = xor i32 %w107, %w110
	%w113 = xor i32 %w101, %w112
	%w114 = and i32 %w111, %w112
	%w115 = xor i32 %w110, %w114
	%w116 = xor i32 %w103, %w115
	%w117 = xor i32 %w109, %w115
	%w118 = xor i32 %w103, %w117
	%w119 = and i32 %w116, %w117
	%w120 = xor i32 %w115, %w119
	%w122 = xor i32 %w70, %w121
	%w123 = xor i32 %w71, %w121
	%w124 = xor i32 %w70, %w123
	%w125 = and i32 %w122, %w123
	%w126 = xor i32 %w121, %w125
	%w128 = xor i32 %w72, %w127
	%w129 = xor i32 %w73, %w127
	%w130 = xor i32 %w72, %w129
	%w131 = and i32 %w128, %w129
	%w132 = xor i32 %w127, %w131
	%w134 = xor i32 %w124, %w133
	%w135 = xor i32 %w130, %w133
	%w136 = xor i32 %w124, %w135
	%w137 = and i32 %w134, %w135
	%w138 = xor i32 %w133, %w137
	%w139 = xor i32 %w126, %w138
	%w140 = xor i32 %w132, %w138
	%w141 = xor i32 %w126, %w140
	%w142 = and i32 %w139, %w140
	%w143 = xor i32 %w138, %w142
	%w145 = xor i32 %w113, %w144
	%w146 = xor i32 %w136, %w144
	%w147 = xor i32 %w113, %w146
	%w148 = and i32 %w145, %w146
	%w149 = xor i32 %w144, %w148
	%w150 = xor i32 %w118, %w149
	%w151 = xor i32 %w141, %w149
	%w152 = xor i32 %w118, %w151
	%w153 = and i32 %w150, %w151
	%w154 = xor i32 %w149, %w153
	%w155 = xor i32 %w120, %w154
	%w156 = xor i32 %w143, %w154
	%w157 = xor i32 %w120, %w156
	%w158 = and i32 %w155, %w156
	%w159 = xor i32 %w154, %w158
	%w161 = xor i32 %w74, %w160
	%w162 = xor i32 %w75, %w160
	%w163 = xor i32 %w74, %w162
	%w164 = and i32 %w161, %w162
	%w165 = xor i32 %w160, %w164
	%w167 = xor i32 %w76, %w166
	%w168 = xor i32 %w77, %w166
	%w169 = xor i32 %w76, %w168
	%w170 = and i32 %w167, %w168
	%w171 = xor i32 %w166, %w170
	%w173 = xor i32 %w163, %w172
	%w174 = xor i32 %w169, %w172
	%w175 = xor i32 %w163, %w174
	%w176 = and i32 %w173, %w174
	%w177 = xor i32 %w172, %w176
	%w178 = xor i32 %w165, %w177
	%w179 = xor i32 %w171, %w177
	%w180 = xor i32 %w165, %w179
	%w181 = and i32 %w178, %w179
	%w182 = xor i32 %w177, %w181
	%w184 = xor i32 %w78, %w183
	%w185 = xor i32 %w79, %w183
	%w186 = xor i32 %w78, %w185
	%w187 = and i32 %w184, %w185
	%w188 = xor i32 %w183, %w187
	%w190 = xor i32 %w80, %w189
	%w191 = xor i32 %w81, %w189
	%w192 = xor i32 %w80, %w191
	%w193 = and i32 %w190, %w191
	%w194 = xor i32 %w189, %w193
	%w196 = xor i32 %w186, %w195
	%w197 = xor i32 %w192, %w195
	%w198 = xor i32 %w186, %w197
	%w199 = and i32 %w196, %w197
	%w200 = xor i32 %w195, %w199
	%w201 = xor i32 %w188, %w200
	%w202 = xor i32 %w194, %w200
	%w203 = xor i32 %w188, %w202
	%w204 = and i32 %w201, %w202
	%w205 = xor i32 %w200, %w204
	%w207 = xor i32 %w175, %w206
	%w208 = xor i32 %w198, %w206
	%w209 = xor i32 %w175, %w208
	%w210 = and i32 %w207, %w208
	%w211 = xor i32 %w206, %w210
	%w212 = xor i32 %w180, %w211
	%w213 = xor i32 %w203, %w211
	%w214 = xor i32 %w180, %w213
	%w215 = and i32 %w212, %w213
	%w216 = xor i32 %w211, %w215
	%w217 = xor i32 %w182, %w216
	%w218 = xor i32 %w205, %w216
	%w219 = xor i32 %w182, %w218
	%w220 = and i32 %w217, %w218
	%w221 = xor i32 %w216, %w220
	%w223 = xor i32 %w147, %w222
	%w224 = xor i32 %w209, %w222
	%w225 = xor i32 %w147, %w224
	%w226 = and i32 %w223, %w224
	%w227 = xor i32 %w222, %w226
	%w228 = xor i32 %w152, %w227
	%w229 = xor i32 %w214, %w227
	%w230 = xor i32 %w152, %w229
	%w231 = and i32 %w228, %w229
	%w232 = xor i32 %w227, %w231
	%w233 = xor i32 %w157, %w232
	%w234 = xor i32 %w219, %w232
	%w235 = xor i32 %w157, %w234
	%w236 = and i32 %w233, %w234
	%w237 = xor i32 %w232, %w236
	%w238 = xor i32 %w159, %w237
	%w239 = xor i32 %w221, %w237
	%w240 = xor i32 %w159, %w239
	%w241 = and i32 %w238, %w239
	%w242 = xor i32 %w237, %w241
	%w244 = xor i32 %w82, %w243
	%w245 = xor i32 %w83, %w243
	%w246 = xor i32 %w82, %w245
	%w247 = and i32 %w244, %w245
	%w248 = xor i32 %w243, %w247
	%w250 = xor i32 %w84, %w249
	%w251 = xor i32 %w85, %w249
	%w252 = xor i32 %w84, %w251
	%w253 = and i32 %w250, %w251
	%w254 = xor i32 %w249, %w253
	%w256 = xor i32 %w246, %w255
	%w257 = xor i32 %w252, %w255
	%w258 = xor i32 %w246, %w257
	%w259 = and i32 %w256, %w257
	%w260 = xor i32 %w255, %w259
	%w261 = xor i32 %w248, %w260
	%w262 = xor i32 %w254, %w260
	%w263 = xor i32 %w248, %w262
	%w264 = and i32 %w261, %w262
	%w265 = xor i32 %w260, %w264
	%w267 = xor i32 %w86, %w266
	%w268 = xor i32 %w87, %w266
	%w269 = xor i32 %w86, %w268
	%w270 = and i32 %w267, %w268
	%w271 = xor i32 %w266, %w270
	%w273 = xor i32 %w88, %w272
	%w274 = xor i32 %w89, %w272
	%w275 = xor i32 %w88, %w274
	%w276 = and i32 %w273, %w274
	%w277 = xor i32 %w272, %w276
	%w279 = xor i32 %w269, %w278
	%w280 = xor i32 %w275, %w278
	%w281 = xor i32 %w269, %w280
	%w282 = and i32 %w279, %w280
	%w283 = xor i32 %w278, %w282
	%w284 = xor i32 %w271, %w283
	%w285 = xor i32 %w277, %w283
	%w286 = xor i32 %w271, %w285
	%w287 = and i32 %w284, %w285
	%w288 = xor i32 %w283, %w287
	%w290 = xor i32 %w258, %w289
	%w291 = xor i32 %w281, %w289
	%w292 = xor i32 %w258, %w291
	%w293 = and i32 %w290, %w291
	%w294 = xor i32 %w289, %w293
	%w295 = xor i32 %w263, %w294
	%w296 = xor i32 %w286, %w294
	%w297 = xor i32 %w263, %w296
	%w298 = and i32 %w295, %w296
	%w299 = xor i32 %w294, %w298
	%w300 = xor i32 %w265, %w299
	%w301 = xor i32 %w288, %w299
	%w302 = xor i32 %w265, %w301
	%w303 = and i32 %w300, %w301
	%w304 = xor i32 %w299, %w303
	%w306 = xor i32 %w90, %w305
	%w307 = xor i32 %w91, %w305
	%w308 = xor i32 %w90, %w307
	%w309 = and i32 %w306, %w307
	%w310 = xor i32 %w305, %w309
	%w312 = xor i32 %w92, %w311
	%w313 = xor i32 %w93, %w311
	%w314 = xor i32 %w92, %w313
	%w315 = and i32 %w312, %w313
	%w316 = xor i32 %w311, %w315
	%w318 = xor i32 %w308, %w317
	%w319 = xor i32 %w314, %w317
	%w320 = xor i32 %w308, %w319
	%w321 = and i32 %w318, %w319
	%w322 = xor i32 %w317, %w321
	%w323 = xor i32 %w310, %w322
	%w324 = xor i32 %w316, %w322
	%w325 = xor i32 %w310, %w324
	%w326 = and i32 %w323, %w324
	%w327 = xor i32 %w322, %w326
	%w329 = xor i32 %w94, %w328
	%w330 = xor i32 %w95, %w328
	%w331 = xor i32 %w94, %w330
	%w332 = and i32 %w329, %w330
	%w333 = xor i32 %w328, %w332
	%w335 = xor i32 %w96, %w334
	%w336 = xor i32 %w97, %w334
	%w337 = xor i32 %w96, %w336
	%w338 = and i32 %w335, %w336
	%w339 = xor i32 %w334, %w338
	%w341 = xor i32 %w331, %w340
	%w342 = xor i32 %w337, %w340
	%w343 = xor i32 %w331, %w342
	%w344 = and i32 %w341, %w342
	%w345 = xor i32 %w340, %w344
	%w346 = xor i32 %w333, %w345
	%w347 = xor i32 %w339, %w345
	%w348 = xor i32 %w333, %w347
	%w349 = and i32 %w346, %w347
	%w350 = xor i32 %w345, %w349
	%w352 = xor i32 %w320, %w351
	%w353 = xor i32 %w343, %w351
	%w354 = xor i32 %w320, %w353
	%w355 = and i32 %w352, %w353
	%w356 = xor i32 %w351, %w355
	%w357 = xor i32 %w325, %w356
	%w358 = xor i32 %w348, %w356
	%w359 = xor i32 %w325, %w358
	%w360 = and i32 %w357, %w358
	%w361 = xor i32 %w356, %w360
	%w362 = xor i32 %w327, %w361
	%w363 = xor i32 %w350, %w361
	%w364 = xor i32 %w327, %w363
	%w365 = and i32 %w362, %w363
	%w366 = xor i32 %w361, %w365
	%w368 = xor i32 %w292, %w367
	%w369 = xor i32 %w354, %w367
	%w370 = xor i32 %w292, %w369
	%w371 = and i32 %w368, %w369
	%w372 = xor i32 %w367, %w371
	%w373 = xor i32 %w297, %w372
	%w374 = xor i32 %w359, %w372
	%w375 = xor i32 %w297, %w374
	%w376 = and i32 %w373, %w374
	%w377 = xor i32 %w372, %w376
	%w378 = xor i32 %w302, %w377
	%w379 = xor i32 %w364, %w377
	%w380 = xor i32 %w302, %w379
	%w381 = and i32 %w378, %w379
	%w382 = xor i32 %w377, %w381
	%w383 = xor i32 %w304, %w382
	%w384 = xor i32 %w366, %w382
	%w385 = xor i32 %w304, %w384
	%w386 = and i32 %w383, %w384
	%w387 = xor i32 %w382, %w386
	%w389 = xor i32 %w225, %w388
	%w390 = xor i32 %w370, %w388
	%w391 = xor i32 %w225, %w390
	%w392 = and i32 %w389, %w390
	%w393 = xor i32 %w388, %w392
	%w394 = xor i32 %w230, %w393
	%w395 = xor i32 %w375, %w393
	%w396 = xor i32 %w230, %w395
	%w397 = and i32 %w394, %w395
	%w398 = xor i32 %w393, %w397
	%w399 = xor i32 %w235, %w398
	%w400 = xor i32 %w380, %w398
	%w401 = xor i32 %w235, %w400
	%w402 = and i32 %w399, %w400
	%w403 = xor i32 %w398, %w402
	%w404 = xor i32 %w240, %w403
	%w405 = xor i32 %w385, %w403
	%w406 = xor i32 %w240, %w405
	%w407 = and i32 %w404, %w405
	%w408 = xor i32 %w403, %w407
	%w409 = xor i32 %w242, %w408
	%w410 = xor i32 %w387, %w408
	%w411 = xor i32 %w242, %w410
	%w412 = and i32 %w409, %w410
	%w413 = xor i32 %w408, %w412
	%w415 = xor i32 %w391, %w414
	%w416 = xor i32 %w64, %w414
	%w417 = xor i32 %w391, %w416
	%w418 = and i32 %w415, %w416
	%w419 = xor i32 %w414, %w418
	%w420 = xor i32 %w396, %w419
	%w421 = xor i32 %w64, %w419
	%w422 = xor i32 %w396, %w421
	%w423 = and i32 %w420, %w421
	%w424 = xor i32 %w419, %w423
	%w425 = xor i32 %w401, %w424
	%w426 = xor i32 %w64, %w424
	%w427 = xor i32 %w401, %w426
	%w428 = and i32 %w425, %w426
	%w429 = xor i32 %w424, %w428
	%w430 = xor i32 %w406, %w429
	%w431 = xor i32 %w64, %w429
	%w432 = xor i32 %w406, %w431
	%w433 = and i32 %w430, %w431
	%w434 = xor i32 %w429, %w433
	%w435 = xor i32 %w411, %w434
	%w436 = xor i32 %w64, %w434
	%w437 = xor i32 %w411, %w436
	%w438 = and i32 %w435, %w436
	%w439 = xor i32 %w434, %w438
	%w440 = xor i32 %w413, %w439
	%w441 = xor i32 %w64, %w439
	%w442 = xor i32 %w413, %w441
	%w443 = and i32 %w440, %w441
	%w444 = xor i32 %w439, %w443
	%w445 = xor i32 %w64, %w444
	%w446 = xor i32 %w64, %w444
	%w447 = xor i32 %w64, %w446
	%w448 = and i32 %w445, %w446
	%w449 = xor i32 %w444, %w448

	%result = zext i32 %w69 to i64
	ret i64 %result
}
