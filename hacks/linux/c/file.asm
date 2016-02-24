
c/file.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <file_size_std>:
#include <stdio.h>
#include <unistd.h>
#include <string.h>

unsigned long
file_size_std(const char *filename) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 20          	sub    rsp,0x20
   8:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  FILE *f = fopen(filename, "rb");
   c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  10:	be 00 00 00 00       	mov    esi,0x0
  15:	48 89 c7             	mov    rdi,rax
  18:	e8 00 00 00 00       	call   1d <file_size_std+0x1d>
  1d:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  fseeko(f, 0, SEEK_END);
  21:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  25:	ba 02 00 00 00       	mov    edx,0x2
  2a:	be 00 00 00 00       	mov    esi,0x0
  2f:	48 89 c7             	mov    rdi,rax
  32:	e8 00 00 00 00       	call   37 <file_size_std+0x37>
  unsigned long size = ftello(f);
  37:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  3b:	48 89 c7             	mov    rdi,rax
  3e:	e8 00 00 00 00       	call   43 <file_size_std+0x43>
  43:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  fseeko(f, 0, SEEK_SET);
  47:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4b:	ba 00 00 00 00       	mov    edx,0x0
  50:	be 00 00 00 00       	mov    esi,0x0
  55:	48 89 c7             	mov    rdi,rax
  58:	e8 00 00 00 00       	call   5d <file_size_std+0x5d>
  return size;
  5d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
}
  61:	c9                   	leave  
  62:	c3                   	ret    

0000000000000063 <file_size>:
/*
 * Return the filesize of `filename` or -1.
 */

off_t
file_size(const char *filename) {
  63:	55                   	push   rbp
  64:	48 89 e5             	mov    rbp,rsp
  67:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
  6e:	48 89 bd 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rdi
  struct stat s;
  if (stat(filename, &s) < 0) return -1;
  75:	48 8d 95 70 ff ff ff 	lea    rdx,[rbp-0x90]
  7c:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  83:	48 89 d6             	mov    rsi,rdx
  86:	48 89 c7             	mov    rdi,rax
  89:	b8 00 00 00 00       	mov    eax,0x0
  8e:	e8 00 00 00 00       	call   93 <file_size+0x30>
  93:	85 c0                	test   eax,eax
  95:	79 09                	jns    a0 <file_size+0x3d>
  97:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  9e:	eb 04                	jmp    a4 <file_size+0x41>
  return s.st_size;
  a0:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
}
  a4:	c9                   	leave  
  a5:	c3                   	ret    

00000000000000a6 <file_exists>:
/*
 * Check if `filename` exists.
 */

int
file_exists(const char *filename) {
  a6:	55                   	push   rbp
  a7:	48 89 e5             	mov    rbp,rsp
  aa:	48 83 ec 10          	sub    rsp,0x10
  ae:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  return -1 != file_size(filename);
  b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  b6:	48 89 c7             	mov    rdi,rax
  b9:	e8 00 00 00 00       	call   be <file_exists+0x18>
  be:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  c2:	0f 95 c0             	setne  al
  c5:	0f b6 c0             	movzx  eax,al
}
  c8:	c9                   	leave  
  c9:	c3                   	ret    

00000000000000ca <file_read>:
/*
 * Read the contents of `filename` or return NULL.
 */

char *
file_read(const char *filename) {
  ca:	55                   	push   rbp
  cb:	48 89 e5             	mov    rbp,rsp
  ce:	48 83 ec 30          	sub    rsp,0x30
  d2:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  off_t len = file_size(filename);
  d6:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  da:	48 89 c7             	mov    rdi,rax
  dd:	e8 00 00 00 00       	call   e2 <file_read+0x18>
  e2:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  if (len < 0) return NULL;
  e6:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  eb:	79 0a                	jns    f7 <file_read+0x2d>
  ed:	b8 00 00 00 00       	mov    eax,0x0
  f2:	e9 80 00 00 00       	jmp    177 <file_read+0xad>

  char *buf = malloc(len + 1);
  f7:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  fb:	48 83 c0 01          	add    rax,0x1
  ff:	48 89 c7             	mov    rdi,rax
 102:	e8 00 00 00 00       	call   107 <file_read+0x3d>
 107:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  if (!buf) return NULL;
 10b:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 110:	75 07                	jne    119 <file_read+0x4f>
 112:	b8 00 00 00 00       	mov    eax,0x0
 117:	eb 5e                	jmp    177 <file_read+0xad>

  int fd = open(filename, O_RDONLY);
 119:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 11d:	be 00 00 00 00       	mov    esi,0x0
 122:	48 89 c7             	mov    rdi,rax
 125:	b8 00 00 00 00       	mov    eax,0x0
 12a:	e8 00 00 00 00       	call   12f <file_read+0x65>
 12f:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  if (fd < 0) return NULL;
 132:	83 7d e4 00          	cmp    DWORD PTR [rbp-0x1c],0x0
 136:	79 07                	jns    13f <file_read+0x75>
 138:	b8 00 00 00 00       	mov    eax,0x0
 13d:	eb 38                	jmp    177 <file_read+0xad>

  ssize_t size = read(fd, buf, len);
 13f:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
 143:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
 147:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 14a:	48 89 ce             	mov    rsi,rcx
 14d:	89 c7                	mov    edi,eax
 14f:	e8 00 00 00 00       	call   154 <file_read+0x8a>
 154:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  close(fd);
 158:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
 15b:	89 c7                	mov    edi,eax
 15d:	e8 00 00 00 00       	call   162 <file_read+0x98>

  if (size != len) return NULL;
 162:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 166:	48 3b 45 e8          	cmp    rax,QWORD PTR [rbp-0x18]
 16a:	74 07                	je     173 <file_read+0xa9>
 16c:	b8 00 00 00 00       	mov    eax,0x0
 171:	eb 04                	jmp    177 <file_read+0xad>

  return buf;
 173:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
}
 177:	c9                   	leave  
 178:	c3                   	ret    

