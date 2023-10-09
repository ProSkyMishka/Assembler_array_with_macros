.include "macrolib.s"

.global end

.text
end:
        print_str ("Сумма = ")
        print_int (t1)
        newline
        print_str ("Количество просуммированных эллементов массива: ")
        print_int (t2)
        newline
        exit