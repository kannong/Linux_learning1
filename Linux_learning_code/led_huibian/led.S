.text
.global _start

_start:
    /*设置IO口方向*/
    ldr r1, =0x56000030
    ldr r0, =0x00100000
    str r0, [r1]

    /*输出低电平，灯亮*/
    ldr r1, =0x56000034
    ldr r0, =0
    str r0, [r1]   

/*死循环*/
halt:
    b halt
