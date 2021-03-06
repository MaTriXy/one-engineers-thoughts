
//
// utils.h
//
// Copyright (c) 2013 TJ Holowaychuk <tj@vision-media.ca>
//

#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

unsigned long
file_size_std(const char *filename) {
  FILE *f = fopen(filename, "rb");
  fseeko(f, 0, SEEK_END);
  unsigned long size = ftello(f);
  fseeko(f, 0, SEEK_SET);
  return size;
}

/*
 * Return the filesize of `filename` or -1.
 */

off_t
file_size(const char *filename) {
  struct stat s;
  if (stat(filename, &s) < 0) return -1;
  return s.st_size;
}

/*
 * Check if `filename` exists.
 */

int
file_exists(const char *filename) {
  return -1 != file_size(filename);
}

/*
 * Read the contents of `filename` or return NULL.
 */

char *
file_read(const char *filename) {
  off_t len = file_size(filename);
  if (len < 0) return NULL;

  char *buf = malloc(len + 1);
  if (!buf) return NULL;

  int fd = open(filename, O_RDONLY);
  if (fd < 0) return NULL;

  ssize_t size = read(fd, buf, len);
  close(fd);

  if (size != len) return NULL;

  return buf;
}
/*
 * Recursively creates directories on `path`.
 * Returns 1 if somehow couldn't create one.
 */
void
file_mkdir_p(const char *path) {
  char* tmp = strndup(path, 256);
  if (!tmp) return;

  size_t len = strlen(tmp);

  if (tmp[len - 1] == '/')
    tmp[len - 1] = '\0';

  char* p = NULL;
  for (p = tmp; *p != '\0'; p++) {
    if (*p == '/') {
      *p = '\0';
      mkdir(tmp, S_IRWXU);
      *p = '/';
    }
  }
  mkdir(tmp, S_IRWXU);
  free(tmp);
}

int
main(int argc, char **argv) {
  if (argc < 2) {
    fprintf(stderr, "<filename> required\n");
    exit(1);
  }

  char *name = argv[1];
  printf("exists: %s\n", file_exists(name) ? "yes" : "no");
  printf("size: %lld\n", file_size(name));

  if (file_exists(name))
    puts(file_read(name));

  char* path = "/tmp/long/dir/sequence";
  file_mkdir_p(path);
  printf("'%s' %s\n", path, file_exists(path) ? "created" : "not created");

  return 0;
}
