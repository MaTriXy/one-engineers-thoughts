syscall 1
  name sys_exit
  input int

syscall 2
  name sys_fork
  input struct pt_regs

syscall 3
  name sys_read
  input unsigned int
  input char *
  input size_t

syscall 4
  name sys_write
  input unsigned int
  input const char *
  input size_t

syscall 5
  name sys_open
  input const char *
  input int
  input int

syscall 6
  name sys_close
  input unsigned int

syscall 7
  name sys_waitpid
  input pid_t
  input unsigned int *
  input int

syscall 8
  name sys_creat
  input const char *
  input int

syscall 9
  name sys_link
  input const char *
  input const char *

syscall 10
  name sys_unlink
  input const char *

syscall 11
  name sys_execve
  input struct pt_regs

syscall 12
  name sys_chdir
  input const char *

syscall 13
  name sys_time
  input int *

syscall 14
  name sys_mknod
  input const char *
  input int
  input dev_t

syscall 15
  name sys_chmod
  input const char *
  input mode_t

syscall 16
  name sys_lchown
  input const char *
  input uid_t
  input gid_t

syscall 18
  name sys_stat
  input char *
  input struct __old_kernel_stat *

syscall 19
  name sys_lseek
  input unsigned int
  input off_t
  input unsigned int

syscall 20
  name sys_getpid

syscall 21
  name sys_mount
  input char *
  input char *
  input char *

syscall 22
  name sys_oldumount
  input char *

syscall 23
  name sys_setuid
  input uid_t

syscall 24
  name sys_getuid

syscall 25
  name sys_stime
  input int *

syscall 26
  name sys_ptrace
  input long
  input long
  input long

syscall 27
  name sys_alarm
  input unsigned int

syscall 28
  name sys_fstat
  input unsigned int
  input struct __old_kernel_stat *

syscall 29
  name sys_pause

syscall 30
  name sys_utime
  input char *
  input struct utimbuf *

syscall 33
  name sys_access
  input const char *
  input int

syscall 34
  name sys_nice
  input int

syscall 36
  name sys_sync

syscall 37
  name sys_kill
  input int
  input int

syscall 38
  name sys_rename
  input const char *
  input const char *

syscall 39
  name sys_mkdir
  input const char *
  input int

syscall 40
  name sys_rmdir
  input const char *

syscall 41
  name sys_dup
  input unsigned int

syscall 42
  name sys_pipe
  input unsigned long *

syscall 43
  name sys_times
  input struct tms *

syscall 45
  name sys_brk
  input unsigned long

syscall 46
  name sys_setgid
  input gid_t

syscall 47
  name sys_getgid

syscall 48
  name sys_signal
  input int
  input __sighandler_t

syscall 49
  name sys_geteuid

syscall 50
  name sys_getegid

syscall 51
  name sys_acct
  input const char *

syscall 52
  name sys_umount
  input char *
  input int

syscall 54
  name sys_ioctl
  input unsigned int
  input unsigned int
  input unsigned long

syscall 55
  name sys_fcntl
  input unsigned int
  input unsigned int
  input unsigned long

syscall 57
  name sys_setpgid
  input pid_t
  input pid_t

syscall 59
  name sys_olduname
  input struct oldold_utsname *

syscall 60
  name sys_umask
  input int

syscall 61
  name sys_chroot
  input const char *

syscall 62
  name sys_ustat
  input dev_t
  input struct ustat *

syscall 63
  name sys_dup2
  input unsigned int
  input unsigned int

syscall 64
  name sys_getppid

syscall 65
  name sys_getpgrp

syscall 66
  name sys_setsid

syscall 67
  name sys_sigaction
  input int
  input const struct old_sigaction *
  input struct old_sigaction *

syscall 68
  name sys_sgetmask

syscall 69
  name sys_ssetmask
  input int

syscall 70
  name sys_setreuid
  input uid_t
  input uid_t

syscall 71
  name sys_setregid
  input gid_t
  input gid_t

syscall 72
  name sys_sigsuspend
  input int
  input int
  input old_sigset_t

syscall 73
  name sys_sigpending
  input old_sigset_t *

syscall 74
  name sys_sethostname
  input char *
  input int

syscall 75
  name sys_setrlimit
  input unsigned int
  input struct rlimit *

syscall 76
  name sys_getrlimit
  input unsigned int
  input struct rlimit *

