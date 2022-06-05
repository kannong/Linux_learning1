int main()
{
    //定义方向寄存器以及数据寄存器的地址
    unsigned int *GPDCON = (unsigned int *)0x56000010;
    unsigned int *GPDDAT = (unsigned int *)0x56000014;

    //写入寄存器
    *GPDCON = 0x00000400;
    *GPDDAT = 0;

    return 0;
}
