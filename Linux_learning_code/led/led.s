.text
.global _start

_start:
    //设置内存，：sp
    ldr sp, = 4096  //nand启动

    //调用main函数，跳转到main
    bl main

//死循环
halt:
    b halt