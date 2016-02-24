
define
  example space
    EMPTY :=
    SPACE := $(EMPTY) $(EMPTY)

  example comment
    # {{ text }}

  example comment, don't print
    @# {{ text }}

  example conditional
    ifeq ($(NODE_ENV),production)
      $(error Can't run this make task when NODE_ENV=production)
    endif

  example function
    define asm
      gcc -c -g c/$1.c -o c/$1.o
      objdump -d -M intel -S c/$1.o > c/$1.s
      @rm c/$1.o
    endef

call
  example function
    c:
      $(call asm,string)
    .PHONY: c

throw
  example error
    $(error {{ message }})

replace
  example pattern, in string
    EMPTY :=
    SPACE := $(EMPTY) $(EMPTY)
    COMMA := ","
    QA_TESTS := $(subst $(SPACE),$(COMMA),$(shell find qa -path '*.yaml'))

run
  example command
    echo "hello"

  example command, hide command
    @echo "$(c_gray)"

  example command, ignore error
    -echo "$(c_gray)"

example
  check file exists
    FILE_NAME := ./some/path
    ifneq ("$(wildcard $(FILE_NAME))","")
    include $(FILE_NAME)
    endif
