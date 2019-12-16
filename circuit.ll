@alice_input_0 = global i8 1
@alice_input_1 = global i8 0
@bob_input_0 = global i8 0
@bob_input_1 = global i8 0
@cons = global i8 0

define i32 @main() {
    %w0 = load i8, i8* @alice_input_0
    %w1 = load i8, i8* @alice_input_1
    %w2 = load i8, i8* @bob_input_0
    %w3 = load i8, i8* @bob_input_1
    %w6 = load i8, i8* @cons

    %w7 = xor i8 %w0, %w6
    %w8 = xor i8 %w2, %w6
    %w9 = xor i8 %w0, %w8
    %w10 = and i8 %w7, %w8
    %w11 = xor i8 %w6, %w10
    %w12 = xor i8 %w1, %w11
    %w13 = xor i8 %w3, %w11
    %w14 = xor i8 %w1, %w13
    %w15 = and i8 %w12, %w13
    %w16 = xor i8 %w11, %w15
    %result = zext i8 %w9 to i32
    ret i32 %result
}
