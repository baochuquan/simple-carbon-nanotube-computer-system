import sys
import re
import struct

operation_table = {
    "MOV"       :   0b0000000000000000,
    "MOVn"      :   0b0000010000000000,
    "ADD"       :   0b0000100000000000,
    "ADDn"      :   0b0000110000000000,
    "SUB"       :   0b0001000000000000,
    "SUBn"      :   0b0001010000000000,
    "RSB"       :   0b0001100000000000,
    "RSBn"      :   0b0001110000000000,
    "DATASEG"   :   0b0010100000000000,
    "INSTSEG"   :   0b0010100100000000,
    "JR"        :   0b0010110000000000,
    "B"         :   0b0011000000000000,
    "BZ"        :   0b0011001000000000,
    "BNZ"       :   0b0011000100000000,
    "END"       :   0b0011111111111111
}

sysmbol_table = {}
asm_table = []
PC = 0

def parser(srcname, resname):
    global PC
    res = open(resname, "wb")
    src = open(srcname, "r")
    
    for line in src:
        print(PC)
        pos = line.find("@")
        if pos != -1:
            line = line[0 : pos-1]
        words = re.split("\s+|:", line)
        fields = [];
        for item in words:
            if item != "":
                fields.append(item)
        if len(fields) == 0:
            continue
        asm_table.append(line)
        print(line)
        if fields[0] not in operation_table:
            sysmbol_table[fields[0]] = PC
            if len(fields) == 1:
                continue
        PC = PC + 1

    print (sysmbol_table)
    # print (asm_table)

    PC = 0
    for line in asm_table:
        words = re.split("\s+|:", line)
        fields = [];
        for item in words:
            if item != "":
                fields.append(item)
        decoded_inst = 0

        # print ("\tline:%s" % line)
        # print ("\tfields:", fields)
        if len(fields) == 0:
            continue

        if fields[0] not in operation_table:
            fields.remove(fields[0])
        
        if len(fields) == 0:
            continue

        if fields[0] in operation_table:
            decoded_inst = operation_table[fields[0]]
        else:
            print ("the instruction %s is not defined" % fields[0])
            exit(0)

        if fields[0] == "B" or fields[0] == "BZ" or fields[0] == "BNZ":
            C = sysmbol_table[fields[1]] - PC
            print (C)
        elif fields[0] == "DATASEG" or fields[0] == "INSTSEG" or fields[0] == "JR":
            C = int(fields[1])
        elif fields[0] == "END":
            bytes = struct.pack('H', decoded_inst)
            res.write(bytes)
            PC += 1
            continue
        else:
            if fields[1].startswith("["):
                C = int(fields[1].strip("[|]"))
                decoded_inst |= 0b0100000000
            else:
                C = int(fields[1])
                decoded_inst |= 0b0000000000

        # C = bin(C)
        # if C.startswith("-"):
        #     C = C[3:]
        #     mid = ""
        #     can_invert = False
        #     i = len(C) - 1
        #     while (i>=0):
        #         if can_invert == False and C[i] == "1":
        #             can_invert = True
        #             mid += C[i]
        #             i -= 1
        #             continue
        #         if can_invert:
        #             mid += str(1 - eval(C[i]))
        #         else:
        #             mid += C[i]
        #         i -= 1
        #     C = mid[::-1]
        #     decoded_inst += ((8-len(C))*"1" + C)
        # else:
        #     decoded_inst += ((8-len(C[2:]))*"0" + C[2:])
        decoded_inst += (C & 0xff)
        bytes = struct.pack('H', decoded_inst)

        res.write(bytes)
        PC += 1

    src.close()
    res.close()

def main():
    resname = "a.out"
    if len(sys.argv) < 2:
        print ("usage: python as.py fileneame [res_file]")
    elif len(sys.argv) == 3:
        srcname = sys.argv[1]
        resname = sys.argv[2]
        parser(srcname, resname)
    else:
        srcname = sys.argv[1]
        parser(srcname, resname)        

if __name__ == "__main__":
    main();