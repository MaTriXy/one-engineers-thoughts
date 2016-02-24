
syscall nosys, 0
  output int
  extra indirect syscall

syscall exit, 1
  input int rval

syscall fork, 2
  output int

syscall read, 3
  input int fd
  input user_addr_t cbuf
  input user_size_t nbyte
  output user_ssize_t

syscall write, 4
  input int fd
  input user_addr_t cbuf
  input user_size_t nbyte
  output user_ssize_t

syscall open, 5
  input user_addr_t path
  input int flags
  input int mode
  output int

syscall close, 6
  input int fd
  output int

syscall wait4, 7
  input int pid
  input user_addr_t status
  input int options
  input user_addr_t rusage
  output int

syscall nosys, 8
  output int
  previously creat

syscall link, 9
  input user_addr_t path
  input user_addr_t link
  output int

syscall unlink, 10
  input user_addr_t path
  output int

syscall nosys, 11
  output int
  previously execv

syscall chdir, 12
  input user_addr_t path
  output int

syscall fchdir, 13
  input int fd
  output int

syscall mknod, 14
  input user_addr_t path
  input int mode
  input int dev
  output int

syscall chmod, 15
  input user_addr_t path
  input int mode
  output int

syscall chown, 16
  input user_addr_t path
  input int uid
  input int gid
  output int

syscall nosys, 17
  output int
  previously break

syscall getfsstat, 18
  input user_addr_t buf
  input int bufsize
  input int flags
  output int

syscall nosys, 19
  output int
  previously lseek

syscall getpid, 20
  output int

syscall nosys, 21
  output int
  previously mount

syscall nosys, 22
  output int
  previously umount

syscall setuid, 23
  input uid_t uid
  output int

syscall getuid, 24
  output int

syscall geteuid, 25
  output int

syscall ptrace, 26
  input int req
  input pid_t pid
  input caddr_t addr
  input int data
  output int

#if SOCKETS
syscall recvmsg, 27
  input int s
  input struct msghdr *msg
  input int flags
  output int

syscall sendmsg, 28
  input int s
  input caddr_t msg
  input int flags
  output int

syscall recvfrom, 29
  input int s
  input void *buf
  input size_t len
  input int flags
  input struct sockaddr *from
  input int *fromlenaddr
  output int

syscall accept, 30
  input int s
  input caddr_t name
  input socklen_t *anamelen
  output int

syscall getpeername, 31
  input int fdes
  input caddr_t asa
  input socklen_t *alen
  output int

syscall getsockname, 32
  input int fdes
  input caddr_t asa
  input socklen_t *alen
  output int

#else
syscall nosys, 27
  output int

syscall nosys, 28
  output int

syscall nosys, 29
  output int

syscall nosys, 30
  output int

syscall nosys, 31
  output int

syscall nosys, 32
  output int

#endif /* SOCKETS */
syscall access, 33
  input user_addr_t path
  input int flags
  output int

syscall chflags, 34
  input char *path
  input int flags
  output int

syscall fchflags, 35
  input int fd
  input int flags
  output int

syscall sync, 36
  output int

syscall kill, 37
  input int pid
  input int signum
  input int posix
  output int

syscall nosys, 38
  output int
  previously stat

syscall getppid, 39
  output int

syscall nosys, 40
  output int
  previously lstat

syscall dup, 41
  input u_int fd
  output int

syscall pipe, 42
  output int

syscall getegid, 43
  output int

syscall profil, 44
  input short *bufbase
  input size_t bufsize
  input u_long pcoffset
  input u_int pcscale
  output int

syscall nosys, 45
  output int
  previously ktrace

syscall sigaction, 46
  input int signum
  input struct __sigaction *nsa
  input struct sigaction *osa
  output int

syscall getgid, 47
  output int

syscall sigprocmask, 48
  input int how
  input user_addr_t mask
  input user_addr_t omask
  output int

syscall getlogin, 49
  input char *namebuf
  input u_int namelen
  output int

syscall setlogin, 50
  input char *namebuf
  output int

syscall acct, 51
  input char *path
  output int

syscall sigpending, 52
  input struct sigvec *osv
  output int

syscall sigaltstack, 53
  input struct sigaltstack *nss
  input struct sigaltstack *oss
  output int

syscall ioctl, 54
  input int fd
  input u_long com
  input caddr_t data
  output int

syscall reboot, 55
  input int opt
  input char *command
  output int

syscall revoke, 56
  input char *path
  output int

syscall symlink, 57
  input char *path
  input char *link
  output int

syscall readlink, 58
  input char *path
  input char *buf
  input int count
  output int

syscall execve, 59
  input char *fname
  input char **argp
  input char **envp
  output int

syscall umask, 60
  input int newmask
  output int

syscall chroot, 61
  input user_addr_t path
  output int

syscall nosys, 62
  output int
  previously fstat

syscall nosys, 63
  output int
  extra used internally
  input reserved

syscall nosys, 64
  output int
  previously getpagesize

syscall msync, 65
  input caddr_t addr
  input size_t len
  input int flags
  output int

syscall vfork, 66
  output int

syscall nosys, 67
  output int
  previously vread

syscall nosys, 68
  output int
  previously vwrite

syscall nosys, 69
  output int
  previously sbrk

syscall nosys, 70
  output int
  previously sstk

syscall nosys, 71
  output int
  previously mmap

syscall nosys, 72
  output int
  previously vadvise

syscall munmap, 73
  input caddr_t addr
  input size_t len
  output int

