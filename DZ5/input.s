.include "macrolib.s"

.global input

.text
input:
fill:    
        print_str ("Введите элемент массива = ")
        read_int_a0
        sw    a0 (t0)
        addi    t0 t0 4
        addi    t2 t2 -1
        bnez    t2 fill
        newline
        ret