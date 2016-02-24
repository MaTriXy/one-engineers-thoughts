
c/dumpstack.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include <stdio.h>
extern char **environ;

int main(int argc, char **argv) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 30          	sub    rsp,0x30
   8:	89 7d dc             	mov    DWORD PTR [rbp-0x24],edi
   b:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
        unsigned int a, *x;
  unsigned char *y;

  printf("argv = %08x\n", (unsigned int) argv);
   f:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  13:	89 c6                	mov    esi,eax
  15:	bf 00 00 00 00       	mov    edi,0x0
  1a:	b8 00 00 00 00       	mov    eax,0x0
  1f:	e8 00 00 00 00       	call   24 <main+0x24>
  printf("argv[0] = %08x\n", (unsigned int) argv[0]);
  24:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  28:	48 8b 00             	mov    rax,QWORD PTR [rax]
  2b:	89 c6                	mov    esi,eax
  2d:	bf 00 00 00 00       	mov    edi,0x0
  32:	b8 00 00 00 00       	mov    eax,0x0
  37:	e8 00 00 00 00       	call   3c <main+0x3c>
  printf("environ = %08x\n", (unsigned int) environ);
  3c:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 43 <main+0x43>
  43:	89 c6                	mov    esi,eax
  45:	bf 00 00 00 00       	mov    edi,0x0
  4a:	b8 00 00 00 00       	mov    eax,0x0
  4f:	e8 00 00 00 00       	call   54 <main+0x54>
  printf("environ[0] = %08x\n", (unsigned int) environ[0]);
  54:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 5b <main+0x5b>
  5b:	48 8b 00             	mov    rax,QWORD PTR [rax]
  5e:	89 c6                	mov    esi,eax
  60:	bf 00 00 00 00       	mov    edi,0x0
  65:	b8 00 00 00 00       	mov    eax,0x0
  6a:	e8 00 00 00 00       	call   6f <main+0x6f>
  printf("\n\n");
  6f:	bf 00 00 00 00       	mov    edi,0x0
  74:	e8 00 00 00 00       	call   79 <main+0x79>

        x = (unsigned int *) ((unsigned int) &a & ~0xf);
  79:	48 8d 45 ec          	lea    rax,[rbp-0x14]
  7d:	89 c0                	mov    eax,eax
  7f:	83 e0 f0             	and    eax,0xfffffff0
  82:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
        while ((unsigned int) x < (unsigned int) argv[0]) {
  86:	eb 65                	jmp    ed <main+0xed>
                printf("%08x:", (unsigned int) x);
  88:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  8c:	89 c6                	mov    esi,eax
  8e:	bf 00 00 00 00       	mov    edi,0x0
  93:	b8 00 00 00 00       	mov    eax,0x0
  98:	e8 00 00 00 00       	call   9d <main+0x9d>
                for (a=0; a<4; a++)
  9d:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  a4:	eb 30                	jmp    d6 <main+0xd6>
                        printf(" %08x", x[a]);
  a6:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  a9:	89 c0                	mov    eax,eax
  ab:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  b2:	00 
  b3:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  b7:	48 01 d0             	add    rax,rdx
  ba:	8b 00                	mov    eax,DWORD PTR [rax]
  bc:	89 c6                	mov    esi,eax
  be:	bf 00 00 00 00       	mov    edi,0x0
  c3:	b8 00 00 00 00       	mov    eax,0x0
  c8:	e8 00 00 00 00       	call   cd <main+0xcd>
  printf("\n\n");

        x = (unsigned int *) ((unsigned int) &a & ~0xf);
        while ((unsigned int) x < (unsigned int) argv[0]) {
                printf("%08x:", (unsigned int) x);
                for (a=0; a<4; a++)
  cd:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  d0:	83 c0 01             	add    eax,0x1
  d3:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  d6:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  d9:	83 f8 03             	cmp    eax,0x3
  dc:	76 c8                	jbe    a6 <main+0xa6>
                        printf(" %08x", x[a]);
                printf("\n");
  de:	bf 0a 00 00 00       	mov    edi,0xa
  e3:	e8 00 00 00 00       	call   e8 <main+0xe8>
                x += 4;
  e8:	48 83 45 f0 10       	add    QWORD PTR [rbp-0x10],0x10
  printf("environ = %08x\n", (unsigned int) environ);
  printf("environ[0] = %08x\n", (unsigned int) environ[0]);
  printf("\n\n");

        x = (unsigned int *) ((unsigned int) &a & ~0xf);
        while ((unsigned int) x < (unsigned int) argv[0]) {
  ed:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  f1:	89 c2                	mov    edx,eax
  f3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  f7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  fa:	39 c2                	cmp    edx,eax
  fc:	72 8a                	jb     88 <main+0x88>
                        printf(" %08x", x[a]);
                printf("\n");
                x += 4;
        }

  printf("\n\n");
  fe:	bf 00 00 00 00       	mov    edi,0x0
 103:	e8 00 00 00 00       	call   108 <main+0x108>
  y = (unsigned char *) ((unsigned int) argv[0] & ~0xf) - 16;
 108:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 10c:	48 8b 00             	mov    rax,QWORD PTR [rax]
 10f:	89 c0                	mov    eax,eax
 111:	83 e0 f0             	and    eax,0xfffffff0
 114:	48 83 e8 10          	sub    rax,0x10
 118:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
        while ((unsigned int) y < 0xc0000000) {
 11c:	e9 d0 00 00 00       	jmp    1f1 <main+0x1f1>
                printf("%08x:", (unsigned int) y);
 121:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 125:	89 c6                	mov    esi,eax
 127:	bf 00 00 00 00       	mov    edi,0x0
 12c:	b8 00 00 00 00       	mov    eax,0x0
 131:	e8 00 00 00 00       	call   136 <main+0x136>
                for (a=0; a<16; a++)
 136:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
 13d:	eb 2c                	jmp    16b <main+0x16b>
                        printf(" %02x", y[a]);
 13f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 142:	89 c2                	mov    edx,eax
 144:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 148:	48 01 d0             	add    rax,rdx
 14b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 14e:	0f b6 c0             	movzx  eax,al
 151:	89 c6                	mov    esi,eax
 153:	bf 00 00 00 00       	mov    edi,0x0
 158:	b8 00 00 00 00       	mov    eax,0x0
 15d:	e8 00 00 00 00       	call   162 <main+0x162>

  printf("\n\n");
  y = (unsigned char *) ((unsigned int) argv[0] & ~0xf) - 16;
        while ((unsigned int) y < 0xc0000000) {
                printf("%08x:", (unsigned int) y);
                for (a=0; a<16; a++)
 162:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 165:	83 c0 01             	add    eax,0x1
 168:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
 16b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 16e:	83 f8 0f             	cmp    eax,0xf
 171:	76 cc                	jbe    13f <main+0x13f>
                        printf(" %02x", y[a]);
    printf("   ");
 173:	bf 00 00 00 00       	mov    edi,0x0
 178:	b8 00 00 00 00       	mov    eax,0x0
 17d:	e8 00 00 00 00       	call   182 <main+0x182>
    for (a=0; a<16; a++)
 182:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
 189:	eb 4f                	jmp    1da <main+0x1da>
      putchar((y[a] > 32 && y[a] < 127) ? y[a] : '.');
 18b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 18e:	89 c2                	mov    edx,eax
 190:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 194:	48 01 d0             	add    rax,rdx
 197:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 19a:	3c 20                	cmp    al,0x20
 19c:	76 27                	jbe    1c5 <main+0x1c5>
 19e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 1a1:	89 c2                	mov    edx,eax
 1a3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1a7:	48 01 d0             	add    rax,rdx
 1aa:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1ad:	3c 7e                	cmp    al,0x7e
 1af:	77 14                	ja     1c5 <main+0x1c5>
 1b1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 1b4:	89 c2                	mov    edx,eax
 1b6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1ba:	48 01 d0             	add    rax,rdx
 1bd:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1c0:	0f b6 c0             	movzx  eax,al
 1c3:	eb 05                	jmp    1ca <main+0x1ca>
 1c5:	b8 2e 00 00 00       	mov    eax,0x2e
 1ca:	89 c7                	mov    edi,eax
 1cc:	e8 00 00 00 00       	call   1d1 <main+0x1d1>
        while ((unsigned int) y < 0xc0000000) {
                printf("%08x:", (unsigned int) y);
                for (a=0; a<16; a++)
                        printf(" %02x", y[a]);
    printf("   ");
    for (a=0; a<16; a++)
 1d1:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 1d4:	83 c0 01             	add    eax,0x1
 1d7:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
 1da:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 1dd:	83 f8 0f             	cmp    eax,0xf
 1e0:	76 a9                	jbe    18b <main+0x18b>
      putchar((y[a] > 32 && y[a] < 127) ? y[a] : '.');
                printf("\n");
 1e2:	bf 0a 00 00 00       	mov    edi,0xa
 1e7:	e8 00 00 00 00       	call   1ec <main+0x1ec>
                y += 16;
 1ec:	48 83 45 f8 10       	add    QWORD PTR [rbp-0x8],0x10
                x += 4;
        }

  printf("\n\n");
  y = (unsigned char *) ((unsigned int) argv[0] & ~0xf) - 16;
        while ((unsigned int) y < 0xc0000000) {
 1f1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1f5:	3d ff ff ff bf       	cmp    eax,0xbfffffff
 1fa:	0f 86 21 ff ff ff    	jbe    121 <main+0x121>
    for (a=0; a<16; a++)
      putchar((y[a] > 32 && y[a] < 127) ? y[a] : '.');
                printf("\n");
                y += 16;
        }
        return 0;
 200:	b8 00 00 00 00       	mov    eax,0x0
}
 205:	c9                   	leave  
 206:	c3                   	ret    