syscall mprotect, 74
  input caddr_t addr
  input size_t len
  input int prot
  output int

syscall madvise, 75
  input caddr_t addr
  input size_t len
  input int behav
  output int

syscall nosys, 76
  output int
  previously vhangup

syscall nosys, 77
  output int
  previously vlimit

syscall mincore, 78
  input user_addr_t addr
  input user_size_t len
  input user_addr_t vec
  output int

syscall getgroups, 79
  input u_int gidsetsize
  input gid_t *gidset
  output int

syscall setgroups, 80
  input u_int gidsetsize
  input gid_t *gidset
  output int

syscall getpgrp, 81
  output int

syscall setpgid, 82
  input int pid
  input int pgid
  output int

syscall setitimer, 83
  input u_int which
  input struct itimerval *itv
  input struct itimerval *oitv
  output int

syscall nosys, 84
  output int
  previously wait

syscall swapon, 85
  output int

syscall getitimer, 86
  input u_int which
  input struct itimerval *itv
  output int

syscall nosys, 87
  output int
  previously gethostname

syscall nosys, 88
  output int
  previously sethostname

syscall getdtablesize, 89
  output int

syscall dup2, 90
  input u_int from
  input u_int to
  output int

syscall nosys, 91
  output int
  previously getdopt

syscall fcntl, 92
  input int fd
  input int cmd
  input long arg
  output int

syscall select, 93
  input int nd
  input u_int32_t *in
  input u_int32_t *ou
  input u_int32_t *ex
  input struct timeval *tv
  output int

syscall nosys, 94
  output int
  previously setdopt

syscall fsync, 95
  input int fd
  output int

syscall setpriority, 96
  input int which
  input id_t who
  input int prio
  output int

#if SOCKETS
syscall socket, 97
  input int domain
  input int type
  input int protocol
  output int

syscall connect, 98
  input int s
  input caddr_t name
  input socklen_t namelen
  output int

#else
syscall nosys, 97
  output int

syscall nosys, 98
  output int

#endif /* SOCKETS */
syscall nosys, 99
  output int
  previously accept


syscall getpriority, 100
  input int which
  input id_t who
  output int

syscall nosys, 101
  output int
  previously send

syscall nosys, 102
  output int
  previously recv

syscall nosys, 103
  output int
  previously sigreturn

#if SOCKETS
syscall bind, 104
  input int s
  input caddr_t name
  input socklen_t namelen
  output int

syscall setsockopt, 105
  input int s
  input int level
  input int name
  input caddr_t val
  input socklen_t valsize
  output int

syscall listen, 106
  input int s
  input int backlog
  output int

#else
syscall nosys, 104
  output int

syscall nosys, 105
  output int

syscall nosys, 106
  output int

#endif /* SOCKETS */
syscall nosys, 107
  output int
  previously vtimes

syscall nosys, 108
  output int
  previously sigvec

syscall nosys, 109
  output int
  previously sigblock

syscall nosys, 110
  output int
  previously sigsetmask

syscall sigsuspend, 111
  input sigset_t mask
  output int

syscall nosys, 112
  output int
  previously sigstack

#if SOCKETS
syscall nosys, 113
  output int
  previously recvmsg

syscall nosys, 114
  output int
  previously sendmsg

#else
syscall nosys, 113
  output int

syscall nosys, 114
  output int

#endif /* SOCKETS */
syscall nosys, 115
  output int
  previously vtrace

syscall gettimeofday, 116
  input struct timeval *tp
  input struct timezone *tzp
  output int

syscall getrusage, 117
  input int who
  input struct rusage *rusage
  output int

#if SOCKETS
syscall getsockopt, 118
  input int s
  input int level
  input int name
  input caddr_t val
  input socklen_t *avalsize
  output int

#else
syscall nosys, 118
  output int

#endif /* SOCKETS */
syscall nosys, 119
  output int
  previously resuba

syscall readv, 120
  input int fd
  input struct iovec *iovp
  input u_int iovcnt
  output user_ssize_t

syscall writev, 121
  input int fd
  input struct iovec *iovp
  input u_int iovcnt
  output user_ssize_t

syscall settimeofday, 122
  input struct timeval *tv
  input struct timezone *tzp
  output int

syscall fchown, 123
  input int fd
  input int uid
  input int gid
  output int

syscall fchmod, 124
  input int fd
  input int mode
  output int

syscall nosys, 125
  output int
  previously recvfrom

syscall setreuid, 126
  input uid_t ruid
  input uid_t euid
  output int

syscall setregid, 127
  input gid_t rgid
  input gid_t egid
  output int

syscall rename, 128
  input char *from
  input char *to
  output int

syscall nosys, 129
  output int
  previously truncate

syscall nosys, 130
  output int
  previously ftruncate

syscall flock, 131
  input int fd
  input int how
  output int

syscall mkfifo, 132
  input user_addr_t path
  input int mode
  output int

#if SOCKETS
syscall sendto, 133
  input int s
  input caddr_t buf
  input size_t len
  input int flags
  input caddr_t to
  input socklen_t tolen
  output int

syscall shutdown, 134
  input int s
  input int how
  output int

syscall socketpair, 135
  input int domain
  input int type
  input int protocol
  input int *rsv
  output int

#else
syscall nosys, 133
  output int

syscall nosys, 134
  output int

syscall nosys, 135
  output int

#endif /* SOCKETS */
syscall mkdir, 136
  input user_addr_t path
  input int mode
  output int

