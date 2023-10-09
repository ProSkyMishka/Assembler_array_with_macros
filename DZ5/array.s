.include "macrolib.s"
.include "new_macros.s"

.global main
.global array

.data  
.align  2      
array:  .space  40
.text   
main:
        print_str ("n = ")
        read_int (t3)
        ble     t3 zero fail
        li      t4 10
        bgt     t3 t4 fail
        la      t0 array
        li    	s1 0	#counts quantity of array's elements left
        mv   	s1 t3
        li    	t1 0	#sum
        mv   	t2 t3
        make_input
        make_sum
        make_end
fail:
        print_str ("error")
        exit