

AltRST          proc    near
                push    ax              ;The purpose of these two instructions
                mov     ax, di          ; is to preserve di in case of failure.
                call    r
                jc      Success
                mov     di, ax          ;Restore di (it may be modified by r).
                call    s
                jc      Success
                mov     di, ax          ;Restore di (it may be modified by s).
                call    t
Success:        pop     ax              ;Restore ax.
                ret
AltRST          endp

r               proc    near
                cmp     byte ptr es:[di], '+'
                je      r_matched
                cmp     byte ptr es:[di], '-'
                jne     r_nomatch
r_matched:      inc     di
r_nomatch:      stc
                ret
r               endp

s               proc    near
                cmp     byte ptr es:[di], '0'
                jb      s_fails
                cmp     byte ptr es:[di], '9'
                ja      s_fails
                inc     di
                stc
                ret

s_fails:        clc
                ret
s               endp