syscall rmdir, 137
  input char *path
  output int

syscall utimes, 138
  input char *path
  input struct timeval *tptr
  output int

syscall futimes, 139
  input int fd
  input struct timeval *tptr
  output int

syscall adjtime, 140
  input struct timeval *delta
  input struct timeval *olddelta
  output int

syscall nosys, 141
  output int
  previously getpeername

syscall gethostuuid, 142
  input unsigned char *uuid_buf
  input const struct timespec *timeoutp
  output int

syscall nosys, 143
  output int
  previously sethostid

syscall nosys, 144
  output int
  previously getrlimit

syscall nosys, 145
  output int
  previously setrlimit

syscall nosys, 146
  output int
  previously killpg

syscall setsid, 147
  output int

syscall nosys, 148
  output int
  previously setquota

syscall nosys, 149
  output int
  previously qquota

syscall nosys, 150
  output int
  previously getsockname

syscall getpgid, 151
  input pid_t pid
  output int

syscall setprivexec, 152
  input int flag
  output int

syscall pread, 153
  input int fd
  input user_addr_t buf
  input user_size_t nbyte
  input off_t offset
  output user_ssize_t

syscall pwrite, 154
  input int fd
  input user_addr_t buf
  input user_size_t nbyte
  input off_t offset
  output user_ssize_t


#if NFSSERVER
syscall nfssvc, 155
  input int flag
  input caddr_t argp
  output int

#else
syscall nosys, 155
  output int

#endif

syscall nosys, 156
  output int
  previously getdirentries

syscall statfs, 157
  input char *path
  input struct statfs *buf
  output int

syscall fstatfs, 158
  input int fd
  input struct statfs *buf
  output int

syscall unmount, 159
  input user_addr_t path
  input int flags
  output int

syscall nosys, 160
  output int
  previously async_daemon


#if NFSSERVER
syscall getfh, 161
  input char *fname
  input fhandle_t *fhp
  output int

#else
syscall nosys, 161
  output int

#endif

syscall nosys, 162
  output int
  previously getdomainname

syscall nosys, 163
  output int
  previously setdomainname

syscall nosys, 164
  output int

syscall quotactl, 165
  input const char *path
  input int cmd
  input int uid
  input caddr_t arg
  output int

syscall nosys, 166
  output int
  previously exportfs

syscall mount, 167
  input char *type
  input char *path
  input int flags
  input caddr_t data
  output int

syscall nosys, 168
  output int
  previously ustat

syscall csops, 169
  input pid_t pid
  input uint32_t ops
  input user_addr_t useraddr
  input user_size_t usersize
  output int

syscall nosys, 170
  output int
  previously table

syscall nosys, 171
  output int
  previously wait3

syscall nosys, 172
  output int
  previously rpause

syscall waitid, 173
  input idtype_t idtype
  input id_t id
  input siginfo_t *infop
  input int options
  output int

syscall nosys, 174
  output int
  previously getdents

syscall nosys, 175
  output int
  previously gc_control

syscall add_profil, 176
  input short *bufbase
  input size_t bufsize
  input u_long pcoffset
  input u_int pcscale
  output int

syscall nosys, 177
  output int

syscall nosys, 178
  output int

syscall nosys, 179
  output int

syscall kdebug_trace, 180
  input int code
  input int arg1
  input int arg2
  input int arg3
  input int arg4
  input int arg5
  output int

syscall setgid, 181
  input gid_t gid
  output int

syscall setegid, 182
  input gid_t egid
  output int

syscall seteuid, 183
  input uid_t euid
  output int

syscall sigreturn, 184
  input struct ucontext *uctx
  input int infostyle
  output int

syscall chud, 185
  input uint64_t code
  input uint64_t arg1
  input uint64_t arg2
  input uint64_t arg3
  input uint64_t arg4
  input uint64_t arg5
  output int

syscall nosys, 186
  output int

syscall fdatasync, 187
  input int fd
  output int

syscall stat, 188
  input user_addr_t path
  input user_addr_t ub
  output int

syscall fstat, 189
  input int fd
  input user_addr_t ub
  output int

syscall lstat, 190
  input user_addr_t path
  input user_addr_t ub
  output int

syscall pathconf, 191
  input char *path
  input int name
  output int

syscall fpathconf, 192
  input int fd
  input int name
  output int

syscall nosys, 193
  output int

syscall getrlimit, 194
  input u_int which
  input struct rlimit *rlp
  output int

syscall setrlimit, 195
  input u_int which
  input struct rlimit *rlp
  output int

syscall getdirentries, 196
  input int fd
  input char *buf
  input u_int count
  input long *basep
  output int

syscall mmap, 197
  input caddr_t addr
  input size_t len
  input int prot
  input int flags
  input int fd
  input off_t pos
  output user_addr_t

syscall nosys, 198
  output int
  extra __syscall

syscall lseek, 199
  input int fd
  input off_t offset
  input int whence
  output off_t

syscall truncate, 200
  input char *path
  input off_t length
  output int

syscall ftruncate, 201
  input int fd
  input off_t length
  output int

syscall __sysctl, 202
  input int *name
  input u_int namelen
  input void *old
  input size_t *oldlenp
  input void *new
  input size_t newlen
  output int

syscall mlock, 203
  input caddr_t addr
  input size_t len
  output int

syscall munlock, 204
  input caddr_t addr
  input size_t len
  output int

syscall undelete, 205
  input user_addr_t path
  output int