syscall 77
  name sys_getrusage
  input int
  input struct rusage *

syscall 78
  name sys_gettimeofday
  input struct timeval *
  input struct timezone *

syscall 79
  name sys_settimeofday
  input struct timeval *
  input struct timezone *

syscall 80
  name sys_getgroups
  input int
  input gid_t *

syscall 81
  name sys_setgroups
  input int
  input gid_t *

syscall 82
  name old_select
  input struct sel_arg_struct *

syscall 83
  name sys_symlink
  input const char *
  input const char *

syscall 84
  name sys_lstat
  input char *
  input struct __old_kernel_stat *

syscall 85
  name sys_readlink
  input const char *
  input char *
  input int

syscall 86
  name sys_uselib
  input const char *

syscall 87
  name sys_swapon
  input const char *
  input int

syscall 88
  name sys_reboot
  input int
  input int
  input int

syscall 89
  name old_readdir
  input unsigned int
  input void *
  input unsigned int

syscall 90
  name old_mmap
  input struct mmap_arg_struct *

syscall 91
  name sys_munmap
  input unsigned long
  input size_t

syscall 92
  name sys_truncate
  input const char *
  input unsigned long

syscall 93
  name sys_ftruncate
  input unsigned int
  input unsigned long

syscall 94
  name sys_fchmod
  input unsigned int
  input mode_t

syscall 95
  name sys_fchown
  input unsigned int
  input uid_t
  input gid_t

syscall 96
  name sys_getpriority
  input int
  input int

syscall 97
  name sys_setpriority
  input int
  input int
  input int

syscall 99
  name sys_statfs
  input const char *
  input struct statfs *

syscall 100
  name sys_fstatfs
  input unsigned int
  input struct statfs *

syscall 101
  name sys_ioperm
  input unsigned long
  input unsigned long
  input int

syscall 102
  name sys_socketcall
  input int
  input unsigned long *

syscall 103
  name sys_syslog
  input int
  input char *
  input int

syscall 104
  name sys_setitimer
  input int
  input struct itimerval *
  input struct itimerval *

syscall 105
  name sys_getitimer
  input int
  input struct itimerval *

syscall 106
  name sys_newstat
  input char *
  input struct stat *

syscall 107
  name sys_newlstat
  input char *
  input struct stat *

syscall 108
  name sys_newfstat
  input unsigned int
  input struct stat *

syscall 109
  name sys_uname
  input struct old_utsname *

syscall 110
  name sys_iopl
  input unsigned long

syscall 111
  name sys_vhangup

syscall 112
  name sys_idle

syscall 113
  name sys_vm86old
  input unsigned long
  input struct vm86plus_struct *

syscall 114
  name sys_wait4
  input pid_t
  input unsigned long *
  input int options

syscall 115
  name sys_swapoff
  input const char *

syscall 116
  name sys_sysinfo
  input struct sysinfo *

syscall 117
  name sys_ipc (*Note)
  input uint
  input int
  input int
  input void *

syscall 118
  name sys_fsync
  input unsigned int

syscall 119
  name sys_sigreturn
  input unsigned long

syscall 120
  name sys_clone
  input struct pt_regs

syscall 121
  name sys_setdomainname
  input char *
  input int

syscall 122
  name sys_newuname
  input struct new_utsname *

syscall 123
  name sys_modify_ldt
  input int
  input void *
  input unsigned long

syscall 124
  name sys_adjtimex
  input struct timex *

syscall 125
  name sys_mprotect
  input unsigned long
  input size_t
  input unsigned long

syscall 126
  name sys_sigprocmask
  input int
  input old_sigset_t *
  input old_sigset_t *

syscall 127
  name sys_create_module
  input const char *
  input size_t

syscall 128
  name sys_init_module
  input const char *
  input struct module *

syscall 129
  name sys_delete_module
  input const char *

syscall 130
  name sys_get_kernel_syms
  input struct kernel_sym *

syscall 131
  name sys_quotactl
  input int
  input const char *
  input int

syscall 132
  name sys_getpgid
  input pid_t

syscall 133
  name sys_fchdir
  input unsigned int

syscall 134
  name sys_bdflush
  input int
  input long

syscall 135
  name sys_sysfs
  input int
  input unsigned long
  input unsigned long

syscall 136
  name sys_personality
  input unsigned long

