#include <stdlib.h>

char *(strcpy)(char *s1, const char *s2) {
  char *dst = s1;
  const char *src = s2;
  while ((*dst++ = *src++) != '\0')
    ;
  return s1;
}

char *(strcat)(char *s1, const char *s2) {
  char *s = s1;
  while (*s != '\0') s++;
  strcpy(s, s2);
  return s1;
}

size_t (strlen)(const char *s) {
  const char *p = s;
  while (*p != '\0') p++;
  return (size_t)(p - s);
}

char *
strdup(const char *str) {
  int len = strlen(str) + 1;
  char *buf = malloc(len);
  if (buf) memcpy(buf, str, len);
  return buf;
}

char *strndup(const char *s, size_t n)
{
    char* new = malloc(n+1);
    if (new) {
        strncpy(new, s, n);
        new[n] = '\0';
    }
    return new;
}

int fast_compare( const char *ptr0, const char *ptr1, int len ) {
  int fast = len / sizeof(size_t) + 1;
  int offset = (fast - 1) * sizeof(size_t);
  int current_block = 0;

  if (len <= sizeof(size_t)) fast = 0;

  size_t *lptr0 = (size_t*)ptr0;
  size_t *lptr1 = (size_t*)ptr1;

  while (current_block < fast) {
    if((lptr0[current_block] ^ lptr1[current_block])) {
      int pos;
      for (pos = current_block*sizeof(size_t); pos < len ; ++pos ){
        if ((ptr0[pos] ^ ptr1[pos]) || (ptr0[pos] == 0) || (ptr1[pos] == 0) ){
          return  (int)((unsigned char)ptr0[pos] - (unsigned char)ptr1[pos]);
        }
      }
    }

    ++current_block;
  }

  while (len > offset) {
    if( (ptr0[offset] ^ ptr1[offset] )){
      return (int)((unsigned char)ptr0[offset] - (unsigned char)ptr1[offset]);
    }
  ++offset;
  }

  return 0;
}

char* mystrcat(char* dest, char* src) {
   while (*dest) dest++;
   while (*dest++ = *src++);
   return --dest;
}
