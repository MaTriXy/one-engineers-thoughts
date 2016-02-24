
c/string.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <strcpy>:
#include <stdlib.h>

char *(strcpy)(char *s1, const char *s2) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  char *dst = s1;
   c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  const char *src = s2;
  14:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  18:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  while ((*dst++ = *src++) != '\0')
  1c:	90                   	nop
  1d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  21:	48 8d 50 01          	lea    rdx,[rax+0x1]
  25:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  29:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  2d:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
  31:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
  35:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
  38:	88 10                	mov    BYTE PTR [rax],dl
  3a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  3d:	84 c0                	test   al,al
  3f:	75 dc                	jne    1d <strcpy+0x1d>
    ;
  return s1;
  41:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
}
  45:	5d                   	pop    rbp
  46:	c3                   	ret    

0000000000000047 <strcat>:

char *(strcat)(char *s1, const char *s2) {
  47:	55                   	push   rbp
  48:	48 89 e5             	mov    rbp,rsp
  4b:	48 83 ec 20          	sub    rsp,0x20
  4f:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  53:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  char *s = s1;
  57:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  5b:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  while (*s != '\0') s++;
  5f:	eb 05                	jmp    66 <strcat+0x1f>
  61:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  66:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  6a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  6d:	84 c0                	test   al,al
  6f:	75 f0                	jne    61 <strcat+0x1a>
  strcpy(s, s2);
  71:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  75:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  79:	48 89 d6             	mov    rsi,rdx
  7c:	48 89 c7             	mov    rdi,rax
  7f:	e8 00 00 00 00       	call   84 <strcat+0x3d>
  return s1;
  84:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
}
  88:	c9                   	leave  
  89:	c3                   	ret    

000000000000008a <strlen>:

size_t (strlen)(const char *s) {
  8a:	55                   	push   rbp
  8b:	48 89 e5             	mov    rbp,rsp
  8e:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  const char *p = s;
  92:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  96:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  while (*p != '\0') p++;
  9a:	eb 05                	jmp    a1 <strlen+0x17>
  9c:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  a1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  a5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  a8:	84 c0                	test   al,al
  aa:	75 f0                	jne    9c <strlen+0x12>
  return (size_t)(p - s);
  ac:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  b0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  b4:	48 29 c2             	sub    rdx,rax
  b7:	48 89 d0             	mov    rax,rdx
}
  ba:	5d                   	pop    rbp
  bb:	c3                   	ret    

00000000000000bc <strdup>:

char *
strdup(const char *str) {
  bc:	55                   	push   rbp
  bd:	48 89 e5             	mov    rbp,rsp
  c0:	48 83 ec 20          	sub    rsp,0x20
  c4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  int len = strlen(str) + 1;
  c8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  cc:	48 89 c7             	mov    rdi,rax
  cf:	e8 00 00 00 00       	call   d4 <strdup+0x18>
  d4:	83 c0 01             	add    eax,0x1
  d7:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  char *buf = malloc(len);
  da:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  dd:	48 98                	cdqe   
  df:	48 89 c7             	mov    rdi,rax
  e2:	e8 00 00 00 00       	call   e7 <strdup+0x2b>
  e7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  if (buf) memcpy(buf, str, len);
  eb:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  f0:	74 19                	je     10b <strdup+0x4f>
  f2:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  f5:	48 63 d0             	movsxd rdx,eax
  f8:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  fc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 100:	48 89 ce             	mov    rsi,rcx
 103:	48 89 c7             	mov    rdi,rax
 106:	e8 00 00 00 00       	call   10b <strdup+0x4f>
  return buf;
 10b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
}
 10f:	c9                   	leave  
 110:	c3                   	ret    

0000000000000111 <strndup>:

char *strndup(const char *s, size_t n)
{
 111:	55                   	push   rbp
 112:	48 89 e5             	mov    rbp,rsp
 115:	48 83 ec 20          	sub    rsp,0x20
 119:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 11d:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    char* new = malloc(n+1);
 121:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 125:	48 83 c0 01          	add    rax,0x1
 129:	48 89 c7             	mov    rdi,rax
 12c:	e8 00 00 00 00       	call   131 <strndup+0x20>
 131:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    if (new) {
 135:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 13a:	74 25                	je     161 <strndup+0x50>
        strncpy(new, s, n);
 13c:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
 140:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
 144:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 148:	48 89 ce             	mov    rsi,rcx
 14b:	48 89 c7             	mov    rdi,rax
 14e:	e8 00 00 00 00       	call   153 <strndup+0x42>
        new[n] = '\0';
 153:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 157:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 15b:	48 01 d0             	add    rax,rdx
 15e:	c6 00 00             	mov    BYTE PTR [rax],0x0
    }
    return new;
 161:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
}
 165:	c9                   	leave  
 166:	c3                   	ret    

