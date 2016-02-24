#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include "../deps/chfreq/chfreq.h"

int
main (void) {
  char *str = "aabbcc";
  uint32_t freq** = chfreq(str);
  printf("%c %d\n", freq[0][0], freq[0][1]);
  printf("%c %d\n", freq[1][0], freq[1][1]);
  printf("%c %d\n", freq[2][0], freq[2][1]);
  return 0;
}
