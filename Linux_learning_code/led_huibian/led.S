.text
.global _start

_start:
    /*设置IO口方向*/
    ldr r1, =0x56000010
    ldr r0, =0x00000400
    str r0, [r1]

    /*输出低电平，灯亮*/
    ldr r1, =0x56000014
    ldr r0, =0
    str r0, [r1]   

/*死循环*/
halt:
    b halt