0000000000000179 <file_mkdir_p>:
/*
 * Recursively creates directories on `path`.
 * Returns 1 if somehow couldn't create one.
 */
void
file_mkdir_p(const char *path) {
 179:	55                   	push   rbp
 17a:	48 89 e5             	mov    rbp,rsp
 17d:	48 83 ec 30          	sub    rsp,0x30
 181:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  char* tmp = strndup(path, 256);
 185:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 189:	be 00 01 00 00       	mov    esi,0x100
 18e:	48 89 c7             	mov    rdi,rax
 191:	e8 00 00 00 00       	call   196 <file_mkdir_p+0x1d>
 196:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  if (!tmp) return;
 19a:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
 19f:	75 05                	jne    1a6 <file_mkdir_p+0x2d>
 1a1:	e9 ab 00 00 00       	jmp    251 <file_mkdir_p+0xd8>

  size_t len = strlen(tmp);
 1a6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1aa:	48 89 c7             	mov    rdi,rax
 1ad:	e8 00 00 00 00       	call   1b2 <file_mkdir_p+0x39>
 1b2:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax

  if (tmp[len - 1] == '/')
 1b6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1ba:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 1be:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1c2:	48 01 d0             	add    rax,rdx
 1c5:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1c8:	3c 2f                	cmp    al,0x2f
 1ca:	75 12                	jne    1de <file_mkdir_p+0x65>
    tmp[len - 1] = '\0';
 1cc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 1d0:	48 8d 50 ff          	lea    rdx,[rax-0x1]
 1d4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1d8:	48 01 d0             	add    rax,rdx
 1db:	c6 00 00             	mov    BYTE PTR [rax],0x0

  char* p = NULL;
 1de:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
 1e5:	00 
  for (p = tmp; *p != '\0'; p++) {
 1e6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 1ea:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 1ee:	eb 34                	jmp    224 <file_mkdir_p+0xab>
    if (*p == '/') {
 1f0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 1f4:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 1f7:	3c 2f                	cmp    al,0x2f
 1f9:	75 24                	jne    21f <file_mkdir_p+0xa6>
      *p = '\0';
 1fb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 1ff:	c6 00 00             	mov    BYTE PTR [rax],0x0
      mkdir(tmp, S_IRWXU);
 202:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 206:	be c0 01 00 00       	mov    esi,0x1c0
 20b:	48 89 c7             	mov    rdi,rax
 20e:	b8 00 00 00 00       	mov    eax,0x0
 213:	e8 00 00 00 00       	call   218 <file_mkdir_p+0x9f>
      *p = '/';
 218:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 21c:	c6 00 2f             	mov    BYTE PTR [rax],0x2f

  if (tmp[len - 1] == '/')
    tmp[len - 1] = '\0';

  char* p = NULL;
  for (p = tmp; *p != '\0'; p++) {
 21f:	48 83 45 e8 01       	add    QWORD PTR [rbp-0x18],0x1
 224:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 228:	0f b6 00             	movzx  eax,BYTE PTR [rax]
 22b:	84 c0                	test   al,al
 22d:	75 c1                	jne    1f0 <file_mkdir_p+0x77>
      *p = '\0';
      mkdir(tmp, S_IRWXU);
      *p = '/';
    }
  }
  mkdir(tmp, S_IRWXU);
 22f:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 233:	be c0 01 00 00       	mov    esi,0x1c0
 238:	48 89 c7             	mov    rdi,rax
 23b:	b8 00 00 00 00       	mov    eax,0x0
 240:	e8 00 00 00 00       	call   245 <file_mkdir_p+0xcc>
  free(tmp);
 245:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 249:	48 89 c7             	mov    rdi,rax
 24c:	e8 00 00 00 00       	call   251 <file_mkdir_p+0xd8>
}
 251:	c9                   	leave  
 252:	c3                   	ret    

0000000000000253 <main>:

int
main(int argc, char **argv) {
 253:	55                   	push   rbp
 254:	48 89 e5             	mov    rbp,rsp
 257:	48 83 ec 20          	sub    rsp,0x20
 25b:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
 25e:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  if (argc < 2) {
 262:	83 7d ec 01          	cmp    DWORD PTR [rbp-0x14],0x1
 266:	7f 28                	jg     290 <main+0x3d>
    fprintf(stderr, "<filename> required\n");
 268:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 26f <main+0x1c>
 26f:	48 89 c1             	mov    rcx,rax
 272:	ba 14 00 00 00       	mov    edx,0x14
 277:	be 01 00 00 00       	mov    esi,0x1
 27c:	bf 00 00 00 00       	mov    edi,0x0
 281:	e8 00 00 00 00       	call   286 <main+0x33>
    exit(1);
 286:	bf 01 00 00 00       	mov    edi,0x1
 28b:	e8 00 00 00 00       	call   290 <main+0x3d>
  }

  char *name = argv[1];
 290:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 294:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
 298:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  printf("exists: %s\n", file_exists(name) ? "yes" : "no");
 29c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 2a0:	48 89 c7             	mov    rdi,rax
 2a3:	e8 00 00 00 00       	call   2a8 <main+0x55>
 2a8:	85 c0                	test   eax,eax
 2aa:	74 07                	je     2b3 <main+0x60>
 2ac:	b8 00 00 00 00       	mov    eax,0x0
 2b1:	eb 05                	jmp    2b8 <main+0x65>
 2b3:	b8 00 00 00 00       	mov    eax,0x0
 2b8:	48 89 c6             	mov    rsi,rax
 2bb:	bf 00 00 00 00       	mov    edi,0x0
 2c0:	b8 00 00 00 00       	mov    eax,0x0
 2c5:	e8 00 00 00 00       	call   2ca <main+0x77>
  printf("size: %lld\n", file_size(name));
 2ca:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 2ce:	48 89 c7             	mov    rdi,rax
 2d1:	e8 00 00 00 00       	call   2d6 <main+0x83>
 2d6:	48 89 c6             	mov    rsi,rax
 2d9:	bf 00 00 00 00       	mov    edi,0x0
 2de:	b8 00 00 00 00       	mov    eax,0x0
 2e3:	e8 00 00 00 00       	call   2e8 <main+0x95>

  if (file_exists(name))
 2e8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 2ec:	48 89 c7             	mov    rdi,rax
 2ef:	e8 00 00 00 00       	call   2f4 <main+0xa1>
 2f4:	85 c0                	test   eax,eax
 2f6:	74 14                	je     30c <main+0xb9>
    puts(file_read(name));
 2f8:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
 2fc:	48 89 c7             	mov    rdi,rax
 2ff:	e8 00 00 00 00       	call   304 <main+0xb1>
 304:	48 89 c7             	mov    rdi,rax
 307:	e8 00 00 00 00       	call   30c <main+0xb9>

  char* path = "/tmp/long/dir/sequence";
 30c:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
 313:	00 
  file_mkdir_p(path);
 314:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 318:	48 89 c7             	mov    rdi,rax
 31b:	e8 00 00 00 00       	call   320 <main+0xcd>
  printf("'%s' %s\n", path, file_exists(path) ? "created" : "not created");
 320:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 324:	48 89 c7             	mov    rdi,rax
 327:	e8 00 00 00 00       	call   32c <main+0xd9>
 32c:	85 c0                	test   eax,eax
 32e:	74 07                	je     337 <main+0xe4>
 330:	b8 00 00 00 00       	mov    eax,0x0
 335:	eb 05                	jmp    33c <main+0xe9>
 337:	b8 00 00 00 00       	mov    eax,0x0
 33c:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
 340:	48 89 c2             	mov    rdx,rax
 343:	48 89 ce             	mov    rsi,rcx
 346:	bf 00 00 00 00       	mov    edi,0x0
 34b:	b8 00 00 00 00       	mov    eax,0x0
 350:	e8 00 00 00 00       	call   355 <main+0x102>

  return 0;
 355:	b8 00 00 00 00       	mov    eax,0x0
}
 35a:	c9                   	leave  
 35b:	c3                   	ret    
