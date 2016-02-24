
%define sysclose 6
%define sysread 3
%define sysopen 5
%define syswrite 4
%define sysexit 1
%define stdout 1
%define linefeed 10
%define tab 0x9
%define syscall int 0x80

;
; aliases
;

%define char db
%define int8 db
%define int16 dw
%define int32 dd
; %define int64 dq