#if NETAT
syscall ATsocket, 206
  input int proto
  output int

syscall ATgetmsg, 207
  input int fd
  input void *ctlptr
  input void *datptr
  input int *flags
  output int

syscall ATputmsg, 208
  input int fd
  input void *ctlptr
  input void *datptr
  input int flags
  output int

syscall ATPsndreq, 209
  input int fd
  input unsigned char *buf
  input int len
  input int nowait
  output int

syscall ATPsndrsp, 210
  input int fd
  input unsigned char *respbuff
  input int resplen
  input int datalen
  output int

syscall ATPgetreq, 211
  input int fd
  input unsigned char *buf
  input int buflen
  output int

syscall ATPgetrsp, 212
  input int fd
  input unsigned char *bdsp
  output int

syscall nosys, 213
  output int
  extra Reserved for AppleTalk

#else
syscall nosys, 206
  output int

syscall nosys, 207
  output int

syscall nosys, 208
  output int

syscall nosys, 209
  output int

syscall nosys, 210
  output int

syscall nosys, 211
  output int

syscall nosys, 212
  output int

syscall nosys, 213
  output int
  extra Reserved for AppleTalk

#endif /* NETAT */

syscall nosys, 214
  output int

syscall nosys, 215
  output int

syscall mkcomplex, 216
  input const char *path
  input mode_t mode
  input u_long type
  output int
  extra soon to be obsolete

syscall statv, 217
  input const char *path
  input struct vstat *vsb
  output int
  extra soon to be obsolete

syscall lstatv, 218
  input const char *path
  input struct vstat *vsb
  output int
  extra soon to be obsolete

syscall fstatv, 219
  input int fd
  input struct vstat *vsb
  output int
  extra soon to be obsolete

syscall getattrlist, 220
  input const char *path
  input struct attrlist *alist
  input void *attributeBuffer
  input size_t bufferSize
  input u_long options
  output int

syscall setattrlist, 221
  input const char *path
  input struct attrlist *alist
  input void *attributeBuffer
  input size_t bufferSize
  input u_long options
  output int

syscall getdirentriesattr, 222
  input int fd
  input struct attrlist *alist
  input void *buffer
  input size_t buffersize
  input u_long *count
  input u_long *basep
  input u_long *newstate
  input u_long options
  output int

syscall exchangedata, 223
  input const char *path1
  input const char *path2
  input u_long options
  output int

syscall nosys, 224
  output int
  previously checkuseraccess / fsgetpath (which moved to 427)

syscall searchfs, 225
  input const char *path
  input struct fssearchblock *searchblock
  input uint32_t *nummatches
  input uint32_t scriptcode
  input uint32_t options
  input struct searchstate *state
  output int

syscall delete, 226
  input user_addr_t path
  output int
  extra private delete (Carbon semantics)

syscall copyfile, 227
  input char *from
  input char *to
  input int mode
  input int flags
  output int

syscall fgetattrlist, 228
  input int fd
  input struct attrlist *alist
  input void *attributeBuffer
  input size_t bufferSize
  input u_long options
  output int

syscall fsetattrlist, 229
  input int fd
  input struct attrlist *alist
  input void *attributeBuffer
  input size_t bufferSize
  input u_long options
  output int

syscall poll, 230
  input struct pollfd *fds
  input u_int nfds
  input int timeout
  output int

syscall watchevent, 231
  input struct eventreq *u_req
  input int u_eventmask
  output int

syscall waitevent, 232
  input struct eventreq *u_req
  input struct timeval *tv
  output int

syscall modwatch, 233
  input struct eventreq *u_req
  input int u_eventmask
  output int

syscall getxattr, 234
  input user_addr_t path
  input user_addr_t attrname
  input user_addr_t value
  input size_t size
  input uint32_t position
  input int options
  output user_ssize_t

syscall fgetxattr, 235
  input int fd
  input user_addr_t attrname
  input user_addr_t value
  input size_t size
  input uint32_t position
  input int options
  output user_ssize_t

syscall setxattr, 236
  input user_addr_t path
  input user_addr_t attrname
  input user_addr_t value
  input size_t size
  input uint32_t position
  input int options
  output int

syscall fsetxattr, 237
  input int fd
  input user_addr_t attrname
  input user_addr_t value
  input size_t size
  input uint32_t position
  input int options
  output int

syscall removexattr, 238
  input user_addr_t path
  input user_addr_t attrname
  input int options
  output int

syscall fremovexattr, 239
  input int fd
  input user_addr_t attrname
  input int options
  output int

syscall listxattr, 240
  input user_addr_t path
  input user_addr_t namebuf
  input size_t bufsize
  input int options
  output user_ssize_t

syscall flistxattr, 241
  input int fd
  input user_addr_t namebuf
  input size_t bufsize
  input int options
  output user_ssize_t

syscall fsctl, 242
  input const char *path
  input u_long cmd
  input caddr_t data
  input u_int options
  output int

syscall initgroups, 243
  input u_int gidsetsize
  input gid_t *gidset
  input int gmuid
  output int

syscall posix_spawn, 244
  input pid_t *pid
  input const char *path
  input const struct _posix_spawn_args_desc *adesc
  input char **argv
  input char **envp
  output int

syscall ffsctl, 245
  input int fd
  input u_long cmd
  input caddr_t data
  input u_int options
  output int

syscall nosys, 246
  output int

#if NFSCLIENT
syscall nfsclnt, 247
  input int flag
  input caddr_t argp
  output int