0000000000000167 <fast_compare>:

int fast_compare( const char *ptr0, const char *ptr1, int len ) {
 167:	55                   	push   rbp
 168:	48 89 e5             	mov    rbp,rsp
 16b:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
 16f:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 173:	89 55 cc             	mov    DWORD PTR [rbp-0x34],edx
  int fast = len / sizeof(size_t) + 1;
 176:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 179:	48 98                	cdqe   
 17b:	48 c1 e8 03          	shr    rax,0x3
 17f:	83 c0 01             	add    eax,0x1
 182:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  int offset = (fast - 1) * sizeof(size_t);
 185:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
 188:	83 e8 01             	sub    eax,0x1
 18b:	c1 e0 03             	shl    eax,0x3
 18e:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  int current_block = 0;
 191:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0

  if (len <= sizeof(size_t)) fast = 0;
 198:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 19b:	83 f8 08             	cmp    eax,0x8
 19e:	77 07                	ja     1a7 <fast_compare+0x40>
 1a0:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [rbp-0x20],0x0

  size_t *lptr0 = (size_t*)ptr0;
 1a7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 1ab:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  size_t *lptr1 = (size_t*)ptr1;
 1af:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 1b3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax

  while (current_block < fast) {
 1b7:	e9 d1 00 00 00       	jmp    28d <fast_compare+0x126>
    if((lptr0[current_block] ^ lptr1[current_block])) {
 1bc:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 1bf:	48 98                	cdqe   
 1c1:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
 1c8:	00 
 1c9:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1cd:	48 01 d0             	add    rax,rdx
 1d0:	48 8b 10             	mov    rdx,QWORD PTR [rax]
 1d3:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 1d6:	48 98                	cdqe   
 1d8:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
 1df:	00 
 1e0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1e4:	48 01 c8             	add    rax,rcx
 1e7:	48 8b 00             	mov    rax,QWORD PTR [rax]
 1ea:	48 39 c2             	cmp    rdx,rax
 1ed:	0f 84 96 00 00 00    	je     289 <fast_compare+0x122>
      int pos;
      for (pos = current_block*sizeof(size_t); pos < len ; ++pos ){
 1f3:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 1f6:	c1 e0 03             	shl    eax,0x3
 1f9:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
 1fc:	eb 7f                	jmp    27d <fast_compare+0x116>
        if ((ptr0[pos] ^ ptr1[pos]) || (ptr0[pos] == 0) || (ptr1[pos] == 0) ){
 1fe:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 201:	48 63 d0             	movsxd rdx,eax
 204:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 208:	48 01 d0             	add    rax,rdx
 20b:	0f b6 10             	movzx  edx,BYTE PTR [rax]
 20e:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 211:	48 63 c8             	movsxd rcx,eax
 214:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 218:	48 01 c8             	add    rax,rcx
 21b:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 21e:	38 c2                	cmp    dl,al
 220:	75 28                	jne    24a <fast_compare+0xe3>
 222:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 225:	48 63 d0             	movsxd rdx,eax
 228:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 22c:	48 01 d0             	add    rax,rdx
 22f:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 232:	84 c0                	test   al,al
 234:	74 14                	je     24a <fast_compare+0xe3>
 236:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 239:	48 63 d0             	movsxd rdx,eax
 23c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 240:	48 01 d0             	add    rax,rdx
 243:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 246:	84 c0                	test   al,al
 248:	75 2f                	jne    279 <fast_compare+0x112>
          return  (int)((unsigned char)ptr0[pos] - (unsigned char)ptr1[pos]);
 24a:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 24d:	48 63 d0             	movsxd rdx,eax
 250:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 254:	48 01 d0             	add    rax,rdx
 257:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 25a:	0f b6 d0             	movzx  edx,al
 25d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 260:	48 63 c8             	movsxd rcx,eax
 263:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 267:	48 01 c8             	add    rax,rcx
 26a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 26d:	0f b6 c0             	movzx  eax,al
 270:	29 c2                	sub    edx,eax
 272:	89 d0                	mov    eax,edx
 274:	e9 83 00 00 00       	jmp    2fc <fast_compare+0x195>
  size_t *lptr1 = (size_t*)ptr1;

  while (current_block < fast) {
    if((lptr0[current_block] ^ lptr1[current_block])) {
      int pos;
      for (pos = current_block*sizeof(size_t); pos < len ; ++pos ){
 279:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
 27d:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
 280:	3b 45 cc             	cmp    eax,DWORD PTR [rbp-0x34]
 283:	0f 8c 75 ff ff ff    	jl     1fe <fast_compare+0x97>
          return  (int)((unsigned char)ptr0[pos] - (unsigned char)ptr1[pos]);
        }
      }
    }

    ++current_block;
 289:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
  if (len <= sizeof(size_t)) fast = 0;

  size_t *lptr0 = (size_t*)ptr0;
  size_t *lptr1 = (size_t*)ptr1;

  while (current_block < fast) {
 28d:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
 290:	3b 45 e0             	cmp    eax,DWORD PTR [rbp-0x20]
 293:	0f 8c 23 ff ff ff    	jl     1bc <fast_compare+0x55>
    }

    ++current_block;
  }

  while (len > offset) {
 299:	eb 54                	jmp    2ef <fast_compare+0x188>
    if( (ptr0[offset] ^ ptr1[offset] )){
 29b:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 29e:	48 63 d0             	movsxd rdx,eax
 2a1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 2a5:	48 01 d0             	add    rax,rdx
 2a8:	0f b6 10             	movzx  edx,BYTE PTR [rax]
 2ab:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 2ae:	48 63 c8             	movsxd rcx,eax
 2b1:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 2b5:	48 01 c8             	add    rax,rcx
 2b8:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 2bb:	38 c2                	cmp    dl,al
 2bd:	74 2c                	je     2eb <fast_compare+0x184>
      return (int)((unsigned char)ptr0[offset] - (unsigned char)ptr1[offset]);
 2bf:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 2c2:	48 63 d0             	movsxd rdx,eax
 2c5:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 2c9:	48 01 d0             	add    rax,rdx
 2cc:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 2cf:	0f b6 d0             	movzx  edx,al
 2d2:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 2d5:	48 63 c8             	movsxd rcx,eax
 2d8:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 2dc:	48 01 c8             	add    rax,rcx
 2df:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 2e2:	0f b6 c0             	movzx  eax,al
 2e5:	29 c2                	sub    edx,eax
 2e7:	89 d0                	mov    eax,edx
 2e9:	eb 11                	jmp    2fc <fast_compare+0x195>
    }
  ++offset;
 2eb:	83 45 e4 01          	add    DWORD PTR [rbp-0x1c],0x1
    }

    ++current_block;
  }

  while (len > offset) {
 2ef:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
 2f2:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
 2f5:	7f a4                	jg     29b <fast_compare+0x134>
      return (int)((unsigned char)ptr0[offset] - (unsigned char)ptr1[offset]);
    }
  ++offset;
  }

  return 0;
 2f7:	b8 00 00 00 00       	mov    eax,0x0
}
 2fc:	5d                   	pop    rbp
 2fd:	c3                   	ret    

00000000000002fe <mystrcat>:

char* mystrcat(char* dest, char* src) {
 2fe:	55                   	push   rbp
 2ff:	48 89 e5             	mov    rbp,rsp
 302:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 306:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
   while (*dest) dest++;
 30a:	eb 05                	jmp    311 <mystrcat+0x13>
 30c:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
 311:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 315:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 318:	84 c0                	test   al,al
 31a:	75 f0                	jne    30c <mystrcat+0xe>
   while (*dest++ = *src++);
 31c:	90                   	nop
 31d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 321:	48 8d 50 01          	lea    rdx,[rax+0x1]
 325:	48 89 55 f8          	mov    QWORD PTR [rbp-0x8],rdx
 329:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
 32d:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
 331:	48 89 4d f0          	mov    QWORD PTR [rbp-0x10],rcx
 335:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
 338:	88 10                	mov    BYTE PTR [rax],dl
 33a:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 33d:	84 c0                	test   al,al
 33f:	75 dc                	jne    31d <mystrcat+0x1f>
   return --dest;
 341:	48 83 6d f8 01       	sub    QWORD PTR [rbp-0x8],0x1
 346:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
}
 34a:	5d                   	pop    rbp
 34b:	c3                   	ret    
