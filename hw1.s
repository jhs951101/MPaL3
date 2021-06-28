        NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION .intvec : CODE (2)
        THUMB
        
__iar_program_start
        B       main

        
        SECTION .text : CODE (2)
        THUMB

main
        MOV r1, #1
        MOV r0, #10
        
loop
        CMP r0, #1
        BEQ end
        MUL r1, r1, r0
        SUB r0, r0, #1
        B loop

end
        END