
c/memory.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <memcpy>:
#include <assert.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

void *(memcpy)(void *s1, const void *s2, size_t n) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
   8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
   c:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  char *dst = s1;
  10:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  14:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  const char *src = s2;
  18:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  1c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  while (n-- != 0) *dst++ = *src++;
  20:	eb 1d                	jmp    3f <memcpy+0x3f>
  22:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  26:	48 8d 50 01          	lea    rdx,[rax+0x1]
  2a:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  2e:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  32:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
  36:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
  3a:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
  3d:	88 10                	mov    BYTE PTR [rax],dl
  3f:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  43:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  47:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  4b:	48 85 c0             	test   rax,rax
  4e:	75 d2                	jne    22 <memcpy+0x22>
  return s1;
  50:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
}
  54:	5d                   	pop    rbp
  55:	c3                   	ret    

0000000000000056 <memmove>:

void *(memmove)(void *s1, const void *s2, size_t n) {
  56:	55                   	push   rbp
  57:	48 89 e5             	mov    rbp,rsp
  5a:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  5e:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  62:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  char *p1 = s1;
  66:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  6a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  const char *p2 = s2;
  6e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  72:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  if (p2 < p1 && p1 < p2 + n) {
  76:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  7a:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  7e:	73 4d                	jae    cd <memmove+0x77>
  80:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  84:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  88:	48 01 d0             	add    rax,rdx
  8b:	48 3b 45 f0          	cmp    rax,QWORD PTR [rbp-0x10]
  8f:	76 3c                	jbe    cd <memmove+0x77>
    p2 += n;
  91:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  95:	48 01 45 f8          	add    QWORD PTR [rbp-0x8],rax
    p1 += n;
  99:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  9d:	48 01 45 f0          	add    QWORD PTR [rbp-0x10],rax
    while (n-- != 0) *--p1 = *--p2;
  a1:	eb 17                	jmp    ba <memmove+0x64>
  a3:	48 83 6d f0 01       	sub    QWORD PTR [rbp-0x10],0x1
  a8:	48 83 6d f8 01       	sub    QWORD PTR [rbp-0x8],0x1
  ad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  b1:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  b4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  b8:	88 10                	mov    BYTE PTR [rax],dl
  ba:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  be:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  c2:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  c6:	48 85 c0             	test   rax,rax
  c9:	75 d8                	jne    a3 <memmove+0x4d>
}

void *(memmove)(void *s1, const void *s2, size_t n) {
  char *p1 = s1;
  const char *p2 = s2;
  if (p2 < p1 && p1 < p2 + n) {
  cb:	eb 30                	jmp    fd <memmove+0xa7>
    p2 += n;
    p1 += n;
    while (n-- != 0) *--p1 = *--p2;
  } else {
    while (n-- != 0)  *p1++ = *p2++;
  cd:	eb 1d                	jmp    ec <memmove+0x96>
  cf:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  d3:	48 8d 50 01          	lea    rdx,[rax+0x1]
  d7:	48 89 55 f0          	mov    QWORD PTR [rbp-0x10],rdx
  db:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  df:	48 8d 4a 01          	lea    rcx,[rdx+0x1]
  e3:	48 89 4d f8          	mov    QWORD PTR [rbp-0x8],rcx
  e7:	0f b6 12             	movzx  edx,BYTE PTR [rdx]
  ea:	88 10                	mov    BYTE PTR [rax],dl
  ec:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  f0:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  f4:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  f8:	48 85 c0             	test   rax,rax
  fb:	75 d2                	jne    cf <memmove+0x79>
  }
  return s1;
  fd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
}
 101:	5d                   	pop    rbp
 102:	c3                   	ret    

0000000000000103 <memcmp>:

int (memcmp)(const void *s1, const void *s2, size_t n) {
 103:	55                   	push   rbp
 104:	48 89 e5             	mov    rbp,rsp
 107:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 10b:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 10f:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  const unsigned char *us1 = (const unsigned char *) s1;
 113:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 117:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  const unsigned char *us2 = (const unsigned char *) s2;
 11b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 11f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  while (n-- != 0) {
 123:	eb 3c                	jmp    161 <memcmp+0x5e>
    if (*us1 != *us2) {
 125:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 129:	0f b6 10             	movzx  edx,BYTE PTR [rax]
 12c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 130:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 133:	38 c2                	cmp    dl,al
 135:	74 20                	je     157 <memcmp+0x54>
      return (*us1 < *us2) ? -1 : +1;
 137:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 13b:	0f b6 10             	movzx  edx,BYTE PTR [rax]
 13e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 142:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 145:	38 c2                	cmp    dl,al
 147:	73 07                	jae    150 <memcmp+0x4d>
 149:	b8 ff ff ff ff       	mov    eax,0xffffffff
 14e:	eb 05                	jmp    155 <memcmp+0x52>
 150:	b8 01 00 00 00       	mov    eax,0x1
 155:	eb 20                	jmp    177 <memcmp+0x74>
    }
    us1++;
 157:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
    us2++;
 15c:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
}

int (memcmp)(const void *s1, const void *s2, size_t n) {
  const unsigned char *us1 = (const unsigned char *) s1;
  const unsigned char *us2 = (const unsigned char *) s2;
  while (n-- != 0) {
 161:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 165:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 169:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 16d:	48 85 c0             	test   rax,rax
 170:	75 b3                	jne    125 <memcmp+0x22>
      return (*us1 < *us2) ? -1 : +1;
    }
    us1++;
    us2++;
  }
  return 0;
 172:	b8 00 00 00 00       	mov    eax,0x0
}
 177:	5d                   	pop    rbp
 178:	c3                   	ret    

0000000000000179 <mymalloc>:

void *mymalloc(size_t size) {
 179:	55                   	push   rbp
 17a:	48 89 e5             	mov    rbp,rsp
 17d:	48 83 ec 20          	sub    rsp,0x20
 181:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  void *p = sbrk(0);
 185:	bf 00 00 00 00       	mov    edi,0x0
 18a:	e8 00 00 00 00       	call   18f <mymalloc+0x16>
 18f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  void *request = sbrk(size);
 193:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 197:	48 89 c7             	mov    rdi,rax
 19a:	e8 00 00 00 00       	call   19f <mymalloc+0x26>
 19f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  if (request == (void*) -1) {
 1a3:	48 83 7d f8 ff       	cmp    QWORD PTR [rbp-0x8],0xffffffffffffffff
 1a8:	75 07                	jne    1b1 <mymalloc+0x38>
    return NULL; // sbrk failed.
 1aa:	b8 00 00 00 00       	mov    eax,0x0
 1af:	eb 27                	jmp    1d8 <mymalloc+0x5f>
  } else {
    assert(p == request); // Not thread safe.
 1b1:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1b5:	48 3b 45 f8          	cmp    rax,QWORD PTR [rbp-0x8]
 1b9:	74 19                	je     1d4 <mymalloc+0x5b>
 1bb:	b9 00 00 00 00       	mov    ecx,0x0
 1c0:	ba 2e 00 00 00       	mov    edx,0x2e
 1c5:	be 00 00 00 00       	mov    esi,0x0
 1ca:	bf 00 00 00 00       	mov    edi,0x0
 1cf:	e8 00 00 00 00       	call   1d4 <mymalloc+0x5b>
    return p;
 1d4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  }
}
 1d8:	c9                   	leave  
 1d9:	c3                   	ret    

00000000000001da <mycalloc>:

void *mycalloc(size_t nelem, size_t elsize) {
 1da:	55                   	push   rbp
 1db:	48 89 e5             	mov    rbp,rsp
 1de:	48 83 ec 20          	sub    rsp,0x20
 1e2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 1e6:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  size_t size = nelem * elsize; // TODO: check for overflow.
 1ea:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 1ee:	48 0f af 45 e0       	imul   rax,QWORD PTR [rbp-0x20]
 1f3:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  void *ptr = malloc(size);
 1f7:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1fb:	48 89 c7             	mov    rdi,rax
 1fe:	e8 00 00 00 00       	call   203 <mycalloc+0x29>
 203:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  memset(ptr, 0, size);
 207:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
 20b:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 20f:	be 00 00 00 00       	mov    esi,0x0
 214:	48 89 c7             	mov    rdi,rax
 217:	e8 00 00 00 00       	call   21c <mycalloc+0x42>
  return ptr;
 21c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
}
 220:	c9                   	leave  
 221:	c3                   	ret    
