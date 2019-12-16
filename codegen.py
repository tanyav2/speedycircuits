cons = dict(ADD=[(66, 0)], SORT=[(641, 1)], MILL=[(65, 1), (98, 1)],
            MULT=[(64, 0), (258, 0), (515, 0), (772, 0), (1029, 0), (1286, 0), (1543, 0), (1800, 0), (2057, 0),
                  (2314, 0), (2571, 0), (2828, 0), (3085, 0), (3342, 0), (3599, 0), (3856, 0), (4113, 0), (4370, 0),
                  (4627, 0), (4884, 0), (5141, 0), (5398, 0), (5655, 0), (5912, 0), (6169, 0), (6426, 0), (6683, 0),
                  (6940, 0), (7197, 0), (7454, 0), (7711, 0), (7968, 0)],
            HAM=[(64, 0), (98, 0), (104, 0), (110, 0), (121, 0), (127, 0), (133, 0), (144, 0), (160, 0), (166, 0),
                 (172, 0), (183, 0), (189, 0), (195, 0), (206, 0), (222, 0), (243, 0), (249, 0), (255, 0), (266, 0),
                 (272, 0), (278, 0), (289, 0), (305, 0), (311, 0), (317, 0), (328, 0), (334, 0), (340, 0), (351, 0),
                 (367, 0), (388, 0), (414, 0)])

# for add, mult, mill
x = 2
y = 5
op = "MULT"

alice_in = (f'{x:032b}')[::-1]
bob_in = (f'{y:032b}')[::-1]
alice_in_str = "@alice_in = global [32 x i32] ["
bob_in_str = "@bob_in = global [32 x i32] ["
for i, (a_bit, b_bit) in enumerate(zip(alice_in, bob_in)):
    if i != 31:
        alice_in_str += ("i32 " + a_bit + ", ")
        bob_in_str += ("i32 " + b_bit + ", ")
    else:
        alice_in_str += ("i32 " + a_bit + "]")
        bob_in_str += ("i32 " + b_bit + "]")

constants = cons[op]
num_cons = len(constants)
cons_str = "@cons = global [" + str(num_cons) + " x i32] ["
for i, k in enumerate(constants):
    if i == (num_cons - 1):
        cons_str += ("i32 " + str(k[1]) + "]")
    else:
        cons_str += ("i32 " + str(k[1]) + ", ")

print(alice_in_str)
print(bob_in_str)
print(cons_str)

# begin main
print("\ndefine i64 @main() {")

# begin loads
# print alice loads
for i in range(32):
    temp = "\t%w" + str(i) + " = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @alice_in, i32 0, i32 " + str(
        i) + ")"
    print(temp)

# print bob loads
for i in range(32):
    temp = "\t%w" + str(i + 32) + " = load i32, i32* getelementptr ([32 x i32], [32 x i32]* @bob_in, i32 0, i32 " + str(
        i) + ")"
    print(temp)

# print cons loads
cons_str = "@cons = global [" + str(num_cons) + " x i32] ["
for i, k in enumerate(constants):
    print("\t%%w%d = load i32, i32* getelementptr ([%d x i32], [%d x i32]* @cons, i32 0, i32 %d)" % (
    k[0], num_cons, num_cons, i))

print("\n")

# all the registers
filename = "mult.txt"  # parse this from file
with open("mult.txt") as fp:
    for line in fp:
        line = line.rstrip()
        words = line.split(" ")
        temp = "\t%w" + words[-1] + " = " + words[2].lower() + " i32 %w" + words[0] + ", %w" + words[3]
        print(temp)

print("\n\t%result = zext i32 %w69 to i64")
print("\tret i64 %result\n}")
