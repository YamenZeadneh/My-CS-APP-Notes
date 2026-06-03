/*void decode1(long *xp, long *yp, long *zp){
    long r8 = *xp;
    long rcx = *yp;
    long rax = *zp;
    *yp = r8;
    *zp = rcx;
    *xp = rax;
}
xp in %rdi, yp in %rsi, zp in %rdx*/
decode1:
movq (%rdi), %r8 /* r8 = *xp */
movq (%rsi), %rcx/* rcx = *yp */
movq (%rdx), %rax/* rax =*zp */
movq %r8, (%rsi)/* *yp=*xp */
movq %rcx,(%rdx)/* *zp=*yp */
movq %rax,(%rdi)/* *xp=old*zp */
ret