#else
syscall nosys, 247
  output int

#endif
#if NFSSERVER
syscall fhopen, 248
  input const struct fhandle *u_fhp
  input int flags
  output int

#else
syscall nosys, 248
  output int

#endif

syscall nosys, 249
  output int

syscall minherit, 250
  input void *addr
  input size_t len
  input int inherit
  output int

#if SYSV_SEM
syscall semsys, 251
  input u_int which
  input int a2
  input int a3
  input int a4
  input int a5
  output int

#else
syscall nosys, 251
  output int

#endif
#if SYSV_MSG
syscall msgsys, 252
  input u_int which
  input int a2
  input int a3
  input int a4
  input int a5
  output int

#else
syscall nosys, 252
  output int

#endif
#if SYSV_SHM
syscall shmsys, 253
  input u_int which
  input int a2
  input int a3
  input int a4
  output int

#else
syscall nosys, 253
  output int

#endif
#if SYSV_SEM
syscall semctl, 254
  input int semid
  input int semnum
  input int cmd
  input semun_t arg
  output int

syscall semget, 255
  input key_t key
  input int nsems
  input int semflg
  output int

syscall semop, 256
  input int semid
  input struct sembuf *sops
  input int nsops
  output int

syscall nosys, 257
  output int

#else
syscall nosys, 254
  output int

syscall nosys, 255
  output int

syscall nosys, 256
  output int

syscall nosys, 257
  output int

#endif
#if SYSV_MSG
syscall msgctl, 258
  input int msqid
  input int cmd
  input struct msqid_ds *buf
  output int

syscall msgget, 259
  input key_t key
  input int msgflg
  output int

syscall msgsnd, 260
  input int msqid
  input void *msgp
  input size_t msgsz
  input int msgflg
  output int

syscall msgrcv, 261
  input int msqid
  input void *msgp
  input size_t msgsz
  input long msgtyp
  input int msgflg
  output user_ssize_t

#else
syscall nosys, 258
  output int

syscall nosys, 259
  output int

syscall nosys, 260
  output int

syscall nosys, 261
  output int

#endif
#if SYSV_SHM
syscall shmat, 262
  input int shmid
  input void *shmaddr
  input int shmflg
  output user_addr_t

syscall shmctl, 263
  input int shmid
  input int cmd
  input struct shmid_ds *buf
  output int

syscall shmdt, 264
  input void *shmaddr
  output int

syscall shmget, 265
  input key_t key
  input size_t size
  input int shmflg
  output int

#else
syscall nosys, 262
  output int

syscall nosys, 263
  output int

syscall nosys, 264
  output int

syscall nosys, 265
  output int

#endif
syscall shm_open, 266
  input const char *name
  input int oflag
  input int mode
  output int

syscall shm_unlink, 267
  input const char *name
  output int

syscall sem_open, 268
  input const char *name
  input int oflag
  input int mode
  input int value
  output user_addr_t

syscall sem_close, 269
  input sem_t *sem
  output int

syscall sem_unlink, 270
  input const char *name
  output int

syscall sem_wait, 271
  input sem_t *sem
  output int

syscall sem_trywait, 272
  input sem_t *sem
  output int

syscall sem_post, 273
  input sem_t *sem
  output int

syscall sem_getvalue, 274
  input sem_t *sem
  input int *sval
  output int

syscall sem_init, 275
  input sem_t *sem
  input int phsared
  input u_int value
  output int

syscall sem_destroy, 276
  input sem_t *sem
  output int

syscall open_extended, 277
  input user_addr_t path
  input int flags
  input uid_t uid
  input gid_t gid
  input int mode
  input user_addr_t xsecurity
  output int

syscall umask_extended, 278
  input int newmask
  input user_addr_t xsecurity
  output int

syscall stat_extended, 279
  input user_addr_t path
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall lstat_extended, 280
  input user_addr_t path
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall fstat_extended, 281
  input int fd
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall chmod_extended, 282
  input user_addr_t path
  input uid_t uid
  input gid_t gid
  input int mode
  input user_addr_t xsecurity
  output int

syscall fchmod_extended, 283
  input int fd
  input uid_t uid
  input gid_t gid
  input int mode
  input user_addr_t xsecurity
  output int

syscall access_extended, 284
  input user_addr_t entries
  input size_t size
  input user_addr_t results
  input uid_t uid
  output int

syscall settid, 285
  input uid_t uid
  input gid_t gid
  output int

syscall gettid, 286
  input uid_t *uidp
  input gid_t *gidp
  output int

syscall setsgroups, 287
  input int setlen
  input user_addr_t guidset
  output int

syscall getsgroups, 288
  input user_addr_t setlen
  input user_addr_t guidset
  output int

syscall setwgroups, 289
  input int setlen
  input user_addr_t guidset
  output int

syscall getwgroups, 290
  input user_addr_t setlen
  input user_addr_t guidset
  output int

syscall mkfifo_extended, 291
  input user_addr_t path
  input uid_t uid
  input gid_t gid
  input int mode
  input user_addr_t xsecurity
  output int

syscall mkdir_extended, 292
  input user_addr_t path
  input uid_t uid
  input gid_t gid
  input int mode
  input user_addr_t xsecurity
  output int

syscall identitysvc, 293
  input int opcode
  input user_addr_t message
  output int

syscall shared_region_check_np, 294
  input uint64_t *start_address
  output int

