import argparse

cons = dict(ADD=[(66, 0)],
            SORT=[(641, 1), (678, 1), (1069, 1), (1458, 1), (1847, 1), (2236, 1), (2625, 1), (3014, 1), (3403, 1),
                  (3792, 1), (4183, 1), (4574, 1), (4963, 1), (5352, 1), (5741, 1), (6130, 1), (6519, 1), (6908, 1),
                  (7297, 1), (7686, 1), (8075, 1), (8464, 1), (8853, 1), (9242, 1), (9631, 1), (10020, 1), (10409, 1),
                  (10798, 1), (11187, 1), (11576, 1), (11965, 1), (12354, 1), (12743, 1), (13132, 1), (13524, 1),
                  (13915, 1), (14304, 1), (14693, 1), (15082, 1), (15471, 1), (15860, 1), (16249, 1), (16638, 1),
                  (17029, 1), (17420, 1), (17809, 1), (18198, 1), (18587, 1), (18976, 1), (19365, 1), (19754, 1),
                  (20143, 1), (20532, 1), (20921, 1), (21310, 1), (21699, 1), (22088, 1), (22477, 1), (22866, 1),
                  (23255, 1), (23644, 1), (24033, 1), (24422, 1), (24811, 1), (25200, 1), (25589, 1), (25978, 1),
                  (26367, 1), (26756, 1), (27145, 1), (27534, 1), (27923, 1), (28312, 1), (28701, 1), (29090, 1),
                  (29479, 1), (29868, 1), (30257, 1), (30646, 1), (31035, 1), (31424, 1), (31813, 1), (32202, 1),
                  (32591, 1), (32980, 1), (33369, 1), (33758, 1), (34147, 1), (34536, 1), (34925, 1), (35314, 1),
                  (35703, 1), (36092, 1), (36481, 1), (36870, 1), (37259, 1), (37648, 1), (38037, 1), (38426, 1),
                  (38815, 1), (39204, 1), (39593, 1), (39982, 1), (40371, 1), (40760, 1), (41149, 1), (41538, 1)]
            , MILL=[(65, 1), (98, 1)],
            MULT=[(64, 0), (258, 0), (515, 0), (772, 0), (1029, 0), (1286, 0), (1543, 0), (1800, 0), (2057, 0),
                  (2314, 0), (2571, 0), (2828, 0), (3085, 0), (3342, 0), (3599, 0), (3856, 0), (4113, 0), (4370, 0),
                  (4627, 0), (4884, 0), (5141, 0), (5398, 0), (5655, 0), (5912, 0), (6169, 0), (6426, 0), (6683, 0),
                  (6940, 0), (7197, 0), (7454, 0), (7711, 0), (7968, 0)],
            HAM=[(64, 0), (98, 0), (104, 0), (110, 0), (121, 0), (127, 0), (133, 0), (144, 0), (160, 0), (166, 0),
                 (172, 0), (183, 0), (189, 0), (195, 0), (206, 0), (222, 0), (243, 0), (249, 0), (255, 0), (266, 0),
                 (272, 0), (278, 0), (289, 0), (305, 0), (311, 0), (317, 0), (328, 0), (334, 0), (340, 0), (351, 0),
                 (367, 0), (388, 0), (414, 0)])


parser = argparse.ArgumentParser(description='Generate optimized LLVM IR to evaluate boolean circuits.')
parser.add_argument('filename', type=str, help='File containing netlist to parse')
parser.add_argument('-alice_in', type=int, help='Alice\'s input')
parser.add_argument('-bob_in', type=int, help='Bob\'s input')
args = parser.parse_args()

# get opcode
with open(args.filename) as fp:
    first_line = fp.readline()
    second_line = fp.readline()
    third_line = fp.readline()

opcodes = {"Add": "ADD", "Sort": "SORT", "Millionaire": "MILL", "Mult": "MULT", "HammingDistance": "HAM"}
op = None
for opcode in opcodes:
    if first_line.find(opcode) >= 0:
        op = opcodes[opcode]

# get inputs
alice_in = None
bob_in = None
file_idx = 0
if op == "SORT" or op == "HAM":
    alice_in = ''.join(['1' if x == "true" else '0' for x in second_line.split(":")[1].replace("[", "").replace("]", "").replace(" ", "").split(",")])
    bob_in = ''.join(['1' if x == "true" else '0' for x in third_line.split(":")[1].replace("[", "").replace("]", "").replace(" ", "").split(",")])
    file_idx = 3
else:
    alice_in = f'{args.alice_in:032b}'[::-1]
    bob_in = f'{args.bob_in:032b}'[::-1]
    file_idx = 1


# print globals
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
with open(args.filename) as fp:
    for i in range(file_idx):
        next(fp)
    for line in fp:
        line = line.rstrip()
        words = line.split(" ")
        temp = "\t%w" + words[-1] + " = " + words[2].lower() + " i32 %w" + words[0] + ", %w" + words[3]
        print(temp)

print("\n\t%result = zext i32 %w69 to i64")
print("\tret i64 %result\n}")

