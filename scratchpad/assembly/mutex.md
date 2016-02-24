
- http://stackoverflow.com/questions/1726702/how-are-mutex-and-lock-structures-implemented
- http://preshing.com/20120226/roll-your-own-lightweight-mutex/
- http://stackoverflow.com/questions/6868007/on-multicore-x86-systems-are-mutexes-implemented-using-a-lockd-instruction
- http://en.wikipedia.org/wiki/Test-and-set

Lock:

```asm
enter_region:        ; A "jump to" tag; function entry point.
 
  tsl reg, flag      ; Test and Set Lock; flag is the
                     ; shared variable; it is copied
                     ; into the register reg and flag
                     ; then atomically set to 1.
 
  cmp reg, #0        ; Was flag zero on entry_region?
 
  jnz enter_region   ; Jump to enter_region if
                     ; reg is non-zero; i.e.,
                     ; flag was non-zero on entry.
 
  ret                ; Exit; i.e., flag was zero on
                     ; entry. If we get here, tsl
                     ; will have set it non-zero; thus,
                     ; we have claimed the resource
                     ; associated with flag.
 
leave_region:
  move flag, #0      ; store 0 in flag
  ret                ; return to caller
```

Spin Lock:

```asm
; Intel syntax
 
locked:                      ; The lock variable. 1 = locked, 0 = unlocked.
     dd      0
 
spin_lock:
     mov     eax, 1          ; Set the EAX register to 1.
 
     xchg    eax, [locked]   ; Atomically swap the EAX register with
                             ;  the lock variable.
                             ; This will always store 1 to the lock, leaving
                             ;  the previous value in the EAX register.
 
     test    eax, eax        ; Test EAX with itself. Among other things, this will
                             ;  set the processor's Zero Flag if EAX is 0.
                             ; If EAX is 0, then the lock was unlocked and
                             ;  we just locked it.
                             ; Otherwise, EAX is 1 and we didn't acquire the lock.
 
     jnz     spin_lock       ; Jump back to the MOV instruction if the Zero Flag is
                             ;  not set; the lock was previously locked, and so
                             ; we need to spin until it becomes unlocked.
 
     ret                     ; The lock has been acquired, return to the calling
                             ;  function.
 
spin_unlock:
     mov     eax, 0          ; Set the EAX register to 0.
 
     xchg    eax, [locked]   ; Atomically swap the EAX register with
                             ;  the lock variable.
 
     ret                     ; The lock has been released.
```

- http://stackoverflow.com/questions/2679816/implementing-a-mutex-lock-in-c