syscall shared_region_map_np, 295
  input int fd
  input uint32_t count
  input const struct shared_file_mapping_np *mappings
  output int

syscall vm_pressure_monitor, 296
  input int wait_for_pressure
  input int nsecs_monitored
  input uint32_t *pages_reclaimed
  output int

#if PSYNCH
syscall psynch_rw_longrdlock, 297
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_rw_yieldwrlock, 298
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_rw_downgrade, 299
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output int

syscall psynch_rw_upgrade, 300
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_mutexwait, 301
  input user_addr_t mutex
  input  uint32_t mgen
  input uint32_t  ugen
  input uint64_t tid
  input uint32_t flags
  output uint32_t

syscall psynch_mutexdrop, 302
  input user_addr_t mutex
  input  uint32_t mgen
  input uint32_t  ugen
  input uint64_t tid
  input uint32_t flags
  output uint32_t

syscall psynch_cvbroad, 303
  input user_addr_t cv
  input uint32_t cvgen
  input uint32_t diffgen
  input user_addr_t mutex
  input  uint32_t mgen
  input uint32_t ugen
  input uint64_t tid
  input uint32_t flags
  output int

syscall psynch_cvsignal, 304
  input user_addr_t cv
  input uint32_t cvgen
  input uint32_t cvugen
  input user_addr_t mutex
  input  uint32_t mgen
  input uint32_t ugen
  input int thread_port
  input uint32_t flags
  output int

syscall psynch_cvwait, 305
  input user_addr_t cv
  input uint32_t cvgen
  input uint32_t cvugen
  input user_addr_t mutex
  input  uint32_t mgen
  input uint32_t ugen
  input uint64_t sec
  input uint64_t usec
  output uint32_t

syscall psynch_rw_rdlock, 306
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_rw_wrlock, 307
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_rw_unlock, 308
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

syscall psynch_rw_unlock2, 309
  input user_addr_t rwlock
  input uint32_t lgenval
  input uint32_t ugenval
  input uint32_t rw_wc
  input int flags
  output uint32_t

#else
syscall nosys, 297
  output int
  previously reset_shared_file

syscall nosys, 298
  output int
  previously new_system_shared_regions

syscall enosys, 299
  output int
  previously shared_region_map_file_np

syscall enosys, 300
  output int
  previously shared_region_make_private_np

syscall nosys, 301
  output int

syscall nosys, 302
  output int

syscall nosys, 303
  output int

syscall nosys, 304
  output int

syscall nosys, 305
  output int

syscall nosys, 306
  output int

syscall nosys, 307
  output int

syscall nosys, 308
  output int

syscall nosys, 309
  output int

#endif
syscall getsid, 310
  input pid_t pid
  output int

syscall settid_with_pid, 311
  input pid_t pid
  input int assume
  output int

syscall nosys, 312
  output int
  previously __pthread_cond_timedwait

syscall aio_fsync, 313
  input int op
  input user_addr_t aiocbp
  output int

syscall aio_return, 314
  input user_addr_t aiocbp
  output user_ssize_t

syscall aio_suspend, 315
  input user_addr_t aiocblist
  input int nent
  input user_addr_t timeoutp
  output int

syscall aio_cancel, 316
  input int fd
  input user_addr_t aiocbp
  output int

syscall aio_error, 317
  input user_addr_t aiocbp
  output int

syscall aio_read, 318
  input user_addr_t aiocbp
  output int

syscall aio_write, 319
  input user_addr_t aiocbp
  output int

syscall lio_listio, 320
  input int mode
  input user_addr_t aiocblist
  input int nent
  input user_addr_t sigp
  output int

syscall nosys, 321
  output int
  previously __pthread_cond_wait

syscall iopolicysys, 322
  input int cmd
  input void *arg
  output int

syscall nosys, 323
  output int

syscall mlockall, 324
  input int how
  output int

syscall munlockall, 325
  input int how
  output int

syscall nosys, 326
  output int

syscall issetugid, 327
  output int

syscall __pthread_kill, 328
  input int thread_port
  input int sig
  output int

syscall __pthread_sigmask, 329
  input int how
  input user_addr_t set
  input user_addr_t oset
  output int

syscall __sigwait, 330
  input user_addr_t set
  input user_addr_t sig
  output int

syscall __disable_threadsignal, 331
  input int value
  output int

syscall __pthread_markcancel, 332
  input int thread_port
  output int

syscall __pthread_canceled, 333
  input int  action
  output int

;#if OLD_SEMWAIT_SIGNAL
;syscall nosys, 334
  output int
  previously __semwait_signal

;#else
syscall __semwait_signal, 334
  input int cond_sem
  input int mutex_sem
  input int timeout
  input int relative
  input int64_t tv_sec
  input int32_t tv_nsec
  output int
;#endif

syscall nosys, 335
  output int
  previously utrace

syscall proc_info, 336
  input int32_t callnum
  input int32_t pid
  input uint32_t flavor
  input uint64_t arg
  input user_addr_t buffer
  input int32_t buffersize
  output int

#if SENDFILE
syscall sendfile, 337
  input int fd
  input int s
  input off_t offset
  input off_t *nbytes
  input struct sf_hdtr *hdtr
  input int flags
  output int

#else /* !SENDFILE */
syscall nosys, 337
  output int

#endif /* SENDFILE */
syscall stat64, 338
  input user_addr_t path
  input user_addr_t ub
  output int

syscall fstat64, 339
  input int fd
  input user_addr_t ub
  output int