syscall 138
  name sys_setfsuid
  input uid_t

syscall 139
  name sys_setfsgid
  input gid_t

syscall 140
  name sys_llseek
  input unsigned int
  input unsigned long
  input unsigned long
  input unsigned int

syscall 141
  name sys_getdents
  input unsigned int
  input void *
  input unsigned int

syscall 142
  name sys_select
  input int
  input fd_set *
  input fd_set *
  input struct timeval *

syscall 143
  name sys_flock
  input unsigned int
  input unsigned int

syscall 144
  name sys_msync
  input unsigned long
  input size_t
  input int

syscall 145
  name sys_readv
  input unsigned long
  input const struct iovec *
  input unsigned long

syscall 146
  name sys_writev
  input unsigned long
  input const struct iovec *
  input unsigned long

syscall 147
  name sys_getsid
  input pid_t

syscall 148
  name sys_fdatasync
  input unsigned int

syscall 149
  name sys_sysctl
  input struct __sysctl_args *

syscall 150
  name sys_mlock
  input unsigned long
  input size_t

syscall 151
  name sys_munlock
  input unsigned long
  input size_t

syscall 152
  name sys_mlockall
  input int

syscall 153
  name sys_munlockall

syscall 154
  name sys_sched_setparam
  input pid_t
  input struct sched_param *

syscall 155
  name sys_sched_getparam
  input pid_t
  input struct sched_param *

syscall 156
  name sys_sched_setscheduler
  input pid_t
  input int
  input struct sched_param *

syscall 157
  name sys_sched_getscheduler
  input pid_t

syscall 158
  name sys_sched_yield

syscall 159
  name sys_sched_get_priority_max
  input int

syscall 160
  name sys_sched_get_priority_min
  input int

syscall 161
  name sys_sched_rr_get_interval
  input pid_t
  input struct timespec *

syscall 162
  name sys_nanosleep
  input struct timespec *
  input struct timespec *

syscall 163
  name sys_mremap
  input unsigned long
  input unsigned long
  input unsigned long

syscall 164
  name sys_setresuid
  input uid_t
  input uid_t
  input uid_t

syscall 165
  name sys_getresuid
  input uid_t *
  input uid_t *
  input uid_t *

syscall 166
  name sys_vm86
  input struct vm86_struct *

syscall 167
  name sys_query_module
  input const char *
  input int
  input char *
  input size_t *

syscall 168
  name sys_poll
  input struct pollfd *
  input unsigned int
  input long

syscall 169
  name sys_nfsservctl
  input int
  input void *
  input void *

syscall 170
  name sys_setresgid
  input gid_t
  input gid_t
  input gid_t

syscall 171
  name sys_getresgid
  input gid_t *
  input gid_t *
  input gid_t *

syscall 172
  name sys_prctl
  input int
  input unsigned long
  input unsigned long
  input unsigned long

syscall 173
  name sys_rt_sigreturn
  input unsigned long

syscall 174
  name sys_rt_sigaction
  input int
  input const struct sigaction *
  input struct sigaction *

syscall 175
  name sys_rt_sigprocmask
  input int
  input sigset_t *
  input sigset_t *

syscall 176
  name sys_rt_sigpending
  input sigset_t *
  input size_t

syscall 177
  name sys_rt_sigtimedwait
  input const sigset_t *
  input siginfo_t *
  input const struct timespec *

syscall 178
  name sys_rt_sigqueueinfo
  input int
  input int
  input siginfo_t *

syscall 179
  name sys_rt_sigsuspend
  input sigset_t *
  input size_t

syscall 180
  name sys_pread
  input unsigned int
  input char *
  input size_t

syscall 181
  name sys_pwrite
  input unsigned int
  input const char *
  input size_t

syscall 182
  name sys_chown
  input const char *
  input uid_t
  input gid_t

syscall 183
  name sys_getcwd
  input char *
  input unsigned long

syscall 184
  name sys_capget
  input cap_user_header_t
  input cap_user_data_t

syscall 185
  name sys_capset
  input cap_user_header_t
  input const cap_user_data_t

syscall 186
  name sys_sigaltstack
  input const stack_t *
  input stack_t *

syscall 187
  name sys_sendfile
  input int
  input int
  input off_t *

syscall 190
  name sys_vfork
  input struct pt_regs
