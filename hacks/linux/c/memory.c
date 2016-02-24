#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

void *(memcpy)(void *s1, const void *s2, size_t n) {
  char *dst = s1;
  const char *src = s2;
  while (n-- != 0) *dst++ = *src++;
  return s1;
}

void *(memmove)(void *s1, const void *s2, size_t n) {
  char *p1 = s1;
  const char *p2 = s2;
  if (p2 < p1 && p1 < p2 + n) {
    p2 += n;
    p1 += n;
    while (n-- != 0) *--p1 = *--p2;
  } else {
    while (n-- != 0)  *p1++ = *p2++;
  }
  return s1;
}

int (memcmp)(const void *s1, const void *s2, size_t n) {
  const unsigned char *us1 = (const unsigned char *) s1;
  const unsigned char *us2 = (const unsigned char *) s2;
  while (n-- != 0) {
    if (*us1 != *us2) {
      return (*us1 < *us2) ? -1 : +1;
    }
    us1++;
    us2++;
  }
  return 0;
}

void *mymalloc(size_t size) {
  void *p = sbrk(0);
  void *request = sbrk(size);
  if (request == (void*) -1) {
    return NULL; // sbrk failed.
  } else {
    assert(p == request); // Not thread safe.
    return p;
  }
}

void *mycalloc(size_t nelem, size_t elsize) {
  size_t size = nelem * elsize; // TODO: check for overflow.
  void *ptr = malloc(size);
  memset(ptr, 0, size);
  return ptr;
}