syscall lstat64, 340
  input user_addr_t path
  input user_addr_t ub
  output int

syscall stat64_extended, 341
  input user_addr_t path
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall lstat64_extended, 342
  input user_addr_t path
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall fstat64_extended, 343
  input int fd
  input user_addr_t ub
  input user_addr_t xsecurity
  input user_addr_t xsecurity_size
  output int

syscall getdirentries64, 344
  input int fd
  input void *buf
  input user_size_t bufsize
  input off_t *position
  output user_ssize_t

syscall statfs64, 345
  input char *path
  input struct statfs64 *buf
  output int

syscall fstatfs64, 346
  input int fd
  input struct statfs64 *buf
  output int

syscall getfsstat64, 347
  input user_addr_t buf
  input int bufsize
  input int flags
  output int

syscall __pthread_chdir, 348
  input user_addr_t path
  output int

syscall __pthread_fchdir, 349
  input int fd
  output int

syscall audit, 350
  input void *record
  input int length
  output int

syscall auditon, 351
  input int cmd
  input void *data
  input int length
  output int

syscall nosys, 352
  output int

syscall getauid, 353
  input au_id_t *auid
  output int

syscall setauid, 354
  input au_id_t *auid
  output int

syscall getaudit, 355
  input struct auditinfo *auditinfo
  output int

syscall setaudit, 356
  input struct auditinfo *auditinfo
  output int

syscall getaudit_addr, 357
  input struct auditinfo_addr *auditinfo_addr
  input int length
  output int

syscall setaudit_addr, 358
  input struct auditinfo_addr *auditinfo_addr
  input int length
  output int

syscall auditctl, 359
  input char *path
  output int

#if CONFIG_WORKQUEUE
syscall bsdthread_create, 360
  input user_addr_t func
  input user_addr_t func_arg
  input user_addr_t stack
  input user_addr_t pthread
  input uint32_t flags
  output user_addr_t

syscall bsdthread_terminate, 361
  input user_addr_t stackaddr
  input size_t freesize
  input uint32_t port
  input uint32_t sem
  output int

#else
syscall nosys, 360
  output int

syscall nosys, 361
  output int

#endif /* CONFIG_WORKQUEUE */
syscall kqueue, 362
  output int

syscall kevent, 363
  input int fd
  input const struct kevent *changelist
  input int nchanges
  input struct kevent *eventlist
  input int nevents
  input const struct timespec *timeout
  output int

syscall lchown, 364
  input user_addr_t path
  input uid_t owner
  input gid_t group
  output int

syscall stack_snapshot, 365
  input pid_t pid
  input user_addr_t tracebuf
  input uint32_t tracebuf_size
  input uint32_t flags
  input uint32_t dispatch_offset
  output int

#if CONFIG_WORKQUEUE
syscall bsdthread_register, 366
  input user_addr_t threadstart
  input user_addr_t wqthread
  input int pthsize,user_addr_t dummy_value
  input user_addr_t targetconc_ptr
  input uint64_t dispatchqueue_offset
  output int

syscall workq_open, 367
  output int

syscall workq_kernreturn, 368
  input int options
  input user_addr_t item
  input int affinity
  input int prio
  output int

#else
syscall nosys, 366
  output int

syscall nosys, 367
  output int

syscall nosys, 368
  output int

#endif /* CONFIG_WORKQUEUE */
syscall kevent64, 369
  input int fd
  input const struct kevent64_s *changelist
  input int nchanges
  input struct kevent64_s *eventlist
  input int nevents
  input unsigned int flags
  input const struct timespec *timeout
  output int

#if OLD_SEMWAIT_SIGNAL
syscall __old_semwait_signal, 370
  input int cond_sem
  input int mutex_sem
  input int timeout
  input int relative
  input const struct timespec *ts
  output int

syscall __old_semwait_signal_nocancel, 371
  input int cond_sem
  input int mutex_sem
  input int timeout
  input int relative
  input const struct timespec *ts
  output int

#else
syscall nosys, 370
  output int
  previously __semwait_signal

syscall nosys, 371
  output int
  previously __semwait_signal

#endif
# 372 AUE_NULL  ALL { user_addr_t thread_selfid (void) NO_SYSCALL_STUB; }
syscall nosys, 373
  output int

syscall nosys, 374
  output int

syscall nosys, 375
  output int

syscall nosys, 376
  output int

syscall nosys, 377
  output int

syscall nosys, 378
  output int

syscall nosys, 379
  output int

syscall __mac_execve, 380
  input char *fname
  input char **argp
  input char **envp
  input struct mac *mac_p
  output int

syscall __mac_syscall, 381
  input char *policy
  input int call
  input user_addr_t arg
  output int

syscall __mac_get_file, 382
  input char *path_p
  input struct mac *mac_p
  output int

syscall __mac_set_file, 383
  input char *path_p
  input struct mac *mac_p
  output int

syscall __mac_get_link, 384
  input char *path_p
  input struct mac *mac_p
  output int

syscall __mac_set_link, 385
  input char *path_p
  input struct mac *mac_p
  output int

syscall __mac_get_proc, 386
  input struct mac *mac_p
  output int

syscall __mac_set_proc, 387
  input struct mac *mac_p
  output int

syscall __mac_get_fd, 388
  input int fd
  input struct mac *mac_p
  output int

syscall __mac_set_fd, 389
  input int fd
  input struct mac *mac_p
  output int

syscall __mac_get_pid, 390
  input pid_t pid
  input struct mac *mac_p
  output int

