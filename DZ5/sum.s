.include "macrolib.s"

.global sum

.text
sum:
	li    	t2 0
        li    	t5 0
        la      t0 array
out:
        lw    	a0 (t0)
        bgez    a0 elem_greater_or_equal_0
        j    	else
cont01:
        add    	t1 t1 a0
cont02:
        addi    t0 t0 4
        addi    t2 t2 1
        blt     t2 s1 out
        ret
elem_greater_or_equal_0:
        blez    t1 cont01
        li    	t6 0
        add    	t6 t1 a0
        bge    	t1 t6 overflow
        mv    	t1 t6
        j    	cont02
else:
        bgez    t1 cont01
        li    	t6 0
        add    	t6 t1 a0
        ble    	t1 t6 overflow
        mv    	t1 t6
        j    	cont02
overflow:
        print_str ("Сумма переполнилась, последнее корректное значение суммы:")
        newline
        ret