syscall __mac_get_lcid, 391
  input pid_t lcid
  input struct mac *mac_p
  output int

syscall __mac_get_lctx, 392
  input struct mac *mac_p
  output int

syscall __mac_set_lctx, 393
  input struct mac *mac_p
  output int

syscall setlcid, 394
  input pid_t pid
  input pid_t lcid
  output int

syscall getlcid, 395
  input pid_t pid
  output int

syscall read_nocancel, 396
  input int fd
  input user_addr_t cbuf
  input user_size_t nbyte
  output user_ssize_t

syscall write_nocancel, 397
  input int fd
  input user_addr_t cbuf
  input user_size_t nbyte
  output user_ssize_t

syscall open_nocancel, 398
  input user_addr_t path
  input int flags
  input int mode
  output int

syscall close_nocancel, 399
  input int fd
  output int

syscall wait4_nocancel, 400
  input int pid
  input user_addr_t status
  input int options
  input user_addr_t rusage
  output int

#if SOCKETS
syscall recvmsg_nocancel, 401
  input int s
  input struct msghdr *msg
  input int flags
  output int

syscall sendmsg_nocancel, 402
  input int s
  input caddr_t msg
  input int flags
  output int

syscall recvfrom_nocancel, 403
  input int s
  input void *buf
  input size_t len
  input int flags
  input struct sockaddr *from
  input int *fromlenaddr
  output int

syscall accept_nocancel, 404
  input int s
  input caddr_t name
  input socklen_t  *anamelen
  output int

#else
syscall nosys, 401
  output int

syscall nosys, 402
  output int

syscall nosys, 403
  output int

syscall nosys, 404
  output int

#endif /* SOCKETS */
syscall msync_nocancel, 405
  input caddr_t addr
  input size_t len
  input int flags
  output int

syscall fcntl_nocancel, 406
  input int fd
  input int cmd
  input long arg
  output int

syscall select_nocancel, 407
  input int nd
  input u_int32_t *in
  input u_int32_t *ou
  input u_int32_t *ex
  input struct timeval *tv
  output int

syscall fsync_nocancel, 408
  input int fd
  output int

#if SOCKETS
syscall connect_nocancel, 409
  input int s
  input caddr_t name
  input socklen_t namelen
  output int

#else
syscall nosys, 409
  output int

#endif /* SOCKETS */
syscall sigsuspend_nocancel, 410
  input sigset_t mask
  output int

syscall readv_nocancel, 411
  input int fd
  input struct iovec *iovp
  input u_int iovcnt
  output user_ssize_t

syscall writev_nocancel, 412
  input int fd
  input struct iovec *iovp
  input u_int iovcnt
  output user_ssize_t

#if SOCKETS
syscall sendto_nocancel, 413
  input int s
  input caddr_t buf
  input size_t len
  input int flags
  input caddr_t to
  input socklen_t tolen
  output int

#else
syscall nosys, 413
  output int

#endif /* SOCKETS */
syscall pread_nocancel, 414
  input int fd
  input user_addr_t buf
  input user_size_t nbyte
  input off_t offset
  output user_ssize_t

syscall pwrite_nocancel, 415
  input int fd
  input user_addr_t buf
  input user_size_t nbyte
  input off_t offset
  output user_ssize_t

syscall waitid_nocancel, 416
  input idtype_t idtype
  input id_t id
  input siginfo_t *infop
  input int options
  output int

syscall poll_nocancel, 417
  input struct pollfd *fds
  input u_int nfds
  input int timeout
  output int

#if SYSV_MSG
syscall msgsnd_nocancel, 418
  input int msqid
  input void *msgp
  input size_t msgsz
  input int msgflg
  output int

syscall msgrcv_nocancel, 419
  input int msqid
  input void *msgp
  input size_t msgsz
  input long msgtyp
  input int msgflg
  output user_ssize_t

#else
syscall nosys, 418
  output int

syscall nosys, 419
  output int

#endif
syscall sem_wait_nocancel, 420
  input sem_t *sem
  output int

syscall aio_suspend_nocancel, 421
  input user_addr_t aiocblist
  input int nent
  input user_addr_t timeoutp
  output int

syscall __sigwait_nocancel, 422
  input user_addr_t set
  input user_addr_t sig
  output int

;#if OLD_SEMWAIT_SIGNAL
syscall nosys, 423
  output int
  previously __semwait_signal_nocancel
# ;#else
# 423     AUE_SEMWAITSIGNAL       ALL     { int __semwait_signal_nocancel(int cond_sem
  input int mutex_sem
  input int timeout
  input int relative
  input int64_t tv_sec
  input int32_t tv_nsec # ) NO_SYSCALL_STUB;}

;#endif
syscall __mac_mount, 424
  input char *type
  input char *path
  input int flags
  input caddr_t data
  input struct mac *mac_p
  output int

syscall __mac_get_mount, 425
  input char *path
  input struct mac *mac_p
  output int

syscall __mac_getfsstat, 426
  input user_addr_t buf
  input int bufsize
  input user_addr_t mac
  input int macsize
  input int flags
  output int

syscall fsgetpath, 427
  input user_addr_t buf
  input size_t bufsize
  input user_addr_t fsid
  input uint64_t objid
  output user_ssize_t
  extra private fsgetpath (File Manager SPI)

syscall audit_session_self, 428
  output mach_port_name_t

syscall audit_session_join, 429
  input mach_port_name_t port
  output int
