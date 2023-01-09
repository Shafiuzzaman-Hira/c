extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "linux-3.8-rc1-32_7a-drivers--md--md-mod.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2043_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2043_8 ldv_2043 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2050_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2050_10 ldv_2050 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_2103_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2118_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2119_11 {
   struct __anonstruct_ldv_2103_12 ldv_2103 ;
   struct __anonstruct_ldv_2118_13 ldv_2118 ;
};
struct desc_struct {
   union __anonunion_ldv_2119_11 ldv_2119 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2775_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2775_18 ldv_2775 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5181_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5187_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5188_22 {
   struct __anonstruct_ldv_5181_23 ldv_5181 ;
   struct __anonstruct_ldv_5187_24 ldv_5187 ;
};
union __anonunion_ldv_5197_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5188_22 ldv_5188 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5197_25 ldv_5197 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6013_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6014_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6013_29 ldv_6013 ;
};
struct spinlock {
   union __anonunion_ldv_6014_28 ldv_6014 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_33 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_34 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_35 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6431_32 {
   struct __anonstruct_futex_33 futex ;
   struct __anonstruct_nanosleep_34 nanosleep ;
   struct __anonstruct_poll_35 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6431_32 ldv_6431 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_36 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_36 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_37 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_37 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct vm_area_struct;
struct notifier_block;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct return_instance;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct return_instance *return_instances ;
   unsigned int depth ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct __anonstruct_mm_context_t_38 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_38 mm_context_t;
struct address_space;
union __anonunion_ldv_8752_40 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_8762_44 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_8764_43 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_8762_44 ldv_8762 ;
   int units ;
};
struct __anonstruct_ldv_8766_42 {
   union __anonunion_ldv_8764_43 ldv_8764 ;
   atomic_t _count ;
};
union __anonunion_ldv_8767_41 {
   unsigned long counters ;
   struct __anonstruct_ldv_8766_42 ldv_8766 ;
};
struct __anonstruct_ldv_8768_39 {
   union __anonunion_ldv_8752_40 ldv_8752 ;
   union __anonunion_ldv_8767_41 ldv_8767 ;
};
struct __anonstruct_ldv_8775_46 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_8779_45 {
   struct list_head lru ;
   struct __anonstruct_ldv_8775_46 ldv_8775 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_8784_47 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_8768_39 ldv_8768 ;
   union __anonunion_ldv_8779_45 ldv_8779 ;
   union __anonunion_ldv_8784_47 ldv_8784 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_49 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_48 {
   struct __anonstruct_linear_49 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_48 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct bio_vec;
struct device_node;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_140 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_140 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_142 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_143 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_144 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_145 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_146 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_147 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_148 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_141 {
   int _pad[28U] ;
   struct __anonstruct__kill_142 _kill ;
   struct __anonstruct__timer_143 _timer ;
   struct __anonstruct__rt_144 _rt ;
   struct __anonstruct__sigchld_145 _sigchld ;
   struct __anonstruct__sigfault_146 _sigfault ;
   struct __anonstruct__sigpoll_147 _sigpoll ;
   struct __anonstruct__sigsys_148 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_141 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct ctl_table;
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef struct ctl_table ctl_table;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_14791_152 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_14793_151 {
   struct __anonstruct_ldv_14791_152 ldv_14791 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_14793_151 ldv_14793 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_14872_153 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_14881_154 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_155 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_156 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_14872_153 ldv_14872 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_14881_154 ldv_14881 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_155 type_data ;
   union __anonunion_payload_156 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
enum kobject_action {
    KOBJ_ADD = 0,
    KOBJ_REMOVE = 1,
    KOBJ_CHANGE = 2,
    KOBJ_MOVE = 3,
    KOBJ_ONLINE = 4,
    KOBJ_OFFLINE = 5,
    KOBJ_MAX = 6
} ;
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_17284_159 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_17285_158 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_17284_159 ldv_17284 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_17285_158 ldv_17285 ;
};
struct device_type;
struct class;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_18304_161 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_18306_160 {
   struct __anonstruct_ldv_18304_161 ldv_18304 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_18306_160 ldv_18306 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_162 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_162 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_19102_163 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_19102_163 ldv_19102 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct writeback_control;
union __anonunion_arg_165 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_164 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_165 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_164 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_19536_166 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19556_167 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_19572_168 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_19536_166 ldv_19536 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_19556_167 ldv_19556 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_19572_168 ldv_19572 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_169 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_169 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_171 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_170 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_171 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_170 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion_ldv_26802_174 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_26806_175 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_26802_174 ldv_26802 ;
   union __anonunion_ldv_26806_175 ldv_26806 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   unsigned char bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_27279_176 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_178 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_179 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_27290_177 {
   struct __anonstruct_elv_178 elv ;
   struct __anonstruct_flush_179 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_27279_176 ldv_27279 ;
   union __anonunion_ldv_27290_177 ldv_27290 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct throtl_data;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
};
struct blk_plug_cb;
struct blk_plug_cb {
   struct list_head list ;
   void (*callback)(struct blk_plug_cb * , bool ) ;
   void *data ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_29332_187 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_29332_187 ldv_29332 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct mdp_device_descriptor_s {
   __u32 number ;
   __u32 major ;
   __u32 minor ;
   __u32 raid_disk ;
   __u32 state ;
   __u32 reserved[27U] ;
};
typedef struct mdp_device_descriptor_s mdp_disk_t;
struct mdp_superblock_s {
   __u32 md_magic ;
   __u32 major_version ;
   __u32 minor_version ;
   __u32 patch_version ;
   __u32 gvalid_words ;
   __u32 set_uuid0 ;
   __u32 ctime ;
   __u32 level ;
   __u32 size ;
   __u32 nr_disks ;
   __u32 raid_disks ;
   __u32 md_minor ;
   __u32 not_persistent ;
   __u32 set_uuid1 ;
   __u32 set_uuid2 ;
   __u32 set_uuid3 ;
   __u32 gstate_creserved[16U] ;
   __u32 utime ;
   __u32 state ;
   __u32 active_disks ;
   __u32 working_disks ;
   __u32 failed_disks ;
   __u32 spare_disks ;
   __u32 sb_csum ;
   __u32 events_lo ;
   __u32 events_hi ;
   __u32 cp_events_lo ;
   __u32 cp_events_hi ;
   __u32 recovery_cp ;
   __u64 reshape_position ;
   __u32 new_level ;
   __u32 delta_disks ;
   __u32 new_layout ;
   __u32 new_chunk ;
   __u32 gstate_sreserved[14U] ;
   __u32 layout ;
   __u32 chunk_size ;
   __u32 root_pv ;
   __u32 root_block ;
   __u32 pstate_reserved[60U] ;
   mdp_disk_t disks[27U] ;
   __u32 reserved[0U] ;
   mdp_disk_t this_disk ;
};
typedef struct mdp_superblock_s mdp_super_t;
struct mdp_superblock_1 {
   __le32 magic ;
   __le32 major_version ;
   __le32 feature_map ;
   __le32 pad0 ;
   __u8 set_uuid[16U] ;
   char set_name[32U] ;
   __le64 ctime ;
   __le32 level ;
   __le32 layout ;
   __le64 size ;
   __le32 chunksize ;
   __le32 raid_disks ;
   __le32 bitmap_offset ;
   __le32 new_level ;
   __le64 reshape_position ;
   __le32 delta_disks ;
   __le32 new_layout ;
   __le32 new_chunk ;
   __le32 new_offset ;
   __le64 data_offset ;
   __le64 data_size ;
   __le64 super_offset ;
   __le64 recovery_offset ;
   __le32 dev_number ;
   __le32 cnt_corrected_read ;
   __u8 device_uuid[16U] ;
   __u8 devflags ;
   __u8 bblog_shift ;
   __le16 bblog_size ;
   __le32 bblog_offset ;
   __le64 utime ;
   __le64 events ;
   __le64 resync_offset ;
   __le32 sb_csum ;
   __le32 max_dev ;
   __u8 pad3[32U] ;
   __le16 dev_roles[0U] ;
};
struct mdu_version_s {
   int major ;
   int minor ;
   int patchlevel ;
};
typedef struct mdu_version_s mdu_version_t;
struct mdu_array_info_s {
   int major_version ;
   int minor_version ;
   int patch_version ;
   int ctime ;
   int level ;
   int size ;
   int nr_disks ;
   int raid_disks ;
   int md_minor ;
   int not_persistent ;
   int utime ;
   int state ;
   int active_disks ;
   int working_disks ;
   int failed_disks ;
   int spare_disks ;
   int layout ;
   int chunk_size ;
};
typedef struct mdu_array_info_s mdu_array_info_t;
struct mdu_disk_info_s {
   int number ;
   int major ;
   int minor ;
   int raid_disk ;
   int state ;
};
typedef struct mdu_disk_info_s mdu_disk_info_t;
struct mdu_bitmap_file_s {
   char pathname[4096U] ;
};
typedef struct mdu_bitmap_file_s mdu_bitmap_file_t;
struct badblocks {
   int count ;
   int unacked_exist ;
   int shift ;
   u64 *page ;
   int changed ;
   seqlock_t lock ;
   sector_t sector ;
   sector_t size ;
};
struct mddev;
struct md_rdev {
   struct list_head same_set ;
   sector_t sectors ;
   struct mddev *mddev ;
   int last_events ;
   struct block_device *meta_bdev ;
   struct block_device *bdev ;
   struct page *sb_page ;
   struct page *bb_page ;
   int sb_loaded ;
   __u64 sb_events ;
   sector_t data_offset ;
   sector_t new_data_offset ;
   sector_t sb_start ;
   int sb_size ;
   int preferred_minor ;
   struct kobject kobj ;
   unsigned long flags ;
   wait_queue_head_t blocked_wait ;
   int desc_nr ;
   int raid_disk ;
   int new_raid_disk ;
   int saved_raid_disk ;
   sector_t recovery_offset ;
   atomic_t nr_pending ;
   atomic_t read_errors ;
   struct timespec last_read_error ;
   atomic_t corrected_errors ;
   struct work_struct del_work ;
   struct sysfs_dirent *sysfs_state ;
   struct badblocks badblocks ;
};
struct md_personality;
struct md_thread;
struct bitmap;
struct __anonstruct_bitmap_info_213 {
   struct file *file ;
   loff_t offset ;
   unsigned long space ;
   loff_t default_offset ;
   unsigned long default_space ;
   struct mutex mutex ;
   unsigned long chunksize ;
   unsigned long daemon_sleep ;
   unsigned long max_write_behind ;
   int external ;
};
struct mddev {
   void *private ;
   struct md_personality *pers ;
   dev_t unit ;
   int md_minor ;
   struct list_head disks ;
   unsigned long flags ;
   int suspended ;
   atomic_t active_io ;
   int ro ;
   int sysfs_active ;
   int ready ;
   struct gendisk *gendisk ;
   struct kobject kobj ;
   int hold_active ;
   int major_version ;
   int minor_version ;
   int patch_version ;
   int persistent ;
   int external ;
   char metadata_type[17U] ;
   int chunk_sectors ;
   time_t ctime ;
   time_t utime ;
   int level ;
   int layout ;
   char clevel[16U] ;
   int raid_disks ;
   int max_disks ;
   sector_t dev_sectors ;
   sector_t array_sectors ;
   int external_size ;
   __u64 events ;
   int can_decrease_events ;
   char uuid[16U] ;
   sector_t reshape_position ;
   int delta_disks ;
   int new_level ;
   int new_layout ;
   int new_chunk_sectors ;
   int reshape_backwards ;
   struct md_thread *thread ;
   struct md_thread *sync_thread ;
   sector_t curr_resync ;
   sector_t curr_resync_completed ;
   unsigned long resync_mark ;
   sector_t resync_mark_cnt ;
   sector_t curr_mark_cnt ;
   sector_t resync_max_sectors ;
   atomic64_t resync_mismatches ;
   sector_t suspend_lo ;
   sector_t suspend_hi ;
   int sync_speed_min ;
   int sync_speed_max ;
   int parallel_resync ;
   int ok_start_degraded ;
   unsigned long recovery ;
   int recovery_disabled ;
   int in_sync ;
   struct mutex open_mutex ;
   struct mutex reconfig_mutex ;
   atomic_t active ;
   atomic_t openers ;
   int changed ;
   int degraded ;
   int merge_check_needed ;
   atomic_t recovery_active ;
   wait_queue_head_t recovery_wait ;
   sector_t recovery_cp ;
   sector_t resync_min ;
   sector_t resync_max ;
   struct sysfs_dirent *sysfs_state ;
   struct sysfs_dirent *sysfs_action ;
   struct work_struct del_work ;
   spinlock_t write_lock ;
   wait_queue_head_t sb_wait ;
   atomic_t pending_writes ;
   unsigned int safemode ;
   unsigned int safemode_delay ;
   struct timer_list safemode_timer ;
   atomic_t writes_pending ;
   struct request_queue *queue ;
   struct bitmap *bitmap ;
   struct __anonstruct_bitmap_info_213 bitmap_info ;
   atomic_t max_corr_read_errors ;
   struct list_head all_mddevs ;
   struct attribute_group *to_remove ;
   struct bio_set *bio_set ;
   struct bio *flush_bio ;
   atomic_t flush_pending ;
   struct work_struct flush_work ;
   struct work_struct event_work ;
   void (*sync_super)(struct mddev * , struct md_rdev * ) ;
};
struct md_personality {
   char *name ;
   int level ;
   struct list_head list ;
   struct module *owner ;
   void (*make_request)(struct mddev * , struct bio * ) ;
   int (*run)(struct mddev * ) ;
   int (*stop)(struct mddev * ) ;
   void (*status)(struct seq_file * , struct mddev * ) ;
   void (*error_handler)(struct mddev * , struct md_rdev * ) ;
   int (*hot_add_disk)(struct mddev * , struct md_rdev * ) ;
   int (*hot_remove_disk)(struct mddev * , struct md_rdev * ) ;
   int (*spare_active)(struct mddev * ) ;
   sector_t (*sync_request)(struct mddev * , sector_t , int * , int ) ;
   int (*resize)(struct mddev * , sector_t ) ;
   sector_t (*size)(struct mddev * , sector_t , int ) ;
   int (*check_reshape)(struct mddev * ) ;
   int (*start_reshape)(struct mddev * ) ;
   void (*finish_reshape)(struct mddev * ) ;
   void (*quiesce)(struct mddev * , int ) ;
   void *(*takeover)(struct mddev * ) ;
};
struct md_sysfs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct mddev * , char * ) ;
   ssize_t (*store)(struct mddev * , char const * , size_t ) ;
};
struct md_thread {
   void (*run)(struct md_thread * ) ;
   struct mddev *mddev ;
   wait_queue_head_t wqueue ;
   unsigned long flags ;
   struct task_struct *tsk ;
   unsigned long timeout ;
   void *private ;
};
struct bitmap_page {
   char *map ;
   unsigned char hijacked : 1 ;
   unsigned char pending : 1 ;
   unsigned int count : 30 ;
};
struct bitmap_counts {
   spinlock_t lock ;
   struct bitmap_page *bp ;
   unsigned long pages ;
   unsigned long missing_pages ;
   unsigned long chunkshift ;
   unsigned long chunks ;
};
struct bitmap_storage {
   struct file *file ;
   struct page *sb_page ;
   struct page **filemap ;
   unsigned long *filemap_attr ;
   unsigned long file_pages ;
   unsigned long bytes ;
};
struct bitmap {
   struct bitmap_counts counts ;
   struct mddev *mddev ;
   __u64 events_cleared ;
   int need_sync ;
   struct bitmap_storage storage ;
   unsigned long flags ;
   int allclean ;
   atomic_t behind_writes ;
   unsigned long behind_writes_used ;
   unsigned long daemon_lastrun ;
   unsigned long last_end_sync ;
   atomic_t pending_writes ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t overflow_wait ;
   wait_queue_head_t behind_wait ;
   struct sysfs_dirent *sysfs_can_clear ;
};
struct super_type {
   char *name ;
   struct module *owner ;
   int (*load_super)(struct md_rdev * , struct md_rdev * , int ) ;
   int (*validate_super)(struct mddev * , struct md_rdev * ) ;
   void (*sync_super)(struct mddev * , struct md_rdev * ) ;
   unsigned long long (*rdev_size_change)(struct md_rdev * , sector_t ) ;
   int (*allow_new_offset)(struct md_rdev * , unsigned long long ) ;
};
struct rdev_sysfs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct md_rdev * , char * ) ;
   ssize_t (*store)(struct md_rdev * , char const * , size_t ) ;
};
enum array_state {
    clear = 0,
    inactive = 1,
    suspended = 2,
    readonly = 3,
    read_auto = 4,
    clean = 5,
    active = 6,
    write_pending = 7,
    active_idle = 8,
    bad_word = 9
} ;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___19;
enum hrtimer_restart;
struct buffer_head;
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
};
typedef void bh_end_io_t(struct buffer_head * , int );
struct buffer_head {
   unsigned long b_state ;
   struct buffer_head *b_this_page ;
   struct page *b_page ;
   sector_t b_blocknr ;
   size_t b_size ;
   char *b_data ;
   struct block_device *b_bdev ;
   bh_end_io_t *b_end_io ;
   void *b_private ;
   struct list_head b_assoc_buffers ;
   struct address_space *b_assoc_map ;
   atomic_t b_count ;
};
typedef __u16 bitmap_counter_t;
struct bitmap_super_s {
   __le32 magic ;
   __le32 version ;
   __u8 uuid[16U] ;
   __le64 events ;
   __le64 events_cleared ;
   __le64 sync_size ;
   __le32 state ;
   __le32 chunksize ;
   __le32 daemon_sleep ;
   __le32 write_behind ;
   __le32 sectors_reserved ;
   __u8 pad[188U] ;
};
typedef struct bitmap_super_s bitmap_super_t;
enum bitmap_page_attr {
    BITMAP_PAGE_DIRTY = 0,
    BITMAP_PAGE_PENDING = 1,
    BITMAP_PAGE_NEEDWRITE = 2
} ;
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern unsigned long long simple_strtoull(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern unsigned long __per_cpu_offset[4096U] ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  default:
  __bad_percpu_size();
  }
  ldv_2869: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern char *strchr(char const * , int ) ;
extern char *skip_spaces(char const * ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_possible_mask ;
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 108);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  rep_nop();
  return;
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((unsigned int )c != 0U);
}
}
__inline static long atomic64_read(atomic64_t const *v )
{
  {
  return ((long )*((long volatile *)(& v->counter)));
}
}
__inline static void atomic64_set(atomic64_t *v , long i )
{
  {
  v->counter = i;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
__inline static int mutex_is_locked(struct mutex *lock )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lock->count));
  return (tmp != 1);
}
}
__inline static int ldv_mutex_is_locked_7(struct mutex *lock ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_6(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_disks_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_disks_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_open_mutex_of_mddev(struct mutex *lock ) ;
void ldv_mutex_lock_open_mutex_of_mddev(struct mutex *lock ) ;
void ldv_mutex_unlock_open_mutex_of_mddev(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(struct mutex *lock ) ;
int ldv_mutex_trylock_reconfig_mutex_of_mddev(struct mutex *lock ) ;
int ldv_mutex_is_locked_reconfig_mutex_of_mddev(struct mutex *lock ) ;
void ldv_mutex_unlock_reconfig_mutex_of_mddev(struct mutex *lock ) ;
extern bool capable(int ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6454;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6454;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6454;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6454;
  default:
  __bad_percpu_size();
  }
  ldv_6454:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6014.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6014.rlock);
  return;
}
}
extern int _atomic_dec_and_lock(atomic_t * , spinlock_t * ) ;
__inline static unsigned int __read_seqcount_begin(seqcount_t const *s )
{
  unsigned int ret ;
  long tmp ;
  {
  repeat:
  ret = *((unsigned int const volatile *)(& s->sequence));
  tmp = ldv__builtin_expect((long )((int )ret) & 1L, 0L);
  if (tmp != 0L) {
    cpu_relax();
    goto repeat;
  } else {
  }
  return (ret);
}
}
__inline static unsigned int read_seqcount_begin(seqcount_t const *s )
{
  unsigned int ret ;
  unsigned int tmp ;
  {
  tmp = __read_seqcount_begin(s);
  ret = tmp;
  __asm__ volatile ("": : : "memory");
  return (ret);
}
}
__inline static int __read_seqcount_retry(seqcount_t const *s , unsigned int start )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )s->sequence != start, 0L);
  return ((int )tmp);
}
}
__inline static int read_seqcount_retry(seqcount_t const *s , unsigned int start )
{
  int tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = __read_seqcount_retry(s, start);
  return (tmp);
}
}
__inline static void write_seqcount_begin(seqcount_t *s )
{
  {
  s->sequence = s->sequence + 1U;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void write_seqcount_end(seqcount_t *s )
{
  {
  __asm__ volatile ("": : : "memory");
  s->sequence = s->sequence + 1U;
  return;
}
}
__inline static unsigned int read_seqbegin(seqlock_t const *sl )
{
  unsigned int tmp ;
  {
  tmp = read_seqcount_begin(& sl->seqcount);
  return (tmp);
}
}
__inline static unsigned int read_seqretry(seqlock_t const *sl , unsigned int start )
{
  int tmp ;
  {
  tmp = read_seqcount_retry(& sl->seqcount, start);
  return ((unsigned int )tmp);
}
}
__inline static void write_seqlock_irq(seqlock_t *sl )
{
  {
  spin_lock_irq(& sl->lock);
  write_seqcount_begin(& sl->seqcount);
  return;
}
}
__inline static void write_sequnlock_irq(seqlock_t *sl )
{
  {
  write_seqcount_end(& sl->seqcount);
  spin_unlock_irq(& sl->lock);
  return;
}
}
extern unsigned long get_seconds(void) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern int rcu_is_cpu_idle(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 1, 0, (unsigned long )((void *)0));
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_cpu_idle();
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = rcu_lockdep_current_cpu_online();
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tmp___3 = lock_is_held(& rcu_lock_map);
  return (tmp___3);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 771, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 792, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  return;
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(4096, wq, work);
  return (tmp);
}
}
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head, head->next);
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  entry->prev = 0xdead000000200200UL;
  return;
}
}
extern int proc_dointvec(struct ctl_table * , int , void * , size_t * , loff_t * ) ;
extern struct ctl_table_header *register_sysctl_table(struct ctl_table * ) ;
extern void unregister_sysctl_table(struct ctl_table_header * ) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
__inline static pid_t task_pid_nr(struct task_struct *tsk )
{
  {
  return (tsk->pid);
}
}
extern int wake_up_process(struct task_struct * ) ;
extern void flush_signals(struct task_struct * ) ;
extern int allow_signal(int ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern int _cond_resched(void) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
__inline static dev_t new_decode_dev(u32 dev )
{
  unsigned int major ;
  unsigned int minor ;
  {
  major = (dev & 1048320U) >> 8;
  minor = (dev & 255U) | ((dev >> 12) & 1048320U);
  return ((major << 20) | minor);
}
}
extern void kfree(void const * ) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_notify(struct kobject * , char const * , char const * ) ;
extern void sysfs_notify_dirent(struct sysfs_dirent * ) ;
extern struct sysfs_dirent *sysfs_get_dirent(struct sysfs_dirent * , void const * ,
                                             unsigned char const * ) ;
extern void sysfs_put(struct sysfs_dirent * ) ;
extern void kobject_init(struct kobject * , struct kobj_type * ) ;
extern int kobject_add(struct kobject * , struct kobject * , char const * , ...) ;
extern int kobject_init_and_add(struct kobject * , struct kobj_type * , struct kobject * ,
                                char const * , ...) ;
extern void kobject_del(struct kobject * ) ;
extern struct kobject *kobject_get(struct kobject * ) ;
extern void kobject_put(struct kobject * ) ;
extern int kobject_uevent(struct kobject * , enum kobject_action ) ;
extern int __VERIFIER_nondet_int(void);
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  assume_abort_if_not(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern char *d_path(struct path const * , char * , int ) ;
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern void invalidate_bdev(struct block_device * ) ;
extern int sync_blockdev(struct block_device * ) ;
extern struct block_device *blkdev_get_by_dev(dev_t , fmode_t , void * ) ;
extern void blkdev_put(struct block_device * , fmode_t ) ;
extern int bd_link_disk_holder(struct block_device * , struct gendisk * ) ;
extern void bd_unlink_disk_holder(struct block_device * , struct gendisk * ) ;
extern char const *__bdevname(dev_t , char * ) ;
extern char const *bdevname(struct block_device * , char * ) ;
extern int revalidate_disk(struct gendisk * ) ;
extern int check_disk_change(struct block_device * ) ;
extern void submit_bio(int , struct bio * ) ;
__inline static struct gendisk *part_to_disk(struct hd_struct *part )
{
  struct device const *__mptr ;
  struct device const *__mptr___0 ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )part != (unsigned long )((struct hd_struct *)0),
                         1L);
  if (tmp != 0L) {
    if (part->partno != 0) {
      __mptr = (struct device const *)part->__dev.parent;
      return ((struct gendisk *)__mptr + 0xffffffffffffff90UL);
    } else {
      __mptr___0 = (struct device const *)(& part->__dev);
      return ((struct gendisk *)__mptr___0 + 0xffffffffffffff90UL);
    }
  } else {
  }
  return (0);
}
}
extern void add_disk(struct gendisk * ) ;
extern void del_gendisk(struct gendisk * ) ;
extern void set_disk_ro(struct gendisk * , int ) ;
__inline static void set_capacity(struct gendisk *disk , sector_t size )
{
  {
  disk->part0.nr_sects = size;
  return;
}
}
extern struct gendisk *alloc_disk(int ) ;
extern void put_disk(struct gendisk * ) ;
extern void blk_register_region(dev_t , unsigned long , struct module * , struct kobject *(*)(dev_t ,
                                                                                                int * ,
                                                                                                void * ) ,
                                int (*)(dev_t , void * ) , void * ) ;
extern void blk_unregister_region(dev_t , unsigned long ) ;
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
extern struct bio_set *bioset_create(unsigned int , unsigned int ) ;
extern void bioset_free(struct bio_set * ) ;
extern struct bio *bio_alloc_bioset(gfp_t , int , struct bio_set * ) ;
extern void bio_put(struct bio * ) ;
extern struct bio *bio_clone_bioset(struct bio * , gfp_t , struct bio_set * ) ;
extern struct bio_set *fs_bio_set ;
__inline static struct bio *bio_alloc(gfp_t gfp_mask , unsigned int nr_iovecs )
{
  struct bio *tmp ;
  {
  tmp = bio_alloc_bioset(gfp_mask, (int )nr_iovecs, fs_bio_set);
  return (tmp);
}
}
__inline static struct bio *bio_clone(struct bio *bio , gfp_t gfp_mask )
{
  struct bio *tmp ;
  {
  tmp = bio_clone_bioset(bio, gfp_mask, fs_bio_set);
  return (tmp);
}
}
extern void bio_endio(struct bio * , int ) ;
extern void bio_advance(struct bio * , unsigned int ) ;
extern int bio_add_page(struct bio * , struct page * , unsigned int , unsigned int ) ;
extern int bioset_integrity_create(struct bio_set * , int ) ;
extern void blk_cleanup_queue(struct request_queue * ) ;
extern void blk_queue_make_request(struct request_queue * , make_request_fn * ) ;
extern void blk_set_stacking_limits(struct queue_limits * ) ;
extern void blk_queue_flush(struct request_queue * , unsigned int ) ;
extern struct request_queue *blk_alloc_queue(gfp_t ) ;
extern void blk_start_plug(struct blk_plug * ) ;
extern void blk_finish_plug(struct blk_plug * ) ;
__inline static unsigned short queue_logical_block_size(struct request_queue *q )
{
  int retval ;
  {
  retval = 512;
  if ((unsigned long )q != (unsigned long )((struct request_queue *)0) && (unsigned int )q->limits.logical_block_size != 0U) {
    retval = (int )q->limits.logical_block_size;
  } else {
  }
  return ((unsigned short )retval);
}
}
extern int blk_integrity_register(struct gendisk * , struct blk_integrity * ) ;
extern void blk_integrity_unregister(struct gendisk * ) ;
extern int blk_integrity_compare(struct gendisk * , struct gendisk * ) ;
__inline static struct blk_integrity *bdev_get_integrity(struct block_device *bdev )
{
  {
  return ((bdev->bd_disk)->integrity);
}
}
__inline static struct blk_integrity *blk_get_integrity(struct gendisk *disk )
{
  {
  return (disk->integrity);
}
}
extern int seq_open(struct file * , struct seq_operations const * ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int seq_release_private(struct inode * , struct file * ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if (((unsigned long )p != (unsigned long )((poll_table *)0) && (unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0)) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
    (*(p->_qproc))(filp, wait_address, p);
  } else {
  }
  return;
}
}
extern unsigned char const _ctype[] ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, 0);
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern void get_random_bytes(void * , int ) ;
extern int __request_module(bool , char const * , ...) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
extern void fput(struct file * ) ;
extern struct file *fget(unsigned int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static __u64 md_event(mdp_super_t *sb )
{
  __u64 ev ;
  {
  ev = (__u64 )sb->events_hi;
  return ((ev << 32) | (__u64 )sb->events_lo);
}
}
int mdp_major ;
int md_is_badblock(struct badblocks *bb , sector_t s , int sectors , sector_t *first_bad ,
                   int *bad_sectors ) ;
int rdev_set_badblocks(struct md_rdev *rdev , sector_t s , int sectors , int is_new ) ;
int rdev_clear_badblocks(struct md_rdev *rdev , sector_t s , int sectors , int is_new ) ;
void md_ack_all_badblocks(struct badblocks *bb ) ;
__inline static void rdev_dec_pending(struct md_rdev *rdev , struct mddev *mddev )
{
  int faulty ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  faulty = tmp;
  tmp___0 = atomic_dec_and_test(& rdev->nr_pending);
  if (tmp___0 != 0 && faulty != 0) {
    set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  } else {
  }
  return;
}
}
struct attribute_group md_bitmap_group ;
__inline static struct sysfs_dirent *sysfs_get_dirent_safe(struct sysfs_dirent *sd ,
                                                           char *name )
{
  struct sysfs_dirent *tmp ;
  {
  if ((unsigned long )sd != (unsigned long )((struct sysfs_dirent *)0)) {
    tmp = sysfs_get_dirent(sd, 0, (unsigned char const *)name);
    return (tmp);
  } else {
  }
  return (sd);
}
}
__inline static void sysfs_notify_dirent_safe(struct sysfs_dirent *sd )
{
  {
  if ((unsigned long )sd != (unsigned long )((struct sysfs_dirent *)0)) {
    sysfs_notify_dirent(sd);
  } else {
  }
  return;
}
}
__inline static char *mdname(struct mddev *mddev )
{
  {
  return ((unsigned long )mddev->gendisk != (unsigned long )((struct gendisk *)0) ? (char *)(& (mddev->gendisk)->disk_name) : (char *)"mdX");
}
}
__inline static int sysfs_link_rdev(struct mddev *mddev , struct md_rdev *rdev )
{
  char nm[20U] ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___0 == 0 && (unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    sprintf((char *)(& nm), "rd%d", rdev->raid_disk);
    tmp = sysfs_create_link(& mddev->kobj, & rdev->kobj, (char const *)(& nm));
    return (tmp);
  } else {
    return (0);
  }
}
}
__inline static void sysfs_unlink_rdev(struct mddev *mddev , struct md_rdev *rdev )
{
  char nm[20U] ;
  int tmp ;
  {
  tmp = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp == 0 && (unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    sprintf((char *)(& nm), "rd%d", rdev->raid_disk);
    sysfs_remove_link(& mddev->kobj, (char const *)(& nm));
  } else {
  }
  return;
}
}
int register_md_personality(struct md_personality *p ) ;
int unregister_md_personality(struct md_personality *p ) ;
struct md_thread *md_register_thread(void (*run)(struct md_thread * ) , struct mddev *mddev ,
                                     char const *name ) ;
void md_unregister_thread(struct md_thread **threadp ) ;
void md_wakeup_thread(struct md_thread *thread ) ;
void md_check_recovery(struct mddev *mddev ) ;
void md_reap_sync_thread(struct mddev *mddev ) ;
void md_write_start(struct mddev *mddev , struct bio *bi ) ;
void md_write_end(struct mddev *mddev ) ;
void md_done_sync(struct mddev *mddev , int blocks , int ok ) ;
void md_error(struct mddev *mddev , struct md_rdev *rdev ) ;
void md_finish_reshape(struct mddev *mddev ) ;
int mddev_congested(struct mddev *mddev , int bits ) ;
void md_flush_request(struct mddev *mddev , struct bio *bio ) ;
void md_super_write(struct mddev *mddev , struct md_rdev *rdev , sector_t sector ,
                    int size , struct page *page ) ;
void md_super_wait(struct mddev *mddev ) ;
int sync_page_io(struct md_rdev *rdev , sector_t sector , int size , struct page *page ,
                 int rw , bool metadata_op ) ;
void md_do_sync(struct md_thread *thread ) ;
void md_new_event(struct mddev *mddev ) ;
int md_allow_write(struct mddev *mddev ) ;
void md_wait_for_blocked_rdev(struct md_rdev *rdev , struct mddev *mddev ) ;
void md_set_array_sectors(struct mddev *mddev , sector_t array_sectors ) ;
int md_check_no_bitmap(struct mddev *mddev ) ;
int md_integrity_register(struct mddev *mddev ) ;
void md_integrity_add_rdev(struct md_rdev *rdev , struct mddev *mddev ) ;
int strict_strtoul_scaled(char const *cp , unsigned long *res , int scale ) ;
void restore_bitmap_write_access(struct file *file ) ;
void mddev_init(struct mddev *mddev ) ;
int md_run(struct mddev *mddev ) ;
void md_stop(struct mddev *mddev ) ;
void md_stop_writes(struct mddev *mddev ) ;
int md_rdev_init(struct md_rdev *rdev ) ;
void md_rdev_clear(struct md_rdev *rdev ) ;
void mddev_suspend(struct mddev *mddev ) ;
void mddev_resume(struct mddev *mddev ) ;
struct bio *bio_clone_mddev(struct bio *bio , gfp_t gfp_mask , struct mddev *mddev ) ;
struct bio *bio_alloc_mddev(gfp_t gfp_mask , int nr_iovecs , struct mddev *mddev ) ;
void md_trim_bio(struct bio *bio , int offset , int size ) ;
void md_unplug(struct blk_plug_cb *cb , bool from_schedule ) ;
int bitmap_create(struct mddev *mddev ) ;
int bitmap_load(struct mddev *mddev ) ;
void bitmap_flush(struct mddev *mddev ) ;
void bitmap_destroy(struct mddev *mddev ) ;
void bitmap_print_sb(struct bitmap *bitmap ) ;
void bitmap_update_sb(struct bitmap *bitmap ) ;
void bitmap_status(struct seq_file *seq , struct bitmap *bitmap ) ;
void bitmap_write_all(struct bitmap *bitmap ) ;
void bitmap_dirty_bits(struct bitmap *bitmap , unsigned long s , unsigned long e ) ;
void bitmap_unplug(struct bitmap *bitmap ) ;
void bitmap_daemon_work(struct mddev *mddev ) ;
static struct list_head pers_list = {& pers_list, & pers_list};
static spinlock_t pers_lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "pers_lock",
                                                               0, 0UL}}}};
static void md_print_devices(void) ;
static wait_queue_head_t resync_wait = {{{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "resync_wait.lock",
                                                                0, 0UL}}}}, {& resync_wait.task_list,
                                                                             & resync_wait.task_list}};
static struct workqueue_struct *md_wq ;
static struct workqueue_struct *md_misc_wq ;
static int remove_and_add_spares(struct mddev *mddev , struct md_rdev *this ) ;
static int sysctl_speed_limit_min = 1000;
static int sysctl_speed_limit_max = 200000;
__inline static int speed_min(struct mddev *mddev )
{
  {
  return (mddev->sync_speed_min != 0 ? mddev->sync_speed_min : sysctl_speed_limit_min);
}
}
__inline static int speed_max(struct mddev *mddev )
{
  {
  return (mddev->sync_speed_max != 0 ? mddev->sync_speed_max : sysctl_speed_limit_max);
}
}
static struct ctl_table_header *raid_table_header ;
static ctl_table raid_table[3U] = { {"speed_limit_min", (void *)(& sysctl_speed_limit_min), 4, 420U, 0, & proc_dointvec,
      0, 0, 0},
        {"speed_limit_max", (void *)(& sysctl_speed_limit_max), 4, 420U, 0, & proc_dointvec,
      0, 0, 0}};
static ctl_table raid_dir_table[2U] = { {"raid", 0, 0, 365U, (struct ctl_table *)(& raid_table), 0, 0, 0, 0}};
static ctl_table raid_root_table[2U] = { {"dev", 0, 0, 365U, (struct ctl_table *)(& raid_dir_table), 0, 0, 0, 0}};
static struct block_device_operations const md_fops ;
static int start_readonly ;
struct bio *bio_alloc_mddev(gfp_t gfp_mask , int nr_iovecs , struct mddev *mddev )
{
  struct bio *b ;
  struct bio *tmp ;
  {
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0) || (unsigned long )mddev->bio_set == (unsigned long )((struct bio_set *)0)) {
    tmp = bio_alloc(gfp_mask, (unsigned int )nr_iovecs);
    return (tmp);
  } else {
  }
  b = bio_alloc_bioset(gfp_mask, nr_iovecs, mddev->bio_set);
  if ((unsigned long )b == (unsigned long )((struct bio *)0)) {
    return (0);
  } else {
  }
  return (b);
}
}
struct bio *bio_clone_mddev(struct bio *bio , gfp_t gfp_mask , struct mddev *mddev )
{
  struct bio *tmp ;
  struct bio *tmp___0 ;
  {
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0) || (unsigned long )mddev->bio_set == (unsigned long )((struct bio_set *)0)) {
    tmp = bio_clone(bio, gfp_mask);
    return (tmp);
  } else {
  }
  tmp___0 = bio_clone_bioset(bio, gfp_mask, mddev->bio_set);
  return (tmp___0);
}
}
void md_trim_bio(struct bio *bio , int offset , int size )
{
  int i ;
  struct bio_vec *bvec ;
  int sofar ;
  {
  sofar = 0;
  size = size << 9;
  if (offset == 0 && (unsigned int )size == bio->bi_size) {
    return;
  } else {
  }
  clear_bit(3, (unsigned long volatile *)(& bio->bi_flags));
  bio_advance(bio, (unsigned int )(offset << 9));
  bio->bi_size = (unsigned int )size;
  if ((unsigned int )bio->bi_idx != 0U) {
    memmove((void *)bio->bi_io_vec, (void const *)bio->bi_io_vec + (unsigned long )bio->bi_idx,
            (unsigned long )((int )bio->bi_vcnt - (int )bio->bi_idx) * 16UL);
    bio->bi_vcnt = (int )bio->bi_vcnt - (int )bio->bi_idx;
    bio->bi_idx = 0U;
  } else {
  }
  i = (int )bio->bi_idx;
  goto ldv_31961;
  ldv_31960: ;
  if (bvec->bv_len + (unsigned int )sofar > (unsigned int )size) {
    bvec->bv_len = (unsigned int )(size - sofar);
  } else {
  }
  if (bvec->bv_len == 0U) {
    bio->bi_vcnt = (unsigned short )i;
    goto ldv_31959;
  } else {
  }
  sofar = (int )(bvec->bv_len + (unsigned int )sofar);
  i = i + 1;
  ldv_31961:
  bvec = bio->bi_io_vec + (unsigned long )i;
  if ((int )bio->bi_vcnt > i) {
    goto ldv_31960;
  } else {
  }
  ldv_31959: ;
  return;
}
}
static wait_queue_head_t md_event_waiters = {{{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "md_event_waiters.lock",
                                                                0, 0UL}}}}, {& md_event_waiters.task_list,
                                                                             & md_event_waiters.task_list}};
static atomic_t md_event_count ;
void md_new_event(struct mddev *mddev )
{
  {
  atomic_inc(& md_event_count);
  __wake_up(& md_event_waiters, 3U, 1, 0);
  return;
}
}
static void md_new_event_inintr(struct mddev *mddev )
{
  {
  atomic_inc(& md_event_count);
  __wake_up(& md_event_waiters, 3U, 1, 0);
  return;
}
}
static struct list_head all_mddevs = {& all_mddevs, & all_mddevs};
static spinlock_t all_mddevs_lock = {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "all_mddevs_lock",
                                                               0, 0UL}}}};
static void md_make_request(struct request_queue *q , struct bio *bio )
{
  int rw ;
  struct mddev *mddev ;
  int cpu ;
  unsigned int sectors ;
  long tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  struct thread_info *tmp___1 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___0 ;
  struct gendisk *tmp___2 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___1 ;
  void const *__vpp_verify___3 ;
  unsigned long __ptr___2 ;
  struct gendisk *tmp___3 ;
  struct thread_info *tmp___4 ;
  int tmp___5 ;
  {
  rw = (int const )bio->bi_rw & 1;
  mddev = (struct mddev *)q->queuedata;
  if (((unsigned long )mddev == (unsigned long )((struct mddev *)0) || (unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) || mddev->ready == 0) {
    bio_endio(bio, -5);
    return;
  } else {
  }
  if (mddev->ro == 1) {
    tmp = ldv__builtin_expect(rw == 1, 0L);
    if (tmp != 0L) {
      bio_endio(bio, bio->bi_size >> 9 == 0U ? 0 : -30);
      return;
    } else {
    }
  } else {
  }
  __asm__ volatile ("": : : "memory");
  rcu_read_lock();
  if (mddev->suspended != 0) {
    tmp___0 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___0;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_31998:
    prepare_to_wait(& mddev->sb_wait, & __wait, 2);
    if (mddev->suspended == 0) {
      goto ldv_31997;
    } else {
    }
    rcu_read_unlock();
    schedule();
    rcu_read_lock();
    goto ldv_31998;
    ldv_31997:
    finish_wait(& mddev->sb_wait, & __wait);
  } else {
  }
  atomic_inc(& mddev->active_io);
  rcu_read_unlock();
  sectors = bio->bi_size >> 9;
  (*((mddev->pers)->make_request))(mddev, bio);
  rcu_read_lock();
  tmp___1 = current_thread_info();
  tmp___1->preempt_count = tmp___1->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  __vpp_verify = 0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_32004;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_32004;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_32004;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_32004;
  default:
  __bad_percpu_size();
  }
  ldv_32004:
  pscr_ret__ = pfo_ret__;
  goto ldv_32010;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_32014;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_32014;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_32014;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_32014;
  default:
  __bad_percpu_size();
  }
  ldv_32014:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_32010;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_32023;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_32023;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_32023;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_32023;
  default:
  __bad_percpu_size();
  }
  ldv_32023:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_32010;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_32032;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_32032;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_32032;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_32032;
  default:
  __bad_percpu_size();
  }
  ldv_32032:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_32010;
  default:
  __bad_size_call_parameter();
  goto ldv_32010;
  }
  ldv_32010:
  cpu = pscr_ret__;
  __vpp_verify___0 = 0;
  __asm__ ("": "=r" (__ptr): "0" ((mddev->gendisk)->part0.dkstats));
  ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr))->ios[rw] = ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr))->ios[rw] + 1UL;
  if ((mddev->gendisk)->part0.partno != 0) {
    __vpp_verify___1 = 0;
    tmp___2 = part_to_disk(& (mddev->gendisk)->part0);
    __asm__ ("": "=r" (__ptr___0): "0" (tmp___2->part0.dkstats));
    ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___0))->ios[rw] = ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___0))->ios[rw] + 1UL;
  } else {
  }
  __vpp_verify___2 = 0;
  __asm__ ("": "=r" (__ptr___1): "0" ((mddev->gendisk)->part0.dkstats));
  ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___1))->sectors[rw] = ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___1))->sectors[rw] + (unsigned long )sectors;
  if ((mddev->gendisk)->part0.partno != 0) {
    __vpp_verify___3 = 0;
    tmp___3 = part_to_disk(& (mddev->gendisk)->part0);
    __asm__ ("": "=r" (__ptr___2): "0" (tmp___3->part0.dkstats));
    ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___2))->sectors[rw] = ((struct disk_stats *)(__per_cpu_offset[cpu] + __ptr___2))->sectors[rw] + (unsigned long )sectors;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  tmp___4 = current_thread_info();
  tmp___4->preempt_count = tmp___4->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  rcu_read_unlock();
  tmp___5 = atomic_dec_and_test(& mddev->active_io);
  if (tmp___5 != 0 && mddev->suspended != 0) {
    __wake_up(& mddev->sb_wait, 3U, 1, 0);
  } else {
  }
  return;
}
}
void mddev_suspend(struct mddev *mddev )
{
  long tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv__builtin_expect(mddev->suspended != 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (406), "i" (12UL));
    ldv_32061: ;
    goto ldv_32061;
  } else {
  }
  mddev->suspended = 1;
  synchronize_rcu();
  tmp___0 = atomic_read((atomic_t const *)(& mddev->active_io));
  if (tmp___0 == 0) {
    goto ldv_32062;
  } else {
  }
  tmp___1 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___1;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_32065:
  prepare_to_wait(& mddev->sb_wait, & __wait, 2);
  tmp___2 = atomic_read((atomic_t const *)(& mddev->active_io));
  if (tmp___2 == 0) {
    goto ldv_32064;
  } else {
  }
  schedule();
  goto ldv_32065;
  ldv_32064:
  finish_wait(& mddev->sb_wait, & __wait);
  ldv_32062:
  (*((mddev->pers)->quiesce))(mddev, 1);
  del_timer_sync(& mddev->safemode_timer);
  return;
}
}
void mddev_resume(struct mddev *mddev )
{
  {
  mddev->suspended = 0;
  __wake_up(& mddev->sb_wait, 3U, 1, 0);
  (*((mddev->pers)->quiesce))(mddev, 0);
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  md_wakeup_thread(mddev->sync_thread);
  return;
}
}
int mddev_congested(struct mddev *mddev , int bits )
{
  {
  return (mddev->suspended);
}
}
static void md_end_flush(struct bio *bio , int err )
{
  struct md_rdev *rdev ;
  struct mddev *mddev ;
  int tmp ;
  {
  rdev = (struct md_rdev *)bio->bi_private;
  mddev = rdev->mddev;
  rdev_dec_pending(rdev, mddev);
  tmp = atomic_dec_and_test(& mddev->flush_pending);
  if (tmp != 0) {
    queue_work(md_wq, & mddev->flush_work);
  } else {
  }
  bio_put(bio);
  return;
}
}
static void md_submit_flush_data(struct work_struct *ws ) ;
static void submit_flushes(struct work_struct *ws )
{
  struct mddev *mddev ;
  struct work_struct const *__mptr ;
  struct md_rdev *rdev ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct bio *bi ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct work_struct const *)ws;
  mddev = (struct mddev *)__mptr + 0xfffffffffffff998UL;
  __init_work(& mddev->flush_work, 0);
  __constr_expr_0.counter = 137438953408L;
  mddev->flush_work.data = __constr_expr_0;
  lockdep_init_map(& mddev->flush_work.lockdep_map, "(&mddev->flush_work)", & __key,
                   0);
  INIT_LIST_HEAD(& mddev->flush_work.entry);
  mddev->flush_work.func = & md_submit_flush_data;
  atomic_set(& mddev->flush_pending, 1);
  rcu_read_lock();
  __ptr = mddev->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr___0;
  goto ldv_32125;
  ldv_32124: ;
  if (rdev->raid_disk >= 0) {
    tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___0 == 0) {
      atomic_inc(& rdev->nr_pending);
      atomic_inc(& rdev->nr_pending);
      rcu_read_unlock();
      bi = bio_alloc_mddev(16U, 0, mddev);
      bi->bi_end_io = & md_end_flush;
      bi->bi_private = (void *)rdev;
      bi->bi_bdev = rdev->bdev;
      atomic_inc(& mddev->flush_pending);
      submit_bio(5137, bi);
      rcu_read_lock();
      rdev_dec_pending(rdev, mddev);
    } else {
    }
  } else {
  }
  __ptr___0 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___1 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___1;
  ldv_32125: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32124;
  } else {
  }
  rcu_read_unlock();
  tmp___2 = atomic_dec_and_test(& mddev->flush_pending);
  if (tmp___2 != 0) {
    queue_work(md_wq, & mddev->flush_work);
  } else {
  }
  return;
}
}
static void md_submit_flush_data(struct work_struct *ws )
{
  struct mddev *mddev ;
  struct work_struct const *__mptr ;
  struct bio *bio ;
  {
  __mptr = (struct work_struct const *)ws;
  mddev = (struct mddev *)__mptr + 0xfffffffffffff998UL;
  bio = mddev->flush_bio;
  if (bio->bi_size == 0U) {
    bio_endio(bio, 0);
  } else {
    bio->bi_rw = bio->bi_rw & 0xffffffffffffefffUL;
    (*((mddev->pers)->make_request))(mddev, bio);
  }
  mddev->flush_bio = 0;
  __wake_up(& mddev->sb_wait, 3U, 1, 0);
  return;
}
}
void md_flush_request(struct mddev *mddev , struct bio *bio )
{
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  spin_lock_irq(& mddev->write_lock);
  if ((unsigned long )mddev->flush_bio == (unsigned long )((struct bio *)0)) {
    goto ldv_32138;
  } else {
  }
  tmp = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_32141:
  prepare_to_wait(& mddev->sb_wait, & __wait, 2);
  if ((unsigned long )mddev->flush_bio == (unsigned long )((struct bio *)0)) {
    goto ldv_32140;
  } else {
  }
  spin_unlock_irq(& mddev->write_lock);
  schedule();
  spin_lock_irq(& mddev->write_lock);
  goto ldv_32141;
  ldv_32140:
  finish_wait(& mddev->sb_wait, & __wait);
  ldv_32138:
  mddev->flush_bio = bio;
  spin_unlock_irq(& mddev->write_lock);
  __init_work(& mddev->flush_work, 0);
  __constr_expr_0.counter = 137438953408L;
  mddev->flush_work.data = __constr_expr_0;
  lockdep_init_map(& mddev->flush_work.lockdep_map, "(&mddev->flush_work)", & __key,
                   0);
  INIT_LIST_HEAD(& mddev->flush_work.entry);
  mddev->flush_work.func = & submit_flushes;
  queue_work(md_wq, & mddev->flush_work);
  return;
}
}
void md_unplug(struct blk_plug_cb *cb , bool from_schedule )
{
  struct mddev *mddev ;
  {
  mddev = (struct mddev *)cb->data;
  md_wakeup_thread(mddev->thread);
  kfree((void const *)cb);
  return;
}
}
__inline static struct mddev *mddev_get(struct mddev *mddev )
{
  {
  atomic_inc(& mddev->active);
  return (mddev);
}
}
static void mddev_delayed_delete(struct work_struct *ws ) ;
static void mddev_put(struct mddev *mddev )
{
  struct bio_set *bs ;
  int tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  int tmp___0 ;
  {
  bs = 0;
  tmp = _atomic_dec_and_lock(& mddev->active, & all_mddevs_lock);
  if (tmp == 0) {
    return;
  } else {
  }
  if (mddev->raid_disks == 0) {
    tmp___0 = list_empty((struct list_head const *)(& mddev->disks));
    if (tmp___0 != 0) {
      if (mddev->ctime == 0L) {
        if (mddev->hold_active == 0) {
          list_del_init(& mddev->all_mddevs);
          bs = mddev->bio_set;
          mddev->bio_set = 0;
          if ((unsigned long )mddev->gendisk != (unsigned long )((struct gendisk *)0)) {
            __init_work(& mddev->del_work, 0);
            __constr_expr_0.counter = 137438953408L;
            mddev->del_work.data = __constr_expr_0;
            lockdep_init_map(& mddev->del_work.lockdep_map, "(&mddev->del_work)",
                             & __key, 0);
            INIT_LIST_HEAD(& mddev->del_work.entry);
            mddev->del_work.func = & mddev_delayed_delete;
            queue_work(md_misc_wq, & mddev->del_work);
          } else {
            kfree((void const *)mddev);
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )bs != (unsigned long )((struct bio_set *)0)) {
    bioset_free(bs);
  } else {
  }
  return;
}
}
void mddev_init(struct mddev *mddev )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  {
  __mutex_init(& mddev->open_mutex, "&mddev->open_mutex", & __key);
  __mutex_init(& mddev->reconfig_mutex, "&mddev->reconfig_mutex", & __key___0);
  __mutex_init(& mddev->bitmap_info.mutex, "&mddev->bitmap_info.mutex", & __key___1);
  INIT_LIST_HEAD(& mddev->disks);
  INIT_LIST_HEAD(& mddev->all_mddevs);
  init_timer_key(& mddev->safemode_timer, 0U, "(&mddev->safemode_timer)", & __key___2);
  atomic_set(& mddev->active, 1);
  atomic_set(& mddev->openers, 0);
  atomic_set(& mddev->active_io, 0);
  spinlock_check(& mddev->write_lock);
  __raw_spin_lock_init(& mddev->write_lock.ldv_6014.rlock, "&(&mddev->write_lock)->rlock",
                       & __key___3);
  atomic_set(& mddev->flush_pending, 0);
  __init_waitqueue_head(& mddev->sb_wait, "&mddev->sb_wait", & __key___4);
  __init_waitqueue_head(& mddev->recovery_wait, "&mddev->recovery_wait", & __key___5);
  mddev->reshape_position = 0xffffffffffffffffUL;
  mddev->reshape_backwards = 0;
  mddev->resync_min = 0UL;
  mddev->resync_max = 0xffffffffffffffffUL;
  mddev->level = -1000000;
  return;
}
}
static struct mddev *mddev_find(dev_t unit )
{
  struct mddev *mddev ;
  struct mddev *new ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int next_minor ;
  int start ;
  int is_free ;
  int dev ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  void *tmp ;
  {
  new = 0;
  if (unit != 0U && unit >> 20 != 9U) {
    unit = unit & 4294967232U;
  } else {
  }
  retry:
  spin_lock(& all_mddevs_lock);
  if (unit != 0U) {
    __mptr = (struct list_head const *)all_mddevs.next;
    mddev = (struct mddev *)__mptr + 0xfffffffffffff9c8UL;
    goto ldv_32201;
    ldv_32200: ;
    if (mddev->unit == unit) {
      mddev_get(mddev);
      spin_unlock(& all_mddevs_lock);
      kfree((void const *)new);
      return (mddev);
    } else {
    }
    __mptr___0 = (struct list_head const *)mddev->all_mddevs.next;
    mddev = (struct mddev *)__mptr___0 + 0xfffffffffffff9c8UL;
    ldv_32201: ;
    if ((unsigned long )(& mddev->all_mddevs) != (unsigned long )(& all_mddevs)) {
      goto ldv_32200;
    } else {
    }
    if ((unsigned long )new != (unsigned long )((struct mddev *)0)) {
      list_add(& new->all_mddevs, & all_mddevs);
      spin_unlock(& all_mddevs_lock);
      new->hold_active = 1;
      return (new);
    } else {
    }
  } else
  if ((unsigned long )new != (unsigned long )((struct mddev *)0)) {
    next_minor = 512;
    start = next_minor;
    is_free = 0;
    dev = 0;
    goto ldv_32215;
    ldv_32214:
    dev = next_minor | 9437184;
    next_minor = next_minor + 1;
    if ((unsigned int )next_minor > 1048575U) {
      next_minor = 0;
    } else {
    }
    if (next_minor == start) {
      spin_unlock(& all_mddevs_lock);
      kfree((void const *)new);
      return (0);
    } else {
    }
    is_free = 1;
    __mptr___1 = (struct list_head const *)all_mddevs.next;
    mddev = (struct mddev *)__mptr___1 + 0xfffffffffffff9c8UL;
    goto ldv_32213;
    ldv_32212: ;
    if (mddev->unit == (dev_t )dev) {
      is_free = 0;
      goto ldv_32211;
    } else {
    }
    __mptr___2 = (struct list_head const *)mddev->all_mddevs.next;
    mddev = (struct mddev *)__mptr___2 + 0xfffffffffffff9c8UL;
    ldv_32213: ;
    if ((unsigned long )(& mddev->all_mddevs) != (unsigned long )(& all_mddevs)) {
      goto ldv_32212;
    } else {
    }
    ldv_32211: ;
    ldv_32215: ;
    if (is_free == 0) {
      goto ldv_32214;
    } else {
    }
    new->unit = (dev_t )dev;
    new->md_minor = dev & 1048575;
    new->hold_active = 2;
    list_add(& new->all_mddevs, & all_mddevs);
    spin_unlock(& all_mddevs_lock);
    return (new);
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  tmp = kzalloc(1808UL, 208U);
  new = (struct mddev *)tmp;
  if ((unsigned long )new == (unsigned long )((struct mddev *)0)) {
    return (0);
  } else {
  }
  new->unit = unit;
  if (unit >> 20 == 9U) {
    new->md_minor = (int )unit & 1048575;
  } else {
    new->md_minor = (int )((unit & 1048575U) >> 6);
  }
  mddev_init(new);
  goto retry;
}
}
__inline static int mddev_lock(struct mddev *mddev )
{
  int tmp ;
  {
  tmp = ldv_mutex_lock_interruptible_6(& mddev->reconfig_mutex);
  return (tmp);
}
}
__inline static int mddev_is_locked(struct mddev *mddev )
{
  int tmp ;
  {
  tmp = ldv_mutex_is_locked_7(& mddev->reconfig_mutex);
  return (tmp);
}
}
__inline static int mddev_trylock(struct mddev *mddev )
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_8(& mddev->reconfig_mutex);
  return (tmp);
}
}
static struct attribute_group md_redundancy_group ;
static void mddev_unlock(struct mddev *mddev )
{
  struct attribute_group *to_remove ;
  {
  if ((unsigned long )mddev->to_remove != (unsigned long )((struct attribute_group *)0)) {
    to_remove = mddev->to_remove;
    mddev->to_remove = 0;
    mddev->sysfs_active = 1;
    ldv_mutex_unlock_9(& mddev->reconfig_mutex);
    if ((unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
      if ((unsigned long )to_remove != (unsigned long )(& md_redundancy_group)) {
        sysfs_remove_group(& mddev->kobj, (struct attribute_group const *)to_remove);
      } else {
      }
      if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                                                                                       sector_t ,
                                                                                                                                                                       int * ,
                                                                                                                                                                       int ))0)) {
        sysfs_remove_group(& mddev->kobj, (struct attribute_group const *)(& md_redundancy_group));
        if ((unsigned long )mddev->sysfs_action != (unsigned long )((struct sysfs_dirent *)0)) {
          sysfs_put(mddev->sysfs_action);
        } else {
        }
        mddev->sysfs_action = 0;
      } else {
      }
    } else {
    }
    mddev->sysfs_active = 0;
  } else {
    ldv_mutex_unlock_10(& mddev->reconfig_mutex);
  }
  spin_lock(& pers_lock);
  md_wakeup_thread(mddev->thread);
  spin_unlock(& pers_lock);
  return;
}
}
static struct md_rdev *find_rdev_nr(struct mddev *mddev , int nr )
{
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32241;
  ldv_32240: ;
  if (rdev->desc_nr == nr) {
    return (rdev);
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32241: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32240;
  } else {
  }
  return (0);
}
}
static struct md_rdev *find_rdev_nr_rcu(struct mddev *mddev , int nr )
{
  struct md_rdev *rdev ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  __ptr = mddev->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32263;
  ldv_32262: ;
  if (rdev->desc_nr == nr) {
    return (rdev);
  } else {
  }
  __ptr___0 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32263: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32262;
  } else {
  }
  return (0);
}
}
static struct md_rdev *find_rdev(struct mddev *mddev , dev_t dev )
{
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32275;
  ldv_32274: ;
  if ((rdev->bdev)->bd_dev == dev) {
    return (rdev);
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32275: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32274;
  } else {
  }
  return (0);
}
}
static struct md_rdev *find_rdev_rcu(struct mddev *mddev , dev_t dev )
{
  struct md_rdev *rdev ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  __ptr = mddev->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32297;
  ldv_32296: ;
  if ((rdev->bdev)->bd_dev == dev) {
    return (rdev);
  } else {
  }
  __ptr___0 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32297: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32296;
  } else {
  }
  return (0);
}
}
static struct md_personality *find_pers(int level , char *clevel )
{
  struct md_personality *pers ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)pers_list.next;
  pers = (struct md_personality *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_32309;
  ldv_32308: ;
  if (level != -1000000 && pers->level == level) {
    return (pers);
  } else {
  }
  tmp = strcmp((char const *)pers->name, (char const *)clevel);
  if (tmp == 0) {
    return (pers);
  } else {
  }
  __mptr___0 = (struct list_head const *)pers->list.next;
  pers = (struct md_personality *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_32309: ;
  if ((unsigned long )(& pers->list) != (unsigned long )(& pers_list)) {
    goto ldv_32308;
  } else {
  }
  return (0);
}
}
__inline static sector_t calc_dev_sboffset(struct md_rdev *rdev )
{
  sector_t num_sectors ;
  loff_t tmp ;
  {
  tmp = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
  num_sectors = (sector_t )(tmp / 512LL);
  return ((num_sectors & 0xffffffffffffff80UL) - 128UL);
}
}
static int alloc_disk_sb(struct md_rdev *rdev )
{
  {
  if ((unsigned long )rdev->sb_page != (unsigned long )((struct page *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           786);
    md_print_devices();
  } else {
  }
  rdev->sb_page = alloc_pages(208U, 0U);
  if ((unsigned long )rdev->sb_page == (unsigned long )((struct page *)0)) {
    printk("\tmd: out of memory.\n");
    return (-12);
  } else {
  }
  return (0);
}
}
void md_rdev_clear(struct md_rdev *rdev )
{
  {
  if ((unsigned long )rdev->sb_page != (unsigned long )((struct page *)0)) {
    put_page(rdev->sb_page);
    rdev->sb_loaded = 0;
    rdev->sb_page = 0;
    rdev->sb_start = 0UL;
    rdev->sectors = 0UL;
  } else {
  }
  if ((unsigned long )rdev->bb_page != (unsigned long )((struct page *)0)) {
    put_page(rdev->bb_page);
    rdev->bb_page = 0;
  } else {
  }
  kfree((void const *)rdev->badblocks.page);
  rdev->badblocks.page = 0;
  return;
}
}
static void super_written(struct bio *bio , int error )
{
  struct md_rdev *rdev ;
  struct mddev *mddev ;
  int tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  rdev = (struct md_rdev *)bio->bi_private;
  mddev = rdev->mddev;
  if (error != 0) {
    goto _L;
  } else {
    tmp___2 = constant_test_bit(0U, (unsigned long const volatile *)(& bio->bi_flags));
    if (tmp___2 == 0) {
      _L:
      tmp = constant_test_bit(0U, (unsigned long const volatile *)(& bio->bi_flags));
      printk("md: super_written gets error=%d, uptodate=%d\n", error, tmp);
      tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& bio->bi_flags));
      __ret_warn_on = tmp___0 != 0;
      tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___1 != 0L) {
        warn_slowpath_null("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
                           823);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
      md_error(mddev, rdev);
    } else {
    }
  }
  tmp___3 = atomic_dec_and_test(& mddev->pending_writes);
  if (tmp___3 != 0) {
    __wake_up(& mddev->sb_wait, 3U, 1, 0);
  } else {
  }
  bio_put(bio);
  return;
}
}
void md_super_write(struct mddev *mddev , struct md_rdev *rdev , sector_t sector ,
                    int size , struct page *page )
{
  struct bio *bio ;
  struct bio *tmp ;
  {
  tmp = bio_alloc_mddev(16U, 1, mddev);
  bio = tmp;
  bio->bi_bdev = (unsigned long )rdev->meta_bdev != (unsigned long )((struct block_device *)0) ? rdev->meta_bdev : rdev->bdev;
  bio->bi_sector = sector;
  bio_add_page(bio, page, (unsigned int )size, 0U);
  bio->bi_private = (void *)rdev;
  bio->bi_end_io = & super_written;
  atomic_inc(& mddev->pending_writes);
  submit_bio(7185, bio);
  return;
}
}
void md_super_wait(struct mddev *mddev )
{
  wait_queue_t wq ;
  struct task_struct *tmp ;
  int tmp___0 ;
  {
  tmp = get_current();
  wq.flags = 0U;
  wq.private = (void *)tmp;
  wq.func = & autoremove_wake_function;
  wq.task_list.next = & wq.task_list;
  wq.task_list.prev = & wq.task_list;
  ldv_32348:
  prepare_to_wait(& mddev->sb_wait, & wq, 2);
  tmp___0 = atomic_read((atomic_t const *)(& mddev->pending_writes));
  if (tmp___0 == 0) {
    goto ldv_32347;
  } else {
  }
  schedule();
  goto ldv_32348;
  ldv_32347:
  finish_wait(& mddev->sb_wait, & wq);
  return;
}
}
static void bi_complete(struct bio *bio , int error )
{
  {
  complete((struct completion *)bio->bi_private);
  return;
}
}
int sync_page_io(struct md_rdev *rdev , sector_t sector , int size , struct page *page ,
                 int rw , bool metadata_op )
{
  struct bio *bio ;
  struct bio *tmp ;
  struct completion event ;
  int ret ;
  {
  tmp = bio_alloc_mddev(16U, 1, rdev->mddev);
  bio = tmp;
  rw = rw | 16;
  bio->bi_bdev = (int )metadata_op && (unsigned long )rdev->meta_bdev != (unsigned long )((struct block_device *)0) ? rdev->meta_bdev : rdev->bdev;
  if ((int )metadata_op) {
    bio->bi_sector = rdev->sb_start + sector;
  } else
  if ((rdev->mddev)->reshape_position != 0xffffffffffffffffUL && (rdev->mddev)->reshape_backwards == ((rdev->mddev)->reshape_position <= sector)) {
    bio->bi_sector = rdev->new_data_offset + sector;
  } else {
    bio->bi_sector = rdev->data_offset + sector;
  }
  bio_add_page(bio, page, (unsigned int )size, 0U);
  init_completion(& event);
  bio->bi_private = (void *)(& event);
  bio->bi_end_io = & bi_complete;
  submit_bio(rw, bio);
  wait_for_completion(& event);
  ret = constant_test_bit(0U, (unsigned long const volatile *)(& bio->bi_flags));
  bio_put(bio);
  return (ret);
}
}
static int read_disk_sb(struct md_rdev *rdev , int size )
{
  char b[32U] ;
  int tmp ;
  char const *tmp___0 ;
  {
  if ((unsigned long )rdev->sb_page == (unsigned long )((struct page *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           907);
    md_print_devices();
    return (-22);
  } else {
  }
  if (rdev->sb_loaded != 0) {
    return (0);
  } else {
  }
  tmp = sync_page_io(rdev, 0UL, size, rdev->sb_page, 0, 1);
  if (tmp == 0) {
    goto fail;
  } else {
  }
  rdev->sb_loaded = 1;
  return (0);
  fail:
  tmp___0 = bdevname(rdev->bdev, (char *)(& b));
  printk("\fmd: disabled device %s, could not read superblock.\n", tmp___0);
  return (-22);
}
}
static int uuid_equal(mdp_super_t *sb1 , mdp_super_t *sb2 )
{
  {
  return (((sb1->set_uuid0 == sb2->set_uuid0 && sb1->set_uuid1 == sb2->set_uuid1) && sb1->set_uuid2 == sb2->set_uuid2) && sb1->set_uuid3 == sb2->set_uuid3);
}
}
static int sb_equal(mdp_super_t *sb1 , mdp_super_t *sb2 )
{
  int ret ;
  mdp_super_t *tmp1 ;
  mdp_super_t *tmp2 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = kmalloc(4096UL, 208U);
  tmp1 = (mdp_super_t *)tmp;
  tmp___0 = kmalloc(4096UL, 208U);
  tmp2 = (mdp_super_t *)tmp___0;
  if ((unsigned long )tmp1 == (unsigned long )((mdp_super_t *)0) || (unsigned long )tmp2 == (unsigned long )((mdp_super_t *)0)) {
    ret = 0;
    printk("\016md.c sb_equal(): failed to allocate memory!\n");
    goto abort;
  } else {
  }
  *tmp1 = *sb1;
  *tmp2 = *sb2;
  tmp1->nr_disks = 0U;
  tmp2->nr_disks = 0U;
  tmp___1 = memcmp((void const *)tmp1, (void const *)tmp2, 128UL);
  ret = tmp___1 == 0;
  abort:
  kfree((void const *)tmp1);
  kfree((void const *)tmp2);
  return (ret);
}
}
static u32 md_csum_fold(u32 csum )
{
  {
  csum = (csum & 65535U) + (csum >> 16);
  return ((csum & 65535U) + (csum >> 16));
}
}
static unsigned int calc_sb_csum(mdp_super_t *sb )
{
  u64 newcsum ;
  u32 *sb32 ;
  int i ;
  unsigned int disk_csum ;
  unsigned int csum ;
  {
  newcsum = 0ULL;
  sb32 = (u32 *)sb;
  disk_csum = sb->sb_csum;
  sb->sb_csum = 0U;
  i = 0;
  goto ldv_32405;
  ldv_32404:
  newcsum = (u64 )*(sb32 + (unsigned long )i) + newcsum;
  i = i + 1;
  ldv_32405: ;
  if (i <= 1023) {
    goto ldv_32404;
  } else {
  }
  csum = (unsigned int )newcsum + (unsigned int )(newcsum >> 32);
  sb->sb_csum = disk_csum;
  return (csum);
}
}
int md_check_no_bitmap(struct mddev *mddev )
{
  char *tmp ;
  {
  if ((unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0) && mddev->bitmap_info.offset == 0LL) {
    return (0);
  } else {
  }
  tmp = mdname(mddev);
  printk("\v%s: bitmaps are not supported for %s\n", tmp, (mddev->pers)->name);
  return (1);
}
}
static int super_90_load(struct md_rdev *rdev , struct md_rdev *refdev , int minor_version )
{
  char b[32U] ;
  char b2[32U] ;
  mdp_super_t *sb ;
  int ret ;
  void *tmp ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  __u64 ev1 ;
  __u64 ev2 ;
  mdp_super_t *refsb ;
  void *tmp___3 ;
  char const *tmp___4 ;
  int tmp___5 ;
  char const *tmp___6 ;
  int tmp___7 ;
  {
  rdev->sb_start = calc_dev_sboffset(rdev);
  ret = read_disk_sb(rdev, 4096);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = -22;
  bdevname(rdev->bdev, (char *)(& b));
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (mdp_super_t *)tmp;
  if (sb->md_magic != 2838187772U) {
    printk("\vmd: invalid raid superblock magic on %s\n", (char *)(& b));
    goto abort;
  } else {
  }
  if ((sb->major_version != 0U || sb->minor_version <= 89U) || sb->minor_version > 91U) {
    printk("\fBad version number %d.%d on %s\n", sb->major_version, sb->minor_version,
           (char *)(& b));
    goto abort;
  } else {
  }
  if (sb->raid_disks == 0U) {
    goto abort;
  } else {
  }
  tmp___0 = calc_sb_csum(sb);
  tmp___1 = md_csum_fold(tmp___0);
  tmp___2 = md_csum_fold(sb->sb_csum);
  if (tmp___1 != tmp___2) {
    printk("\fmd: invalid superblock checksum on %s\n", (char *)(& b));
    goto abort;
  } else {
  }
  rdev->preferred_minor = (int )sb->md_minor;
  rdev->data_offset = 0UL;
  rdev->new_data_offset = 0UL;
  rdev->sb_size = 4096;
  rdev->badblocks.shift = -1;
  if (sb->level == 4294967292U) {
    rdev->desc_nr = -1;
  } else {
    rdev->desc_nr = (int )sb->this_disk.number;
  }
  if ((unsigned long )refdev == (unsigned long )((struct md_rdev *)0)) {
    ret = 1;
  } else {
    tmp___3 = lowmem_page_address((struct page const *)refdev->sb_page);
    refsb = (mdp_super_t *)tmp___3;
    tmp___5 = uuid_equal(refsb, sb);
    if (tmp___5 == 0) {
      tmp___4 = bdevname(refdev->bdev, (char *)(& b2));
      printk("\fmd: %s has different UUID to %s\n", (char *)(& b), tmp___4);
      goto abort;
    } else {
    }
    tmp___7 = sb_equal(refsb, sb);
    if (tmp___7 == 0) {
      tmp___6 = bdevname(refdev->bdev, (char *)(& b2));
      printk("\fmd: %s has same UUID but different superblock to %s\n", (char *)(& b),
             tmp___6);
      goto abort;
    } else {
    }
    ev1 = md_event(sb);
    ev2 = md_event(refsb);
    if (ev1 > ev2) {
      ret = 1;
    } else {
      ret = 0;
    }
  }
  rdev->sectors = rdev->sb_start;
  if ((unsigned long long )rdev->sectors > 8589934591ULL && sb->level != 0U) {
    rdev->sectors = 8589934590UL;
  } else {
  }
  if (rdev->sectors < (unsigned long )sb->size * 2UL && sb->level != 0U) {
    ret = -22;
  } else {
  }
  abort: ;
  return (ret);
}
}
static int super_90_validate(struct mddev *mddev , struct md_rdev *rdev )
{
  mdp_disk_t *desc ;
  mdp_super_t *sb ;
  void *tmp ;
  __u64 ev1 ;
  __u64 tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  {
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (mdp_super_t *)tmp;
  tmp___0 = md_event(sb);
  ev1 = tmp___0;
  rdev->raid_disk = -1;
  clear_bit(0, (unsigned long volatile *)(& rdev->flags));
  clear_bit(1, (unsigned long volatile *)(& rdev->flags));
  clear_bit(3, (unsigned long volatile *)(& rdev->flags));
  if (mddev->raid_disks == 0) {
    mddev->major_version = 0;
    mddev->minor_version = (int )sb->minor_version;
    mddev->patch_version = (int )sb->patch_version;
    mddev->external = 0;
    mddev->chunk_sectors = (int )(sb->chunk_size >> 9);
    mddev->ctime = (time_t )sb->ctime;
    mddev->utime = (time_t )sb->utime;
    mddev->level = (int )sb->level;
    mddev->clevel[0] = 0;
    mddev->layout = (int )sb->layout;
    mddev->raid_disks = (int )sb->raid_disks;
    mddev->dev_sectors = (unsigned long )sb->size * 2UL;
    mddev->events = ev1;
    mddev->bitmap_info.offset = 0LL;
    mddev->bitmap_info.space = 0UL;
    mddev->bitmap_info.default_offset = 8LL;
    mddev->bitmap_info.default_space = 120UL;
    mddev->reshape_backwards = 0;
    if (mddev->minor_version > 90) {
      mddev->reshape_position = (sector_t )sb->reshape_position;
      mddev->delta_disks = (int )sb->delta_disks;
      mddev->new_level = (int )sb->new_level;
      mddev->new_layout = (int )sb->new_layout;
      mddev->new_chunk_sectors = (int )(sb->new_chunk >> 9);
      if (mddev->delta_disks < 0) {
        mddev->reshape_backwards = 1;
      } else {
      }
    } else {
      mddev->reshape_position = 0xffffffffffffffffUL;
      mddev->delta_disks = 0;
      mddev->new_level = mddev->level;
      mddev->new_layout = mddev->layout;
      mddev->new_chunk_sectors = mddev->chunk_sectors;
    }
    if ((int )sb->state & 1) {
      mddev->recovery_cp = 0xffffffffffffffffUL;
    } else
    if (sb->events_hi == sb->cp_events_hi && sb->events_lo == sb->cp_events_lo) {
      mddev->recovery_cp = (sector_t )sb->recovery_cp;
    } else {
      mddev->recovery_cp = 0UL;
    }
    __len = 4UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& mddev->uuid), (void const *)(& sb->set_uuid0),
                       __len);
    } else {
      __ret = memcpy((void *)(& mddev->uuid), (void const *)(& sb->set_uuid0),
                               __len);
    }
    __len___0 = 4UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& mddev->uuid) + 4U, (void const *)(& sb->set_uuid1),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& mddev->uuid) + 4U, (void const *)(& sb->set_uuid1),
                                   __len___0);
    }
    __len___1 = 4UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy((void *)(& mddev->uuid) + 8U, (void const *)(& sb->set_uuid2),
                           __len___1);
    } else {
      __ret___1 = memcpy((void *)(& mddev->uuid) + 8U, (void const *)(& sb->set_uuid2),
                                   __len___1);
    }
    __len___2 = 4UL;
    if (__len___2 > 63UL) {
      __ret___2 = memcpy((void *)(& mddev->uuid) + 12U, (void const *)(& sb->set_uuid3),
                           __len___2);
    } else {
      __ret___2 = memcpy((void *)(& mddev->uuid) + 12U, (void const *)(& sb->set_uuid3),
                                   __len___2);
    }
    mddev->max_disks = 27;
    if ((sb->state & 256U) != 0U && (unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0)) {
      mddev->bitmap_info.offset = mddev->bitmap_info.default_offset;
      mddev->bitmap_info.space = mddev->bitmap_info.space;
    } else {
    }
  } else
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    ev1 = ev1 + 1ULL;
    if ((sb->disks[rdev->desc_nr].state & 6U) != 0U) {
      if (mddev->events > ev1) {
        return (-22);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    if ((mddev->bitmap)->events_cleared > ev1) {
      return (0);
    } else {
    }
  } else
  if (mddev->events > ev1) {
    return (0);
  } else {
  }
  if (mddev->level != -4) {
    desc = (mdp_disk_t *)(& sb->disks) + (unsigned long )rdev->desc_nr;
    if ((int )desc->state & 1) {
      set_bit(0U, (unsigned long volatile *)(& rdev->flags));
    } else
    if ((desc->state & 4U) != 0U) {
      set_bit(1U, (unsigned long volatile *)(& rdev->flags));
      rdev->raid_disk = (int )desc->raid_disk;
    } else
    if ((desc->state & 2U) != 0U) {
      if (mddev->minor_version > 90) {
        rdev->recovery_offset = 0UL;
        rdev->raid_disk = (int )desc->raid_disk;
      } else {
      }
    } else {
    }
    if ((desc->state & 512U) != 0U) {
      set_bit(3U, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
  } else {
    set_bit(1U, (unsigned long volatile *)(& rdev->flags));
  }
  return (0);
}
}
static void super_90_sync(struct mddev *mddev , struct md_rdev *rdev )
{
  mdp_super_t *sb ;
  struct md_rdev *rdev2 ;
  int next_spare ;
  int i ;
  int active ;
  int working ;
  int failed ;
  int spare ;
  int nr_disks ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  struct list_head const *__mptr ;
  mdp_disk_t *d ;
  int desc_nr ;
  int is_active ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr___0 ;
  mdp_disk_t *d___0 ;
  {
  next_spare = mddev->raid_disks;
  active = 0;
  working = 0;
  failed = 0;
  spare = 0;
  nr_disks = 0;
  rdev->sb_size = 4096;
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (mdp_super_t *)tmp;
  memset((void *)sb, 0, 4096UL);
  sb->md_magic = 2838187772U;
  sb->major_version = (__u32 )mddev->major_version;
  sb->patch_version = (__u32 )mddev->patch_version;
  sb->gvalid_words = 0U;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sb->set_uuid0), (void const *)(& mddev->uuid), __len);
  } else {
    __ret = memcpy((void *)(& sb->set_uuid0), (void const *)(& mddev->uuid),
                             __len);
  }
  __len___0 = 4UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& sb->set_uuid1), (void const *)(& mddev->uuid) + 4U,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& sb->set_uuid1), (void const *)(& mddev->uuid) + 4U,
                                 __len___0);
  }
  __len___1 = 4UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(& sb->set_uuid2), (void const *)(& mddev->uuid) + 8U,
                         __len___1);
  } else {
    __ret___1 = memcpy((void *)(& sb->set_uuid2), (void const *)(& mddev->uuid) + 8U,
                                 __len___1);
  }
  __len___2 = 4UL;
  if (__len___2 > 63UL) {
    __ret___2 = memcpy((void *)(& sb->set_uuid3), (void const *)(& mddev->uuid) + 12U,
                         __len___2);
  } else {
    __ret___2 = memcpy((void *)(& sb->set_uuid3), (void const *)(& mddev->uuid) + 12U,
                                 __len___2);
  }
  sb->ctime = (__u32 )mddev->ctime;
  sb->level = (__u32 )mddev->level;
  sb->size = (__u32 )(mddev->dev_sectors / 2UL);
  sb->raid_disks = (__u32 )mddev->raid_disks;
  sb->md_minor = (__u32 )mddev->md_minor;
  sb->not_persistent = 0U;
  sb->utime = (__u32 )mddev->utime;
  sb->state = 0U;
  sb->events_hi = (__u32 )(mddev->events >> 32);
  sb->events_lo = (unsigned int )mddev->events;
  if (mddev->reshape_position == 0xffffffffffffffffUL) {
    sb->minor_version = 90U;
  } else {
    sb->minor_version = 91U;
    sb->reshape_position = (__u64 )mddev->reshape_position;
    sb->new_level = (__u32 )mddev->new_level;
    sb->delta_disks = (__u32 )mddev->delta_disks;
    sb->new_layout = (__u32 )mddev->new_layout;
    sb->new_chunk = (__u32 )(mddev->new_chunk_sectors << 9);
  }
  mddev->minor_version = (int )sb->minor_version;
  if (mddev->in_sync != 0) {
    sb->recovery_cp = (__u32 )mddev->recovery_cp;
    sb->cp_events_hi = (__u32 )(mddev->events >> 32);
    sb->cp_events_lo = (unsigned int )mddev->events;
    if (mddev->recovery_cp == 0xffffffffffffffffUL) {
      sb->state = 1U;
    } else {
    }
  } else {
    sb->recovery_cp = 0U;
  }
  sb->layout = (__u32 )mddev->layout;
  sb->chunk_size = (__u32 )(mddev->chunk_sectors << 9);
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) && (unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0)) {
    sb->state = sb->state | 256U;
  } else {
  }
  sb->disks[0].state = 8U;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev2 = (struct md_rdev *)__mptr;
  goto ldv_32500;
  ldv_32499:
  tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev2->flags));
  is_active = tmp___0;
  if (rdev2->raid_disk >= 0 && sb->minor_version > 90U) {
    is_active = 1;
  } else {
  }
  if (rdev2->raid_disk < 0) {
    is_active = 0;
  } else {
    tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev2->flags));
    if (tmp___1 != 0) {
      is_active = 0;
    } else {
    }
  }
  if (is_active != 0) {
    desc_nr = rdev2->raid_disk;
  } else {
    tmp___2 = next_spare;
    next_spare = next_spare + 1;
    desc_nr = tmp___2;
  }
  rdev2->desc_nr = desc_nr;
  d = (mdp_disk_t *)(& sb->disks) + (unsigned long )rdev2->desc_nr;
  nr_disks = nr_disks + 1;
  d->number = (__u32 )rdev2->desc_nr;
  d->major = (rdev2->bdev)->bd_dev >> 20;
  d->minor = (rdev2->bdev)->bd_dev & 1048575U;
  if (is_active != 0) {
    d->raid_disk = (__u32 )rdev2->raid_disk;
  } else {
    d->raid_disk = (__u32 )rdev2->desc_nr;
  }
  tmp___4 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev2->flags));
  if (tmp___4 != 0) {
    d->state = 1U;
  } else
  if (is_active != 0) {
    d->state = 2U;
    tmp___3 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev2->flags));
    if (tmp___3 != 0) {
      d->state = d->state | 4U;
    } else {
    }
    active = active + 1;
    working = working + 1;
  } else {
    d->state = 0U;
    spare = spare + 1;
    working = working + 1;
  }
  tmp___5 = constant_test_bit(3U, (unsigned long const volatile *)(& rdev2->flags));
  if (tmp___5 != 0) {
    d->state = d->state | 512U;
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev2->same_set.next;
  rdev2 = (struct md_rdev *)__mptr___0;
  ldv_32500: ;
  if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32499;
  } else {
  }
  i = 0;
  goto ldv_32504;
  ldv_32503:
  d___0 = (mdp_disk_t *)(& sb->disks) + (unsigned long )i;
  if (d___0->state == 0U && d___0->number == 0U) {
    d___0->number = (__u32 )i;
    d___0->raid_disk = (__u32 )i;
    d___0->state = 8U;
    d___0->state = d___0->state | 1U;
    failed = failed + 1;
  } else {
  }
  i = i + 1;
  ldv_32504: ;
  if (mddev->raid_disks > i) {
    goto ldv_32503;
  } else {
  }
  sb->nr_disks = (__u32 )nr_disks;
  sb->active_disks = (__u32 )active;
  sb->working_disks = (__u32 )working;
  sb->failed_disks = (__u32 )failed;
  sb->spare_disks = (__u32 )spare;
  sb->this_disk = sb->disks[rdev->desc_nr];
  sb->sb_csum = calc_sb_csum(sb);
  return;
}
}
static unsigned long long super_90_rdev_size_change(struct md_rdev *rdev , sector_t num_sectors )
{
  {
  if (num_sectors != 0UL && (rdev->mddev)->dev_sectors > num_sectors) {
    return (0ULL);
  } else {
  }
  if ((rdev->mddev)->bitmap_info.offset != 0LL) {
    return (0ULL);
  } else {
  }
  rdev->sb_start = calc_dev_sboffset(rdev);
  if (num_sectors == 0UL || rdev->sb_start < num_sectors) {
    num_sectors = rdev->sb_start;
  } else {
  }
  if ((unsigned long long )num_sectors > 8589934591ULL && (rdev->mddev)->level > 0) {
    num_sectors = 8589934590UL;
  } else {
  }
  md_super_write(rdev->mddev, rdev, rdev->sb_start, rdev->sb_size, rdev->sb_page);
  md_super_wait(rdev->mddev);
  return ((unsigned long long )num_sectors);
}
}
static int super_90_allow_new_offset(struct md_rdev *rdev , unsigned long long new_offset )
{
  {
  return (new_offset == 0ULL);
}
}
static __le32 calc_sb_1_csum(struct mdp_superblock_1 *sb )
{
  __le32 disk_csum ;
  u32 csum ;
  unsigned long long newcsum ;
  int size ;
  __le32 *isuper ;
  __le32 *tmp ;
  {
  size = (int )((sb->max_dev + 128U) * 2U);
  isuper = (__le32 *)sb;
  disk_csum = sb->sb_csum;
  sb->sb_csum = 0U;
  newcsum = 0ULL;
  goto ldv_32523;
  ldv_32522:
  tmp = isuper;
  isuper = isuper + 1;
  newcsum = (unsigned long long )*tmp + newcsum;
  size = size + -4;
  ldv_32523: ;
  if (size > 3) {
    goto ldv_32522;
  } else {
  }
  if (size == 2) {
    newcsum = (unsigned long long )*((__le16 *)isuper) + newcsum;
  } else {
  }
  csum = (u32 )newcsum + (u32 )(newcsum >> 32);
  sb->sb_csum = disk_csum;
  return (csum);
}
}
static int md_set_badblocks(struct badblocks *bb , sector_t s , int sectors , int acknowledged ) ;
static int super_1_load(struct md_rdev *rdev , struct md_rdev *refdev , int minor_version )
{
  struct mdp_superblock_1 *sb ;
  int ret ;
  sector_t sb_start ;
  sector_t sectors ;
  char b[32U] ;
  char b2[32U] ;
  int bmask ;
  loff_t tmp ;
  void *tmp___0 ;
  char const *tmp___1 ;
  __le32 tmp___2 ;
  char const *tmp___3 ;
  int tmp___4 ;
  unsigned short tmp___5 ;
  s32 offset ;
  sector_t bb_sector ;
  u64 *bbp ;
  int i ;
  int sectors___0 ;
  int tmp___6 ;
  void *tmp___7 ;
  u64 bb ;
  int count ;
  u64 sector ;
  int tmp___8 ;
  __u64 ev1 ;
  __u64 ev2 ;
  struct mdp_superblock_1 *refsb ;
  void *tmp___9 ;
  char const *tmp___10 ;
  char const *tmp___11 ;
  int tmp___12 ;
  loff_t tmp___13 ;
  {
  switch (minor_version) {
  case 0:
  tmp = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
  sb_start = (sector_t )(tmp >> 9);
  sb_start = sb_start - 16UL;
  sb_start = sb_start & 0xfffffffffffffff8UL;
  goto ldv_32543;
  case 1:
  sb_start = 0UL;
  goto ldv_32543;
  case 2:
  sb_start = 8UL;
  goto ldv_32543;
  default: ;
  return (-22);
  }
  ldv_32543:
  rdev->sb_start = sb_start;
  ret = read_disk_sb(rdev, 4096);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___0 = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct mdp_superblock_1 *)tmp___0;
  if ((((sb->magic != 2838187772U || sb->major_version != 1U) || sb->max_dev > 1920U) || sb->super_offset != (unsigned long long )rdev->sb_start) || (sb->feature_map & 4294967168U) != 0U) {
    return (-22);
  } else {
  }
  tmp___2 = calc_sb_1_csum(sb);
  if (tmp___2 != sb->sb_csum) {
    tmp___1 = bdevname(rdev->bdev, (char *)(& b));
    printk("md: invalid superblock checksum on %s\n", tmp___1);
    return (-22);
  } else {
  }
  if (sb->data_size <= 9ULL) {
    tmp___3 = bdevname(rdev->bdev, (char *)(& b));
    printk("md: data_size too small on %s\n", tmp___3);
    return (-22);
  } else {
  }
  if (sb->pad0 != 0U || (unsigned int )sb->pad3[0] != 0U) {
    return (-22);
  } else {
    tmp___4 = memcmp((void const *)(& sb->pad3), (void const *)(& sb->pad3) + 1U,
                     31UL);
    if (tmp___4 != 0) {
      return (-22);
    } else {
    }
  }
  rdev->preferred_minor = 65535;
  rdev->data_offset = (sector_t )sb->data_offset;
  rdev->new_data_offset = rdev->data_offset;
  if ((sb->feature_map & 4U) != 0U && (sb->feature_map & 64U) != 0U) {
    rdev->new_data_offset = rdev->new_data_offset + (sector_t )((int )sb->new_offset);
  } else {
  }
  atomic_set(& rdev->corrected_errors, (int )sb->cnt_corrected_read);
  rdev->sb_size = (int )((sb->max_dev + 128U) * 2U);
  tmp___5 = queue_logical_block_size(((rdev->bdev)->bd_disk)->queue);
  bmask = (int )tmp___5 + -1;
  if ((rdev->sb_size & bmask) != 0) {
    rdev->sb_size = (rdev->sb_size | bmask) + 1;
  } else {
  }
  if (minor_version != 0 && rdev->data_offset < (sector_t )(rdev->sb_size / 512) + sb_start) {
    return (-22);
  } else {
  }
  if (minor_version != 0 && rdev->new_data_offset < (sector_t )(rdev->sb_size / 512) + sb_start) {
    return (-22);
  } else {
  }
  if (sb->level == 4294967292U) {
    rdev->desc_nr = -1;
  } else {
    rdev->desc_nr = (int )sb->dev_number;
  }
  if ((unsigned long )rdev->bb_page == (unsigned long )((struct page *)0)) {
    rdev->bb_page = alloc_pages(208U, 0U);
    if ((unsigned long )rdev->bb_page == (unsigned long )((struct page *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  if ((sb->feature_map & 8U) != 0U && rdev->badblocks.count == 0) {
    sectors___0 = (int )sb->bblog_size;
    if ((unsigned int )sectors___0 > 8U) {
      return (-22);
    } else {
    }
    offset = (s32 )sb->bblog_offset;
    if (offset == 0) {
      return (-22);
    } else {
    }
    bb_sector = (sector_t )offset;
    tmp___6 = sync_page_io(rdev, bb_sector, sectors___0 << 9, rdev->bb_page, 0, 1);
    if (tmp___6 == 0) {
      return (-5);
    } else {
    }
    tmp___7 = lowmem_page_address((struct page const *)rdev->bb_page);
    bbp = (u64 *)tmp___7;
    rdev->badblocks.shift = (int )sb->bblog_shift;
    i = 0;
    goto ldv_32557;
    ldv_32556:
    bb = *bbp;
    count = (int )bb & 1023;
    sector = bb >> 10;
    sector = sector << (int )sb->bblog_shift;
    count = count << (int )sb->bblog_shift;
    if (bb == 0xffffffffffffffffULL) {
      goto ldv_32555;
    } else {
    }
    tmp___8 = md_set_badblocks(& rdev->badblocks, (sector_t )sector, count, 1);
    if (tmp___8 == 0) {
      return (-22);
    } else {
    }
    i = i + 1;
    bbp = bbp + 1;
    ldv_32557: ;
    if (sectors___0 << 6 > i) {
      goto ldv_32556;
    } else {
    }
    ldv_32555: ;
  } else
  if (sb->bblog_offset != 0U) {
    rdev->badblocks.shift = 0;
  } else {
  }
  if ((unsigned long )refdev == (unsigned long )((struct md_rdev *)0)) {
    ret = 1;
  } else {
    tmp___9 = lowmem_page_address((struct page const *)refdev->sb_page);
    refsb = (struct mdp_superblock_1 *)tmp___9;
    tmp___12 = memcmp((void const *)(& sb->set_uuid), (void const *)(& refsb->set_uuid),
                      16UL);
    if (((tmp___12 != 0 || sb->level != refsb->level) || sb->layout != refsb->layout) || sb->chunksize != refsb->chunksize) {
      tmp___10 = bdevname(refdev->bdev, (char *)(& b2));
      tmp___11 = bdevname(rdev->bdev, (char *)(& b));
      printk("\fmd: %s has strangely different superblock to %s\n", tmp___11, tmp___10);
      return (-22);
    } else {
    }
    ev1 = sb->events;
    ev2 = refsb->events;
    if (ev1 > ev2) {
      ret = 1;
    } else {
      ret = 0;
    }
  }
  if (minor_version != 0) {
    tmp___13 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
    sectors = (sector_t )(tmp___13 >> 9);
    sectors = sectors - rdev->data_offset;
  } else {
    sectors = rdev->sb_start;
  }
  if (sb->data_size > (unsigned long long )sectors) {
    return (-22);
  } else {
  }
  rdev->sectors = (sector_t )sb->data_size;
  return (ret);
}
}
static int super_1_validate(struct mddev *mddev , struct md_rdev *rdev )
{
  struct mdp_superblock_1 *sb ;
  void *tmp ;
  __u64 ev1 ;
  size_t __len ;
  void *__ret ;
  int role ;
  {
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct mdp_superblock_1 *)tmp;
  ev1 = sb->events;
  rdev->raid_disk = -1;
  clear_bit(0, (unsigned long volatile *)(& rdev->flags));
  clear_bit(1, (unsigned long volatile *)(& rdev->flags));
  clear_bit(3, (unsigned long volatile *)(& rdev->flags));
  if (mddev->raid_disks == 0) {
    mddev->major_version = 1;
    mddev->patch_version = 0;
    mddev->external = 0;
    mddev->chunk_sectors = (int )sb->chunksize;
    mddev->ctime = (time_t )sb->ctime & 4294967295L;
    mddev->utime = (time_t )sb->utime & 4294967295L;
    mddev->level = (int )sb->level;
    mddev->clevel[0] = 0;
    mddev->layout = (int )sb->layout;
    mddev->raid_disks = (int )sb->raid_disks;
    mddev->dev_sectors = (sector_t )sb->size;
    mddev->events = ev1;
    mddev->bitmap_info.offset = 0LL;
    mddev->bitmap_info.space = 0UL;
    mddev->bitmap_info.default_offset = 2LL;
    mddev->bitmap_info.default_space = 6UL;
    mddev->reshape_backwards = 0;
    mddev->recovery_cp = (sector_t )sb->resync_offset;
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& mddev->uuid), (void const *)(& sb->set_uuid),
                       __len);
    } else {
      __ret = memcpy((void *)(& mddev->uuid), (void const *)(& sb->set_uuid),
                               __len);
    }
    mddev->max_disks = 1920;
    if ((int )sb->feature_map & 1 && (unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0)) {
      mddev->bitmap_info.offset = (loff_t )((int )sb->bitmap_offset);
      if (mddev->minor_version > 0) {
        mddev->bitmap_info.space = 0UL;
      } else
      if (mddev->bitmap_info.offset > 0LL) {
        mddev->bitmap_info.space = (unsigned long )(8LL - mddev->bitmap_info.offset);
      } else {
        mddev->bitmap_info.space = (unsigned long )(- mddev->bitmap_info.offset);
      }
    } else {
    }
    if ((sb->feature_map & 4U) != 0U) {
      mddev->reshape_position = (sector_t )sb->reshape_position;
      mddev->delta_disks = (int )sb->delta_disks;
      mddev->new_level = (int )sb->new_level;
      mddev->new_layout = (int )sb->new_layout;
      mddev->new_chunk_sectors = (int )sb->new_chunk;
      if (mddev->delta_disks < 0 || (mddev->delta_disks == 0 && (sb->feature_map & 32U) != 0U)) {
        mddev->reshape_backwards = 1;
      } else {
      }
    } else {
      mddev->reshape_position = 0xffffffffffffffffUL;
      mddev->delta_disks = 0;
      mddev->new_level = mddev->level;
      mddev->new_layout = mddev->layout;
      mddev->new_chunk_sectors = mddev->chunk_sectors;
    }
  } else
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    ev1 = ev1 + 1ULL;
    if ((rdev->desc_nr >= 0 && (__le32 )rdev->desc_nr < sb->max_dev) && (unsigned int )sb->dev_roles[rdev->desc_nr] <= 65533U) {
      if (mddev->events > ev1) {
        return (-22);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    if ((mddev->bitmap)->events_cleared > ev1) {
      return (0);
    } else {
    }
  } else
  if (mddev->events > ev1) {
    return (0);
  } else {
  }
  if (mddev->level != -4) {
    if (rdev->desc_nr < 0 || (__le32 )rdev->desc_nr >= sb->max_dev) {
      role = 65535;
      rdev->desc_nr = -1;
    } else {
      role = (int )sb->dev_roles[rdev->desc_nr];
    }
    switch (role) {
    case 65535: ;
    goto ldv_32572;
    case 65534:
    set_bit(0U, (unsigned long volatile *)(& rdev->flags));
    goto ldv_32572;
    default: ;
    if ((sb->feature_map & 2U) != 0U) {
      rdev->recovery_offset = (sector_t )sb->recovery_offset;
    } else {
      set_bit(1U, (unsigned long volatile *)(& rdev->flags));
    }
    rdev->raid_disk = role;
    goto ldv_32572;
    }
    ldv_32572: ;
    if ((int )sb->devflags & 1) {
      set_bit(3U, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
    if ((sb->feature_map & 16U) != 0U) {
      set_bit(10U, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
  } else {
    set_bit(1U, (unsigned long volatile *)(& rdev->flags));
  }
  return (0);
}
}
static void super_1_sync(struct mddev *mddev , struct md_rdev *rdev )
{
  struct mdp_superblock_1 *sb ;
  struct md_rdev *rdev2 ;
  int max_dev ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct badblocks *bb ;
  u64 *bbp ;
  void *tmp___4 ;
  u64 *p ;
  unsigned int seq ;
  u64 internal_bb ;
  u64 store_bb ;
  unsigned int tmp___5 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int bmask ;
  unsigned short tmp___6 ;
  struct list_head const *__mptr___1 ;
  int tmp___7 ;
  int tmp___8 ;
  struct list_head const *__mptr___2 ;
  {
  tmp = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct mdp_superblock_1 *)tmp;
  sb->feature_map = 0U;
  sb->pad0 = 0U;
  sb->recovery_offset = 0ULL;
  memset((void *)(& sb->pad3), 0, 32UL);
  sb->utime = (unsigned long long )mddev->utime;
  sb->events = mddev->events;
  if (mddev->in_sync != 0) {
    sb->resync_offset = (unsigned long long )mddev->recovery_cp;
  } else {
    sb->resync_offset = 0ULL;
  }
  tmp___0 = atomic_read((atomic_t const *)(& rdev->corrected_errors));
  sb->cnt_corrected_read = (unsigned int )tmp___0;
  sb->raid_disks = (unsigned int )mddev->raid_disks;
  sb->size = (unsigned long long )mddev->dev_sectors;
  sb->chunksize = (unsigned int )mddev->chunk_sectors;
  sb->level = (unsigned int )mddev->level;
  sb->layout = (unsigned int )mddev->layout;
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___1 != 0) {
    sb->devflags = (__u8 )((unsigned int )sb->devflags | 1U);
  } else {
    sb->devflags = (unsigned int )sb->devflags & 254U;
  }
  sb->data_offset = (unsigned long long )rdev->data_offset;
  sb->data_size = (unsigned long long )rdev->sectors;
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) && (unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0)) {
    sb->bitmap_offset = (unsigned int )mddev->bitmap_info.offset;
    sb->feature_map = 1U;
  } else {
  }
  if (rdev->raid_disk >= 0) {
    tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___2 == 0) {
      sb->feature_map = sb->feature_map | 2U;
      sb->recovery_offset = (unsigned long long )rdev->recovery_offset;
    } else {
    }
  } else {
  }
  tmp___3 = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___3 != 0) {
    sb->feature_map = sb->feature_map | 16U;
  } else {
  }
  if (mddev->reshape_position != 0xffffffffffffffffUL) {
    sb->feature_map = sb->feature_map | 4U;
    sb->reshape_position = (unsigned long long )mddev->reshape_position;
    sb->new_layout = (unsigned int )mddev->new_layout;
    sb->delta_disks = (unsigned int )mddev->delta_disks;
    sb->new_level = (unsigned int )mddev->new_level;
    sb->new_chunk = (unsigned int )mddev->new_chunk_sectors;
    if (mddev->delta_disks == 0 && mddev->reshape_backwards != 0) {
      sb->feature_map = sb->feature_map | 32U;
    } else {
    }
    if (rdev->new_data_offset != rdev->data_offset) {
      sb->feature_map = sb->feature_map | 64U;
      sb->new_offset = (unsigned int )rdev->new_data_offset - (unsigned int )rdev->data_offset;
    } else {
    }
  } else {
  }
  if (rdev->badblocks.count == 0) {
  } else
  if (sb->bblog_offset == 0U) {
    md_error(mddev, rdev);
  } else {
    bb = & rdev->badblocks;
    tmp___4 = lowmem_page_address((struct page const *)rdev->bb_page);
    bbp = (u64 *)tmp___4;
    p = bb->page;
    sb->feature_map = sb->feature_map | 8U;
    if (bb->changed != 0) {
      retry:
      seq = read_seqbegin((seqlock_t const *)(& bb->lock));
      memset((void *)bbp, 255, 4096UL);
      i = 0;
      goto ldv_32591;
      ldv_32590:
      internal_bb = *(p + (unsigned long )i);
      store_bb = (((internal_bb & 9223372036854775296ULL) >> 9) << 10) | ((internal_bb & 511ULL) + 1ULL);
      *(bbp + (unsigned long )i) = store_bb;
      i = i + 1;
      ldv_32591: ;
      if (bb->count > i) {
        goto ldv_32590;
      } else {
      }
      bb->changed = 0;
      tmp___5 = read_seqretry((seqlock_t const *)(& bb->lock), seq);
      if (tmp___5 != 0U) {
        goto retry;
      } else {
      }
      bb->sector = rdev->sb_start + (sector_t )((int )sb->bblog_offset);
      bb->size = (sector_t )sb->bblog_size;
    } else {
    }
  }
  max_dev = 0;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev2 = (struct md_rdev *)__mptr;
  goto ldv_32598;
  ldv_32597: ;
  if (rdev2->desc_nr + 1 > max_dev) {
    max_dev = rdev2->desc_nr + 1;
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev2->same_set.next;
  rdev2 = (struct md_rdev *)__mptr___0;
  ldv_32598: ;
  if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32597;
  } else {
  }
  if ((__le32 )max_dev > sb->max_dev) {
    sb->max_dev = (unsigned int )max_dev;
    rdev->sb_size = (max_dev + 128) * 2;
    tmp___6 = queue_logical_block_size(((rdev->bdev)->bd_disk)->queue);
    bmask = (int )tmp___6 + -1;
    if ((rdev->sb_size & bmask) != 0) {
      rdev->sb_size = (rdev->sb_size | bmask) + 1;
    } else {
    }
  } else {
    max_dev = (int )sb->max_dev;
  }
  i = 0;
  goto ldv_32602;
  ldv_32601:
  sb->dev_roles[i] = 65534U;
  i = i + 1;
  ldv_32602: ;
  if (i < max_dev) {
    goto ldv_32601;
  } else {
  }
  __mptr___1 = (struct list_head const *)mddev->disks.next;
  rdev2 = (struct md_rdev *)__mptr___1;
  goto ldv_32609;
  ldv_32608:
  i = rdev2->desc_nr;
  tmp___8 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev2->flags));
  if (tmp___8 != 0) {
    sb->dev_roles[i] = 65534U;
  } else {
    tmp___7 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev2->flags));
    if (tmp___7 != 0) {
      sb->dev_roles[i] = (unsigned short )rdev2->raid_disk;
    } else
    if (rdev2->raid_disk >= 0) {
      sb->dev_roles[i] = (unsigned short )rdev2->raid_disk;
    } else {
      sb->dev_roles[i] = 65535U;
    }
  }
  __mptr___2 = (struct list_head const *)rdev2->same_set.next;
  rdev2 = (struct md_rdev *)__mptr___2;
  ldv_32609: ;
  if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32608;
  } else {
  }
  sb->sb_csum = calc_sb_1_csum(sb);
  return;
}
}
static unsigned long long super_1_rdev_size_change(struct md_rdev *rdev , sector_t num_sectors )
{
  struct mdp_superblock_1 *sb ;
  sector_t max_sectors ;
  loff_t tmp ;
  sector_t sb_start ;
  loff_t tmp___0 ;
  void *tmp___1 ;
  {
  if (num_sectors != 0UL && (rdev->mddev)->dev_sectors > num_sectors) {
    return (0ULL);
  } else {
  }
  if (rdev->data_offset != rdev->new_data_offset) {
    return (0ULL);
  } else {
  }
  if (rdev->sb_start < rdev->data_offset) {
    tmp = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
    max_sectors = (sector_t )(tmp >> 9);
    max_sectors = max_sectors - rdev->data_offset;
    if (num_sectors == 0UL || num_sectors > max_sectors) {
      num_sectors = max_sectors;
    } else {
    }
  } else
  if ((rdev->mddev)->bitmap_info.offset != 0LL) {
    return (0ULL);
  } else {
    tmp___0 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
    sb_start = (sector_t )((tmp___0 >> 9) + -16LL);
    sb_start = sb_start & 0xfffffffffffffff8UL;
    max_sectors = (rdev->sectors + sb_start) - rdev->sb_start;
    if (num_sectors == 0UL || num_sectors > max_sectors) {
      num_sectors = max_sectors;
    } else {
    }
    rdev->sb_start = sb_start;
  }
  tmp___1 = lowmem_page_address((struct page const *)rdev->sb_page);
  sb = (struct mdp_superblock_1 *)tmp___1;
  sb->data_size = (unsigned long long )num_sectors;
  sb->super_offset = (__le64 )rdev->sb_start;
  sb->sb_csum = calc_sb_1_csum(sb);
  md_super_write(rdev->mddev, rdev, rdev->sb_start, rdev->sb_size, rdev->sb_page);
  md_super_wait(rdev->mddev);
  return ((unsigned long long )num_sectors);
}
}
static int super_1_allow_new_offset(struct md_rdev *rdev , unsigned long long new_offset )
{
  struct bitmap *bitmap ;
  {
  if ((unsigned long long )rdev->data_offset <= new_offset) {
    return (1);
  } else {
  }
  if ((rdev->mddev)->minor_version == 0) {
    return (1);
  } else {
  }
  if ((unsigned long long )(rdev->sb_start + 72UL) > new_offset) {
    return (0);
  } else {
  }
  bitmap = (rdev->mddev)->bitmap;
  if (((unsigned long )bitmap != (unsigned long )((struct bitmap *)0) && (unsigned long )(rdev->mddev)->bitmap_info.file == (unsigned long )((struct file *)0)) && ((unsigned long long )rdev->sb_start + (unsigned long long )(rdev->mddev)->bitmap_info.offset) + (unsigned long long )(bitmap->storage.file_pages * 8UL) > new_offset) {
    return (0);
  } else {
  }
  if ((unsigned long long )(rdev->badblocks.sector + rdev->badblocks.size) > new_offset) {
    return (0);
  } else {
  }
  return (1);
}
}
static struct super_type super_types[2U] = { {(char *)"0.90.0", & __this_module, & super_90_load, & super_90_validate, & super_90_sync,
      & super_90_rdev_size_change, & super_90_allow_new_offset},
        {(char *)"md-1", & __this_module, & super_1_load, & super_1_validate, & super_1_sync,
      & super_1_rdev_size_change, & super_1_allow_new_offset}};
static void sync_super(struct mddev *mddev , struct md_rdev *rdev )
{
  long tmp ;
  {
  if ((unsigned long )mddev->sync_super != (unsigned long )((void (*)(struct mddev * ,
                                                                      struct md_rdev * ))0)) {
    (*(mddev->sync_super))(mddev, rdev);
    return;
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )mddev->major_version > 1U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (2021), "i" (12UL));
    ldv_32630: ;
    goto ldv_32630;
  } else {
  }
  (*(super_types[mddev->major_version].sync_super))(mddev, rdev);
  return;
}
}
static int match_mddev_units(struct mddev *mddev1 , struct mddev *mddev2 )
{
  struct md_rdev *rdev ;
  struct md_rdev *rdev2 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1___1 ;
  bool __warned___1 ;
  int tmp___1 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *_________p1___2 ;
  bool __warned___2 ;
  int tmp___2 ;
  {
  rcu_read_lock();
  __ptr = mddev1->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32669;
  ldv_32668:
  __ptr___0 = mddev2->disks.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev2 = (struct md_rdev *)__mptr___0;
  goto ldv_32666;
  ldv_32665: ;
  if ((unsigned long )(rdev->bdev)->bd_contains == (unsigned long )(rdev2->bdev)->bd_contains) {
    rcu_read_unlock();
    return (1);
  } else {
  }
  __ptr___1 = rdev2->same_set.next;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___1) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___1 = (struct list_head const *)_________p1___1;
  rdev2 = (struct md_rdev *)__mptr___1;
  ldv_32666: ;
  if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev2->disks)) {
    goto ldv_32665;
  } else {
  }
  __ptr___2 = rdev->same_set.next;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___2) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___2 = (struct list_head const *)_________p1___2;
  rdev = (struct md_rdev *)__mptr___2;
  ldv_32669: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev1->disks)) {
    goto ldv_32668;
  } else {
  }
  rcu_read_unlock();
  return (0);
}
}
static struct list_head pending_raid_disks = {& pending_raid_disks, & pending_raid_disks};
int md_integrity_register(struct mddev *mddev )
{
  struct md_rdev *rdev ;
  struct md_rdev *reference ;
  int tmp ;
  struct blk_integrity *tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  struct blk_integrity *tmp___3 ;
  char *tmp___4 ;
  struct blk_integrity *tmp___5 ;
  int tmp___6 ;
  char *tmp___7 ;
  char *tmp___8 ;
  int tmp___9 ;
  {
  reference = 0;
  tmp = list_empty((struct list_head const *)(& mddev->disks));
  if (tmp != 0) {
    return (0);
  } else {
  }
  if ((unsigned long )mddev->gendisk == (unsigned long )((struct gendisk *)0)) {
    return (0);
  } else {
    tmp___0 = blk_get_integrity(mddev->gendisk);
    if ((unsigned long )tmp___0 != (unsigned long )((struct blk_integrity *)0)) {
      return (0);
    } else {
    }
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32683;
  ldv_32682:
  tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___1 != 0) {
    goto ldv_32681;
  } else {
  }
  if (rdev->raid_disk < 0) {
    goto ldv_32681;
  } else {
  }
  if ((unsigned long )reference == (unsigned long )((struct md_rdev *)0)) {
    reference = rdev;
    goto ldv_32681;
  } else {
  }
  tmp___2 = blk_integrity_compare((reference->bdev)->bd_disk, (rdev->bdev)->bd_disk);
  if (tmp___2 < 0) {
    return (-22);
  } else {
  }
  ldv_32681:
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32683: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32682;
  } else {
  }
  if ((unsigned long )reference == (unsigned long )((struct md_rdev *)0)) {
    return (0);
  } else {
    tmp___3 = bdev_get_integrity(reference->bdev);
    if ((unsigned long )tmp___3 == (unsigned long )((struct blk_integrity *)0)) {
      return (0);
    } else {
    }
  }
  tmp___5 = bdev_get_integrity(reference->bdev);
  tmp___6 = blk_integrity_register(mddev->gendisk, tmp___5);
  if (tmp___6 != 0) {
    tmp___4 = mdname(mddev);
    printk("\vmd: failed to register integrity for %s\n", tmp___4);
    return (-22);
  } else {
  }
  tmp___7 = mdname(mddev);
  printk("\rmd: data integrity enabled on %s\n", tmp___7);
  tmp___9 = bioset_integrity_create(mddev->bio_set, 2);
  if (tmp___9 != 0) {
    tmp___8 = mdname(mddev);
    printk("\vmd: failed to create integrity pool for %s\n", tmp___8);
    return (-22);
  } else {
  }
  return (0);
}
}
void md_integrity_add_rdev(struct md_rdev *rdev , struct mddev *mddev )
{
  struct blk_integrity *bi_rdev ;
  struct blk_integrity *bi_mddev ;
  int tmp ;
  char *tmp___0 ;
  {
  if ((unsigned long )mddev->gendisk == (unsigned long )((struct gendisk *)0)) {
    return;
  } else {
  }
  bi_rdev = bdev_get_integrity(rdev->bdev);
  bi_mddev = blk_get_integrity(mddev->gendisk);
  if ((unsigned long )bi_mddev == (unsigned long )((struct blk_integrity *)0)) {
    return;
  } else {
  }
  if (rdev->raid_disk < 0) {
    return;
  } else {
  }
  if ((unsigned long )bi_rdev != (unsigned long )((struct blk_integrity *)0)) {
    tmp = blk_integrity_compare(mddev->gendisk, (rdev->bdev)->bd_disk);
    if (tmp >= 0) {
      return;
    } else {
    }
  } else {
  }
  tmp___0 = mdname(mddev);
  printk("\rdisabling data integrity on %s\n", tmp___0);
  blk_integrity_unregister(mddev->gendisk);
  return;
}
}
static int bind_rdev_to_array(struct md_rdev *rdev , struct mddev *mddev )
{
  char b[32U] ;
  struct kobject *ko ;
  char *s ;
  int err ;
  struct md_rdev *tmp ;
  int choice ;
  struct md_rdev *tmp___0 ;
  struct md_rdev *tmp___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  char *tmp___4 ;
  {
  if ((unsigned long )rdev->mddev != (unsigned long )((struct mddev *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2129);
    md_print_devices();
    return (-22);
  } else {
  }
  tmp = find_rdev(mddev, (rdev->bdev)->bd_dev);
  if ((unsigned long )tmp != (unsigned long )((struct md_rdev *)0)) {
    return (-17);
  } else {
  }
  if (rdev->sectors != 0UL && (mddev->dev_sectors == 0UL || rdev->sectors < mddev->dev_sectors)) {
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      if (mddev->level > 0) {
        return (-28);
      } else {
      }
    } else {
      mddev->dev_sectors = rdev->sectors;
    }
  } else {
  }
  if (rdev->desc_nr < 0) {
    choice = 0;
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      choice = mddev->raid_disks;
    } else {
    }
    goto ldv_32714;
    ldv_32713:
    choice = choice + 1;
    ldv_32714:
    tmp___0 = find_rdev_nr(mddev, choice);
    if ((unsigned long )tmp___0 != (unsigned long )((struct md_rdev *)0)) {
      goto ldv_32713;
    } else {
    }
    rdev->desc_nr = choice;
  } else {
    tmp___1 = find_rdev_nr(mddev, rdev->desc_nr);
    if ((unsigned long )tmp___1 != (unsigned long )((struct md_rdev *)0)) {
      return (-16);
    } else {
    }
  }
  if (mddev->max_disks != 0 && rdev->desc_nr >= mddev->max_disks) {
    tmp___2 = mdname(mddev);
    printk("\fmd: %s: array is limited to %d devices\n", tmp___2, mddev->max_disks);
    return (-16);
  } else {
  }
  bdevname(rdev->bdev, (char *)(& b));
  goto ldv_32717;
  ldv_32716:
  *s = 33;
  ldv_32717:
  s = strchr((char const *)(& b), 47);
  if ((unsigned long )s != (unsigned long )((char *)0)) {
    goto ldv_32716;
  } else {
  }
  rdev->mddev = mddev;
  printk("\016md: bind<%s>\n", (char *)(& b));
  err = kobject_add(& rdev->kobj, & mddev->kobj, "dev-%s", (char *)(& b));
  if (err != 0) {
    goto fail;
  } else {
  }
  ko = & ((rdev->bdev)->bd_part)->__dev.kobj;
  tmp___3 = sysfs_create_link(& rdev->kobj, ko, "block");
  rdev->sysfs_state = sysfs_get_dirent_safe(rdev->kobj.sd, (char *)"state");
  list_add_rcu(& rdev->same_set, & mddev->disks);
  bd_link_disk_holder(rdev->bdev, mddev->gendisk);
  mddev->recovery_disabled = mddev->recovery_disabled + 1;
  return (0);
  fail:
  tmp___4 = mdname(mddev);
  printk("\fmd: failed to register dev-%s for %s\n", (char *)(& b), tmp___4);
  return (err);
}
}
static void md_delayed_delete(struct work_struct *ws )
{
  struct md_rdev *rdev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)ws;
  rdev = (struct md_rdev *)__mptr + 0xfffffffffffffeb0UL;
  kobject_del(& rdev->kobj);
  kobject_put(& rdev->kobj);
  return;
}
}
static void unbind_rdev_from_array(struct md_rdev *rdev )
{
  char b[32U] ;
  char const *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  if ((unsigned long )rdev->mddev == (unsigned long )((struct mddev *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2210);
    md_print_devices();
    return;
  } else {
  }
  bd_unlink_disk_holder(rdev->bdev, (rdev->mddev)->gendisk);
  list_del_rcu(& rdev->same_set);
  tmp = bdevname(rdev->bdev, (char *)(& b));
  printk("\016md: unbind<%s>\n", tmp);
  rdev->mddev = 0;
  sysfs_remove_link(& rdev->kobj, "block");
  sysfs_put(rdev->sysfs_state);
  rdev->sysfs_state = 0;
  rdev->badblocks.count = 0;
  synchronize_rcu();
  __init_work(& rdev->del_work, 0);
  __constr_expr_0.counter = 137438953408L;
  rdev->del_work.data = __constr_expr_0;
  lockdep_init_map(& rdev->del_work.lockdep_map, "(&rdev->del_work)", & __key, 0);
  INIT_LIST_HEAD(& rdev->del_work.entry);
  rdev->del_work.func = & md_delayed_delete;
  kobject_get(& rdev->kobj);
  queue_work(md_misc_wq, & rdev->del_work);
  return;
}
}
static int lock_rdev(struct md_rdev *rdev , dev_t dev , int shared )
{
  int err ;
  struct block_device *bdev ;
  char b[32U] ;
  char const *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  err = 0;
  bdev = blkdev_get_by_dev(dev, 131U, shared == 0 ? (void *)rdev : (void *)(& lock_rdev));
  tmp___1 = IS_ERR((void const *)bdev);
  if (tmp___1 != 0L) {
    tmp = __bdevname(dev, (char *)(& b));
    printk("\vmd: could not open %s.\n", tmp);
    tmp___0 = PTR_ERR((void const *)bdev);
    return ((int )tmp___0);
  } else {
  }
  rdev->bdev = bdev;
  return (err);
}
}
static void unlock_rdev(struct md_rdev *rdev )
{
  struct block_device *bdev ;
  {
  bdev = rdev->bdev;
  rdev->bdev = 0;
  if ((unsigned long )bdev == (unsigned long )((struct block_device *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2258);
    md_print_devices();
  } else {
  }
  blkdev_put(bdev, 131U);
  return;
}
}
static void export_rdev(struct md_rdev *rdev )
{
  char b[32U] ;
  char const *tmp ;
  {
  tmp = bdevname(rdev->bdev, (char *)(& b));
  printk("\016md: export_rdev(%s)\n", tmp);
  if ((unsigned long )rdev->mddev != (unsigned long )((struct mddev *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2270);
    md_print_devices();
  } else {
  }
  md_rdev_clear(rdev);
  unlock_rdev(rdev);
  kobject_put(& rdev->kobj);
  return;
}
}
static void kick_rdev_from_array(struct md_rdev *rdev )
{
  {
  unbind_rdev_from_array(rdev);
  export_rdev(rdev);
  return;
}
}
static void export_array(struct mddev *mddev )
{
  struct md_rdev *rdev ;
  struct md_rdev *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  tmp = (struct md_rdev *)__mptr___0;
  goto ldv_32766;
  ldv_32765: ;
  if ((unsigned long )rdev->mddev == (unsigned long )((struct mddev *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2292);
    md_print_devices();
    goto ldv_32764;
  } else {
  }
  kick_rdev_from_array(rdev);
  ldv_32764:
  rdev = tmp;
  __mptr___1 = (struct list_head const *)tmp->same_set.next;
  tmp = (struct md_rdev *)__mptr___1;
  ldv_32766: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32765;
  } else {
  }
  tmp___0 = list_empty((struct list_head const *)(& mddev->disks));
  if (tmp___0 == 0) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2298);
    md_print_devices();
  } else {
  }
  mddev->raid_disks = 0;
  mddev->major_version = 0;
  return;
}
}
static void print_desc(mdp_disk_t *desc )
{
  {
  printk(" DISK<N:%d,(%d,%d),R:%d,S:%d>\n", desc->number, desc->major, desc->minor,
         desc->raid_disk, desc->state);
  return;
}
}
static void print_sb_90(mdp_super_t *sb )
{
  int i ;
  mdp_disk_t *desc ;
  {
  printk("\016md:  SB: (V:%d.%d.%d) ID:<%08x.%08x.%08x.%08x> CT:%08x\n", sb->major_version,
         sb->minor_version, sb->patch_version, sb->set_uuid0, sb->set_uuid1, sb->set_uuid2,
         sb->set_uuid3, sb->ctime);
  printk("\016md:     L%d S%08d ND:%d RD:%d md%d LO:%d CS:%d\n", sb->level, sb->size,
         sb->nr_disks, sb->raid_disks, sb->md_minor, sb->layout, sb->chunk_size);
  printk("\016md:     UT:%08x ST:%d AD:%d WD:%d FD:%d SD:%d CSUM:%08x E:%08lx\n",
         sb->utime, sb->state, sb->active_disks, sb->working_disks, sb->failed_disks,
         sb->spare_disks, sb->sb_csum, (unsigned long )sb->events_lo);
  printk("\016");
  i = 0;
  goto ldv_32777;
  ldv_32776:
  desc = (mdp_disk_t *)(& sb->disks) + (unsigned long )i;
  if ((((desc->number != 0U || desc->major != 0U) || desc->minor != 0U) || desc->raid_disk != 0U) || (desc->state != 0U && desc->state != 4U)) {
    printk("     D %2d: ", i);
    print_desc(desc);
  } else {
  }
  i = i + 1;
  ldv_32777: ;
  if (i <= 26) {
    goto ldv_32776;
  } else {
  }
  printk("\016md:     THIS: ");
  print_desc(& sb->this_disk);
  return;
}
}
static void print_sb_1(struct mdp_superblock_1 *sb )
{
  __u8 *uuid ;
  {
  uuid = (__u8 *)(& sb->set_uuid);
  printk("\016md:  SB: (V:%u) (F:0x%08x) Array-ID:<%pU>\nmd:    Name: \"%s\" CT:%llu\n",
         sb->major_version, sb->feature_map, uuid, (char *)(& sb->set_name), sb->ctime & 1099511627775ULL);
  uuid = (__u8 *)(& sb->device_uuid);
  printk("\016md:       L%u SZ%llu RD:%u LO:%u CS:%u DO:%llu DS:%llu SO:%llu RO:%llu\nmd:     Dev:%08x UUID: %pU\nmd:       (F:0x%08x) UT:%llu Events:%llu ResyncOffset:%llu CSUM:0x%08x\nmd:         (MaxDev:%u) \n",
         sb->level, sb->size, sb->raid_disks, sb->layout, sb->chunksize, sb->data_offset,
         sb->data_size, sb->super_offset, sb->recovery_offset, sb->dev_number, uuid,
         (int )sb->devflags, sb->utime & 1099511627775ULL, sb->events, sb->resync_offset,
         sb->sb_csum, sb->max_dev);
  return;
}
}
static void print_rdev(struct md_rdev *rdev , int major_version )
{
  char b[32U] ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  tmp___1 = bdevname(rdev->bdev, (char *)(& b));
  printk("\016md: rdev %s, Sect:%08llu F:%d S:%d DN:%u\n", tmp___1, (unsigned long long )rdev->sectors,
         tmp___0, tmp, rdev->desc_nr);
  if (rdev->sb_loaded != 0) {
    printk("\016md: rdev superblock (MJ:%d):\n", major_version);
    switch (major_version) {
    case 0:
    tmp___2 = lowmem_page_address((struct page const *)rdev->sb_page);
    print_sb_90((mdp_super_t *)tmp___2);
    goto ldv_32789;
    case 1:
    tmp___3 = lowmem_page_address((struct page const *)rdev->sb_page);
    print_sb_1((struct mdp_superblock_1 *)tmp___3);
    goto ldv_32789;
    }
    ldv_32789: ;
  } else {
    printk("\016md: no rdev superblock!\n");
  }
  return;
}
}
static void md_print_devices(void)
{
  struct list_head *tmp ;
  struct md_rdev *rdev ;
  struct mddev *mddev ;
  char b[32U] ;
  char *tmp___0 ;
  struct list_head const *__mptr ;
  char const *tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  printk("\n");
  printk("md:\t**********************************\n");
  printk("md:\t* <COMPLETE RAID STATE PRINTOUT> *\n");
  printk("md:\t**********************************\n");
  spin_lock(& all_mddevs_lock);
  tmp = all_mddevs.next;
  mddev = 0;
  goto ldv_32820;
  ldv_32819: ;
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    bitmap_print_sb(mddev->bitmap);
  } else {
    tmp___0 = mdname(mddev);
    printk("%s: ", tmp___0);
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32810;
  ldv_32809:
  tmp___1 = bdevname(rdev->bdev, (char *)(& b));
  printk("<%s>", tmp___1);
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32810: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32809;
  } else {
  }
  printk("\n");
  __mptr___1 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___1;
  goto ldv_32817;
  ldv_32816:
  print_rdev(rdev, mddev->major_version);
  __mptr___2 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___2;
  ldv_32817: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32816;
  } else {
  }
  spin_lock(& all_mddevs_lock);
  tmp = tmp->next;
  ldv_32820: ;
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    __mptr___3 = (struct list_head const *)tmp;
    mddev_get((struct mddev *)__mptr___3 + 0xfffffffffffff9c8UL);
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
    mddev_put(mddev);
  } else {
  }
  __mptr___4 = (struct list_head const *)tmp;
  mddev = (struct mddev *)__mptr___4 + 0xfffffffffffff9c8UL;
  if (((unsigned long )tmp != (unsigned long )(& all_mddevs)) != 0) {
    goto ldv_32819;
  } else {
  }
  printk("md:\t**********************************\n");
  printk("\n");
  return;
}
}
static void sync_sbs(struct mddev *mddev , int nospares )
{
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32832;
  ldv_32831: ;
  if (rdev->sb_events == mddev->events || ((nospares != 0 && rdev->raid_disk < 0) && rdev->sb_events + 1ULL == mddev->events)) {
    rdev->sb_loaded = 2;
  } else {
    sync_super(mddev, rdev);
    rdev->sb_loaded = 1;
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32832: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32831;
  } else {
  }
  return;
}
}
static void md_update_sb(struct mddev *mddev , int force_change )
{
  struct md_rdev *rdev ;
  int sync_req ;
  int nospares ;
  int any_badblocks_changed ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___3 ;
  int tmp___3 ;
  struct list_head const *__mptr___4 ;
  struct _ddebug descriptor ;
  char *tmp___4 ;
  long tmp___5 ;
  struct list_head const *__mptr___5 ;
  char b[32U] ;
  struct _ddebug descriptor___0 ;
  char const *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___1 ;
  char const *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___2 ;
  long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  struct list_head const *__mptr___6 ;
  int tmp___13 ;
  int tmp___14 ;
  struct list_head const *__mptr___7 ;
  int tmp___15 ;
  struct list_head const *__mptr___8 ;
  {
  nospares = 0;
  any_badblocks_changed = 0;
  if (mddev->ro != 0) {
    if (force_change != 0) {
      set_bit(0U, (unsigned long volatile *)(& mddev->flags));
    } else {
    }
    return;
  } else {
  }
  repeat:
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_32848;
  ldv_32847: ;
  if (rdev->raid_disk >= 0 && mddev->delta_disks >= 0) {
    tmp = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp == 0) {
      if (mddev->curr_resync_completed > rdev->recovery_offset) {
        rdev->recovery_offset = mddev->curr_resync_completed;
      } else {
      }
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_32848: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32847;
  } else {
  }
  if (mddev->persistent == 0) {
    clear_bit(1, (unsigned long volatile *)(& mddev->flags));
    clear_bit(0, (unsigned long volatile *)(& mddev->flags));
    if (mddev->external == 0) {
      clear_bit(2, (unsigned long volatile *)(& mddev->flags));
      __mptr___1 = (struct list_head const *)mddev->disks.next;
      rdev = (struct md_rdev *)__mptr___1;
      goto ldv_32855;
      ldv_32854: ;
      if (rdev->badblocks.changed != 0) {
        rdev->badblocks.changed = 0;
        md_ack_all_badblocks(& rdev->badblocks);
        md_error(mddev, rdev);
      } else {
      }
      clear_bit(5, (unsigned long volatile *)(& rdev->flags));
      clear_bit(8, (unsigned long volatile *)(& rdev->flags));
      __wake_up(& rdev->blocked_wait, 3U, 1, 0);
      __mptr___2 = (struct list_head const *)rdev->same_set.next;
      rdev = (struct md_rdev *)__mptr___2;
      ldv_32855: ;
      if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
        goto ldv_32854;
      } else {
      }
    } else {
    }
    __wake_up(& mddev->sb_wait, 3U, 1, 0);
    return;
  } else {
  }
  spin_lock_irq(& mddev->write_lock);
  tmp___0 = get_seconds();
  mddev->utime = (time_t )tmp___0;
  tmp___1 = test_and_clear_bit(0, (unsigned long volatile *)(& mddev->flags));
  if (tmp___1 != 0) {
    force_change = 1;
  } else {
  }
  tmp___2 = test_and_clear_bit(1, (unsigned long volatile *)(& mddev->flags));
  if (tmp___2 != 0) {
    nospares = 1;
  } else {
  }
  if (force_change != 0) {
    nospares = 0;
  } else {
  }
  if (mddev->degraded != 0) {
    nospares = 0;
  } else {
  }
  sync_req = mddev->in_sync;
  if (((nospares != 0 && (mddev->in_sync != 0 && mddev->recovery_cp == 0xffffffffffffffffUL)) && mddev->can_decrease_events != 0) && mddev->events != 1ULL) {
    mddev->events = mddev->events - 1ULL;
    mddev->can_decrease_events = 0;
  } else {
    mddev->events = mddev->events + 1ULL;
    mddev->can_decrease_events = nospares;
  }
  if (mddev->events == 0ULL) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           2547);
    md_print_devices();
    mddev->events = mddev->events - 1ULL;
  } else {
  }
  __mptr___3 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___3;
  goto ldv_32862;
  ldv_32861: ;
  if (rdev->badblocks.changed != 0) {
    any_badblocks_changed = any_badblocks_changed + 1;
  } else {
  }
  tmp___3 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___3 != 0) {
    set_bit(7U, (unsigned long volatile *)(& rdev->flags));
  } else {
  }
  __mptr___4 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___4;
  ldv_32862: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32861;
  } else {
  }
  sync_sbs(mddev, nospares);
  spin_unlock_irq(& mddev->write_lock);
  descriptor.modname = "md_mod";
  descriptor.function = "md_update_sb";
  descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
  descriptor.format = "md: updating %s RAID superblock on device (in sync %d)\n";
  descriptor.lineno = 2562U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = mdname(mddev);
    __dynamic_pr_debug(& descriptor, "md: updating %s RAID superblock on device (in sync %d)\n",
                       tmp___4, mddev->in_sync);
  } else {
  }
  bitmap_update_sb(mddev->bitmap);
  __mptr___5 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___5;
  goto ldv_32877;
  ldv_32876: ;
  if (rdev->sb_loaded != 1) {
    goto ldv_32871;
  } else {
  }
  tmp___12 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___12 == 0 && rdev->saved_raid_disk == -1) {
    md_super_write(mddev, rdev, rdev->sb_start, rdev->sb_size, rdev->sb_page);
    descriptor___0.modname = "md_mod";
    descriptor___0.function = "md_update_sb";
    descriptor___0.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
    descriptor___0.format = "md: (write) %s\'s sb offset: %llu\n";
    descriptor___0.lineno = 2578U;
    descriptor___0.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = bdevname(rdev->bdev, (char *)(& b));
      __dynamic_pr_debug(& descriptor___0, "md: (write) %s\'s sb offset: %llu\n",
                         tmp___6, (unsigned long long )rdev->sb_start);
    } else {
    }
    rdev->sb_events = mddev->events;
    if (rdev->badblocks.size != 0UL) {
      md_super_write(mddev, rdev, rdev->badblocks.sector, (int )(rdev->badblocks.size << 9),
                     rdev->bb_page);
      rdev->badblocks.size = 0UL;
    } else {
    }
  } else {
    tmp___11 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___11 != 0) {
      descriptor___1.modname = "md_mod";
      descriptor___1.function = "md_update_sb";
      descriptor___1.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
      descriptor___1.format = "md: %s (skipping faulty)\n";
      descriptor___1.lineno = 2590U;
      descriptor___1.flags = 0U;
      tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___9 != 0L) {
        tmp___8 = bdevname(rdev->bdev, (char *)(& b));
        __dynamic_pr_debug(& descriptor___1, "md: %s (skipping faulty)\n", tmp___8);
      } else {
      }
    } else {
      descriptor___2.modname = "md_mod";
      descriptor___2.function = "md_update_sb";
      descriptor___2.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
      descriptor___2.format = "(skipping incremental s/r ";
      descriptor___2.lineno = 2592U;
      descriptor___2.flags = 0U;
      tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___10 != 0L) {
        __dynamic_pr_debug(& descriptor___2, "(skipping incremental s/r ");
      } else {
      }
    }
  }
  if (mddev->level == -4) {
    goto ldv_32875;
  } else {
  }
  ldv_32871:
  __mptr___6 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___6;
  ldv_32877: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32876;
  } else {
  }
  ldv_32875:
  md_super_wait(mddev);
  spin_lock_irq(& mddev->write_lock);
  if (mddev->in_sync != sync_req) {
    spin_unlock_irq(& mddev->write_lock);
    goto repeat;
  } else {
    tmp___13 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->flags));
    if (tmp___13 != 0) {
      spin_unlock_irq(& mddev->write_lock);
      goto repeat;
    } else {
    }
  }
  clear_bit(2, (unsigned long volatile *)(& mddev->flags));
  spin_unlock_irq(& mddev->write_lock);
  __wake_up(& mddev->sb_wait, 3U, 1, 0);
  tmp___14 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___14 != 0) {
    sysfs_notify(& mddev->kobj, 0, "sync_completed");
  } else {
  }
  __mptr___7 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___7;
  goto ldv_32883;
  ldv_32882:
  tmp___15 = test_and_clear_bit(7, (unsigned long volatile *)(& rdev->flags));
  if (tmp___15 != 0) {
    clear_bit(5, (unsigned long volatile *)(& rdev->flags));
  } else {
  }
  if (any_badblocks_changed != 0) {
    md_ack_all_badblocks(& rdev->badblocks);
  } else {
  }
  clear_bit(8, (unsigned long volatile *)(& rdev->flags));
  __wake_up(& rdev->blocked_wait, 3U, 1, 0);
  __mptr___8 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___8;
  ldv_32883: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_32882;
  } else {
  }
  return;
}
}
static int cmd_match(char const *cmd , char const *str )
{
  {
  goto ldv_32890;
  ldv_32889:
  cmd = cmd + 1;
  str = str + 1;
  ldv_32890: ;
  if (((int )((signed char )*cmd) != 0 && (int )((signed char )*str) != 0) && (int )((signed char )*cmd) == (int )((signed char )*str)) {
    goto ldv_32889;
  } else {
  }
  if ((int )((signed char )*cmd) == 10) {
    cmd = cmd + 1;
  } else {
  }
  if ((int )((signed char )*str) != 0 || (int )((signed char )*cmd) != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static ssize_t state_show(struct md_rdev *rdev , char *page )
{
  char *sep ;
  size_t len ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  sep = (char *)"";
  len = 0UL;
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___0 != 0 || rdev->badblocks.unacked_exist != 0) {
    tmp = sprintf(page + len, "%sfaulty", sep);
    len = (size_t )tmp + len;
    sep = (char *)",";
  } else {
  }
  tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___2 != 0) {
    tmp___1 = sprintf(page + len, "%sin_sync", sep);
    len = (size_t )tmp___1 + len;
    sep = (char *)",";
  } else {
  }
  tmp___4 = constant_test_bit(3U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___4 != 0) {
    tmp___3 = sprintf(page + len, "%swrite_mostly", sep);
    len = (size_t )tmp___3 + len;
    sep = (char *)",";
  } else {
  }
  tmp___6 = constant_test_bit(5U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___6 != 0) {
    tmp___5 = sprintf(page + len, "%sblocked", sep);
    len = (size_t )tmp___5 + len;
    sep = (char *)",";
  } else
  if (rdev->badblocks.unacked_exist != 0) {
    tmp___7 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___7 == 0) {
      tmp___5 = sprintf(page + len, "%sblocked", sep);
      len = (size_t )tmp___5 + len;
      sep = (char *)",";
    } else {
    }
  } else {
  }
  tmp___9 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___9 == 0) {
    tmp___10 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___10 == 0) {
      tmp___8 = sprintf(page + len, "%sspare", sep);
      len = (size_t )tmp___8 + len;
      sep = (char *)",";
    } else {
    }
  } else {
  }
  tmp___12 = constant_test_bit(6U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___12 != 0) {
    tmp___11 = sprintf(page + len, "%swrite_error", sep);
    len = (size_t )tmp___11 + len;
    sep = (char *)",";
  } else {
  }
  tmp___14 = constant_test_bit(9U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___14 != 0) {
    tmp___13 = sprintf(page + len, "%swant_replacement", sep);
    len = (size_t )tmp___13 + len;
    sep = (char *)",";
  } else {
  }
  tmp___16 = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___16 != 0) {
    tmp___15 = sprintf(page + len, "%sreplacement", sep);
    len = (size_t )tmp___15 + len;
    sep = (char *)",";
  } else {
  }
  tmp___17 = sprintf(page + len, "\n");
  return ((ssize_t )((size_t )tmp___17 + len));
}
}
static ssize_t state_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  int err ;
  int tmp ;
  struct mddev *mddev ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  err = -22;
  tmp___14 = cmd_match(buf, "faulty");
  if (tmp___14 != 0 && (unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0)) {
    md_error(rdev->mddev, rdev);
    tmp = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp != 0) {
      err = 0;
    } else {
      err = -16;
    }
  } else {
    tmp___13 = cmd_match(buf, "remove");
    if (tmp___13 != 0) {
      if (rdev->raid_disk >= 0) {
        err = -16;
      } else {
        mddev = rdev->mddev;
        kick_rdev_from_array(rdev);
        if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
          md_update_sb(mddev, 1);
        } else {
        }
        md_new_event(mddev);
        err = 0;
      }
    } else {
      tmp___12 = cmd_match(buf, "writemostly");
      if (tmp___12 != 0) {
        set_bit(3U, (unsigned long volatile *)(& rdev->flags));
        err = 0;
      } else {
        tmp___11 = cmd_match(buf, "-writemostly");
        if (tmp___11 != 0) {
          clear_bit(3, (unsigned long volatile *)(& rdev->flags));
          err = 0;
        } else {
          tmp___10 = cmd_match(buf, "blocked");
          if (tmp___10 != 0) {
            set_bit(5U, (unsigned long volatile *)(& rdev->flags));
            err = 0;
          } else {
            tmp___9 = cmd_match(buf, "-blocked");
            if (tmp___9 != 0) {
              tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
              if (tmp___0 == 0 && rdev->badblocks.unacked_exist != 0) {
                md_error(rdev->mddev, rdev);
              } else {
              }
              clear_bit(5, (unsigned long volatile *)(& rdev->flags));
              clear_bit(8, (unsigned long volatile *)(& rdev->flags));
              __wake_up(& rdev->blocked_wait, 3U, 1, 0);
              set_bit(5U, (unsigned long volatile *)(& (rdev->mddev)->recovery));
              md_wakeup_thread((rdev->mddev)->thread);
              err = 0;
            } else {
              tmp___8 = cmd_match(buf, "insync");
              if (tmp___8 != 0 && rdev->raid_disk == -1) {
                set_bit(1U, (unsigned long volatile *)(& rdev->flags));
                err = 0;
              } else {
                tmp___7 = cmd_match(buf, "write_error");
                if (tmp___7 != 0) {
                  set_bit(6U, (unsigned long volatile *)(& rdev->flags));
                  err = 0;
                } else {
                  tmp___6 = cmd_match(buf, "-write_error");
                  if (tmp___6 != 0) {
                    clear_bit(6, (unsigned long volatile *)(& rdev->flags));
                    err = 0;
                  } else {
                    tmp___5 = cmd_match(buf, "want_replacement");
                    if (tmp___5 != 0) {
                      if (rdev->raid_disk >= 0) {
                        tmp___1 = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
                        if (tmp___1 == 0) {
                          set_bit(9U, (unsigned long volatile *)(& rdev->flags));
                        } else {
                        }
                      } else {
                      }
                      set_bit(5U, (unsigned long volatile *)(& (rdev->mddev)->recovery));
                      md_wakeup_thread((rdev->mddev)->thread);
                      err = 0;
                    } else {
                      tmp___4 = cmd_match(buf, "-want_replacement");
                      if (tmp___4 != 0) {
                        err = 0;
                        clear_bit(9, (unsigned long volatile *)(& rdev->flags));
                      } else {
                        tmp___3 = cmd_match(buf, "replacement");
                        if (tmp___3 != 0) {
                          if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0)) {
                            err = -16;
                          } else {
                            set_bit(10U, (unsigned long volatile *)(& rdev->flags));
                            err = 0;
                          }
                        } else {
                          tmp___2 = cmd_match(buf, "-replacement");
                          if (tmp___2 != 0) {
                            if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0)) {
                              err = -16;
                            } else {
                              clear_bit(10, (unsigned long volatile *)(& rdev->flags));
                              err = 0;
                            }
                          } else {
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  if (err == 0) {
    sysfs_notify_dirent_safe(rdev->sysfs_state);
  } else {
  }
  return ((ssize_t )(err != 0 ? (size_t )err : len));
}
}
static struct rdev_sysfs_entry rdev_state = {{"state", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & state_show,
    & state_store};
static ssize_t errors_show(struct md_rdev *rdev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& rdev->corrected_errors));
  tmp___0 = sprintf(page, "%d\n", tmp);
  return ((ssize_t )tmp___0);
}
}
static ssize_t errors_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  char *e ;
  unsigned long n ;
  unsigned long tmp ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  n = tmp;
  if ((int )((signed char )*buf) != 0 && ((int )((signed char )*e) == 0 || (int )((signed char )*e) == 10)) {
    atomic_set(& rdev->corrected_errors, (int )n);
    return ((ssize_t )len);
  } else {
  }
  return (-22L);
}
}
static struct rdev_sysfs_entry rdev_errors = {{"errors", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & errors_show,
    & errors_store};
static ssize_t slot_show(struct md_rdev *rdev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (rdev->raid_disk < 0) {
    tmp = sprintf(page, "none\n");
    return ((ssize_t )tmp);
  } else {
    tmp___0 = sprintf(page, "%d\n", rdev->raid_disk);
    return ((ssize_t )tmp___0);
  }
}
}
static ssize_t slot_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  char *e ;
  int err ;
  int slot ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  slot = (int )tmp;
  tmp___0 = strncmp(buf, "none", 4UL);
  if (tmp___0 == 0) {
    slot = -1;
  } else
  if ((unsigned long )((char const *)e) == (unsigned long )buf || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0) && slot == -1) {
    if (rdev->raid_disk == -1) {
      return (-17L);
    } else {
    }
    if ((unsigned long )((rdev->mddev)->pers)->hot_remove_disk == (unsigned long )((int (*)(struct mddev * ,
                                                                                            struct md_rdev * ))0)) {
      return (-22L);
    } else {
    }
    clear_bit(5, (unsigned long volatile *)(& rdev->flags));
    remove_and_add_spares(rdev->mddev, rdev);
    if (rdev->raid_disk >= 0) {
      return (-16L);
    } else {
    }
    set_bit(5U, (unsigned long volatile *)(& (rdev->mddev)->recovery));
    md_wakeup_thread((rdev->mddev)->thread);
  } else
  if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0)) {
    if (rdev->raid_disk != -1) {
      return (-16L);
    } else {
    }
    tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& (rdev->mddev)->recovery));
    if (tmp___1 != 0) {
      return (-16L);
    } else {
    }
    if ((unsigned long )((rdev->mddev)->pers)->hot_add_disk == (unsigned long )((int (*)(struct mddev * ,
                                                                                         struct md_rdev * ))0)) {
      return (-22L);
    } else {
    }
    if ((rdev->mddev)->raid_disks <= slot && (rdev->mddev)->raid_disks + (rdev->mddev)->delta_disks <= slot) {
      return (-28L);
    } else {
    }
    rdev->raid_disk = slot;
    tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___2 != 0) {
      rdev->saved_raid_disk = slot;
    } else {
      rdev->saved_raid_disk = -1;
    }
    clear_bit(1, (unsigned long volatile *)(& rdev->flags));
    err = (*(((rdev->mddev)->pers)->hot_add_disk))(rdev->mddev, rdev);
    if (err != 0) {
      rdev->raid_disk = -1;
      return ((ssize_t )err);
    } else {
      sysfs_notify_dirent_safe(rdev->sysfs_state);
    }
    tmp___3 = sysfs_link_rdev(rdev->mddev, rdev);
  } else {
    if ((rdev->mddev)->raid_disks <= slot && (rdev->mddev)->raid_disks + (rdev->mddev)->delta_disks <= slot) {
      return (-28L);
    } else {
    }
    rdev->raid_disk = slot;
    clear_bit(0, (unsigned long volatile *)(& rdev->flags));
    clear_bit(3, (unsigned long volatile *)(& rdev->flags));
    set_bit(1U, (unsigned long volatile *)(& rdev->flags));
    sysfs_notify_dirent_safe(rdev->sysfs_state);
  }
  return ((ssize_t )len);
}
}
static struct rdev_sysfs_entry rdev_slot = {{"slot", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & slot_show,
    & slot_store};
static ssize_t offset_show(struct md_rdev *rdev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )rdev->data_offset);
  return ((ssize_t )tmp);
}
}
static ssize_t offset_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  unsigned long long offset ;
  int tmp ;
  {
  tmp = kstrtoull(buf, 10U, & offset);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0) && rdev->raid_disk >= 0) {
    return (-16L);
  } else {
  }
  if (rdev->sectors != 0UL && (rdev->mddev)->external != 0) {
    return (-16L);
  } else {
  }
  rdev->data_offset = (sector_t )offset;
  rdev->new_data_offset = (sector_t )offset;
  return ((ssize_t )len);
}
}
static struct rdev_sysfs_entry rdev_offset = {{"offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & offset_show,
    & offset_store};
static ssize_t new_offset_show(struct md_rdev *rdev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )rdev->new_data_offset);
  return ((ssize_t )tmp);
}
}
static ssize_t new_offset_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  unsigned long long new_offset ;
  struct mddev *mddev ;
  int tmp ;
  int tmp___0 ;
  {
  mddev = rdev->mddev;
  tmp = kstrtoull(buf, 10U, & new_offset);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
    return (-16L);
  } else {
  }
  if ((unsigned long long )rdev->data_offset == new_offset) {
  } else
  if ((unsigned long long )rdev->data_offset < new_offset) {
    if ((new_offset - (unsigned long long )rdev->data_offset) + (unsigned long long )mddev->dev_sectors > (unsigned long long )rdev->sectors) {
      return (-7L);
    } else {
    }
  } else {
  }
  if ((unsigned long long )rdev->data_offset > new_offset && mddev->reshape_backwards != 0) {
    return (-22L);
  } else {
  }
  if ((unsigned long long )rdev->data_offset < new_offset && mddev->reshape_backwards == 0) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0) && mddev->persistent != 0) {
    tmp___0 = (*(super_types[mddev->major_version].allow_new_offset))(rdev, new_offset);
    if (tmp___0 == 0) {
      return (-7L);
    } else {
    }
  } else {
  }
  rdev->new_data_offset = (sector_t )new_offset;
  if ((unsigned long long )rdev->data_offset < new_offset) {
    mddev->reshape_backwards = 1;
  } else
  if ((unsigned long long )rdev->data_offset > new_offset) {
    mddev->reshape_backwards = 0;
  } else {
  }
  return ((ssize_t )len);
}
}
static struct rdev_sysfs_entry rdev_new_offset = {{"new_offset", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & new_offset_show, & new_offset_store};
static ssize_t rdev_size_show(struct md_rdev *rdev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )rdev->sectors / 2ULL);
  return ((ssize_t )tmp);
}
}
static int overlaps(sector_t s1 , sector_t l1 , sector_t s2 , sector_t l2 )
{
  {
  if (s1 + l1 <= s2) {
    return (0);
  } else {
  }
  if (s2 + l2 <= s1) {
    return (0);
  } else {
  }
  return (1);
}
}
static int strict_blocks_to_sectors(char const *buf , sector_t *sectors )
{
  unsigned long long blocks ;
  sector_t new ;
  int tmp ;
  {
  tmp = kstrtoull(buf, 10U, & blocks);
  if (tmp < 0) {
    return (-22);
  } else {
  }
  if ((long )blocks < 0L) {
    return (-22);
  } else {
  }
  new = (sector_t )(blocks * 2ULL);
  if (blocks * 2ULL != (unsigned long long )new) {
    return (-22);
  } else {
  }
  *sectors = new;
  return (0);
}
}
static ssize_t rdev_size_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  struct mddev *my_mddev ;
  sector_t oldsectors ;
  sector_t sectors ;
  int tmp ;
  unsigned long long tmp___0 ;
  loff_t tmp___1 ;
  struct mddev *mddev ;
  int overlap ;
  struct list_head *tmp___2 ;
  struct md_rdev *rdev2 ;
  struct list_head const *__mptr ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  my_mddev = rdev->mddev;
  oldsectors = rdev->sectors;
  tmp = strict_blocks_to_sectors(buf, & sectors);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  if (rdev->data_offset != rdev->new_data_offset) {
    return (-22L);
  } else {
  }
  if ((unsigned long )my_mddev->pers != (unsigned long )((struct md_personality *)0) && rdev->raid_disk >= 0) {
    if (my_mddev->persistent != 0) {
      tmp___0 = (*(super_types[my_mddev->major_version].rdev_size_change))(rdev, sectors);
      sectors = (sector_t )tmp___0;
      if (sectors == 0UL) {
        return (-16L);
      } else {
      }
    } else
    if (sectors == 0UL) {
      tmp___1 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
      sectors = (sector_t )((unsigned long long )(tmp___1 >> 9) - (unsigned long long )rdev->data_offset);
    } else {
    }
    if ((unsigned long )(my_mddev->pers)->resize == (unsigned long )((int (*)(struct mddev * ,
                                                                              sector_t ))0)) {
      return (-22L);
    } else {
    }
  } else {
  }
  if (my_mddev->dev_sectors > sectors) {
    return (-22L);
  } else {
  }
  rdev->sectors = sectors;
  if (sectors > oldsectors && my_mddev->external != 0) {
    overlap = 0;
    mddev_unlock(my_mddev);
    spin_lock(& all_mddevs_lock);
    tmp___2 = all_mddevs.next;
    mddev = 0;
    goto ldv_33007;
    ldv_33006:
    mddev_lock(mddev);
    __mptr = (struct list_head const *)mddev->disks.next;
    rdev2 = (struct md_rdev *)__mptr;
    goto ldv_33004;
    ldv_33003: ;
    if ((unsigned long )rdev->bdev == (unsigned long )rdev2->bdev && (unsigned long )rdev != (unsigned long )rdev2) {
      tmp___3 = overlaps(rdev->data_offset, rdev->sectors, rdev2->data_offset, rdev2->sectors);
      if (tmp___3 != 0) {
        overlap = 1;
        goto ldv_33002;
      } else {
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)rdev2->same_set.next;
    rdev2 = (struct md_rdev *)__mptr___0;
    ldv_33004: ;
    if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev->disks)) {
      goto ldv_33003;
    } else {
    }
    ldv_33002:
    mddev_unlock(mddev);
    if (overlap != 0) {
      mddev_put(mddev);
      goto ldv_33005;
    } else {
    }
    spin_lock(& all_mddevs_lock);
    tmp___2 = tmp___2->next;
    ldv_33007: ;
    if ((unsigned long )tmp___2 != (unsigned long )(& all_mddevs)) {
      __mptr___1 = (struct list_head const *)tmp___2;
      mddev_get((struct mddev *)__mptr___1 + 0xfffffffffffff9c8UL);
    } else {
    }
    spin_unlock(& all_mddevs_lock);
    if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
      mddev_put(mddev);
    } else {
    }
    __mptr___2 = (struct list_head const *)tmp___2;
    mddev = (struct mddev *)__mptr___2 + 0xfffffffffffff9c8UL;
    if (((unsigned long )tmp___2 != (unsigned long )(& all_mddevs)) != 0) {
      goto ldv_33006;
    } else {
    }
    ldv_33005:
    mddev_lock(my_mddev);
    if (overlap != 0) {
      rdev->sectors = oldsectors;
      return (-16L);
    } else {
    }
  } else {
  }
  return ((ssize_t )len);
}
}
static struct rdev_sysfs_entry rdev_size = {{"size", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & rdev_size_show,
    & rdev_size_store};
static ssize_t recovery_start_show(struct md_rdev *rdev , char *page )
{
  unsigned long long recovery_start ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  recovery_start = (unsigned long long )rdev->recovery_offset;
  tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___0 != 0 || recovery_start == 0xffffffffffffffffULL) {
    tmp = sprintf(page, "none\n");
    return ((ssize_t )tmp);
  } else {
  }
  tmp___1 = sprintf(page, "%llu\n", recovery_start);
  return ((ssize_t )tmp___1);
}
}
static ssize_t recovery_start_store(struct md_rdev *rdev , char const *buf , size_t len )
{
  unsigned long long recovery_start ;
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = cmd_match(buf, "none");
  if (tmp___0 != 0) {
    recovery_start = 0xffffffffffffffffULL;
  } else {
    tmp = kstrtoull(buf, 10U, & recovery_start);
    if (tmp != 0) {
      return (-22L);
    } else {
    }
  }
  if ((unsigned long )(rdev->mddev)->pers != (unsigned long )((struct md_personality *)0) && rdev->raid_disk >= 0) {
    return (-16L);
  } else {
  }
  rdev->recovery_offset = (sector_t )recovery_start;
  if (recovery_start == 0xffffffffffffffffULL) {
    set_bit(1U, (unsigned long volatile *)(& rdev->flags));
  } else {
    clear_bit(1, (unsigned long volatile *)(& rdev->flags));
  }
  return ((ssize_t )len);
}
}
static struct rdev_sysfs_entry rdev_recovery_start = {{"recovery_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & recovery_start_show, & recovery_start_store};
static ssize_t badblocks_show(struct badblocks *bb , char *page , int unack ) ;
static ssize_t badblocks_store(struct badblocks *bb , char const *page , size_t len ,
                               int unack ) ;
static ssize_t bb_show(struct md_rdev *rdev , char *page )
{
  ssize_t tmp ;
  {
  tmp = badblocks_show(& rdev->badblocks, page, 0);
  return (tmp);
}
}
static ssize_t bb_store(struct md_rdev *rdev , char const *page , size_t len )
{
  int rv ;
  ssize_t tmp ;
  int tmp___0 ;
  {
  tmp = badblocks_store(& rdev->badblocks, page, len, 0);
  rv = (int )tmp;
  tmp___0 = test_and_clear_bit(8, (unsigned long volatile *)(& rdev->flags));
  if (tmp___0 != 0) {
    __wake_up(& rdev->blocked_wait, 3U, 1, 0);
  } else {
  }
  return ((ssize_t )rv);
}
}
static struct rdev_sysfs_entry rdev_bad_blocks = {{"bad_blocks", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bb_show, & bb_store};
static ssize_t ubb_show(struct md_rdev *rdev , char *page )
{
  ssize_t tmp ;
  {
  tmp = badblocks_show(& rdev->badblocks, page, 1);
  return (tmp);
}
}
static ssize_t ubb_store(struct md_rdev *rdev , char const *page , size_t len )
{
  ssize_t tmp ;
  {
  tmp = badblocks_store(& rdev->badblocks, page, len, 1);
  return (tmp);
}
}
static struct rdev_sysfs_entry rdev_unack_bad_blocks = {{"unacknowledged_bad_blocks", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & ubb_show,
    & ubb_store};
static struct attribute *rdev_default_attrs[10U] =
  { & rdev_state.attr, & rdev_errors.attr, & rdev_slot.attr, & rdev_offset.attr,
        & rdev_new_offset.attr, & rdev_size.attr, & rdev_recovery_start.attr, & rdev_bad_blocks.attr,
        & rdev_unack_bad_blocks.attr, 0};
static ssize_t rdev_attr_show(struct kobject *kobj , struct attribute *attr , char *page )
{
  struct rdev_sysfs_entry *entry ;
  struct attribute const *__mptr ;
  struct md_rdev *rdev ;
  struct kobject const *__mptr___0 ;
  struct mddev *mddev ;
  ssize_t rv ;
  int tmp ;
  {
  __mptr = (struct attribute const *)attr;
  entry = (struct rdev_sysfs_entry *)__mptr;
  __mptr___0 = (struct kobject const *)kobj;
  rdev = (struct md_rdev *)__mptr___0 + 0xffffffffffffff88UL;
  mddev = rdev->mddev;
  if ((unsigned long )entry->show == (unsigned long )((ssize_t (*)(struct md_rdev * ,
                                                                   char * ))0)) {
    return (-5L);
  } else {
  }
  if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
    tmp = mddev_lock(mddev);
    rv = (ssize_t )tmp;
  } else {
    rv = -16L;
  }
  if (rv == 0L) {
    if ((unsigned long )rdev->mddev == (unsigned long )((struct mddev *)0)) {
      rv = -16L;
    } else {
      rv = (*(entry->show))(rdev, page);
    }
    mddev_unlock(mddev);
  } else {
  }
  return (rv);
}
}
static ssize_t rdev_attr_store(struct kobject *kobj , struct attribute *attr , char const *page ,
                               size_t length )
{
  struct rdev_sysfs_entry *entry ;
  struct attribute const *__mptr ;
  struct md_rdev *rdev ;
  struct kobject const *__mptr___0 ;
  ssize_t rv ;
  struct mddev *mddev ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct attribute const *)attr;
  entry = (struct rdev_sysfs_entry *)__mptr;
  __mptr___0 = (struct kobject const *)kobj;
  rdev = (struct md_rdev *)__mptr___0 + 0xffffffffffffff88UL;
  mddev = rdev->mddev;
  if ((unsigned long )entry->store == (unsigned long )((ssize_t (*)(struct md_rdev * ,
                                                                    char const * ,
                                                                    size_t ))0)) {
    return (-5L);
  } else {
  }
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
    tmp___1 = mddev_lock(mddev);
    rv = (ssize_t )tmp___1;
  } else {
    rv = -16L;
  }
  if (rv == 0L) {
    if ((unsigned long )rdev->mddev == (unsigned long )((struct mddev *)0)) {
      rv = -16L;
    } else {
      rv = (*(entry->store))(rdev, page, length);
    }
    mddev_unlock(mddev);
  } else {
  }
  return (rv);
}
}
static void rdev_free(struct kobject *ko )
{
  struct md_rdev *rdev ;
  struct kobject const *__mptr ;
  {
  __mptr = (struct kobject const *)ko;
  rdev = (struct md_rdev *)__mptr + 0xffffffffffffff88UL;
  kfree((void const *)rdev);
  return;
}
}
static struct sysfs_ops const rdev_sysfs_ops = {& rdev_attr_show, & rdev_attr_store, 0};
static struct kobj_type rdev_ktype = {& rdev_free, & rdev_sysfs_ops, (struct attribute **)(& rdev_default_attrs), 0,
    0};
int md_rdev_init(struct md_rdev *rdev )
{
  struct lock_class_key __key ;
  void *tmp ;
  seqcount_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  rdev->desc_nr = -1;
  rdev->saved_raid_disk = -1;
  rdev->raid_disk = -1;
  rdev->flags = 0UL;
  rdev->data_offset = 0UL;
  rdev->new_data_offset = 0UL;
  rdev->sb_events = 0ULL;
  rdev->last_read_error.tv_sec = 0L;
  rdev->last_read_error.tv_nsec = 0L;
  rdev->sb_loaded = 0;
  rdev->bb_page = 0;
  atomic_set(& rdev->nr_pending, 0);
  atomic_set(& rdev->read_errors, 0);
  atomic_set(& rdev->corrected_errors, 0);
  INIT_LIST_HEAD(& rdev->same_set);
  __init_waitqueue_head(& rdev->blocked_wait, "&rdev->blocked_wait", & __key);
  rdev->badblocks.count = 0;
  rdev->badblocks.shift = -1;
  tmp = kmalloc(4096UL, 208U);
  rdev->badblocks.page = (u64 *)tmp;
  __constr_expr_0.sequence = 0U;
  rdev->badblocks.lock.seqcount = __constr_expr_0;
  spinlock_check(& rdev->badblocks.lock.lock);
  __raw_spin_lock_init(& rdev->badblocks.lock.lock.ldv_6014.rlock, "&(&(&rdev->badblocks.lock)->lock)->rlock",
                       & __key___0);
  if ((unsigned long )rdev->badblocks.page == (unsigned long )((u64 *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static struct md_rdev *md_import_device(dev_t newdev , int super_format , int super_minor )
{
  char b[32U] ;
  int err ;
  struct md_rdev *rdev ;
  sector_t size ;
  void *tmp ;
  void *tmp___0 ;
  loff_t tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  void *tmp___5 ;
  {
  tmp = kzalloc(552UL, 208U);
  rdev = (struct md_rdev *)tmp;
  if ((unsigned long )rdev == (unsigned long )((struct md_rdev *)0)) {
    printk("\vmd: could not alloc mem for new device!\n");
    tmp___0 = ERR_PTR(-12L);
    return ((struct md_rdev *)tmp___0);
  } else {
  }
  err = md_rdev_init(rdev);
  if (err != 0) {
    goto abort_free;
  } else {
  }
  err = alloc_disk_sb(rdev);
  if (err != 0) {
    goto abort_free;
  } else {
  }
  err = lock_rdev(rdev, newdev, super_format == -2);
  if (err != 0) {
    goto abort_free;
  } else {
  }
  kobject_init(& rdev->kobj, & rdev_ktype);
  tmp___1 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
  size = (sector_t )(tmp___1 >> 10);
  if (size == 0UL) {
    tmp___2 = bdevname(rdev->bdev, (char *)(& b));
    printk("\fmd: %s has zero or unknown size, marking faulty!\n", tmp___2);
    err = -22;
    goto abort_free;
  } else {
  }
  if (super_format >= 0) {
    err = (*(super_types[super_format].load_super))(rdev, 0, super_minor);
    if (err == -22) {
      tmp___3 = bdevname(rdev->bdev, (char *)(& b));
      printk("\fmd: %s does not have a valid v%d.%d superblock, not importing!\n",
             tmp___3, super_format, super_minor);
      goto abort_free;
    } else {
    }
    if (err < 0) {
      tmp___4 = bdevname(rdev->bdev, (char *)(& b));
      printk("\fmd: could not read %s\'s sb, not importing!\n", tmp___4);
      goto abort_free;
    } else {
    }
  } else {
  }
  return (rdev);
  abort_free: ;
  if ((unsigned long )rdev->bdev != (unsigned long )((struct block_device *)0)) {
    unlock_rdev(rdev);
  } else {
  }
  md_rdev_clear(rdev);
  kfree((void const *)rdev);
  tmp___5 = ERR_PTR((long )err);
  return ((struct md_rdev *)tmp___5);
}
}
static void analyze_sbs(struct mddev *mddev )
{
  int i ;
  struct md_rdev *rdev ;
  struct md_rdev *freshest ;
  struct md_rdev *tmp ;
  char b[32U] ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  char const *tmp___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  char const *tmp___2 ;
  char *tmp___3 ;
  char const *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int _min1 ;
  int _min2 ;
  struct list_head const *__mptr___4 ;
  {
  freshest = 0;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  tmp = (struct md_rdev *)__mptr___0;
  goto ldv_33128;
  ldv_33127:
  tmp___0 = (*(super_types[mddev->major_version].load_super))(rdev, freshest, mddev->minor_version);
  switch (tmp___0) {
  case 1:
  freshest = rdev;
  goto ldv_33124;
  case 0: ;
  goto ldv_33124;
  default:
  tmp___1 = bdevname(rdev->bdev, (char *)(& b));
  printk("\vmd: fatal superblock inconsistency in %s -- removing from array\n", tmp___1);
  kick_rdev_from_array(rdev);
  }
  ldv_33124:
  rdev = tmp;
  __mptr___1 = (struct list_head const *)tmp->same_set.next;
  tmp = (struct md_rdev *)__mptr___1;
  ldv_33128: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33127;
  } else {
  }
  (*(super_types[mddev->major_version].validate_super))(mddev, freshest);
  i = 0;
  __mptr___2 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___2;
  __mptr___3 = (struct list_head const *)rdev->same_set.next;
  tmp = (struct md_rdev *)__mptr___3;
  goto ldv_33141;
  ldv_33140: ;
  if (mddev->max_disks != 0 && (rdev->desc_nr >= mddev->max_disks || mddev->max_disks < i)) {
    tmp___2 = bdevname(rdev->bdev, (char *)(& b));
    tmp___3 = mdname(mddev);
    printk("\fmd: %s: %s: only %d devices permitted\n", tmp___3, tmp___2, mddev->max_disks);
    kick_rdev_from_array(rdev);
    goto ldv_33136;
  } else {
  }
  if ((unsigned long )rdev != (unsigned long )freshest) {
    tmp___5 = (*(super_types[mddev->major_version].validate_super))(mddev, rdev);
    if (tmp___5 != 0) {
      tmp___4 = bdevname(rdev->bdev, (char *)(& b));
      printk("\fmd: kicking non-fresh %s from array!\n", tmp___4);
      kick_rdev_from_array(rdev);
      goto ldv_33136;
    } else {
    }
  } else {
  }
  if (mddev->level == -4) {
    tmp___6 = i;
    i = i + 1;
    rdev->desc_nr = tmp___6;
    rdev->raid_disk = rdev->desc_nr;
    set_bit(1U, (unsigned long volatile *)(& rdev->flags));
  } else {
    _min1 = 0;
    _min2 = mddev->delta_disks;
    if (rdev->raid_disk >= mddev->raid_disks - (_min1 < _min2 ? _min1 : _min2)) {
      rdev->raid_disk = -1;
      clear_bit(1, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
  }
  ldv_33136:
  rdev = tmp;
  __mptr___4 = (struct list_head const *)tmp->same_set.next;
  tmp = (struct md_rdev *)__mptr___4;
  ldv_33141: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33140;
  } else {
  }
  return;
}
}
int strict_strtoul_scaled(char const *cp , unsigned long *res , int scale )
{
  unsigned long result ;
  long decimals ;
  unsigned int value ;
  {
  result = 0UL;
  decimals = -1L;
  goto ldv_33152;
  ldv_33151: ;
  if ((int )((signed char )*cp) == 46) {
    decimals = 0L;
  } else
  if ((long )scale > decimals) {
    value = (unsigned int )((int )*cp + -48);
    result = result * 10UL + (unsigned long )value;
    if (decimals >= 0L) {
      decimals = decimals + 1L;
    } else {
    }
  } else {
  }
  cp = cp + 1;
  ldv_33152: ;
  if (((int )_ctype[(int )((unsigned char )*cp)] & 4) != 0 || ((int )((signed char )*cp) == 46 && decimals < 0L)) {
    goto ldv_33151;
  } else {
  }
  if ((int )((signed char )*cp) == 10) {
    cp = cp + 1;
  } else {
  }
  if ((int )((signed char )*cp) != 0) {
    return (-22);
  } else {
  }
  if (decimals < 0L) {
    decimals = 0L;
  } else {
  }
  goto ldv_33155;
  ldv_33154:
  result = result * 10UL;
  decimals = decimals + 1L;
  ldv_33155: ;
  if ((long )scale > decimals) {
    goto ldv_33154;
  } else {
  }
  *res = result;
  return (0);
}
}
static void md_safemode_timeout(unsigned long data ) ;
static ssize_t safe_delay_show(struct mddev *mddev , char *page )
{
  int msec ;
  int tmp ;
  {
  msec = (int )((mddev->safemode_delay * 1000U) / 250U);
  tmp = sprintf(page, "%d.%03d\n", msec / 1000, msec % 1000);
  return ((ssize_t )tmp);
}
}
static ssize_t safe_delay_store(struct mddev *mddev , char const *cbuf , size_t len )
{
  unsigned long msec ;
  int tmp ;
  unsigned long old_delay ;
  {
  tmp = strict_strtoul_scaled(cbuf, & msec, 3);
  if (tmp < 0) {
    return (-22L);
  } else {
  }
  if (msec == 0UL) {
    mddev->safemode_delay = 0U;
  } else {
    old_delay = (unsigned long )mddev->safemode_delay;
    mddev->safemode_delay = (unsigned int )((msec * 250UL) / 1000UL);
    if (mddev->safemode_delay == 0U) {
      mddev->safemode_delay = 1U;
    } else {
    }
    if ((unsigned long )mddev->safemode_delay < old_delay) {
      md_safemode_timeout((unsigned long )mddev);
    } else {
    }
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_safe_delay = {{"safe_mode_delay", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & safe_delay_show, & safe_delay_store};
static ssize_t level_show(struct mddev *mddev , char *page )
{
  struct md_personality *p ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  p = mddev->pers;
  if ((unsigned long )p != (unsigned long )((struct md_personality *)0)) {
    tmp = sprintf(page, "%s\n", p->name);
    return ((ssize_t )tmp);
  } else
  if ((int )((signed char )mddev->clevel[0]) != 0) {
    tmp___0 = sprintf(page, "%s\n", (char *)(& mddev->clevel));
    return ((ssize_t )tmp___0);
  } else
  if (mddev->level != -1000000) {
    tmp___1 = sprintf(page, "%d\n", mddev->level);
    return ((ssize_t )tmp___1);
  } else {
    return (0L);
  }
}
}
static ssize_t level_store(struct mddev *mddev , char const *buf , size_t len )
{
  char clevel[16U] ;
  ssize_t rv ;
  struct md_personality *pers ;
  long level ;
  void *priv ;
  struct md_rdev *rdev ;
  char *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  char *tmp___4 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  char *tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  char *tmp___8 ;
  int tmp___9 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  char *tmp___10 ;
  int tmp___11 ;
  struct list_head const *__mptr___4 ;
  {
  rv = (ssize_t )len;
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    if (len == 0UL) {
      return (0L);
    } else {
    }
    if (len > 15UL) {
      return (-28L);
    } else {
    }
    strncpy((char *)(& mddev->clevel), buf, len);
    if ((int )((signed char )mddev->clevel[len - 1UL]) == 10) {
      len = len - 1UL;
    } else {
    }
    mddev->clevel[len] = 0;
    mddev->level = -1000000;
    return (rv);
  } else {
  }
  if (((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0) || mddev->reshape_position != 0xffffffffffffffffUL) || mddev->sysfs_active != 0) {
    return (-16L);
  } else {
  }
  if ((unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                           int ))0)) {
    tmp = mdname(mddev);
    printk("\fmd: %s: %s does not support online personality change\n", tmp, (mddev->pers)->name);
    return (-22L);
  } else {
  }
  if (len == 0UL || len > 15UL) {
    return (-22L);
  } else {
  }
  strncpy((char *)(& clevel), buf, len);
  if ((int )((signed char )clevel[len - 1UL]) == 10) {
    len = len - 1UL;
  } else {
  }
  clevel[len] = 0;
  tmp___0 = kstrtol((char const *)(& clevel), 10U, & level);
  if (tmp___0 != 0) {
    level = -1000000L;
  } else {
  }
  tmp___1 = __request_module(1, "md-%s", (char *)(& clevel));
  if (tmp___1 != 0) {
    __request_module(1, "md-level-%s", (char *)(& clevel));
  } else {
  }
  spin_lock(& pers_lock);
  pers = find_pers((int )level, (char *)(& clevel));
  if ((unsigned long )pers == (unsigned long )((struct md_personality *)0)) {
    spin_unlock(& pers_lock);
    printk("\fmd: personality %s not loaded\n", (char *)(& clevel));
    return (-22L);
  } else {
    tmp___2 = try_module_get(pers->owner);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      spin_unlock(& pers_lock);
      printk("\fmd: personality %s not loaded\n", (char *)(& clevel));
      return (-22L);
    } else {
    }
  }
  spin_unlock(& pers_lock);
  if ((unsigned long )mddev->pers == (unsigned long )pers) {
    module_put(pers->owner);
    return (rv);
  } else {
  }
  if ((unsigned long )pers->takeover == (unsigned long )((void *(*)(struct mddev * ))0)) {
    module_put(pers->owner);
    tmp___4 = mdname(mddev);
    printk("\fmd: %s: %s does not support personality takeover\n", tmp___4, (char *)(& clevel));
    return (-22L);
  } else {
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33193;
  ldv_33192:
  rdev->new_raid_disk = rdev->raid_disk;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33193: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33192;
  } else {
  }
  priv = (*(pers->takeover))(mddev);
  tmp___7 = IS_ERR((void const *)priv);
  if (tmp___7 != 0L) {
    mddev->new_level = mddev->level;
    mddev->new_layout = mddev->layout;
    mddev->new_chunk_sectors = mddev->chunk_sectors;
    mddev->raid_disks = mddev->raid_disks - mddev->delta_disks;
    mddev->delta_disks = 0;
    mddev->reshape_backwards = 0;
    module_put(pers->owner);
    tmp___5 = mdname(mddev);
    printk("\fmd: %s: %s would not accept array\n", tmp___5, (char *)(& clevel));
    tmp___6 = PTR_ERR((void const *)priv);
    return (tmp___6);
  } else {
  }
  mddev_suspend(mddev);
  (*((mddev->pers)->stop))(mddev);
  if ((unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0) && (unsigned long )pers->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                                                                                      sector_t ,
                                                                                                                                                                      int * ,
                                                                                                                                                                      int ))0)) {
    tmp___9 = sysfs_create_group(& mddev->kobj, (struct attribute_group const *)(& md_redundancy_group));
    if (tmp___9 != 0) {
      tmp___8 = mdname(mddev);
      printk("\fmd: cannot register extra attributes for %s\n", tmp___8);
    } else {
    }
    mddev->sysfs_action = sysfs_get_dirent(mddev->kobj.sd, 0, (unsigned char const *)"sync_action");
  } else {
  }
  if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0) && (unsigned long )pers->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                                                                                      sector_t ,
                                                                                                                                                                      int * ,
                                                                                                                                                                      int ))0)) {
    if ((unsigned long )mddev->to_remove == (unsigned long )((struct attribute_group *)0)) {
      mddev->to_remove = & md_redundancy_group;
    } else {
    }
  } else {
  }
  if ((unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0) && mddev->external != 0) {
    mddev->in_sync = 0;
    mddev->safemode_delay = 0U;
    mddev->safemode = 0U;
  } else {
  }
  __mptr___1 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___1;
  goto ldv_33201;
  ldv_33200: ;
  if (rdev->raid_disk < 0) {
    goto ldv_33199;
  } else {
  }
  if (rdev->new_raid_disk >= mddev->raid_disks) {
    rdev->new_raid_disk = -1;
  } else {
  }
  if (rdev->new_raid_disk == rdev->raid_disk) {
    goto ldv_33199;
  } else {
  }
  sysfs_unlink_rdev(mddev, rdev);
  ldv_33199:
  __mptr___2 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___2;
  ldv_33201: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33200;
  } else {
  }
  __mptr___3 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___3;
  goto ldv_33209;
  ldv_33208: ;
  if (rdev->raid_disk < 0) {
    goto ldv_33207;
  } else {
  }
  if (rdev->new_raid_disk == rdev->raid_disk) {
    goto ldv_33207;
  } else {
  }
  rdev->raid_disk = rdev->new_raid_disk;
  if (rdev->raid_disk < 0) {
    clear_bit(1, (unsigned long volatile *)(& rdev->flags));
  } else {
    tmp___11 = sysfs_link_rdev(mddev, rdev);
    if (tmp___11 != 0) {
      tmp___10 = mdname(mddev);
      printk("\fmd: cannot register rd%d for %s after level change\n", rdev->raid_disk,
             tmp___10);
    } else {
    }
  }
  ldv_33207:
  __mptr___4 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___4;
  ldv_33209: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33208;
  } else {
  }
  module_put((mddev->pers)->owner);
  mddev->pers = pers;
  mddev->private = priv;
  strlcpy((char *)(& mddev->clevel), (char const *)pers->name, 16UL);
  mddev->level = mddev->new_level;
  mddev->layout = mddev->new_layout;
  mddev->chunk_sectors = mddev->new_chunk_sectors;
  mddev->delta_disks = 0;
  mddev->reshape_backwards = 0;
  mddev->degraded = 0;
  if ((unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0)) {
    mddev->in_sync = 1;
    del_timer_sync(& mddev->safemode_timer);
  } else {
  }
  (*(pers->run))(mddev);
  set_bit(0U, (unsigned long volatile *)(& mddev->flags));
  mddev_resume(mddev);
  sysfs_notify(& mddev->kobj, 0, "level");
  md_new_event(mddev);
  return (rv);
}
}
static struct md_sysfs_entry md_level = {{"level", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & level_show,
    & level_store};
static ssize_t layout_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->reshape_position != 0xffffffffffffffffUL && mddev->layout != mddev->new_layout) {
    tmp = sprintf(page, "%d (%d)\n", mddev->new_layout, mddev->layout);
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = sprintf(page, "%d\n", mddev->layout);
  return ((ssize_t )tmp___0);
}
}
static ssize_t layout_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  unsigned long n ;
  unsigned long tmp ;
  int err ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  n = tmp;
  if ((int )((signed char )*buf) == 0 || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if ((unsigned long )(mddev->pers)->check_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
      return (-16L);
    } else {
    }
    mddev->new_layout = (int )n;
    err = (*((mddev->pers)->check_reshape))(mddev);
    if (err != 0) {
      mddev->new_layout = mddev->layout;
      return ((ssize_t )err);
    } else {
    }
  } else {
    mddev->new_layout = (int )n;
    if (mddev->reshape_position == 0xffffffffffffffffUL) {
      mddev->layout = (int )n;
    } else {
    }
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_layout = {{"layout", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & layout_show,
    & layout_store};
static ssize_t raid_disks_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->raid_disks == 0) {
    return (0L);
  } else {
  }
  if (mddev->reshape_position != 0xffffffffffffffffUL && mddev->delta_disks != 0) {
    tmp = sprintf(page, "%d (%d)\n", mddev->raid_disks, mddev->raid_disks - mddev->delta_disks);
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = sprintf(page, "%d\n", mddev->raid_disks);
  return ((ssize_t )tmp___0);
}
}
static int update_raid_disks(struct mddev *mddev , int raid_disks ) ;
static ssize_t raid_disks_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  int rv ;
  unsigned long n ;
  unsigned long tmp ;
  struct md_rdev *rdev ;
  int olddisks ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rv = 0;
  tmp = simple_strtoul(buf, & e, 10U);
  n = tmp;
  if ((int )((signed char )*buf) == 0 || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    rv = update_raid_disks(mddev, (int )n);
  } else
  if (mddev->reshape_position != 0xffffffffffffffffUL) {
    olddisks = mddev->raid_disks - mddev->delta_disks;
    __mptr = (struct list_head const *)mddev->disks.next;
    rdev = (struct md_rdev *)__mptr;
    goto ldv_33247;
    ldv_33246: ;
    if ((unsigned long )olddisks < n && rdev->data_offset < rdev->new_data_offset) {
      return (-22L);
    } else {
    }
    if ((unsigned long )olddisks > n && rdev->data_offset > rdev->new_data_offset) {
      return (-22L);
    } else {
    }
    __mptr___0 = (struct list_head const *)rdev->same_set.next;
    rdev = (struct md_rdev *)__mptr___0;
    ldv_33247: ;
    if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
      goto ldv_33246;
    } else {
    }
    mddev->delta_disks = (int )((unsigned int )n - (unsigned int )olddisks);
    mddev->raid_disks = (int )n;
    mddev->reshape_backwards = mddev->delta_disks < 0;
  } else {
    mddev->raid_disks = (int )n;
  }
  return ((ssize_t )(rv != 0 ? (size_t )rv : len));
}
}
static struct md_sysfs_entry md_raid_disks = {{"raid_disks", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & raid_disks_show, & raid_disks_store};
static ssize_t chunk_size_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->reshape_position != 0xffffffffffffffffUL && mddev->chunk_sectors != mddev->new_chunk_sectors) {
    tmp = sprintf(page, "%d (%d)\n", mddev->new_chunk_sectors << 9, mddev->chunk_sectors << 9);
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = sprintf(page, "%d\n", mddev->chunk_sectors << 9);
  return ((ssize_t )tmp___0);
}
}
static ssize_t chunk_size_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  unsigned long n ;
  unsigned long tmp ;
  int err ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  n = tmp;
  if ((int )((signed char )*buf) == 0 || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if ((unsigned long )(mddev->pers)->check_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
      return (-16L);
    } else {
    }
    mddev->new_chunk_sectors = (int )(n >> 9);
    err = (*((mddev->pers)->check_reshape))(mddev);
    if (err != 0) {
      mddev->new_chunk_sectors = mddev->chunk_sectors;
      return ((ssize_t )err);
    } else {
    }
  } else {
    mddev->new_chunk_sectors = (int )(n >> 9);
    if (mddev->reshape_position == 0xffffffffffffffffUL) {
      mddev->chunk_sectors = (int )(n >> 9);
    } else {
    }
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_chunk_size = {{"chunk_size", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & chunk_size_show, & chunk_size_store};
static ssize_t resync_start_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->recovery_cp == 0xffffffffffffffffUL) {
    tmp = sprintf(page, "none\n");
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = sprintf(page, "%llu\n", (unsigned long long )mddev->recovery_cp);
  return ((ssize_t )tmp___0);
}
}
static ssize_t resync_start_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  unsigned long long n ;
  unsigned long long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = simple_strtoull(buf, & e, 10U);
  n = tmp;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    tmp___0 = constant_test_bit(9U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___0 == 0) {
      return (-16L);
    } else {
    }
  } else {
  }
  tmp___1 = cmd_match(buf, "none");
  if (tmp___1 != 0) {
    n = 0xffffffffffffffffULL;
  } else
  if ((int )((signed char )*buf) == 0 || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  mddev->recovery_cp = (sector_t )n;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    set_bit(1U, (unsigned long volatile *)(& mddev->flags));
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_resync_start = {{"resync_start", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & resync_start_show, & resync_start_store};
static char *array_states[10U] =
  { (char *)"clear", (char *)"inactive", (char *)"suspended", (char *)"readonly",
        (char *)"read-auto", (char *)"clean", (char *)"active", (char *)"write-pending",
        (char *)"active-idle", 0};
static int match_word(char const *word , char **list )
{
  int n ;
  int tmp ;
  {
  n = 0;
  goto ldv_33294;
  ldv_33293:
  tmp = cmd_match(word, (char const *)*(list + (unsigned long )n));
  if (tmp != 0) {
    goto ldv_33292;
  } else {
  }
  n = n + 1;
  ldv_33294: ;
  if ((unsigned long )*(list + (unsigned long )n) != (unsigned long )((char *)0)) {
    goto ldv_33293;
  } else {
  }
  ldv_33292: ;
  return (n);
}
}
static ssize_t array_state_show(struct mddev *mddev , char *page )
{
  enum array_state st ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  st = 1;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    switch (mddev->ro) {
    case 1:
    st = 3;
    goto ldv_33301;
    case 2:
    st = 4;
    goto ldv_33301;
    case 0: ;
    if (mddev->in_sync != 0) {
      st = 5;
    } else {
      tmp = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
      if (tmp != 0) {
        st = 7;
      } else
      if (mddev->safemode != 0U) {
        st = 8;
      } else {
        st = 6;
      }
    }
    }
    ldv_33301: ;
  } else {
    tmp___0 = list_empty((struct list_head const *)(& mddev->disks));
    if ((tmp___0 != 0 && mddev->raid_disks == 0) && mddev->dev_sectors == 0UL) {
      st = 0;
    } else {
      st = 1;
    }
  }
  tmp___1 = sprintf(page, "%s\n", array_states[(unsigned int )st]);
  return ((ssize_t )tmp___1);
}
}
static int do_md_stop(struct mddev *mddev , int mode , struct block_device *bdev ) ;
static int md_set_readonly(struct mddev *mddev , struct block_device *bdev ) ;
static int do_md_run(struct mddev *mddev ) ;
static int restart_array(struct mddev *mddev ) ;
static ssize_t array_state_store(struct mddev *mddev , char const *buf , size_t len )
{
  int err ;
  enum array_state st ;
  int tmp ;
  int tmp___0 ;
  {
  err = -22;
  tmp = match_word(buf, (char **)(& array_states));
  st = (enum array_state )tmp;
  switch ((unsigned int )st) {
  case 9U: ;
  goto ldv_33323;
  case 0U:
  err = do_md_stop(mddev, 0, 0);
  goto ldv_33323;
  case 1U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    err = do_md_stop(mddev, 2, 0);
  } else {
    err = 0;
  }
  goto ldv_33323;
  case 2U: ;
  goto ldv_33323;
  case 3U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    err = md_set_readonly(mddev, 0);
  } else {
    mddev->ro = 1;
    set_disk_ro(mddev->gendisk, 1);
    err = do_md_run(mddev);
  }
  goto ldv_33323;
  case 4U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if (mddev->ro == 0) {
      err = md_set_readonly(mddev, 0);
    } else
    if (mddev->ro == 1) {
      err = restart_array(mddev);
    } else {
    }
    if (err == 0) {
      mddev->ro = 2;
      set_disk_ro(mddev->gendisk, 0);
    } else {
    }
  } else {
    mddev->ro = 2;
    err = do_md_run(mddev);
  }
  goto ldv_33323;
  case 5U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    restart_array(mddev);
    spin_lock_irq(& mddev->write_lock);
    tmp___0 = atomic_read((atomic_t const *)(& mddev->writes_pending));
    if (tmp___0 == 0) {
      if (mddev->in_sync == 0) {
        mddev->in_sync = 1;
        if (mddev->safemode == 1U) {
          mddev->safemode = 0U;
        } else {
        }
        set_bit(1U, (unsigned long volatile *)(& mddev->flags));
      } else {
      }
      err = 0;
    } else {
      err = -16;
    }
    spin_unlock_irq(& mddev->write_lock);
  } else {
    err = -22;
  }
  goto ldv_33323;
  case 6U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    restart_array(mddev);
    clear_bit(2, (unsigned long volatile *)(& mddev->flags));
    __wake_up(& mddev->sb_wait, 3U, 1, 0);
    err = 0;
  } else {
    mddev->ro = 0;
    set_disk_ro(mddev->gendisk, 0);
    err = do_md_run(mddev);
  }
  goto ldv_33323;
  case 7U: ;
  case 8U: ;
  goto ldv_33323;
  }
  ldv_33323: ;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
    if (mddev->hold_active == 1) {
      mddev->hold_active = 0;
    } else {
    }
    sysfs_notify_dirent_safe(mddev->sysfs_state);
    return ((ssize_t )len);
  }
}
}
static struct md_sysfs_entry md_array_state = {{"array_state", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & array_state_show, & array_state_store};
static ssize_t max_corrected_read_errors_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& mddev->max_corr_read_errors));
  tmp___0 = sprintf(page, "%d\n", tmp);
  return ((ssize_t )tmp___0);
}
}
static ssize_t max_corrected_read_errors_store(struct mddev *mddev , char const *buf ,
                                               size_t len )
{
  char *e ;
  unsigned long n ;
  unsigned long tmp ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  n = tmp;
  if ((int )((signed char )*buf) != 0 && ((int )((signed char )*e) == 0 || (int )((signed char )*e) == 10)) {
    atomic_set(& mddev->max_corr_read_errors, (int )n);
    return ((ssize_t )len);
  } else {
  }
  return (-22L);
}
}
static struct md_sysfs_entry max_corr_read_errors = {{"max_read_errors", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & max_corrected_read_errors_show, & max_corrected_read_errors_store};
static ssize_t null_show(struct mddev *mddev , char *page )
{
  {
  return (-22L);
}
}
static ssize_t new_dev_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  int major ;
  unsigned long tmp ;
  int minor ;
  dev_t dev ;
  struct md_rdev *rdev ;
  int err ;
  unsigned long tmp___0 ;
  struct md_rdev *rdev0 ;
  struct list_head const *__mptr ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  tmp = simple_strtoul(buf, & e, 10U);
  major = (int )tmp;
  if ((((int )((signed char )*buf) == 0 || (int )((signed char )*e) != 58) || (int )((signed char )*(e + 1UL)) == 0) || (int )((signed char )*(e + 1UL)) == 10) {
    return (-22L);
  } else {
  }
  tmp___0 = simple_strtoul((char const *)e + 1U, & e, 10U);
  minor = (int )tmp___0;
  if ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10) {
    return (-22L);
  } else {
  }
  dev = (dev_t )((major << 20) | minor);
  if ((dev_t )major != dev >> 20 || (dev_t )minor != (dev & 1048575U)) {
    return (-75L);
  } else {
  }
  if (mddev->persistent != 0) {
    rdev = md_import_device(dev, mddev->major_version, mddev->minor_version);
    tmp___1 = IS_ERR((void const *)rdev);
    if (tmp___1 == 0L) {
      tmp___2 = list_empty((struct list_head const *)(& mddev->disks));
      if (tmp___2 == 0) {
        __mptr = (struct list_head const *)mddev->disks.next;
        rdev0 = (struct md_rdev *)__mptr;
        err = (*(super_types[mddev->major_version].load_super))(rdev, rdev0, mddev->minor_version);
        if (err < 0) {
          goto out;
        } else {
        }
      } else {
      }
    } else {
    }
  } else
  if (mddev->external != 0) {
    rdev = md_import_device(dev, -2, -1);
  } else {
    rdev = md_import_device(dev, -1, -1);
  }
  tmp___4 = IS_ERR((void const *)rdev);
  if (tmp___4 != 0L) {
    tmp___3 = PTR_ERR((void const *)rdev);
    return (tmp___3);
  } else {
  }
  err = bind_rdev_to_array(rdev, mddev);
  out: ;
  if (err != 0) {
    export_rdev(rdev);
  } else {
  }
  return ((ssize_t )(err != 0 ? (size_t )err : len));
}
}
static struct md_sysfs_entry md_new_device = {{"new_dev", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & null_show,
    & new_dev_store};
static ssize_t bitmap_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *end ;
  unsigned long chunk ;
  unsigned long end_chunk ;
  char *tmp ;
  {
  if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
    goto out;
  } else {
  }
  goto ldv_33377;
  ldv_33376:
  end_chunk = simple_strtoul(buf, & end, 0U);
  chunk = end_chunk;
  if ((unsigned long )buf == (unsigned long )((char const *)end)) {
    goto ldv_33375;
  } else {
  }
  if ((int )((signed char )*end) == 45) {
    buf = (char const *)end + 1U;
    end_chunk = simple_strtoul(buf, & end, 0U);
    if ((unsigned long )buf == (unsigned long )((char const *)end)) {
      goto ldv_33375;
    } else {
    }
  } else {
  }
  if ((int )((signed char )*end) != 0 && ((int )_ctype[(int )((unsigned char )*end)] & 32) == 0) {
    goto ldv_33375;
  } else {
  }
  bitmap_dirty_bits(mddev->bitmap, chunk, end_chunk);
  tmp = skip_spaces((char const *)end);
  buf = (char const *)tmp;
  ldv_33377: ;
  if ((int )((signed char )*buf) != 0) {
    goto ldv_33376;
  } else {
  }
  ldv_33375:
  bitmap_unplug(mddev->bitmap);
  out: ;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_bitmap = {{"bitmap_set_bits", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & null_show, & bitmap_store};
static ssize_t size_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->dev_sectors / 2ULL);
  return ((ssize_t )tmp);
}
}
static int update_size(struct mddev *mddev , sector_t num_sectors ) ;
static ssize_t size_store(struct mddev *mddev , char const *buf , size_t len )
{
  sector_t sectors ;
  int err ;
  int tmp ;
  {
  tmp = strict_blocks_to_sectors(buf, & sectors);
  err = tmp;
  if (err < 0) {
    return ((ssize_t )err);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    err = update_size(mddev, sectors);
    md_update_sb(mddev, 1);
  } else
  if (mddev->dev_sectors == 0UL || mddev->dev_sectors > sectors) {
    mddev->dev_sectors = sectors;
  } else {
    err = -28;
  }
  return ((ssize_t )(err != 0 ? (size_t )err : len));
}
}
static struct md_sysfs_entry md_size = {{"component_size", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & size_show, & size_store};
static ssize_t metadata_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (mddev->persistent != 0) {
    tmp = sprintf(page, "%d.%d\n", mddev->major_version, mddev->minor_version);
    return ((ssize_t )tmp);
  } else
  if (mddev->external != 0) {
    tmp___0 = sprintf(page, "external:%s\n", (char *)(& mddev->metadata_type));
    return ((ssize_t )tmp___0);
  } else {
    tmp___1 = sprintf(page, "none\n");
    return ((ssize_t )tmp___1);
  }
}
}
static ssize_t metadata_store(struct mddev *mddev , char const *buf , size_t len )
{
  int major ;
  int minor ;
  char *e ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  size_t namelen ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  {
  if (mddev->external != 0) {
    tmp___0 = strncmp(buf, "external:", 9UL);
    if (tmp___0 == 0) {
    } else {
      goto _L;
    }
  } else {
    _L:
    tmp = list_empty((struct list_head const *)(& mddev->disks));
    if (tmp == 0) {
      return (-16L);
    } else {
    }
  }
  tmp___1 = cmd_match(buf, "none");
  if (tmp___1 != 0) {
    mddev->persistent = 0;
    mddev->external = 0;
    mddev->major_version = 0;
    mddev->minor_version = 90;
    return ((ssize_t )len);
  } else {
  }
  tmp___2 = strncmp(buf, "external:", 9UL);
  if (tmp___2 == 0) {
    namelen = len - 9UL;
    if (namelen > 16UL) {
      namelen = 16UL;
    } else {
    }
    strncpy((char *)(& mddev->metadata_type), buf + 9UL, namelen);
    mddev->metadata_type[namelen] = 0;
    if (namelen != 0UL && (int )((signed char )mddev->metadata_type[namelen - 1UL]) == 10) {
      namelen = namelen - 1UL;
      mddev->metadata_type[namelen] = 0;
    } else {
    }
    mddev->persistent = 0;
    mddev->external = 1;
    mddev->major_version = 0;
    mddev->minor_version = 90;
    return ((ssize_t )len);
  } else {
  }
  tmp___3 = simple_strtoul(buf, & e, 10U);
  major = (int )tmp___3;
  if ((unsigned long )((char const *)e) == (unsigned long )buf || (int )((signed char )*e) != 46) {
    return (-22L);
  } else {
  }
  buf = (char const *)e + 1U;
  tmp___4 = simple_strtoul(buf, & e, 10U);
  minor = (int )tmp___4;
  if ((unsigned long )((char const *)e) == (unsigned long )buf || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  if ((unsigned int )major > 1U || (unsigned long )super_types[major].name == (unsigned long )((char *)0)) {
    return (-2L);
  } else {
  }
  mddev->major_version = major;
  mddev->minor_version = minor;
  mddev->persistent = 1;
  mddev->external = 0;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_metadata = {{"metadata_version", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & metadata_show, & metadata_store};
static ssize_t action_show(struct mddev *mddev , char *page )
{
  char *type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  type = (char *)"idle";
  tmp___6 = constant_test_bit(9U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___6 != 0) {
    type = (char *)"frozen";
  } else {
    tmp___4 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___4 != 0) {
      goto _L;
    } else
    if (mddev->ro == 0) {
      tmp___5 = constant_test_bit(5U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___5 != 0) {
        _L:
        tmp___3 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
        if (tmp___3 != 0) {
          type = (char *)"reshape";
        } else {
          tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
          if (tmp___2 != 0) {
            tmp___0 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
            if (tmp___0 == 0) {
              type = (char *)"resync";
            } else {
              tmp = constant_test_bit(7U, (unsigned long const volatile *)(& mddev->recovery));
              if (tmp != 0) {
                type = (char *)"check";
              } else {
                type = (char *)"repair";
              }
            }
          } else {
            tmp___1 = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->recovery));
            if (tmp___1 != 0) {
              type = (char *)"recover";
            } else {
            }
          }
        }
      } else {
      }
    } else {
    }
  }
  tmp___7 = sprintf(page, "%s\n", type);
  return ((ssize_t )tmp___7);
}
}
static ssize_t action_store(struct mddev *mddev , char const *page , size_t len )
{
  int tmp ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                                                                                   sector_t ,
                                                                                                                                                                   int * ,
                                                                                                                                                                   int ))0)) {
    return (-22L);
  } else {
  }
  tmp = cmd_match(page, "frozen");
  if (tmp != 0) {
    set_bit(9U, (unsigned long volatile *)(& mddev->recovery));
  } else {
    clear_bit(9, (unsigned long volatile *)(& mddev->recovery));
  }
  tmp___7 = cmd_match(page, "idle");
  if (tmp___7 != 0) {
    goto _L;
  } else {
    tmp___8 = cmd_match(page, "frozen");
    if (tmp___8 != 0) {
      _L:
      if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
        set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
        md_reap_sync_thread(mddev);
      } else {
      }
    } else {
      tmp___5 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___5 != 0) {
        return (-16L);
      } else {
        tmp___6 = constant_test_bit(5U, (unsigned long const volatile *)(& mddev->recovery));
        if (tmp___6 != 0) {
          return (-16L);
        } else {
          tmp___4 = cmd_match(page, "resync");
          if (tmp___4 != 0) {
            set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
          } else {
            tmp___3 = cmd_match(page, "recover");
            if (tmp___3 != 0) {
              set_bit(2U, (unsigned long volatile *)(& mddev->recovery));
              set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
            } else {
              tmp___2 = cmd_match(page, "reshape");
              if (tmp___2 != 0) {
                if ((unsigned long )(mddev->pers)->start_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
                  return (-22L);
                } else {
                }
                err = (*((mddev->pers)->start_reshape))(mddev);
                if (err != 0) {
                  return ((ssize_t )err);
                } else {
                }
                sysfs_notify(& mddev->kobj, 0, "degraded");
              } else {
                tmp___1 = cmd_match(page, "check");
                if (tmp___1 != 0) {
                  set_bit(7U, (unsigned long volatile *)(& mddev->recovery));
                } else {
                  tmp___0 = cmd_match(page, "repair");
                  if (tmp___0 == 0) {
                    return (-22L);
                  } else {
                  }
                }
                set_bit(6U, (unsigned long volatile *)(& mddev->recovery));
                set_bit(1U, (unsigned long volatile *)(& mddev->recovery));
              }
            }
          }
        }
      }
    }
  }
  if (mddev->ro == 2) {
    mddev->ro = 0;
    md_wakeup_thread(mddev->sync_thread);
  } else {
  }
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  sysfs_notify_dirent_safe(mddev->sysfs_action);
  return ((ssize_t )len);
}
}
static ssize_t mismatch_cnt_show(struct mddev *mddev , char *page )
{
  long tmp ;
  int tmp___0 ;
  {
  tmp = atomic64_read((atomic64_t const *)(& mddev->resync_mismatches));
  tmp___0 = sprintf(page, "%llu\n", (unsigned long long )tmp);
  return ((ssize_t )tmp___0);
}
}
static struct md_sysfs_entry md_scan_mode = {{"sync_action", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & action_show, & action_store};
static struct md_sysfs_entry md_mismatches = {{"mismatch_cnt", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & mismatch_cnt_show, 0};
static ssize_t sync_min_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = speed_min(mddev);
  tmp___0 = sprintf(page, "%d (%s)\n", tmp, mddev->sync_speed_min != 0 ? (char *)"local" : (char *)"system");
  return ((ssize_t )tmp___0);
}
}
static ssize_t sync_min_store(struct mddev *mddev , char const *buf , size_t len )
{
  int min ;
  char *e ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  tmp = strncmp(buf, "system", 6UL);
  if (tmp == 0) {
    mddev->sync_speed_min = 0;
    return ((ssize_t )len);
  } else {
  }
  tmp___0 = simple_strtoul(buf, & e, 10U);
  min = (int )tmp___0;
  if (((unsigned long )buf == (unsigned long )((char const *)e) || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) || min <= 0) {
    return (-22L);
  } else {
  }
  mddev->sync_speed_min = min;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_sync_min = {{"sync_speed_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sync_min_show, & sync_min_store};
static ssize_t sync_max_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = speed_max(mddev);
  tmp___0 = sprintf(page, "%d (%s)\n", tmp, mddev->sync_speed_max != 0 ? (char *)"local" : (char *)"system");
  return ((ssize_t )tmp___0);
}
}
static ssize_t sync_max_store(struct mddev *mddev , char const *buf , size_t len )
{
  int max ;
  char *e ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  tmp = strncmp(buf, "system", 6UL);
  if (tmp == 0) {
    mddev->sync_speed_max = 0;
    return ((ssize_t )len);
  } else {
  }
  tmp___0 = simple_strtoul(buf, & e, 10U);
  max = (int )tmp___0;
  if (((unsigned long )buf == (unsigned long )((char const *)e) || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) || max <= 0) {
    return (-22L);
  } else {
  }
  mddev->sync_speed_max = max;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_sync_max = {{"sync_speed_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sync_max_show, & sync_max_store};
static ssize_t degraded_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%d\n", mddev->degraded);
  return ((ssize_t )tmp);
}
}
static struct md_sysfs_entry md_degraded = {{"degraded", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & degraded_show, 0};
static ssize_t sync_force_parallel_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%d\n", mddev->parallel_resync);
  return ((ssize_t )tmp);
}
}
static ssize_t sync_force_parallel_store(struct mddev *mddev , char const *buf ,
                                         size_t len )
{
  long n ;
  int tmp ;
  {
  tmp = kstrtol(buf, 10U, & n);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if (n != 0L && n != 1L) {
    return (-22L);
  } else {
  }
  mddev->parallel_resync = (int )n;
  if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
    __wake_up(& resync_wait, 3U, 1, 0);
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_sync_force_parallel = {{"sync_force_parallel", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & sync_force_parallel_show,
    & sync_force_parallel_store};
static ssize_t sync_speed_show(struct mddev *mddev , char *page )
{
  unsigned long resync ;
  unsigned long dt ;
  unsigned long db ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (mddev->curr_resync == 0UL) {
    tmp = sprintf(page, "none\n");
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& mddev->recovery_active));
  resync = mddev->curr_mark_cnt - (sector_t )tmp___0;
  dt = ((unsigned long )jiffies - mddev->resync_mark) / 250UL;
  if (dt == 0UL) {
    dt = dt + 1UL;
  } else {
  }
  db = resync - mddev->resync_mark_cnt;
  tmp___1 = sprintf(page, "%lu\n", (db / dt) / 2UL);
  return ((ssize_t )tmp___1);
}
}
static struct md_sysfs_entry md_sync_speed = {{"sync_speed", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sync_speed_show, 0};
static ssize_t sync_completed_show(struct mddev *mddev , char *page )
{
  unsigned long long max_sectors ;
  unsigned long long resync ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___0 == 0) {
    tmp = sprintf(page, "none\n");
    return ((ssize_t )tmp);
  } else {
  }
  if (mddev->curr_resync == 1UL || mddev->curr_resync == 2UL) {
    tmp___1 = sprintf(page, "delayed\n");
    return ((ssize_t )tmp___1);
  } else {
  }
  tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___2 != 0) {
    max_sectors = (unsigned long long )mddev->resync_max_sectors;
  } else {
    tmp___3 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___3 != 0) {
      max_sectors = (unsigned long long )mddev->resync_max_sectors;
    } else {
      max_sectors = (unsigned long long )mddev->dev_sectors;
    }
  }
  resync = (unsigned long long )mddev->curr_resync_completed;
  tmp___4 = sprintf(page, "%llu / %llu\n", resync, max_sectors);
  return ((ssize_t )tmp___4);
}
}
static struct md_sysfs_entry md_sync_completed = {{"sync_completed", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & sync_completed_show, 0};
static ssize_t min_sync_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->resync_min);
  return ((ssize_t )tmp);
}
}
static ssize_t min_sync_store(struct mddev *mddev , char const *buf , size_t len )
{
  unsigned long long min ;
  int tmp ;
  int tmp___0 ;
  sector_t temp ;
  int _res ;
  {
  tmp = kstrtoull(buf, 10U, & min);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if ((unsigned long long )mddev->resync_max < min) {
    return (-22L);
  } else {
  }
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___0 != 0) {
    return (-16L);
  } else {
  }
  if (mddev->chunk_sectors != 0) {
    temp = (sector_t )min;
    _res = (int )(temp % (sector_t )mddev->chunk_sectors);
    temp = temp / (sector_t )mddev->chunk_sectors;
    if (_res != 0) {
      return (-22L);
    } else {
    }
  } else {
  }
  mddev->resync_min = (sector_t )min;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_min_sync = {{"sync_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & min_sync_show, & min_sync_store};
static ssize_t max_sync_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->resync_max == 0xffffffffffffffffUL) {
    tmp = sprintf(page, "max\n");
    return ((ssize_t )tmp);
  } else {
    tmp___0 = sprintf(page, "%llu\n", (unsigned long long )mddev->resync_max);
    return ((ssize_t )tmp___0);
  }
}
}
static ssize_t max_sync_store(struct mddev *mddev , char const *buf , size_t len )
{
  unsigned long long max ;
  int tmp ;
  int tmp___0 ;
  sector_t temp ;
  int _res ;
  int tmp___1 ;
  {
  tmp___1 = strncmp(buf, "max", 3UL);
  if (tmp___1 == 0) {
    mddev->resync_max = 0xffffffffffffffffUL;
  } else {
    tmp = kstrtoull(buf, 10U, & max);
    if (tmp != 0) {
      return (-22L);
    } else {
    }
    if ((unsigned long long )mddev->resync_min > max) {
      return (-22L);
    } else {
    }
    if ((unsigned long long )mddev->resync_max > max && mddev->ro == 0) {
      tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___0 != 0) {
        return (-16L);
      } else {
      }
    } else {
    }
    if (mddev->chunk_sectors != 0) {
      temp = (sector_t )max;
      _res = (int )(temp % (sector_t )mddev->chunk_sectors);
      temp = temp / (sector_t )mddev->chunk_sectors;
      if (_res != 0) {
        return (-22L);
      } else {
      }
    } else {
    }
    mddev->resync_max = (sector_t )max;
  }
  __wake_up(& mddev->recovery_wait, 3U, 1, 0);
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_max_sync = {{"sync_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & max_sync_show, & max_sync_store};
static ssize_t suspend_lo_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->suspend_lo);
  return ((ssize_t )tmp);
}
}
static ssize_t suspend_lo_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  unsigned long long new ;
  unsigned long long tmp ;
  unsigned long long old ;
  {
  tmp = simple_strtoull(buf, & e, 10U);
  new = tmp;
  old = (unsigned long long )mddev->suspend_lo;
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                                                                                                          int ))0)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char const *)e) || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  mddev->suspend_lo = (sector_t )new;
  if (new >= old) {
    (*((mddev->pers)->quiesce))(mddev, 2);
  } else {
    (*((mddev->pers)->quiesce))(mddev, 1);
    (*((mddev->pers)->quiesce))(mddev, 0);
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_suspend_lo = {{"suspend_lo", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & suspend_lo_show, & suspend_lo_store};
static ssize_t suspend_hi_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->suspend_hi);
  return ((ssize_t )tmp);
}
}
static ssize_t suspend_hi_store(struct mddev *mddev , char const *buf , size_t len )
{
  char *e ;
  unsigned long long new ;
  unsigned long long tmp ;
  unsigned long long old ;
  {
  tmp = simple_strtoull(buf, & e, 10U);
  new = tmp;
  old = (unsigned long long )mddev->suspend_hi;
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                                                                                                          int ))0)) {
    return (-22L);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char const *)e) || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  mddev->suspend_hi = (sector_t )new;
  if (new <= old) {
    (*((mddev->pers)->quiesce))(mddev, 2);
  } else {
    (*((mddev->pers)->quiesce))(mddev, 1);
    (*((mddev->pers)->quiesce))(mddev, 0);
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_suspend_hi = {{"suspend_hi", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & suspend_hi_show, & suspend_hi_store};
static ssize_t reshape_position_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  if (mddev->reshape_position != 0xffffffffffffffffUL) {
    tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->reshape_position);
    return ((ssize_t )tmp);
  } else {
  }
  strcpy(page, "none\n");
  return (5L);
}
}
static ssize_t reshape_position_store(struct mddev *mddev , char const *buf , size_t len )
{
  struct md_rdev *rdev ;
  char *e ;
  unsigned long long new ;
  unsigned long long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = simple_strtoull(buf, & e, 10U);
  new = tmp;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    return (-16L);
  } else {
  }
  if ((unsigned long )buf == (unsigned long )((char const *)e) || ((int )((signed char )*e) != 0 && (int )((signed char )*e) != 10)) {
    return (-22L);
  } else {
  }
  mddev->reshape_position = (sector_t )new;
  mddev->delta_disks = 0;
  mddev->reshape_backwards = 0;
  mddev->new_level = mddev->level;
  mddev->new_layout = mddev->layout;
  mddev->new_chunk_sectors = mddev->chunk_sectors;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33553;
  ldv_33552:
  rdev->new_data_offset = rdev->data_offset;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33553: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33552;
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_reshape_position = {{"reshape_position", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & reshape_position_show, & reshape_position_store};
static ssize_t reshape_direction_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%s\n", mddev->reshape_backwards != 0 ? (char *)"backwards" : (char *)"forwards");
  return ((ssize_t )tmp);
}
}
static ssize_t reshape_direction_store(struct mddev *mddev , char const *buf , size_t len )
{
  int backwards ;
  int tmp ;
  int tmp___0 ;
  {
  backwards = 0;
  tmp___0 = cmd_match(buf, "forwards");
  if (tmp___0 != 0) {
    backwards = 0;
  } else {
    tmp = cmd_match(buf, "backwards");
    if (tmp != 0) {
      backwards = 1;
    } else {
      return (-22L);
    }
  }
  if (mddev->reshape_backwards == backwards) {
    return ((ssize_t )len);
  } else {
  }
  if (mddev->delta_disks != 0) {
    return (-16L);
  } else {
  }
  if (mddev->persistent != 0 && mddev->major_version == 0) {
    return (-22L);
  } else {
  }
  mddev->reshape_backwards = backwards;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_reshape_direction = {{"reshape_direction", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & reshape_direction_show, & reshape_direction_store};
static ssize_t array_size_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if (mddev->external_size != 0) {
    tmp = sprintf(page, "%llu\n", (unsigned long long )mddev->array_sectors / 2ULL);
    return ((ssize_t )tmp);
  } else {
    tmp___0 = sprintf(page, "default\n");
    return ((ssize_t )tmp___0);
  }
}
}
static ssize_t array_size_store(struct mddev *mddev , char const *buf , size_t len )
{
  sector_t sectors ;
  int tmp ;
  sector_t tmp___0 ;
  int tmp___1 ;
  {
  tmp___1 = strncmp(buf, "default", 7UL);
  if (tmp___1 == 0) {
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      sectors = (*((mddev->pers)->size))(mddev, 0UL, 0);
    } else {
      sectors = mddev->array_sectors;
    }
    mddev->external_size = 0;
  } else {
    tmp = strict_blocks_to_sectors(buf, & sectors);
    if (tmp < 0) {
      return (-22L);
    } else {
    }
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      tmp___0 = (*((mddev->pers)->size))(mddev, 0UL, 0);
      if (tmp___0 < sectors) {
        return (-7L);
      } else {
      }
    } else {
    }
    mddev->external_size = 1;
  }
  mddev->array_sectors = sectors;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    set_capacity(mddev->gendisk, mddev->array_sectors);
    revalidate_disk(mddev->gendisk);
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry md_array_size = {{"array_size", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & array_size_show, & array_size_store};
static struct attribute *md_default_attrs[15U] =
  { & md_level.attr, & md_layout.attr, & md_raid_disks.attr, & md_chunk_size.attr,
        & md_size.attr, & md_resync_start.attr, & md_metadata.attr, & md_new_device.attr,
        & md_safe_delay.attr, & md_array_state.attr, & md_reshape_position.attr, & md_reshape_direction.attr,
        & md_array_size.attr, & max_corr_read_errors.attr, 0};
static struct attribute *md_redundancy_attrs[14U] =
  { & md_scan_mode.attr, & md_mismatches.attr, & md_sync_min.attr, & md_sync_max.attr,
        & md_sync_speed.attr, & md_sync_force_parallel.attr, & md_sync_completed.attr, & md_min_sync.attr,
        & md_max_sync.attr, & md_suspend_lo.attr, & md_suspend_hi.attr, & md_bitmap.attr,
        & md_degraded.attr, 0};
static struct attribute_group md_redundancy_group = {0, 0, (struct attribute **)(& md_redundancy_attrs)};
static ssize_t md_attr_show(struct kobject *kobj , struct attribute *attr , char *page )
{
  struct md_sysfs_entry *entry ;
  struct attribute const *__mptr ;
  struct mddev *mddev ;
  struct kobject const *__mptr___0 ;
  ssize_t rv ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct attribute const *)attr;
  entry = (struct md_sysfs_entry *)__mptr;
  __mptr___0 = (struct kobject const *)kobj;
  mddev = (struct mddev *)__mptr___0 + 0xffffffffffffffb0UL;
  if ((unsigned long )entry->show == (unsigned long )((ssize_t (*)(struct mddev * ,
                                                                   char * ))0)) {
    return (-5L);
  } else {
  }
  spin_lock(& all_mddevs_lock);
  tmp = list_empty((struct list_head const *)(& mddev->all_mddevs));
  if (tmp != 0) {
    spin_unlock(& all_mddevs_lock);
    return (-16L);
  } else {
  }
  mddev_get(mddev);
  spin_unlock(& all_mddevs_lock);
  tmp___0 = mddev_lock(mddev);
  rv = (ssize_t )tmp___0;
  if (rv == 0L) {
    rv = (*(entry->show))(mddev, page);
    mddev_unlock(mddev);
  } else {
  }
  mddev_put(mddev);
  return (rv);
}
}
static ssize_t md_attr_store(struct kobject *kobj , struct attribute *attr , char const *page ,
                             size_t length )
{
  struct md_sysfs_entry *entry ;
  struct attribute const *__mptr ;
  struct mddev *mddev ;
  struct kobject const *__mptr___0 ;
  ssize_t rv ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct attribute const *)attr;
  entry = (struct md_sysfs_entry *)__mptr;
  __mptr___0 = (struct kobject const *)kobj;
  mddev = (struct mddev *)__mptr___0 + 0xffffffffffffffb0UL;
  if ((unsigned long )entry->store == (unsigned long )((ssize_t (*)(struct mddev * ,
                                                                    char const * ,
                                                                    size_t ))0)) {
    return (-5L);
  } else {
  }
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13L);
  } else {
  }
  spin_lock(& all_mddevs_lock);
  tmp___1 = list_empty((struct list_head const *)(& mddev->all_mddevs));
  if (tmp___1 != 0) {
    spin_unlock(& all_mddevs_lock);
    return (-16L);
  } else {
  }
  mddev_get(mddev);
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )entry->store == (unsigned long )(& new_dev_store)) {
    flush_workqueue(md_misc_wq);
  } else {
  }
  tmp___2 = mddev_lock(mddev);
  rv = (ssize_t )tmp___2;
  if (rv == 0L) {
    rv = (*(entry->store))(mddev, page, length);
    mddev_unlock(mddev);
  } else {
  }
  mddev_put(mddev);
  return (rv);
}
}
static void md_free(struct kobject *ko )
{
  struct mddev *mddev ;
  struct kobject const *__mptr ;
  {
  __mptr = (struct kobject const *)ko;
  mddev = (struct mddev *)__mptr + 0xffffffffffffffb0UL;
  if ((unsigned long )mddev->sysfs_state != (unsigned long )((struct sysfs_dirent *)0)) {
    sysfs_put(mddev->sysfs_state);
  } else {
  }
  if ((unsigned long )mddev->gendisk != (unsigned long )((struct gendisk *)0)) {
    del_gendisk(mddev->gendisk);
    put_disk(mddev->gendisk);
  } else {
  }
  if ((unsigned long )mddev->queue != (unsigned long )((struct request_queue *)0)) {
    blk_cleanup_queue(mddev->queue);
  } else {
  }
  kfree((void const *)mddev);
  return;
}
}
static struct sysfs_ops const md_sysfs_ops = {& md_attr_show, & md_attr_store, 0};
static struct kobj_type md_ktype = {& md_free, & md_sysfs_ops, (struct attribute **)(& md_default_attrs), 0, 0};
int mdp_major = 0;
static void mddev_delayed_delete(struct work_struct *ws )
{
  struct mddev *mddev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)ws;
  mddev = (struct mddev *)__mptr + 0xfffffffffffffc58UL;
  sysfs_remove_group(& mddev->kobj, (struct attribute_group const *)(& md_bitmap_group));
  kobject_del(& mddev->kobj);
  kobject_put(& mddev->kobj);
  return;
}
}
static int md_alloc(dev_t dev , char *name )
{
  struct mutex disks_mutex ;
  struct mddev *mddev ;
  struct mddev *tmp ;
  struct gendisk *disk ;
  int partitioned ;
  int shift ;
  int unit ;
  int error ;
  struct mddev *mddev2 ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  {
  disks_mutex.count.counter = 1;
  disks_mutex.wait_lock.ldv_6014.rlock.raw_lock.ldv_2043.head_tail = 0U;
  disks_mutex.wait_lock.ldv_6014.rlock.magic = 3735899821U;
  disks_mutex.wait_lock.ldv_6014.rlock.owner_cpu = 4294967295U;
  disks_mutex.wait_lock.ldv_6014.rlock.owner = 0xffffffffffffffffUL;
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.key = 0;
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.class_cache[0] = 0;
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.class_cache[1] = 0;
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.name = "disks_mutex.wait_lock";
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.cpu = 0;
  disks_mutex.wait_lock.ldv_6014.rlock.dep_map.ip = 0UL;
  disks_mutex.wait_list.next = & disks_mutex.wait_list;
  disks_mutex.wait_list.prev = & disks_mutex.wait_list;
  disks_mutex.owner = 0;
  disks_mutex.name = 0;
  disks_mutex.magic = (void *)(& disks_mutex);
  disks_mutex.dep_map.key = 0;
  disks_mutex.dep_map.class_cache[0] = 0;
  disks_mutex.dep_map.class_cache[1] = 0;
  disks_mutex.dep_map.name = "disks_mutex";
  disks_mutex.dep_map.cpu = 0;
  disks_mutex.dep_map.ip = 0UL;
  tmp = mddev_find(dev);
  mddev = tmp;
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0)) {
    return (-19);
  } else {
  }
  partitioned = mddev->unit >> 20 != 9U;
  shift = partitioned != 0 ? 6 : 0;
  unit = (int )((mddev->unit & 1048575U) >> shift);
  flush_workqueue(md_misc_wq);
  ldv_mutex_lock_11(& disks_mutex);
  error = -17;
  if ((unsigned long )mddev->gendisk != (unsigned long )((struct gendisk *)0)) {
    goto abort;
  } else {
  }
  if ((unsigned long )name != (unsigned long )((char *)0)) {
    spin_lock(& all_mddevs_lock);
    __mptr = (struct list_head const *)all_mddevs.next;
    mddev2 = (struct mddev *)__mptr + 0xfffffffffffff9c8UL;
    goto ldv_33640;
    ldv_33639: ;
    if ((unsigned long )mddev2->gendisk != (unsigned long )((struct gendisk *)0)) {
      tmp___0 = strcmp((char const *)(& (mddev2->gendisk)->disk_name), (char const *)name);
      if (tmp___0 == 0) {
        spin_unlock(& all_mddevs_lock);
        goto abort;
      } else {
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)mddev2->all_mddevs.next;
    mddev2 = (struct mddev *)__mptr___0 + 0xfffffffffffff9c8UL;
    ldv_33640: ;
    if ((unsigned long )(& mddev2->all_mddevs) != (unsigned long )(& all_mddevs)) {
      goto ldv_33639;
    } else {
    }
    spin_unlock(& all_mddevs_lock);
  } else {
  }
  error = -12;
  mddev->queue = blk_alloc_queue(208U);
  if ((unsigned long )mddev->queue == (unsigned long )((struct request_queue *)0)) {
    goto abort;
  } else {
  }
  (mddev->queue)->queuedata = (void *)mddev;
  blk_queue_make_request(mddev->queue, & md_make_request);
  blk_set_stacking_limits(& (mddev->queue)->limits);
  disk = alloc_disk(1 << shift);
  if ((unsigned long )disk == (unsigned long )((struct gendisk *)0)) {
    blk_cleanup_queue(mddev->queue);
    mddev->queue = 0;
    goto abort;
  } else {
  }
  disk->major = (int )(mddev->unit >> 20);
  disk->first_minor = unit << shift;
  if ((unsigned long )name != (unsigned long )((char *)0)) {
    strcpy((char *)(& disk->disk_name), (char const *)name);
  } else
  if (partitioned != 0) {
    sprintf((char *)(& disk->disk_name), "md_d%d", unit);
  } else {
    sprintf((char *)(& disk->disk_name), "md%d", unit);
  }
  disk->fops = & md_fops;
  disk->private_data = (void *)mddev;
  disk->queue = mddev->queue;
  blk_queue_flush(mddev->queue, 6144U);
  disk->flags = disk->flags | 64;
  mddev->gendisk = disk;
  ldv_mutex_lock_12(& mddev->open_mutex);
  add_disk(disk);
  error = kobject_init_and_add(& mddev->kobj, & md_ktype, & disk->part0.__dev.kobj,
                               "%s", (char *)"md");
  if (error != 0) {
    printk("\fmd: cannot register %s/md - name in use\n", (char *)(& disk->disk_name));
    error = 0;
  } else {
  }
  if ((unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    tmp___1 = sysfs_create_group(& mddev->kobj, (struct attribute_group const *)(& md_bitmap_group));
    if (tmp___1 != 0) {
      printk("\017pointless warning\n");
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_13(& mddev->open_mutex);
  abort:
  ldv_mutex_unlock_14(& disks_mutex);
  if (error == 0 && (unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    kobject_uevent(& mddev->kobj, 0);
    mddev->sysfs_state = sysfs_get_dirent_safe(mddev->kobj.sd, (char *)"array_state");
  } else {
  }
  mddev_put(mddev);
  return (error);
}
}
static struct kobject *md_probe(dev_t dev , int *part , void *data )
{
  {
  md_alloc(dev, 0);
  return (0);
}
}
static void md_safemode_timeout(unsigned long data )
{
  struct mddev *mddev ;
  int tmp ;
  {
  mddev = (struct mddev *)data;
  tmp = atomic_read((atomic_t const *)(& mddev->writes_pending));
  if (tmp == 0) {
    mddev->safemode = 1U;
    if (mddev->external != 0) {
      sysfs_notify_dirent_safe(mddev->sysfs_state);
    } else {
    }
  } else {
  }
  md_wakeup_thread(mddev->thread);
  return;
}
}
static int start_dirty_degraded ;
int md_run(struct mddev *mddev )
{
  int err ;
  struct md_rdev *rdev ;
  struct md_personality *pers ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  struct list_head const *__mptr___0 ;
  bool tmp___3 ;
  int tmp___4 ;
  char b[32U] ;
  char b2[32U] ;
  struct md_rdev *rdev2 ;
  int warned ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char *tmp___7 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  sector_t tmp___11 ;
  sector_t tmp___12 ;
  char *tmp___13 ;
  char *tmp___14 ;
  int tmp___15 ;
  struct list_head const *__mptr___5 ;
  int tmp___16 ;
  struct list_head const *__mptr___6 ;
  {
  tmp = list_empty((struct list_head const *)(& mddev->disks));
  if (tmp != 0) {
    return (-22);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    return (-16);
  } else {
  }
  if (mddev->sysfs_active != 0) {
    return (-16);
  } else {
  }
  if (mddev->raid_disks == 0) {
    if (mddev->persistent == 0) {
      return (-22);
    } else {
    }
    analyze_sbs(mddev);
  } else {
  }
  if (mddev->level != -1000000) {
    __request_module(1, "md-level-%d", mddev->level);
  } else
  if ((int )((signed char )mddev->clevel[0]) != 0) {
    __request_module(1, "md-%s", (char *)(& mddev->clevel));
  } else {
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33673;
  ldv_33672:
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___0 != 0) {
    goto ldv_33671;
  } else {
  }
  sync_blockdev(rdev->bdev);
  invalidate_bdev(rdev->bdev);
  if ((unsigned long )rdev->meta_bdev != (unsigned long )((struct block_device *)0)) {
  } else
  if (rdev->data_offset < rdev->sb_start) {
    if (mddev->dev_sectors != 0UL && rdev->data_offset + mddev->dev_sectors > rdev->sb_start) {
      tmp___1 = mdname(mddev);
      printk("md: %s: data overlaps metadata\n", tmp___1);
      return (-22);
    } else {
    }
  } else
  if (rdev->sb_start + (sector_t )(rdev->sb_size / 512) > rdev->data_offset) {
    tmp___2 = mdname(mddev);
    printk("md: %s: metadata overlaps data\n", tmp___2);
    return (-22);
  } else {
  }
  sysfs_notify_dirent_safe(rdev->sysfs_state);
  ldv_33671:
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33673: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33672;
  } else {
  }
  if ((unsigned long )mddev->bio_set == (unsigned long )((struct bio_set *)0)) {
    mddev->bio_set = bioset_create(2U, 0U);
  } else {
  }
  spin_lock(& pers_lock);
  pers = find_pers(mddev->level, (char *)(& mddev->clevel));
  if ((unsigned long )pers == (unsigned long )((struct md_personality *)0)) {
    goto _L;
  } else {
    tmp___3 = try_module_get(pers->owner);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      _L:
      spin_unlock(& pers_lock);
      if (mddev->level != -1000000) {
        printk("\fmd: personality for level %d is not loaded!\n", mddev->level);
      } else {
        printk("\fmd: personality for level %s is not loaded!\n", (char *)(& mddev->clevel));
      }
      return (-22);
    } else {
    }
  }
  mddev->pers = pers;
  spin_unlock(& pers_lock);
  if (mddev->level != pers->level) {
    mddev->level = pers->level;
    mddev->new_level = pers->level;
  } else {
  }
  strlcpy((char *)(& mddev->clevel), (char const *)pers->name, 16UL);
  if (mddev->reshape_position != 0xffffffffffffffffUL && (unsigned long )pers->start_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
    mddev->pers = 0;
    module_put(pers->owner);
    return (-22);
  } else {
  }
  if ((unsigned long )pers->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                           sector_t ,
                                                                           int * ,
                                                                           int ))0)) {
    warned = 0;
    __mptr___1 = (struct list_head const *)mddev->disks.next;
    rdev = (struct md_rdev *)__mptr___1;
    goto ldv_33691;
    ldv_33690:
    __mptr___2 = (struct list_head const *)mddev->disks.next;
    rdev2 = (struct md_rdev *)__mptr___2;
    goto ldv_33688;
    ldv_33687: ;
    if ((unsigned long )rdev < (unsigned long )rdev2 && (unsigned long )(rdev->bdev)->bd_contains == (unsigned long )(rdev2->bdev)->bd_contains) {
      tmp___5 = bdevname(rdev2->bdev, (char *)(& b2));
      tmp___6 = bdevname(rdev->bdev, (char *)(& b));
      tmp___7 = mdname(mddev);
      printk("\f%s: WARNING: %s appears to be on the same physical disk as %s.\n",
             tmp___7, tmp___6, tmp___5);
      warned = 1;
    } else {
    }
    __mptr___3 = (struct list_head const *)rdev2->same_set.next;
    rdev2 = (struct md_rdev *)__mptr___3;
    ldv_33688: ;
    if ((unsigned long )(& rdev2->same_set) != (unsigned long )(& mddev->disks)) {
      goto ldv_33687;
    } else {
    }
    __mptr___4 = (struct list_head const *)rdev->same_set.next;
    rdev = (struct md_rdev *)__mptr___4;
    ldv_33691: ;
    if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
      goto ldv_33690;
    } else {
    }
    if (warned != 0) {
      printk("\fTrue protection against single-disk failure might be compromised.\n");
    } else {
    }
  } else {
  }
  mddev->recovery = 0UL;
  mddev->resync_max_sectors = mddev->dev_sectors;
  mddev->ok_start_degraded = start_dirty_degraded;
  if (start_readonly != 0 && mddev->ro == 0) {
    mddev->ro = 2;
  } else {
  }
  err = (*((mddev->pers)->run))(mddev);
  if (err != 0) {
    printk("\vmd: pers->run() failed ...\n");
  } else {
    tmp___12 = (*((mddev->pers)->size))(mddev, 0UL, 0);
    if (tmp___12 < mddev->array_sectors) {
      __ret_warn_once = mddev->external_size == 0;
      tmp___10 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
      if (tmp___10 != 0L) {
        __ret_warn_on = ! __warned;
        tmp___8 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp___8 != 0L) {
          warn_slowpath_fmt("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
                            5144, "%s: default size too small, but \'external_size\' not in effect?\n",
                            "md_run");
        } else {
        }
        tmp___9 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
        if (tmp___9 != 0L) {
          __warned = 1;
        } else {
        }
      } else {
      }
      ldv__builtin_expect(__ret_warn_once != 0, 0L);
      tmp___11 = (*((mddev->pers)->size))(mddev, 0UL, 0);
      printk("\vmd: invalid array_size %llu > default size %llu\n", (unsigned long long )mddev->array_sectors / 2ULL,
             (unsigned long long )tmp___11 / 2ULL);
      err = -22;
      (*((mddev->pers)->stop))(mddev);
    } else {
    }
  }
  if ((err == 0 && (unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                                 sector_t ,
                                                                                                 int * ,
                                                                                                 int ))0)) && ((unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0) || mddev->bitmap_info.offset != 0LL)) {
    err = bitmap_create(mddev);
    if (err != 0) {
      tmp___13 = mdname(mddev);
      printk("\v%s: failed to create bitmap (%d)\n", tmp___13, err);
      (*((mddev->pers)->stop))(mddev);
    } else {
    }
  } else {
  }
  if (err != 0) {
    module_put((mddev->pers)->owner);
    mddev->pers = 0;
    bitmap_destroy(mddev);
    return (err);
  } else {
  }
  if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0)) {
    if ((unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
      tmp___15 = sysfs_create_group(& mddev->kobj, (struct attribute_group const *)(& md_redundancy_group));
      if (tmp___15 != 0) {
        tmp___14 = mdname(mddev);
        printk("\fmd: cannot register extra attributes for %s\n", tmp___14);
      } else {
      }
    } else {
    }
    mddev->sysfs_action = sysfs_get_dirent_safe(mddev->kobj.sd, (char *)"sync_action");
  } else
  if (mddev->ro == 2) {
    mddev->ro = 0;
  } else {
  }
  atomic_set(& mddev->writes_pending, 0);
  atomic_set(& mddev->max_corr_read_errors, 20);
  mddev->safemode = 0U;
  mddev->safemode_timer.function = & md_safemode_timeout;
  mddev->safemode_timer.data = (unsigned long )mddev;
  mddev->safemode_delay = 51U;
  mddev->in_sync = 1;
  __asm__ volatile ("": : : "memory");
  mddev->ready = 1;
  __mptr___5 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___5;
  goto ldv_33704;
  ldv_33703: ;
  if (rdev->raid_disk >= 0) {
    tmp___16 = sysfs_link_rdev(mddev, rdev);
  } else {
  }
  __mptr___6 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___6;
  ldv_33704: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33703;
  } else {
  }
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  if (mddev->flags != 0UL) {
    md_update_sb(mddev, 0);
  } else {
  }
  md_new_event(mddev);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  sysfs_notify_dirent_safe(mddev->sysfs_action);
  sysfs_notify(& mddev->kobj, 0, "degraded");
  return (0);
}
}
static int do_md_run(struct mddev *mddev )
{
  int err ;
  {
  err = md_run(mddev);
  if (err != 0) {
    goto out;
  } else {
  }
  err = bitmap_load(mddev);
  if (err != 0) {
    bitmap_destroy(mddev);
    goto out;
  } else {
  }
  md_wakeup_thread(mddev->thread);
  md_wakeup_thread(mddev->sync_thread);
  set_capacity(mddev->gendisk, mddev->array_sectors);
  revalidate_disk(mddev->gendisk);
  mddev->changed = 1;
  kobject_uevent(& (mddev->gendisk)->part0.__dev.kobj, 2);
  out: ;
  return (err);
}
}
static int restart_array(struct mddev *mddev )
{
  struct gendisk *disk ;
  int tmp ;
  char *tmp___0 ;
  {
  disk = mddev->gendisk;
  tmp = list_empty((struct list_head const *)(& mddev->disks));
  if (tmp != 0) {
    return (-6);
  } else {
  }
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    return (-22);
  } else {
  }
  if (mddev->ro == 0) {
    return (-16);
  } else {
  }
  mddev->safemode = 0U;
  mddev->ro = 0;
  set_disk_ro(disk, 0);
  tmp___0 = mdname(mddev);
  printk("\016md: %s switched to read-write mode.\n", tmp___0);
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  md_wakeup_thread(mddev->sync_thread);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  return (0);
}
}
static int deny_bitmap_write_access(struct file *file )
{
  struct inode *inode ;
  int tmp ;
  {
  inode = (file->f_mapping)->host;
  spin_lock(& inode->i_lock);
  tmp = atomic_read((atomic_t const *)(& inode->i_writecount));
  if (tmp > 1) {
    spin_unlock(& inode->i_lock);
    return (-26);
  } else {
  }
  atomic_set(& inode->i_writecount, -1);
  spin_unlock(& inode->i_lock);
  return (0);
}
}
void restore_bitmap_write_access(struct file *file )
{
  struct inode *inode ;
  {
  inode = (file->f_mapping)->host;
  spin_lock(& inode->i_lock);
  atomic_set(& inode->i_writecount, 1);
  spin_unlock(& inode->i_lock);
  return;
}
}
static void md_clean(struct mddev *mddev )
{
  time_t tmp ;
  sector_t tmp___0 ;
  int tmp___1 ;
  {
  mddev->array_sectors = 0UL;
  mddev->external_size = 0;
  mddev->dev_sectors = 0UL;
  mddev->raid_disks = 0;
  mddev->recovery_cp = 0UL;
  mddev->resync_min = 0UL;
  mddev->resync_max = 0xffffffffffffffffUL;
  mddev->reshape_position = 0xffffffffffffffffUL;
  mddev->external = 0;
  mddev->persistent = 0;
  mddev->level = -1000000;
  mddev->clevel[0] = 0;
  mddev->flags = 0UL;
  mddev->ro = 0;
  mddev->metadata_type[0] = 0;
  mddev->chunk_sectors = 0;
  tmp = 0L;
  mddev->utime = tmp;
  mddev->ctime = tmp;
  mddev->layout = 0;
  mddev->max_disks = 0;
  mddev->events = 0ULL;
  mddev->can_decrease_events = 0;
  mddev->delta_disks = 0;
  mddev->reshape_backwards = 0;
  mddev->new_level = -1000000;
  mddev->new_layout = 0;
  mddev->new_chunk_sectors = 0;
  mddev->curr_resync = 0UL;
  atomic64_set(& mddev->resync_mismatches, 0L);
  tmp___0 = 0UL;
  mddev->suspend_hi = tmp___0;
  mddev->suspend_lo = tmp___0;
  tmp___1 = 0;
  mddev->sync_speed_max = tmp___1;
  mddev->sync_speed_min = tmp___1;
  mddev->recovery = 0UL;
  mddev->in_sync = 0;
  mddev->changed = 0;
  mddev->degraded = 0;
  mddev->safemode = 0U;
  mddev->merge_check_needed = 0;
  mddev->bitmap_info.offset = 0LL;
  mddev->bitmap_info.default_offset = 0LL;
  mddev->bitmap_info.default_space = 0UL;
  mddev->bitmap_info.chunksize = 0UL;
  mddev->bitmap_info.daemon_sleep = 0UL;
  mddev->bitmap_info.max_write_behind = 0UL;
  return;
}
}
static void __md_stop_writes(struct mddev *mddev )
{
  {
  if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
    set_bit(9U, (unsigned long volatile *)(& mddev->recovery));
    set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
    md_reap_sync_thread(mddev);
  } else {
  }
  del_timer_sync(& mddev->safemode_timer);
  bitmap_flush(mddev);
  md_super_wait(mddev);
  if (mddev->ro == 0 && (mddev->in_sync == 0 || mddev->flags != 0UL)) {
    mddev->in_sync = 1;
    md_update_sb(mddev, 1);
  } else {
  }
  return;
}
}
void md_stop_writes(struct mddev *mddev )
{
  {
  mddev_lock(mddev);
  __md_stop_writes(mddev);
  mddev_unlock(mddev);
  return;
}
}
static void __md_stop(struct mddev *mddev )
{
  {
  mddev->ready = 0;
  (*((mddev->pers)->stop))(mddev);
  if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0) && (unsigned long )mddev->to_remove == (unsigned long )((struct attribute_group *)0)) {
    mddev->to_remove = & md_redundancy_group;
  } else {
  }
  module_put((mddev->pers)->owner);
  mddev->pers = 0;
  clear_bit(9, (unsigned long volatile *)(& mddev->recovery));
  return;
}
}
void md_stop(struct mddev *mddev )
{
  {
  __md_stop(mddev);
  bitmap_destroy(mddev);
  if ((unsigned long )mddev->bio_set != (unsigned long )((struct bio_set *)0)) {
    bioset_free(mddev->bio_set);
  } else {
  }
  return;
}
}
static int md_set_readonly(struct mddev *mddev , struct block_device *bdev )
{
  int err ;
  char *tmp ;
  int tmp___0 ;
  {
  err = 0;
  ldv_mutex_lock_15(& mddev->open_mutex);
  tmp___0 = atomic_read((atomic_t const *)(& mddev->openers));
  if (tmp___0 > ((unsigned long )bdev != (unsigned long )((struct block_device *)0))) {
    tmp = mdname(mddev);
    printk("md: %s still in use.\n", tmp);
    err = -16;
    goto out;
  } else {
  }
  if ((unsigned long )bdev != (unsigned long )((struct block_device *)0)) {
    sync_blockdev(bdev);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    __md_stop_writes(mddev);
    err = -6;
    if (mddev->ro == 1) {
      goto out;
    } else {
    }
    mddev->ro = 1;
    set_disk_ro(mddev->gendisk, 1);
    clear_bit(9, (unsigned long volatile *)(& mddev->recovery));
    sysfs_notify_dirent_safe(mddev->sysfs_state);
    err = 0;
  } else {
  }
  out:
  ldv_mutex_unlock_16(& mddev->open_mutex);
  return (err);
}
}
static int do_md_stop(struct mddev *mddev , int mode , struct block_device *bdev )
{
  struct gendisk *disk ;
  struct md_rdev *rdev ;
  char *tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  char *tmp___1 ;
  {
  disk = mddev->gendisk;
  ldv_mutex_lock_17(& mddev->open_mutex);
  tmp___0 = atomic_read((atomic_t const *)(& mddev->openers));
  if (tmp___0 > ((unsigned long )bdev != (unsigned long )((struct block_device *)0)) || mddev->sysfs_active != 0) {
    tmp = mdname(mddev);
    printk("md: %s still in use.\n", tmp);
    ldv_mutex_unlock_18(& mddev->open_mutex);
    return (-16);
  } else {
  }
  if ((unsigned long )bdev != (unsigned long )((struct block_device *)0)) {
    sync_blockdev(bdev);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if (mddev->ro != 0) {
      set_disk_ro(disk, 0);
    } else {
    }
    __md_stop_writes(mddev);
    __md_stop(mddev);
    (mddev->queue)->merge_bvec_fn = 0;
    (mddev->queue)->backing_dev_info.congested_fn = 0;
    sysfs_notify_dirent_safe(mddev->sysfs_state);
    __mptr = (struct list_head const *)mddev->disks.next;
    rdev = (struct md_rdev *)__mptr;
    goto ldv_33774;
    ldv_33773: ;
    if (rdev->raid_disk >= 0) {
      sysfs_unlink_rdev(mddev, rdev);
    } else {
    }
    __mptr___0 = (struct list_head const *)rdev->same_set.next;
    rdev = (struct md_rdev *)__mptr___0;
    ldv_33774: ;
    if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
      goto ldv_33773;
    } else {
    }
    set_capacity(disk, 0UL);
    ldv_mutex_unlock_19(& mddev->open_mutex);
    mddev->changed = 1;
    revalidate_disk(disk);
    if (mddev->ro != 0) {
      mddev->ro = 0;
    } else {
    }
  } else {
    ldv_mutex_unlock_20(& mddev->open_mutex);
  }
  if (mode == 0) {
    tmp___1 = mdname(mddev);
    printk("\016md: %s stopped.\n", tmp___1);
    bitmap_destroy(mddev);
    if ((unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) {
      restore_bitmap_write_access(mddev->bitmap_info.file);
      fput(mddev->bitmap_info.file);
      mddev->bitmap_info.file = 0;
    } else {
    }
    mddev->bitmap_info.offset = 0LL;
    export_array(mddev);
    md_clean(mddev);
    kobject_uevent(& (mddev->gendisk)->part0.__dev.kobj, 2);
    if (mddev->hold_active == 2) {
      mddev->hold_active = 0;
    } else {
    }
  } else {
  }
  blk_integrity_unregister(disk);
  md_new_event(mddev);
  sysfs_notify_dirent_safe(mddev->sysfs_state);
  return (0);
}
}
static int get_version(void *arg )
{
  mdu_version_t ver ;
  int tmp ;
  {
  ver.major = 0;
  ver.minor = 90;
  ver.patchlevel = 3;
  tmp = copy_to_user(arg, (void const *)(& ver), 12U);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int get_array_info(struct mddev *mddev , void *arg )
{
  mdu_array_info_t info ;
  int nr ;
  int working ;
  int insync ;
  int failed ;
  int spare ;
  struct md_rdev *rdev ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  spare = 0;
  failed = spare;
  insync = failed;
  working = insync;
  nr = working;
  rcu_read_lock();
  __ptr = mddev->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33806;
  ldv_33805:
  nr = nr + 1;
  tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___1 != 0) {
    failed = failed + 1;
  } else {
    working = working + 1;
    tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___0 != 0) {
      insync = insync + 1;
    } else {
      spare = spare + 1;
    }
  }
  __ptr___0 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33806: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33805;
  } else {
  }
  rcu_read_unlock();
  info.major_version = mddev->major_version;
  info.minor_version = mddev->minor_version;
  info.patch_version = 3;
  info.ctime = (int )mddev->ctime;
  info.level = mddev->level;
  info.size = (int )(mddev->dev_sectors / 2UL);
  if ((sector_t )info.size != mddev->dev_sectors / 2UL) {
    info.size = -1;
  } else {
  }
  info.nr_disks = nr;
  info.raid_disks = mddev->raid_disks;
  info.md_minor = mddev->md_minor;
  info.not_persistent = mddev->persistent == 0;
  info.utime = (int )mddev->utime;
  info.state = 0;
  if (mddev->in_sync != 0) {
    info.state = 1;
  } else {
  }
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) && mddev->bitmap_info.offset != 0LL) {
    info.state = 256;
  } else {
  }
  info.active_disks = insync;
  info.working_disks = working;
  info.failed_disks = failed;
  info.spare_disks = spare;
  info.layout = mddev->layout;
  info.chunk_size = mddev->chunk_sectors << 9;
  tmp___3 = copy_to_user(arg, (void const *)(& info), 72U);
  if (tmp___3 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int get_bitmap_file(struct mddev *mddev , void *arg )
{
  mdu_bitmap_file_t *file ;
  char *ptr ;
  char *buf ;
  int err ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  file = 0;
  buf = 0;
  err = -12;
  tmp___1 = md_allow_write(mddev);
  if (tmp___1 != 0) {
    tmp = kmalloc(4096UL, 16U);
    file = (mdu_bitmap_file_t *)tmp;
  } else {
    tmp___0 = kmalloc(4096UL, 208U);
    file = (mdu_bitmap_file_t *)tmp___0;
  }
  if ((unsigned long )file == (unsigned long )((mdu_bitmap_file_t *)0)) {
    goto out;
  } else {
  }
  if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0) || (unsigned long )(mddev->bitmap)->storage.file == (unsigned long )((struct file *)0)) {
    file->pathname[0] = 0;
    goto copy_out;
  } else {
  }
  tmp___2 = kmalloc(4096UL, 208U);
  buf = (char *)tmp___2;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    goto out;
  } else {
  }
  ptr = d_path((struct path const *)(& ((mddev->bitmap)->storage.file)->f_path),
               buf, 4096);
  tmp___3 = IS_ERR((void const *)ptr);
  if (tmp___3 != 0L) {
    goto out;
  } else {
  }
  strcpy((char *)(& file->pathname), (char const *)ptr);
  copy_out:
  err = 0;
  tmp___4 = copy_to_user(arg, (void const *)file, 4096U);
  if (tmp___4 != 0) {
    err = -14;
  } else {
  }
  out:
  kfree((void const *)buf);
  kfree((void const *)file);
  return (err);
}
}
static int get_disk_info(struct mddev *mddev , void *arg )
{
  mdu_disk_info_t info ;
  struct md_rdev *rdev ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = copy_from_user((void *)(& info), (void const *)arg, 20UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  rcu_read_lock();
  rdev = find_rdev_nr_rcu(mddev, info.number);
  if ((unsigned long )rdev != (unsigned long )((struct md_rdev *)0)) {
    info.major = (int )((rdev->bdev)->bd_dev >> 20);
    info.minor = (int )(rdev->bdev)->bd_dev & 1048575;
    info.raid_disk = rdev->raid_disk;
    info.state = 0;
    tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___1 != 0) {
      info.state = info.state | 1;
    } else {
      tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___0 != 0) {
        info.state = info.state | 2;
        info.state = info.state | 4;
      } else {
      }
    }
    tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___2 != 0) {
      info.state = info.state | 512;
    } else {
    }
  } else {
    info.minor = 0;
    info.major = info.minor;
    info.raid_disk = -1;
    info.state = 8;
  }
  rcu_read_unlock();
  tmp___3 = copy_to_user(arg, (void const *)(& info), 20U);
  if (tmp___3 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int add_new_disk(struct mddev *mddev , mdu_disk_info_t *info )
{
  char b[32U] ;
  char b2[32U] ;
  struct md_rdev *rdev ;
  dev_t dev ;
  int err ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  struct md_rdev *rdev0 ;
  struct list_head const *__mptr ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  int tmp___4 ;
  int err___0 ;
  char *tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  char *tmp___10 ;
  int err___1 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  loff_t tmp___14 ;
  {
  dev = (dev_t )((info->major << 20) | info->minor);
  if ((dev_t )info->major != dev >> 20 || (dev_t )info->minor != (dev & 1048575U)) {
    return (-75);
  } else {
  }
  if (mddev->raid_disks == 0) {
    rdev = md_import_device(dev, mddev->major_version, mddev->minor_version);
    tmp___1 = IS_ERR((void const *)rdev);
    if (tmp___1 != 0L) {
      tmp = PTR_ERR((void const *)rdev);
      printk("\fmd: md_import_device returned %ld\n", tmp);
      tmp___0 = PTR_ERR((void const *)rdev);
      return ((int )tmp___0);
    } else {
    }
    tmp___4 = list_empty((struct list_head const *)(& mddev->disks));
    if (tmp___4 == 0) {
      __mptr = (struct list_head const *)mddev->disks.next;
      rdev0 = (struct md_rdev *)__mptr;
      err = (*(super_types[mddev->major_version].load_super))(rdev, rdev0, mddev->minor_version);
      if (err < 0) {
        tmp___2 = bdevname(rdev0->bdev, (char *)(& b2));
        tmp___3 = bdevname(rdev->bdev, (char *)(& b));
        printk("\fmd: %s has different UUID to %s\n", tmp___3, tmp___2);
        export_rdev(rdev);
        return (-22);
      } else {
      }
    } else {
    }
    err = bind_rdev_to_array(rdev, mddev);
    if (err != 0) {
      export_rdev(rdev);
    } else {
    }
    return (err);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if ((unsigned long )(mddev->pers)->hot_add_disk == (unsigned long )((int (*)(struct mddev * ,
                                                                                 struct md_rdev * ))0)) {
      tmp___5 = mdname(mddev);
      printk("\f%s: personality does not support diskops!\n", tmp___5);
      return (-22);
    } else {
    }
    if (mddev->persistent != 0) {
      rdev = md_import_device(dev, mddev->major_version, mddev->minor_version);
    } else {
      rdev = md_import_device(dev, -1, -1);
    }
    tmp___8 = IS_ERR((void const *)rdev);
    if (tmp___8 != 0L) {
      tmp___6 = PTR_ERR((void const *)rdev);
      printk("\fmd: md_import_device returned %ld\n", tmp___6);
      tmp___7 = PTR_ERR((void const *)rdev);
      return ((int )tmp___7);
    } else {
    }
    if (mddev->persistent == 0) {
      if ((info->state & 4) != 0 && info->raid_disk < mddev->raid_disks) {
        rdev->raid_disk = info->raid_disk;
        set_bit(1U, (unsigned long volatile *)(& rdev->flags));
      } else {
        rdev->raid_disk = -1;
      }
    } else {
      (*(super_types[mddev->major_version].validate_super))(mddev, rdev);
    }
    if ((info->state & 4) != 0 && rdev->raid_disk != info->raid_disk) {
      export_rdev(rdev);
      return (-22);
    } else {
    }
    tmp___9 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___9 != 0) {
      rdev->saved_raid_disk = rdev->raid_disk;
    } else {
      rdev->saved_raid_disk = -1;
    }
    clear_bit(1, (unsigned long volatile *)(& rdev->flags));
    if ((info->state & 512) != 0) {
      set_bit(3U, (unsigned long volatile *)(& rdev->flags));
    } else {
      clear_bit(3, (unsigned long volatile *)(& rdev->flags));
    }
    rdev->raid_disk = -1;
    err___0 = bind_rdev_to_array(rdev, mddev);
    if (err___0 == 0 && (unsigned long )(mddev->pers)->hot_remove_disk == (unsigned long )((int (*)(struct mddev * ,
                                                                                                    struct md_rdev * ))0)) {
      (*(super_types[mddev->major_version].validate_super))(mddev, rdev);
      err___0 = (*((mddev->pers)->hot_add_disk))(mddev, rdev);
      if (err___0 != 0) {
        unbind_rdev_from_array(rdev);
      } else {
      }
    } else {
    }
    if (err___0 != 0) {
      export_rdev(rdev);
    } else {
      sysfs_notify_dirent_safe(rdev->sysfs_state);
    }
    set_bit(0U, (unsigned long volatile *)(& mddev->flags));
    if (mddev->degraded != 0) {
      set_bit(2U, (unsigned long volatile *)(& mddev->recovery));
    } else {
    }
    set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
    if (err___0 == 0) {
      md_new_event(mddev);
    } else {
    }
    md_wakeup_thread(mddev->thread);
    return (err___0);
  } else {
  }
  if (mddev->major_version != 0) {
    tmp___10 = mdname(mddev);
    printk("\f%s: ADD_NEW_DISK not supported\n", tmp___10);
    return (-22);
  } else {
  }
  if ((info->state & 1) == 0) {
    rdev = md_import_device(dev, -1, 0);
    tmp___13 = IS_ERR((void const *)rdev);
    if (tmp___13 != 0L) {
      tmp___11 = PTR_ERR((void const *)rdev);
      printk("\fmd: error, md_import_device() returned %ld\n", tmp___11);
      tmp___12 = PTR_ERR((void const *)rdev);
      return ((int )tmp___12);
    } else {
    }
    rdev->desc_nr = info->number;
    if (info->raid_disk < mddev->raid_disks) {
      rdev->raid_disk = info->raid_disk;
    } else {
      rdev->raid_disk = -1;
    }
    if (rdev->raid_disk < mddev->raid_disks) {
      if ((info->state & 4) != 0) {
        set_bit(1U, (unsigned long volatile *)(& rdev->flags));
      } else {
      }
    } else {
    }
    if ((info->state & 512) != 0) {
      set_bit(3U, (unsigned long volatile *)(& rdev->flags));
    } else {
    }
    if (mddev->persistent == 0) {
      printk("\016md: nonpersistent superblock ...\n");
      tmp___14 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
      rdev->sb_start = (sector_t )(tmp___14 / 512LL);
    } else {
      rdev->sb_start = calc_dev_sboffset(rdev);
    }
    rdev->sectors = rdev->sb_start;
    err___1 = bind_rdev_to_array(rdev, mddev);
    if (err___1 != 0) {
      export_rdev(rdev);
      return (err___1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int hot_remove_disk(struct mddev *mddev , dev_t dev )
{
  char b[32U] ;
  struct md_rdev *rdev ;
  char *tmp ;
  char const *tmp___0 ;
  {
  rdev = find_rdev(mddev, dev);
  if ((unsigned long )rdev == (unsigned long )((struct md_rdev *)0)) {
    return (-6);
  } else {
  }
  clear_bit(5, (unsigned long volatile *)(& rdev->flags));
  remove_and_add_spares(mddev, rdev);
  if (rdev->raid_disk >= 0) {
    goto busy;
  } else {
  }
  kick_rdev_from_array(rdev);
  md_update_sb(mddev, 1);
  md_new_event(mddev);
  return (0);
  busy:
  tmp = mdname(mddev);
  tmp___0 = bdevname(rdev->bdev, (char *)(& b));
  printk("\fmd: cannot remove active disk %s from %s ...\n", tmp___0, tmp);
  return (-16);
}
}
static int hot_add_disk(struct mddev *mddev , dev_t dev )
{
  char b[32U] ;
  int err ;
  struct md_rdev *rdev ;
  char *tmp ;
  char *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  loff_t tmp___3 ;
  char *tmp___4 ;
  char const *tmp___5 ;
  int tmp___6 ;
  {
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    return (-19);
  } else {
  }
  if (mddev->major_version != 0) {
    tmp = mdname(mddev);
    printk("\f%s: HOT_ADD may only be used with version-0 superblocks.\n", tmp);
    return (-22);
  } else {
  }
  if ((unsigned long )(mddev->pers)->hot_add_disk == (unsigned long )((int (*)(struct mddev * ,
                                                                               struct md_rdev * ))0)) {
    tmp___0 = mdname(mddev);
    printk("\f%s: personality does not support diskops!\n", tmp___0);
    return (-22);
  } else {
  }
  rdev = md_import_device(dev, -1, 0);
  tmp___2 = IS_ERR((void const *)rdev);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)rdev);
    printk("\fmd: error, md_import_device() returned %ld\n", tmp___1);
    return (-22);
  } else {
  }
  if (mddev->persistent != 0) {
    rdev->sb_start = calc_dev_sboffset(rdev);
  } else {
    tmp___3 = i_size_read((struct inode const *)(rdev->bdev)->bd_inode);
    rdev->sb_start = (sector_t )(tmp___3 / 512LL);
  }
  rdev->sectors = rdev->sb_start;
  tmp___6 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___6 != 0) {
    tmp___4 = mdname(mddev);
    tmp___5 = bdevname(rdev->bdev, (char *)(& b));
    printk("\fmd: can not hot-add faulty %s disk to %s!\n", tmp___5, tmp___4);
    err = -22;
    goto abort_export;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& rdev->flags));
  rdev->desc_nr = -1;
  rdev->saved_raid_disk = -1;
  err = bind_rdev_to_array(rdev, mddev);
  if (err != 0) {
    goto abort_export;
  } else {
  }
  rdev->raid_disk = -1;
  md_update_sb(mddev, 1);
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  md_new_event(mddev);
  return (0);
  abort_export:
  export_rdev(rdev);
  return (err);
}
}
static int set_bitmap_file(struct mddev *mddev , int fd )
{
  int err ;
  char *tmp ;
  char *tmp___0 ;
  {
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if ((unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                             int ))0)) {
      return (-16);
    } else {
    }
    if (mddev->recovery != 0UL || (unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
      return (-16);
    } else {
    }
  } else {
  }
  if (fd >= 0) {
    if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
      return (-17);
    } else {
    }
    mddev->bitmap_info.file = fget((unsigned int )fd);
    if ((unsigned long )mddev->bitmap_info.file == (unsigned long )((struct file *)0)) {
      tmp = mdname(mddev);
      printk("\v%s: error: failed to get bitmap file\n", tmp);
      return (-9);
    } else {
    }
    err = deny_bitmap_write_access(mddev->bitmap_info.file);
    if (err != 0) {
      tmp___0 = mdname(mddev);
      printk("\v%s: error: bitmap file is already in use\n", tmp___0);
      fput(mddev->bitmap_info.file);
      mddev->bitmap_info.file = 0;
      return (err);
    } else {
    }
    mddev->bitmap_info.offset = 0LL;
  } else
  if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
    return (-2);
  } else {
  }
  err = 0;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    (*((mddev->pers)->quiesce))(mddev, 1);
    if (fd >= 0) {
      err = bitmap_create(mddev);
      if (err == 0) {
        err = bitmap_load(mddev);
      } else {
      }
    } else {
    }
    if (fd < 0 || err != 0) {
      bitmap_destroy(mddev);
      fd = -1;
    } else {
    }
    (*((mddev->pers)->quiesce))(mddev, 0);
  } else {
  }
  if (fd < 0) {
    if ((unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) {
      restore_bitmap_write_access(mddev->bitmap_info.file);
      fput(mddev->bitmap_info.file);
    } else {
    }
    mddev->bitmap_info.file = 0;
  } else {
  }
  return (err);
}
}
static int set_array_info(struct mddev *mddev , mdu_array_info_t *info )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  if (info->raid_disks == 0) {
    if ((info->major_version < 0 || (unsigned int )info->major_version > 1U) || (unsigned long )super_types[info->major_version].name == (unsigned long )((char *)0)) {
      printk("\016md: superblock version %d not known\n", info->major_version);
      return (-22);
    } else {
    }
    mddev->major_version = info->major_version;
    mddev->minor_version = info->minor_version;
    mddev->patch_version = info->patch_version;
    mddev->persistent = info->not_persistent == 0;
    tmp = get_seconds();
    mddev->ctime = (time_t )tmp;
    return (0);
  } else {
  }
  mddev->major_version = 0;
  mddev->minor_version = 90;
  mddev->patch_version = 3;
  tmp___0 = get_seconds();
  mddev->ctime = (time_t )tmp___0;
  mddev->level = info->level;
  mddev->clevel[0] = 0;
  mddev->dev_sectors = (unsigned long )info->size * 2UL;
  mddev->raid_disks = info->raid_disks;
  if (info->state & 1) {
    mddev->recovery_cp = 0xffffffffffffffffUL;
  } else {
    mddev->recovery_cp = 0UL;
  }
  mddev->persistent = info->not_persistent == 0;
  mddev->external = 0;
  mddev->layout = info->layout;
  mddev->chunk_sectors = info->chunk_size >> 9;
  mddev->max_disks = 27;
  if (mddev->persistent != 0) {
    mddev->flags = 0UL;
  } else {
  }
  set_bit(0U, (unsigned long volatile *)(& mddev->flags));
  mddev->bitmap_info.default_offset = 8LL;
  mddev->bitmap_info.default_space = 120UL;
  mddev->bitmap_info.offset = 0LL;
  mddev->reshape_position = 0xffffffffffffffffUL;
  get_random_bytes((void *)(& mddev->uuid), 16);
  mddev->new_level = mddev->level;
  mddev->new_chunk_sectors = mddev->chunk_sectors;
  mddev->new_layout = mddev->layout;
  mddev->delta_disks = 0;
  mddev->reshape_backwards = 0;
  return (0);
}
}
void md_set_array_sectors(struct mddev *mddev , sector_t array_sectors )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = mddev_is_locked(mddev);
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
                      6167, "%s: unlocked mddev!\n", "md_set_array_sectors");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (mddev->external_size != 0) {
    return;
  } else {
  }
  mddev->array_sectors = array_sectors;
  return;
}
}
static int update_size(struct mddev *mddev , sector_t num_sectors )
{
  struct md_rdev *rdev ;
  int rv ;
  int fit ;
  struct list_head const *__mptr ;
  sector_t avail ;
  struct list_head const *__mptr___0 ;
  {
  fit = num_sectors == 0UL;
  if ((unsigned long )(mddev->pers)->resize == (unsigned long )((int (*)(struct mddev * ,
                                                                         sector_t ))0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
    return (-16);
  } else {
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33891;
  ldv_33890:
  avail = rdev->sectors;
  if (fit != 0 && (num_sectors == 0UL || num_sectors > avail)) {
    num_sectors = avail;
  } else {
  }
  if (avail < num_sectors) {
    return (-28);
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33891: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33890;
  } else {
  }
  rv = (*((mddev->pers)->resize))(mddev, num_sectors);
  if (rv == 0) {
    revalidate_disk(mddev->gendisk);
  } else {
  }
  return (rv);
}
}
static int update_raid_disks(struct mddev *mddev , int raid_disks )
{
  int rv ;
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned long )(mddev->pers)->check_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
    return (-22);
  } else {
  }
  if (raid_disks <= 0 || (mddev->max_disks != 0 && mddev->max_disks <= raid_disks)) {
    return (-22);
  } else {
  }
  if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0) || mddev->reshape_position != 0xffffffffffffffffUL) {
    return (-16);
  } else {
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_33904;
  ldv_33903: ;
  if (mddev->raid_disks < raid_disks && rdev->data_offset < rdev->new_data_offset) {
    return (-22);
  } else {
  }
  if (mddev->raid_disks > raid_disks && rdev->data_offset > rdev->new_data_offset) {
    return (-22);
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_33904: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_33903;
  } else {
  }
  mddev->delta_disks = raid_disks - mddev->raid_disks;
  if (mddev->delta_disks < 0) {
    mddev->reshape_backwards = 1;
  } else
  if (mddev->delta_disks > 0) {
    mddev->reshape_backwards = 0;
  } else {
  }
  rv = (*((mddev->pers)->check_reshape))(mddev);
  if (rv < 0) {
    mddev->delta_disks = 0;
    mddev->reshape_backwards = 0;
  } else {
  }
  return (rv);
}
}
static int update_array_info(struct mddev *mddev , mdu_array_info_t *info )
{
  int rv ;
  int cnt ;
  int state ;
  {
  rv = 0;
  cnt = 0;
  state = 0;
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) && mddev->bitmap_info.offset != 0LL) {
    state = state | 256;
  } else {
  }
  if ((((((mddev->major_version != info->major_version || mddev->minor_version != info->minor_version) || mddev->ctime != (time_t )info->ctime) || mddev->level != info->level) || (mddev->persistent == 0) != info->not_persistent) || mddev->chunk_sectors != info->chunk_size >> 9) || ((unsigned int )(info->state ^ state) & 4294966784U) != 0U) {
    return (-22);
  } else {
  }
  if (info->size >= 0 && mddev->dev_sectors / 2UL != (sector_t )info->size) {
    cnt = cnt + 1;
  } else {
  }
  if (mddev->raid_disks != info->raid_disks) {
    cnt = cnt + 1;
  } else {
  }
  if (mddev->layout != info->layout) {
    cnt = cnt + 1;
  } else {
  }
  if (((info->state ^ state) & 256) != 0) {
    cnt = cnt + 1;
  } else {
  }
  if (cnt == 0) {
    return (0);
  } else {
  }
  if (cnt > 1) {
    return (-22);
  } else {
  }
  if (mddev->layout != info->layout) {
    if ((unsigned long )(mddev->pers)->check_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
      return (-22);
    } else {
      mddev->new_layout = info->layout;
      rv = (*((mddev->pers)->check_reshape))(mddev);
      if (rv != 0) {
        mddev->new_layout = mddev->layout;
      } else {
      }
      return (rv);
    }
  } else {
  }
  if (info->size >= 0 && mddev->dev_sectors / 2UL != (sector_t )info->size) {
    rv = update_size(mddev, (unsigned long )info->size * 2UL);
  } else {
  }
  if (mddev->raid_disks != info->raid_disks) {
    rv = update_raid_disks(mddev, info->raid_disks);
  } else {
  }
  if (((info->state ^ state) & 256) != 0) {
    if ((unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                             int ))0)) {
      return (-22);
    } else {
    }
    if (mddev->recovery != 0UL || (unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
      return (-16);
    } else {
    }
    if ((info->state & 256) != 0) {
      if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
        return (-17);
      } else {
      }
      if (mddev->bitmap_info.default_offset == 0LL) {
        return (-22);
      } else {
      }
      mddev->bitmap_info.offset = mddev->bitmap_info.default_offset;
      mddev->bitmap_info.space = mddev->bitmap_info.default_space;
      (*((mddev->pers)->quiesce))(mddev, 1);
      rv = bitmap_create(mddev);
      if (rv == 0) {
        rv = bitmap_load(mddev);
      } else {
      }
      if (rv != 0) {
        bitmap_destroy(mddev);
      } else {
      }
      (*((mddev->pers)->quiesce))(mddev, 0);
    } else {
      if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
        return (-2);
      } else {
      }
      if ((unsigned long )(mddev->bitmap)->storage.file != (unsigned long )((struct file *)0)) {
        return (-22);
      } else {
      }
      (*((mddev->pers)->quiesce))(mddev, 1);
      bitmap_destroy(mddev);
      (*((mddev->pers)->quiesce))(mddev, 0);
      mddev->bitmap_info.offset = 0LL;
    }
  } else {
  }
  md_update_sb(mddev, 1);
  return (rv);
}
}
static int set_disk_faulty(struct mddev *mddev , dev_t dev )
{
  struct md_rdev *rdev ;
  int err ;
  int tmp ;
  {
  err = 0;
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    return (-19);
  } else {
  }
  rcu_read_lock();
  rdev = find_rdev_rcu(mddev, dev);
  if ((unsigned long )rdev == (unsigned long )((struct md_rdev *)0)) {
    err = -19;
  } else {
    md_error(mddev, rdev);
    tmp = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp == 0) {
      err = -16;
    } else {
    }
  }
  rcu_read_unlock();
  return (err);
}
}
static int md_getgeo(struct block_device *bdev , struct hd_geometry *geo )
{
  struct mddev *mddev ;
  {
  mddev = (struct mddev *)(bdev->bd_disk)->private_data;
  geo->heads = 2U;
  geo->sectors = 4U;
  geo->cylinders = (unsigned short )(mddev->array_sectors / 8UL);
  return (0);
}
}
static int md_ioctl(struct block_device *bdev , fmode_t mode , unsigned int cmd ,
                    unsigned long arg )
{
  int err ;
  void *argp ;
  struct mddev *mddev ;
  int ro ;
  bool tmp ;
  int tmp___0 ;
  dev_t tmp___1 ;
  mdu_array_info_t info ;
  unsigned long tmp___2 ;
  char *tmp___3 ;
  int tmp___4 ;
  char *tmp___5 ;
  dev_t tmp___6 ;
  mdu_disk_info_t info___0 ;
  unsigned long tmp___7 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int tmp___8 ;
  int tmp___9 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  mdu_disk_info_t info___1 ;
  unsigned long tmp___14 ;
  dev_t tmp___15 ;
  {
  err = 0;
  argp = (void *)arg;
  mddev = 0;
  switch (cmd) {
  case 2148272400U: ;
  case 2152204561U: ;
  case 2148796690U: ;
  goto ldv_33937;
  default:
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
  }
  }
  ldv_33937: ;
  switch (cmd) {
  case 2148272400U:
  err = get_version(argp);
  goto done;
  case 2323U:
  err = 0;
  md_print_devices();
  goto done;
  default: ;
  }
  mddev = (struct mddev *)(bdev->bd_disk)->private_data;
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0)) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (6435), "i" (12UL));
    ldv_33943: ;
    goto ldv_33943;
    goto abort;
  } else {
  }
  switch (cmd) {
  case 2152204561U: ;
  if (mddev->raid_disks == 0 && mddev->external == 0) {
    err = -19;
  } else {
    err = get_array_info(mddev, argp);
  }
  goto abort;
  case 2148796690U: ;
  if (mddev->raid_disks == 0 && mddev->external == 0) {
    err = -19;
  } else {
    err = get_disk_info(mddev, argp);
  }
  goto abort;
  case 2345U:
  tmp___1 = new_decode_dev((u32 )arg);
  err = set_disk_faulty(mddev, tmp___1);
  goto abort;
  }
  if (cmd == 1075054881U) {
    flush_workqueue(md_misc_wq);
  } else {
  }
  err = mddev_lock(mddev);
  if (err != 0) {
    printk("\016md: ioctl lock interrupted, reason %d, cmd %d\n", err, cmd);
    goto abort;
  } else {
  }
  if (cmd == 1078462755U) {
    if (arg == 0UL) {
      memset((void *)(& info), 0, 72UL);
    } else {
      tmp___2 = copy_from_user((void *)(& info), (void const *)argp, 72UL);
      if (tmp___2 != 0UL) {
        err = -14;
        goto abort_unlock;
      } else {
      }
    }
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      err = update_array_info(mddev, & info);
      if (err != 0) {
        printk("\fmd: couldn\'t update array info. %d\n", err);
        goto abort_unlock;
      } else {
      }
      goto done_unlock;
    } else {
    }
    tmp___4 = list_empty((struct list_head const *)(& mddev->disks));
    if (tmp___4 == 0) {
      tmp___3 = mdname(mddev);
      printk("\fmd: array %s already has disks!\n", tmp___3);
      err = -16;
      goto abort_unlock;
    } else {
    }
    if (mddev->raid_disks != 0) {
      tmp___5 = mdname(mddev);
      printk("\fmd: array %s already initialised!\n", tmp___5);
      err = -16;
      goto abort_unlock;
    } else {
    }
    err = set_array_info(mddev, & info);
    if (err != 0) {
      printk("\fmd: couldn\'t set array info. %d\n", err);
      goto abort_unlock;
    } else {
    }
    goto done_unlock;
  } else {
  }
  if ((((((mddev->raid_disks == 0 && mddev->external == 0) && cmd != 1075054881U) && cmd != 2354U) && cmd != 1074530608U) && cmd != 1074006315U) && cmd != 2415921429U) {
    err = -19;
    goto abort_unlock;
  } else {
  }
  switch (cmd) {
  case 2415921429U:
  err = get_bitmap_file(mddev, argp);
  goto done_unlock;
  case 2356U:
  err = restart_array(mddev);
  goto done_unlock;
  case 2354U:
  err = do_md_stop(mddev, 0, bdev);
  goto done_unlock;
  case 2355U:
  err = md_set_readonly(mddev, bdev);
  goto done_unlock;
  case 2338U:
  tmp___6 = new_decode_dev((u32 )arg);
  err = hot_remove_disk(mddev, tmp___6);
  goto done_unlock;
  case 1075054881U: ;
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    tmp___7 = copy_from_user((void *)(& info___0), (void const *)argp, 20UL);
    if (tmp___7 != 0UL) {
      err = -14;
    } else
    if ((info___0.state & 4) == 0) {
      goto ldv_33958;
    } else {
      err = add_new_disk(mddev, & info___0);
    }
    goto done_unlock;
  } else {
  }
  goto ldv_33958;
  case 4701U:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int *)arg),
                       "i" (4UL));
  ro = (int )__val_gu;
  if (__ret_gu != 0) {
    err = -14;
    goto done_unlock;
  } else {
  }
  err = -22;
  if (ro != 0) {
    goto done_unlock;
  } else {
  }
  if (mddev->ro != 1) {
    goto done_unlock;
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    err = restart_array(mddev);
    if (err == 0) {
      mddev->ro = 2;
      set_disk_ro(mddev->gendisk, 0);
    } else {
    }
  } else {
  }
  goto done_unlock;
  }
  ldv_33958: ;
  if ((((cmd >> 8) & 255U) == 9U && mddev->ro != 0) && (unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if (mddev->ro == 2) {
      mddev->ro = 0;
      sysfs_notify_dirent_safe(mddev->sysfs_state);
      set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
      tmp___13 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->flags));
      if (tmp___13 != 0) {
        mddev_unlock(mddev);
        tmp___8 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->flags));
        if (tmp___8 == 0) {
          tmp___9 = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
          if (tmp___9 == 0) {
            goto ldv_33963;
          } else {
          }
        } else {
        }
        tmp___10 = get_current();
        __wait.flags = 0U;
        __wait.private = (void *)tmp___10;
        __wait.func = & autoremove_wake_function;
        __wait.task_list.next = & __wait.task_list;
        __wait.task_list.prev = & __wait.task_list;
        ldv_33966:
        prepare_to_wait(& mddev->sb_wait, & __wait, 2);
        tmp___11 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->flags));
        if (tmp___11 == 0) {
          tmp___12 = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
          if (tmp___12 == 0) {
            goto ldv_33965;
          } else {
          }
        } else {
        }
        schedule();
        goto ldv_33966;
        ldv_33965:
        finish_wait(& mddev->sb_wait, & __wait);
        ldv_33963:
        mddev_lock(mddev);
      } else {
      }
    } else {
      err = -30;
      goto abort_unlock;
    }
  } else {
  }
  switch (cmd) {
  case 1075054881U:
  tmp___14 = copy_from_user((void *)(& info___1), (void const *)argp, 20UL);
  if (tmp___14 != 0UL) {
    err = -14;
  } else {
    err = add_new_disk(mddev, & info___1);
  }
  goto done_unlock;
  case 2344U:
  tmp___15 = new_decode_dev((u32 )arg);
  err = hot_add_disk(mddev, tmp___15);
  goto done_unlock;
  case 1074530608U:
  err = do_md_run(mddev);
  goto done_unlock;
  case 1074006315U:
  err = set_bitmap_file(mddev, (int )arg);
  goto done_unlock;
  default:
  err = -22;
  goto abort_unlock;
  }
  done_unlock: ;
  abort_unlock: ;
  if (mddev->hold_active == 1 && err != -22) {
    mddev->hold_active = 0;
  } else {
  }
  mddev_unlock(mddev);
  return (err);
  done: ;
  if (err != 0) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           6664);
    md_print_devices();
  } else {
  }
  abort: ;
  return (err);
}
}
static int md_compat_ioctl(struct block_device *bdev , fmode_t mode , unsigned int cmd ,
                           unsigned long arg )
{
  void *tmp ;
  int tmp___0 ;
  {
  switch (cmd) {
  case 2338U: ;
  case 2344U: ;
  case 2345U: ;
  case 1074006315U: ;
  goto ldv_33983;
  default:
  tmp = compat_ptr((compat_uptr_t )arg);
  arg = (unsigned long )tmp;
  goto ldv_33983;
  }
  ldv_33983:
  tmp___0 = md_ioctl(bdev, mode, cmd, arg);
  return (tmp___0);
}
}
static int md_open(struct block_device *bdev , fmode_t mode )
{
  struct mddev *mddev ;
  struct mddev *tmp ;
  int err ;
  long tmp___0 ;
  {
  tmp = mddev_find(bdev->bd_dev);
  mddev = tmp;
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0)) {
    return (-19);
  } else {
  }
  if ((unsigned long )mddev->gendisk != (unsigned long )bdev->bd_disk) {
    mddev_put(mddev);
    flush_workqueue(md_misc_wq);
    return (-512);
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned long )(bdev->bd_disk)->private_data != (unsigned long )((void *)mddev),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (6710), "i" (12UL));
    ldv_33991: ;
    goto ldv_33991;
  } else {
  }
  err = ldv_mutex_lock_interruptible_21(& mddev->open_mutex);
  if (err != 0) {
    goto out;
  } else {
  }
  err = 0;
  atomic_inc(& mddev->openers);
  ldv_mutex_unlock_22(& mddev->open_mutex);
  check_disk_change(bdev);
  out: ;
  return (err);
}
}
static void md_release(struct gendisk *disk , fmode_t mode )
{
  struct mddev *mddev ;
  long tmp ;
  {
  mddev = (struct mddev *)disk->private_data;
  tmp = ldv__builtin_expect((unsigned long )mddev == (unsigned long )((struct mddev *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (6728), "i" (12UL));
    ldv_33998: ;
    goto ldv_33998;
  } else {
  }
  atomic_dec(& mddev->openers);
  mddev_put(mddev);
  return;
}
}
static int md_media_changed(struct gendisk *disk )
{
  struct mddev *mddev ;
  {
  mddev = (struct mddev *)disk->private_data;
  return (mddev->changed);
}
}
static int md_revalidate(struct gendisk *disk )
{
  struct mddev *mddev ;
  {
  mddev = (struct mddev *)disk->private_data;
  mddev->changed = 0;
  return (0);
}
}
static struct block_device_operations const md_fops =
     {& md_open, & md_release, & md_ioctl, & md_compat_ioctl, 0, 0, & md_media_changed,
    0, & md_revalidate, & md_getgeo, 0, & __this_module};
static int md_thread(void *arg )
{
  struct md_thread *thread ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  long __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  {
  thread = (struct md_thread *)arg;
  allow_signal(9);
  goto ldv_34019;
  ldv_34018:
  tmp___0 = get_current();
  tmp___1 = signal_pending(tmp___0);
  if (tmp___1 != 0) {
    tmp = get_current();
    flush_signals(tmp);
  } else {
  }
  __ret = (long )thread->timeout;
  tmp___7 = constant_test_bit(0U, (unsigned long const volatile *)(& thread->flags));
  if (tmp___7 == 0) {
    tmp___8 = kthread_should_stop();
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    if (tmp___9) {
      tmp___2 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___2;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_34016:
      prepare_to_wait(& thread->wqueue, & __wait, 1);
      tmp___3 = constant_test_bit(0U, (unsigned long const volatile *)(& thread->flags));
      if (tmp___3 != 0) {
        goto ldv_34014;
      } else {
        tmp___4 = kthread_should_stop();
        if ((int )tmp___4) {
          goto ldv_34014;
        } else {
        }
      }
      tmp___5 = get_current();
      tmp___6 = signal_pending(tmp___5);
      if (tmp___6 == 0) {
        __ret = schedule_timeout(__ret);
        if (__ret == 0L) {
          goto ldv_34014;
        } else {
        }
        goto ldv_34015;
      } else {
      }
      __ret = -512L;
      goto ldv_34014;
      ldv_34015: ;
      goto ldv_34016;
      ldv_34014:
      finish_wait(& thread->wqueue, & __wait);
    } else {
    }
  } else {
  }
  clear_bit(0, (unsigned long volatile *)(& thread->flags));
  tmp___10 = kthread_should_stop();
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    (*(thread->run))(thread);
  } else {
  }
  ldv_34019:
  tmp___12 = kthread_should_stop();
  if (tmp___12) {
    tmp___13 = 0;
  } else {
    tmp___13 = 1;
  }
  if (tmp___13) {
    goto ldv_34018;
  } else {
  }
  return (0);
}
}
void md_wakeup_thread(struct md_thread *thread )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned long )thread != (unsigned long )((struct md_thread *)0)) {
    descriptor.modname = "md_mod";
    descriptor.function = "md_wakeup_thread";
    descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
    descriptor.format = "md: waking up MD thread %s.\n";
    descriptor.lineno = 6805U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "md: waking up MD thread %s.\n", (char *)(& (thread->tsk)->comm));
    } else {
    }
    set_bit(0U, (unsigned long volatile *)(& thread->flags));
    __wake_up(& thread->wqueue, 3U, 1, 0);
  } else {
  }
  return;
}
}
struct md_thread *md_register_thread(void (*run)(struct md_thread * ) , struct mddev *mddev ,
                                     char const *name )
{
  struct md_thread *thread ;
  void *tmp ;
  struct lock_class_key __key ;
  struct task_struct *__k ;
  char *tmp___0 ;
  struct task_struct *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  tmp = kzalloc(136UL, 208U);
  thread = (struct md_thread *)tmp;
  if ((unsigned long )thread == (unsigned long )((struct md_thread *)0)) {
    return (0);
  } else {
  }
  __init_waitqueue_head(& thread->wqueue, "&thread->wqueue", & __key);
  thread->run = run;
  thread->mddev = mddev;
  thread->timeout = 9223372036854775807UL;
  tmp___0 = mdname(thread->mddev);
  tmp___1 = kthread_create_on_node(& md_thread, (void *)thread, -1, "%s_%s", tmp___0,
                                   name);
  __k = tmp___1;
  tmp___2 = IS_ERR((void const *)__k);
  if (tmp___2 == 0L) {
    wake_up_process(__k);
  } else {
  }
  thread->tsk = __k;
  tmp___3 = IS_ERR((void const *)thread->tsk);
  if (tmp___3 != 0L) {
    kfree((void const *)thread);
    return (0);
  } else {
  }
  return (thread);
}
}
void md_unregister_thread(struct md_thread **threadp )
{
  struct md_thread *thread ;
  struct _ddebug descriptor ;
  pid_t tmp ;
  long tmp___0 ;
  {
  thread = *threadp;
  if ((unsigned long )thread == (unsigned long )((struct md_thread *)0)) {
    return;
  } else {
  }
  descriptor.modname = "md_mod";
  descriptor.function = "md_unregister_thread";
  descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
  descriptor.format = "interrupting MD-thread pid %d\n";
  descriptor.lineno = 6841U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = task_pid_nr(thread->tsk);
    __dynamic_pr_debug(& descriptor, "interrupting MD-thread pid %d\n", tmp);
  } else {
  }
  spin_lock(& pers_lock);
  *threadp = 0;
  spin_unlock(& pers_lock);
  kthread_stop(thread->tsk);
  kfree((void const *)thread);
  return;
}
}
void md_error(struct mddev *mddev , struct md_rdev *rdev )
{
  int tmp ;
  {
  if ((unsigned long )mddev == (unsigned long )((struct mddev *)0)) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           6856);
    md_print_devices();
    return;
  } else {
  }
  if ((unsigned long )rdev == (unsigned long )((struct md_rdev *)0)) {
    return;
  } else {
    tmp = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp != 0) {
      return;
    } else {
    }
  }
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0) || (unsigned long )(mddev->pers)->error_handler == (unsigned long )((void (*)(struct mddev * ,
                                                                                                                                                                struct md_rdev * ))0)) {
    return;
  } else {
  }
  (*((mddev->pers)->error_handler))(mddev, rdev);
  if (mddev->degraded != 0) {
    set_bit(2U, (unsigned long volatile *)(& mddev->recovery));
  } else {
  }
  sysfs_notify_dirent_safe(rdev->sysfs_state);
  set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  if ((unsigned long )mddev->event_work.func != (unsigned long )((void (*)(struct work_struct * ))0)) {
    queue_work(md_misc_wq, & mddev->event_work);
  } else {
  }
  md_new_event_inintr(mddev);
  return;
}
}
static void status_unused(struct seq_file *seq )
{
  int i ;
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  char b[32U] ;
  char const *tmp ;
  struct list_head const *__mptr___0 ;
  {
  i = 0;
  seq_printf(seq, "unused devices: ");
  __mptr = (struct list_head const *)pending_raid_disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_34057;
  ldv_34056:
  i = i + 1;
  tmp = bdevname(rdev->bdev, (char *)(& b));
  seq_printf(seq, "%s ", tmp);
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_34057: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& pending_raid_disks)) {
    goto ldv_34056;
  } else {
  }
  if (i == 0) {
    seq_printf(seq, "<none>");
  } else {
  }
  seq_printf(seq, "\n");
  return;
}
}
static void status_resync(struct seq_file *seq , struct mddev *mddev )
{
  sector_t max_sectors ;
  sector_t resync ;
  sector_t res ;
  unsigned long dt ;
  unsigned long db ;
  sector_t rt ;
  int scale ;
  unsigned int per_milli ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int _res ;
  int i ;
  int x ;
  int y ;
  int tmp___4 ;
  char *tmp___5 ;
  int tmp___6 ;
  char *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int _res___0 ;
  {
  if (mddev->curr_resync <= 3UL) {
    resync = 0UL;
  } else {
    tmp = atomic_read((atomic_t const *)(& mddev->recovery_active));
    resync = mddev->curr_resync - (sector_t )tmp;
  }
  tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___0 != 0) {
    max_sectors = mddev->resync_max_sectors;
  } else {
    tmp___1 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___1 != 0) {
      max_sectors = mddev->resync_max_sectors;
    } else {
      max_sectors = mddev->dev_sectors;
    }
  }
  if (max_sectors == 0UL) {
    printk("md: bug in file %s, line %d\n", (char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
           6923);
    md_print_devices();
    return;
  } else {
  }
  scale = 10;
  if (0) {
    goto ldv_34072;
    ldv_34071:
    scale = scale + 1;
    ldv_34072: ;
    if ((unsigned long long )(max_sectors / 2UL) > 1ULL << (scale + 32)) {
      goto ldv_34071;
    } else {
    }
  } else {
  }
  res = (resync >> scale) * 1000UL;
  _res = (int )(res % (sector_t )((unsigned int )(max_sectors >> scale) + 1U));
  res = res / (sector_t )((unsigned int )(max_sectors >> scale) + 1U);
  per_milli = (unsigned int )res;
  x = (int )(per_milli / 50U);
  y = 20 - x;
  seq_printf(seq, "[");
  i = 0;
  goto ldv_34080;
  ldv_34079:
  seq_printf(seq, "=");
  i = i + 1;
  ldv_34080: ;
  if (i < x) {
    goto ldv_34079;
  } else {
  }
  seq_printf(seq, ">");
  i = 0;
  goto ldv_34083;
  ldv_34082:
  seq_printf(seq, ".");
  i = i + 1;
  ldv_34083: ;
  if (i < y) {
    goto ldv_34082;
  } else {
  }
  seq_printf(seq, "] ");
  tmp___8 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___8 == 0) {
    tmp___6 = constant_test_bit(7U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___6 == 0) {
      tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
      tmp___5 = tmp___4 != 0 ? (char *)"resync" : (char *)"recovery";
    } else {
      tmp___5 = (char *)"check";
    }
    tmp___7 = tmp___5;
  } else {
    tmp___7 = (char *)"reshape";
  }
  seq_printf(seq, " %s =%3u.%u%% (%llu/%llu)", tmp___7, per_milli / 10U, per_milli % 10U,
             (unsigned long long )resync / 2ULL, (unsigned long long )max_sectors / 2ULL);
  dt = ((unsigned long )jiffies - mddev->resync_mark) / 250UL;
  if (dt == 0UL) {
    dt = dt + 1UL;
  } else {
  }
  tmp___9 = atomic_read((atomic_t const *)(& mddev->recovery_active));
  db = (mddev->curr_mark_cnt - (sector_t )tmp___9) - mddev->resync_mark_cnt;
  rt = max_sectors - resync;
  _res___0 = (int )(rt % (db / 32UL + 1UL));
  rt = rt / (db / 32UL + 1UL);
  rt = rt * dt;
  rt = rt >> 5;
  seq_printf(seq, " finish=%lu.%lumin", rt / 60UL, (rt % 60UL) / 6UL);
  seq_printf(seq, " speed=%ldK/sec", (db / 2UL) / dt);
  return;
}
}
static void *md_seq_start(struct seq_file *seq , loff_t *pos )
{
  struct list_head *tmp ;
  loff_t l ;
  struct mddev *mddev ;
  loff_t tmp___0 ;
  struct list_head const *__mptr ;
  loff_t tmp___1 ;
  loff_t tmp___2 ;
  {
  l = *pos;
  if (l > 65535LL) {
    return (0);
  } else {
  }
  tmp___0 = l;
  l = l - 1LL;
  if (tmp___0 == 0LL) {
    return (1);
  } else {
  }
  spin_lock(& all_mddevs_lock);
  tmp = all_mddevs.next;
  goto ldv_34097;
  ldv_34096:
  tmp___1 = l;
  l = l - 1LL;
  if (tmp___1 == 0LL) {
    __mptr = (struct list_head const *)tmp;
    mddev = (struct mddev *)__mptr + 0xfffffffffffff9c8UL;
    mddev_get(mddev);
    spin_unlock(& all_mddevs_lock);
    return ((void *)mddev);
  } else {
  }
  tmp = tmp->next;
  ldv_34097: ;
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    goto ldv_34096;
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  tmp___2 = l;
  l = l - 1LL;
  if (tmp___2 == 0LL) {
    return (2);
  } else {
  }
  return (0);
}
}
static void *md_seq_next(struct seq_file *seq , void *v , loff_t *pos )
{
  struct list_head *tmp ;
  struct mddev *next_mddev ;
  struct mddev *mddev ;
  struct list_head const *__mptr ;
  {
  mddev = (struct mddev *)v;
  *pos = *pos + 1LL;
  if ((unsigned long )v == 2UL) {
    return (0);
  } else {
  }
  spin_lock(& all_mddevs_lock);
  if ((unsigned long )v == 1UL) {
    tmp = all_mddevs.next;
  } else {
    tmp = mddev->all_mddevs.next;
  }
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    __mptr = (struct list_head const *)tmp;
    next_mddev = mddev_get((struct mddev *)__mptr + 0xfffffffffffff9c8UL);
  } else {
    next_mddev = 2;
    *pos = 65536LL;
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )v != 1UL) {
    mddev_put(mddev);
  } else {
  }
  return ((void *)next_mddev);
}
}
static void md_seq_stop(struct seq_file *seq , void *v )
{
  struct mddev *mddev ;
  {
  mddev = (struct mddev *)v;
  if (((unsigned long )mddev != (unsigned long )((struct mddev *)0) && (unsigned long )v != 1UL) && (unsigned long )v != 2UL) {
    mddev_put(mddev);
  } else {
  }
  return;
}
}
static int md_seq_show(struct seq_file *seq , void *v )
{
  struct mddev *mddev ;
  sector_t sectors ;
  struct md_rdev *rdev ;
  struct md_personality *pers ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  char *tmp___0 ;
  struct list_head const *__mptr___1 ;
  char b[32U] ;
  char const *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct list_head const *__mptr___2 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  mddev = (struct mddev *)v;
  if ((unsigned long )v == 1UL) {
    seq_printf(seq, "Personalities : ");
    spin_lock(& pers_lock);
    __mptr = (struct list_head const *)pers_list.next;
    pers = (struct md_personality *)__mptr + 0xfffffffffffffff0UL;
    goto ldv_34127;
    ldv_34126:
    seq_printf(seq, "[%s] ", pers->name);
    __mptr___0 = (struct list_head const *)pers->list.next;
    pers = (struct md_personality *)__mptr___0 + 0xfffffffffffffff0UL;
    ldv_34127: ;
    if ((unsigned long )(& pers->list) != (unsigned long )(& pers_list)) {
      goto ldv_34126;
    } else {
    }
    spin_unlock(& pers_lock);
    seq_printf(seq, "\n");
    seq->poll_event = atomic_read((atomic_t const *)(& md_event_count));
    return (0);
  } else {
  }
  if ((unsigned long )v == 2UL) {
    status_unused(seq);
    return (0);
  } else {
  }
  tmp = mddev_lock(mddev);
  if (tmp < 0) {
    return (-4);
  } else {
  }
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0) || mddev->raid_disks != 0) {
    goto _L;
  } else {
    tmp___6 = list_empty((struct list_head const *)(& mddev->disks));
    if (tmp___6 == 0) {
      _L:
      tmp___0 = mdname(mddev);
      seq_printf(seq, "%s : %sactive", tmp___0, (unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0) ? (char *)"" : (char *)"in");
      if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
        if (mddev->ro == 1) {
          seq_printf(seq, " (read-only)");
        } else {
        }
        if (mddev->ro == 2) {
          seq_printf(seq, " (auto-read-only)");
        } else {
        }
        seq_printf(seq, " %s", (mddev->pers)->name);
      } else {
      }
      sectors = 0UL;
      __mptr___1 = (struct list_head const *)mddev->disks.next;
      rdev = (struct md_rdev *)__mptr___1;
      goto ldv_34136;
      ldv_34135:
      tmp___1 = bdevname(rdev->bdev, (char *)(& b));
      seq_printf(seq, " %s[%d]", tmp___1, rdev->desc_nr);
      tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___2 != 0) {
        seq_printf(seq, "(W)");
      } else {
      }
      tmp___3 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___3 != 0) {
        seq_printf(seq, "(F)");
        goto ldv_34134;
      } else {
      }
      if (rdev->raid_disk < 0) {
        seq_printf(seq, "(S)");
      } else {
      }
      tmp___4 = constant_test_bit(10U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___4 != 0) {
        seq_printf(seq, "(R)");
      } else {
      }
      sectors = rdev->sectors + sectors;
      ldv_34134:
      __mptr___2 = (struct list_head const *)rdev->same_set.next;
      rdev = (struct md_rdev *)__mptr___2;
      ldv_34136: ;
      if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
        goto ldv_34135;
      } else {
      }
      tmp___5 = list_empty((struct list_head const *)(& mddev->disks));
      if (tmp___5 == 0) {
        if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
          seq_printf(seq, "\n      %llu blocks", (unsigned long long )mddev->array_sectors / 2ULL);
        } else {
          seq_printf(seq, "\n      %llu blocks", (unsigned long long )sectors / 2ULL);
        }
      } else {
      }
      if (mddev->persistent != 0) {
        if (mddev->major_version != 0 || mddev->minor_version != 90) {
          seq_printf(seq, " super %d.%d", mddev->major_version, mddev->minor_version);
        } else {
        }
      } else
      if (mddev->external != 0) {
        seq_printf(seq, " super external:%s", (char *)(& mddev->metadata_type));
      } else {
        seq_printf(seq, " super non-persistent");
      }
      if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
        (*((mddev->pers)->status))(seq, mddev);
        seq_printf(seq, "\n      ");
        if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                          sector_t ,
                                                                                          int * ,
                                                                                          int ))0)) {
          if (mddev->curr_resync > 2UL) {
            status_resync(seq, mddev);
            seq_printf(seq, "\n      ");
          } else
          if (mddev->curr_resync != 0UL) {
            seq_printf(seq, "\tresync=DELAYED\n      ");
          } else
          if (mddev->recovery_cp != 0xffffffffffffffffUL) {
            seq_printf(seq, "\tresync=PENDING\n      ");
          } else {
          }
        } else {
        }
      } else {
        seq_printf(seq, "\n       ");
      }
      bitmap_status(seq, mddev->bitmap);
      seq_printf(seq, "\n");
    } else {
    }
  }
  mddev_unlock(mddev);
  return (0);
}
}
static struct seq_operations const md_seq_ops = {& md_seq_start, & md_seq_stop, & md_seq_next, & md_seq_show};
static int md_seq_open(struct inode *inode , struct file *file )
{
  struct seq_file *seq ;
  int error ;
  {
  error = seq_open(file, & md_seq_ops);
  if (error != 0) {
    return (error);
  } else {
  }
  seq = (struct seq_file *)file->private_data;
  seq->poll_event = atomic_read((atomic_t const *)(& md_event_count));
  return (error);
}
}
static unsigned int mdstat_poll(struct file *filp , poll_table *wait )
{
  struct seq_file *seq ;
  int mask ;
  int tmp ;
  {
  seq = (struct seq_file *)filp->private_data;
  poll_wait(filp, & md_event_waiters, wait);
  mask = 65;
  tmp = atomic_read((atomic_t const *)(& md_event_count));
  if (seq->poll_event != tmp) {
    mask = mask | 10;
  } else {
  }
  return ((unsigned int )mask);
}
}
static struct file_operations const md_seq_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, & mdstat_poll, 0, 0, 0,
    & md_seq_open, 0, & seq_release_private, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int register_md_personality(struct md_personality *p )
{
  {
  spin_lock(& pers_lock);
  list_add_tail(& p->list, & pers_list);
  printk("\016md: %s personality registered for level %d\n", p->name, p->level);
  spin_unlock(& pers_lock);
  return (0);
}
}
int unregister_md_personality(struct md_personality *p )
{
  {
  printk("\016md: %s personality unregistered\n", p->name);
  spin_lock(& pers_lock);
  list_del_init(& p->list);
  spin_unlock(& pers_lock);
  return (0);
}
}
static int is_mddev_idle(struct mddev *mddev , int init )
{
  struct md_rdev *rdev ;
  int idle ;
  int curr_events ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct gendisk *disk ;
  unsigned long res ;
  unsigned int _cpu ;
  void const *__vpp_verify ;
  unsigned long __ptr___0 ;
  unsigned long res___0 ;
  unsigned int _cpu___0 ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___1 ;
  int tmp___0 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  {
  idle = 1;
  rcu_read_lock();
  __ptr = mddev->disks.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_34201;
  ldv_34200:
  disk = ((rdev->bdev)->bd_contains)->bd_disk;
  res = 0UL;
  _cpu = 4294967295U;
  goto ldv_34187;
  ldv_34186:
  __vpp_verify = 0;
  __asm__ ("": "=r" (__ptr___0): "0" (disk->part0.dkstats));
  res = ((struct disk_stats *)(__per_cpu_offset[_cpu] + __ptr___0))->sectors[0] + res;
  ldv_34187:
  _cpu = cpumask_next((int )_cpu, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > _cpu) {
    goto ldv_34186;
  } else {
  }
  res___0 = 0UL;
  _cpu___0 = 4294967295U;
  goto ldv_34197;
  ldv_34196:
  __vpp_verify___0 = 0;
  __asm__ ("": "=r" (__ptr___1): "0" (disk->part0.dkstats));
  res___0 = ((struct disk_stats *)(__per_cpu_offset[_cpu___0] + __ptr___1))->sectors[1] + res___0;
  ldv_34197:
  _cpu___0 = cpumask_next((int )_cpu___0, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > _cpu___0) {
    goto ldv_34196;
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& disk->sync_io));
  curr_events = ((int )res + (int )res___0) - tmp___0;
  if (init != 0 || curr_events - rdev->last_events > 64) {
    rdev->last_events = curr_events;
    idle = 0;
  } else {
  }
  __ptr___2 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___2));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_34201: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_34200;
  } else {
  }
  rcu_read_unlock();
  return (idle);
}
}
void md_done_sync(struct mddev *mddev , int blocks , int ok )
{
  {
  atomic_sub(blocks, & mddev->recovery_active);
  __wake_up(& mddev->recovery_wait, 3U, 1, 0);
  if (ok == 0) {
    set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
    set_bit(10U, (unsigned long volatile *)(& mddev->recovery));
    md_wakeup_thread(mddev->thread);
  } else {
  }
  return;
}
}
void md_write_start(struct mddev *mddev , struct bio *bi )
{
  int did_change ;
  long tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  {
  did_change = 0;
  if ((bi->bi_rw & 1UL) == 0UL) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect(mddev->ro == 1, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared"),
                         "i" (7286), "i" (12UL));
    ldv_34213: ;
    goto ldv_34213;
  } else {
  }
  if (mddev->ro == 2) {
    mddev->ro = 0;
    set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
    md_wakeup_thread(mddev->thread);
    md_wakeup_thread(mddev->sync_thread);
    did_change = 1;
  } else {
  }
  atomic_inc(& mddev->writes_pending);
  if (mddev->safemode == 1U) {
    mddev->safemode = 0U;
  } else {
  }
  if (mddev->in_sync != 0) {
    spin_lock_irq(& mddev->write_lock);
    if (mddev->in_sync != 0) {
      mddev->in_sync = 0;
      set_bit(1U, (unsigned long volatile *)(& mddev->flags));
      set_bit(2U, (unsigned long volatile *)(& mddev->flags));
      md_wakeup_thread(mddev->thread);
      did_change = 1;
    } else {
    }
    spin_unlock_irq(& mddev->write_lock);
  } else {
  }
  if (did_change != 0) {
    sysfs_notify_dirent_safe(mddev->sysfs_state);
  } else {
  }
  tmp___0 = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
  if (tmp___0 == 0) {
    goto ldv_34214;
  } else {
  }
  tmp___1 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___1;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_34217:
  prepare_to_wait(& mddev->sb_wait, & __wait, 2);
  tmp___2 = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
  if (tmp___2 == 0) {
    goto ldv_34216;
  } else {
  }
  schedule();
  goto ldv_34217;
  ldv_34216:
  finish_wait(& mddev->sb_wait, & __wait);
  ldv_34214: ;
  return;
}
}
void md_write_end(struct mddev *mddev )
{
  int tmp ;
  {
  tmp = atomic_dec_and_test(& mddev->writes_pending);
  if (tmp != 0) {
    if (mddev->safemode == 2U) {
      md_wakeup_thread(mddev->thread);
    } else
    if (mddev->safemode_delay != 0U) {
      mod_timer(& mddev->safemode_timer, (unsigned long )mddev->safemode_delay + (unsigned long )jiffies);
    } else {
    }
  } else {
  }
  return;
}
}
int md_allow_write(struct mddev *mddev )
{
  int tmp ;
  {
  if ((unsigned long )mddev->pers == (unsigned long )((struct md_personality *)0)) {
    return (0);
  } else {
  }
  if (mddev->ro != 0) {
    return (0);
  } else {
  }
  if ((unsigned long )(mddev->pers)->sync_request == (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                    sector_t ,
                                                                                    int * ,
                                                                                    int ))0)) {
    return (0);
  } else {
  }
  spin_lock_irq(& mddev->write_lock);
  if (mddev->in_sync != 0) {
    mddev->in_sync = 0;
    set_bit(1U, (unsigned long volatile *)(& mddev->flags));
    set_bit(2U, (unsigned long volatile *)(& mddev->flags));
    if (mddev->safemode_delay != 0U && mddev->safemode == 0U) {
      mddev->safemode = 1U;
    } else {
    }
    spin_unlock_irq(& mddev->write_lock);
    md_update_sb(mddev, 0);
    sysfs_notify_dirent_safe(mddev->sysfs_state);
  } else {
    spin_unlock_irq(& mddev->write_lock);
  }
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& mddev->flags));
  if (tmp != 0) {
    return (-11);
  } else {
    return (0);
  }
}
}
void md_do_sync(struct md_thread *thread )
{
  struct mddev *mddev ;
  struct mddev *mddev2 ;
  unsigned int currspeed ;
  unsigned int window ;
  sector_t max_sectors ;
  sector_t j ;
  sector_t io_sectors ;
  unsigned long mark[10U] ;
  unsigned long update_time ;
  sector_t mark_cnt[10U] ;
  int last_mark ;
  int m ;
  struct list_head *tmp ;
  sector_t last_check ;
  int skipped ;
  struct md_rdev *rdev ;
  char *desc ;
  struct blk_plug plug ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  wait_queue_t wq ;
  struct task_struct *tmp___7 ;
  char *tmp___8 ;
  char *tmp___9 ;
  struct task_struct *tmp___10 ;
  struct task_struct *tmp___11 ;
  int tmp___12 ;
  bool tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___16 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___2 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  char *tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  char *tmp___26 ;
  sector_t sectors ;
  int tmp___27 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  struct task_struct *tmp___32 ;
  int __ret ;
  wait_queue_t __wait___0 ;
  struct task_struct *tmp___33 ;
  bool tmp___34 ;
  struct task_struct *tmp___35 ;
  int tmp___36 ;
  bool tmp___37 ;
  int tmp___38 ;
  bool tmp___39 ;
  int tmp___40 ;
  bool tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int next ;
  int tmp___44 ;
  bool tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  char *tmp___49 ;
  int tmp___50 ;
  wait_queue_t __wait___1 ;
  struct task_struct *tmp___51 ;
  int tmp___52 ;
  char *tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head *_________p1___1 ;
  bool __warned___1 ;
  int tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___4 ;
  struct list_head *_________p1___2 ;
  bool __warned___2 ;
  int tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  {
  mddev = thread->mddev;
  currspeed = 0U;
  skipped = 0;
  tmp___0 = constant_test_bit(4U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___0 != 0) {
    return;
  } else {
  }
  if (mddev->ro != 0) {
    return;
  } else {
  }
  tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___4 != 0) {
    tmp___2 = constant_test_bit(7U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___2 != 0) {
      desc = (char *)"data-check";
    } else {
      tmp___1 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___1 != 0) {
        desc = (char *)"requested-resync";
      } else {
        desc = (char *)"resync";
      }
    }
  } else {
    tmp___3 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___3 != 0) {
      desc = (char *)"reshape";
    } else {
      desc = (char *)"recovery";
    }
  }
  ldv_34265:
  mddev->curr_resync = 2UL;
  try_again:
  tmp___5 = kthread_should_stop();
  if ((int )tmp___5) {
    set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
  } else {
  }
  tmp___6 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___6 != 0) {
    goto skip;
  } else {
  }
  spin_lock(& all_mddevs_lock);
  tmp = all_mddevs.next;
  mddev2 = 0;
  goto ldv_34263;
  ldv_34262: ;
  if ((unsigned long )mddev2 == (unsigned long )mddev) {
    goto ldv_34260;
  } else {
  }
  if (mddev->parallel_resync == 0 && mddev2->curr_resync != 0UL) {
    tmp___15 = match_mddev_units(mddev, mddev2);
    if (tmp___15 != 0) {
      tmp___7 = get_current();
      wq.flags = 0U;
      wq.private = (void *)tmp___7;
      wq.func = & autoremove_wake_function;
      wq.task_list.next = & wq.task_list;
      wq.task_list.prev = & wq.task_list;
      if ((unsigned long )mddev < (unsigned long )mddev2 && mddev->curr_resync == 2UL) {
        mddev->curr_resync = 1UL;
        __wake_up(& resync_wait, 3U, 1, 0);
      } else {
      }
      if ((unsigned long )mddev > (unsigned long )mddev2 && mddev->curr_resync == 1UL) {
        goto ldv_34260;
      } else {
      }
      prepare_to_wait(& resync_wait, & wq, 1);
      tmp___13 = kthread_should_stop();
      if (tmp___13) {
        tmp___14 = 0;
      } else {
        tmp___14 = 1;
      }
      if (tmp___14 && mddev2->curr_resync >= mddev->curr_resync) {
        tmp___8 = mdname(mddev2);
        tmp___9 = mdname(mddev);
        printk("\016md: delaying %s of %s until %s has finished (they share one or more physical units)\n",
               desc, tmp___9, tmp___8);
        mddev_put(mddev2);
        tmp___11 = get_current();
        tmp___12 = signal_pending(tmp___11);
        if (tmp___12 != 0) {
          tmp___10 = get_current();
          flush_signals(tmp___10);
        } else {
        }
        schedule();
        finish_wait(& resync_wait, & wq);
        goto try_again;
      } else {
      }
      finish_wait(& resync_wait, & wq);
    } else {
    }
  } else {
  }
  ldv_34260:
  spin_lock(& all_mddevs_lock);
  tmp = tmp->next;
  ldv_34263: ;
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    __mptr = (struct list_head const *)tmp;
    mddev_get((struct mddev *)__mptr + 0xfffffffffffff9c8UL);
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )mddev2 != (unsigned long )((struct mddev *)0)) {
    mddev_put(mddev2);
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp;
  mddev2 = (struct mddev *)__mptr___0 + 0xfffffffffffff9c8UL;
  if (((unsigned long )tmp != (unsigned long )(& all_mddevs)) != 0) {
    goto ldv_34262;
  } else {
  }
  if (mddev->curr_resync <= 1UL) {
    goto ldv_34265;
  } else {
  }
  j = 0UL;
  tmp___22 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___22 != 0) {
    max_sectors = mddev->resync_max_sectors;
    atomic64_set(& mddev->resync_mismatches, 0L);
    tmp___16 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___16 != 0) {
      j = mddev->resync_min;
    } else
    if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
      j = mddev->recovery_cp;
    } else {
    }
  } else {
    tmp___21 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___21 != 0) {
      max_sectors = mddev->resync_max_sectors;
    } else {
      max_sectors = mddev->dev_sectors;
      j = 0xffffffffffffffffUL;
      rcu_read_lock();
      __ptr = mddev->disks.next;
      _________p1 = *((struct list_head * volatile *)(& __ptr));
      tmp___17 = debug_lockdep_rcu_enabled();
      if (tmp___17 != 0 && ! __warned) {
        rcu_read_lock_held();
      } else {
      }
      __mptr___1 = (struct list_head const *)_________p1;
      rdev = (struct md_rdev *)__mptr___1;
      goto ldv_34282;
      ldv_34281: ;
      if (rdev->raid_disk >= 0) {
        tmp___18 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
        if (tmp___18 == 0) {
          tmp___19 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
          if (tmp___19 == 0) {
            if (rdev->recovery_offset < j) {
              j = rdev->recovery_offset;
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
      __ptr___0 = rdev->same_set.next;
      _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
      tmp___20 = debug_lockdep_rcu_enabled();
      if (tmp___20 != 0 && ! __warned___0) {
        rcu_read_lock_held();
      } else {
      }
      __mptr___2 = (struct list_head const *)_________p1___0;
      rdev = (struct md_rdev *)__mptr___2;
      ldv_34282: ;
      if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
        goto ldv_34281;
      } else {
      }
      rcu_read_unlock();
    }
  }
  tmp___23 = mdname(mddev);
  printk("\016md: %s of RAID array %s\n", desc, tmp___23);
  tmp___24 = speed_min(mddev);
  printk("\016md: minimum _guaranteed_  speed: %d KB/sec/disk.\n", tmp___24);
  tmp___25 = speed_max(mddev);
  printk("\016md: using maximum available idle IO bandwidth (but not more than %d KB/sec) for %s.\n",
         tmp___25, desc);
  is_mddev_idle(mddev, 1);
  io_sectors = 0UL;
  m = 0;
  goto ldv_34285;
  ldv_34284:
  mark[m] = jiffies;
  mark_cnt[m] = io_sectors;
  m = m + 1;
  ldv_34285: ;
  if (m <= 9) {
    goto ldv_34284;
  } else {
  }
  last_mark = 0;
  mddev->resync_mark = mark[last_mark];
  mddev->resync_mark_cnt = mark_cnt[last_mark];
  window = 256U;
  printk("\016md: using %dk window, over a total of %lluk.\n", window / 2U, (unsigned long long )max_sectors / 2ULL);
  atomic_set(& mddev->recovery_active, 0);
  last_check = 0UL;
  if (j > 2UL) {
    tmp___26 = mdname(mddev);
    printk("\016md: resuming %s of %s from checkpoint.\n", desc, tmp___26);
    mddev->curr_resync = j;
  } else {
    mddev->curr_resync = 3UL;
  }
  mddev->curr_resync_completed = j;
  sysfs_notify(& mddev->kobj, 0, "sync_completed");
  md_new_event(mddev);
  update_time = jiffies;
  blk_start_plug(& plug);
  goto ldv_34310;
  ldv_34320:
  skipped = 0;
  tmp___31 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___31 == 0 && (((mddev->curr_resync > mddev->curr_resync_completed && mddev->curr_resync - mddev->curr_resync_completed > max_sectors >> 4) || (long )jiffies - (long )(update_time + 75000UL) >= 0L) || (j - mddev->curr_resync_completed) * 2UL >= mddev->resync_max - mddev->curr_resync_completed)) {
    tmp___27 = atomic_read((atomic_t const *)(& mddev->recovery_active));
    if (tmp___27 == 0) {
      goto ldv_34294;
    } else {
    }
    tmp___28 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___28;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_34297:
    prepare_to_wait(& mddev->recovery_wait, & __wait, 2);
    tmp___29 = atomic_read((atomic_t const *)(& mddev->recovery_active));
    if (tmp___29 == 0) {
      goto ldv_34296;
    } else {
    }
    schedule();
    goto ldv_34297;
    ldv_34296:
    finish_wait(& mddev->recovery_wait, & __wait);
    ldv_34294:
    mddev->curr_resync_completed = j;
    tmp___30 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___30 != 0 && mddev->recovery_cp < j) {
      mddev->recovery_cp = j;
    } else {
    }
    update_time = jiffies;
    set_bit(1U, (unsigned long volatile *)(& mddev->flags));
    sysfs_notify(& mddev->kobj, 0, "sync_completed");
  } else {
  }
  goto ldv_34305;
  ldv_34304:
  tmp___32 = get_current();
  flush_signals(tmp___32);
  __ret = 0;
  if (mddev->resync_max <= j) {
    tmp___37 = kthread_should_stop();
    if (tmp___37) {
      tmp___38 = 0;
    } else {
      tmp___38 = 1;
    }
    if (tmp___38) {
      tmp___33 = get_current();
      __wait___0.flags = 0U;
      __wait___0.private = (void *)tmp___33;
      __wait___0.func = & autoremove_wake_function;
      __wait___0.task_list.next = & __wait___0.task_list;
      __wait___0.task_list.prev = & __wait___0.task_list;
      ldv_34302:
      prepare_to_wait(& mddev->recovery_wait, & __wait___0, 1);
      if (mddev->resync_max > j) {
        goto ldv_34300;
      } else {
        tmp___34 = kthread_should_stop();
        if ((int )tmp___34) {
          goto ldv_34300;
        } else {
        }
      }
      tmp___35 = get_current();
      tmp___36 = signal_pending(tmp___35);
      if (tmp___36 == 0) {
        schedule();
        goto ldv_34301;
      } else {
      }
      __ret = -512;
      goto ldv_34300;
      ldv_34301: ;
      goto ldv_34302;
      ldv_34300:
      finish_wait(& mddev->recovery_wait, & __wait___0);
    } else {
    }
  } else {
  }
  ldv_34305: ;
  if (mddev->resync_max <= j) {
    tmp___39 = kthread_should_stop();
    if (tmp___39) {
      tmp___40 = 0;
    } else {
      tmp___40 = 1;
    }
    if (tmp___40) {
      goto ldv_34304;
    } else {
      goto ldv_34306;
    }
  } else {
  }
  ldv_34306:
  tmp___41 = kthread_should_stop();
  if ((int )tmp___41) {
    goto interrupted;
  } else {
  }
  tmp___42 = speed_min(mddev);
  sectors = (*((mddev->pers)->sync_request))(mddev, j, & skipped, (unsigned int )tmp___42 > currspeed);
  if (sectors == 0UL) {
    set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
    goto out;
  } else {
  }
  if (skipped == 0) {
    io_sectors = io_sectors + sectors;
    atomic_add((int )sectors, & mddev->recovery_active);
  } else {
  }
  tmp___43 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___43 != 0) {
    goto ldv_34309;
  } else {
  }
  j = j + sectors;
  if (j > 2UL) {
    mddev->curr_resync = j;
  } else {
  }
  mddev->curr_mark_cnt = io_sectors;
  if (last_check == 0UL) {
    md_new_event(mddev);
  } else {
  }
  if ((sector_t )window + last_check > io_sectors || j == max_sectors) {
    goto ldv_34310;
  } else {
  }
  last_check = io_sectors;
  repeat: ;
  if ((long )jiffies - (long )(mark[last_mark] + 750UL) >= 0L) {
    next = (last_mark + 1) % 10;
    mddev->resync_mark = mark[next];
    mddev->resync_mark_cnt = mark_cnt[next];
    mark[next] = jiffies;
    tmp___44 = atomic_read((atomic_t const *)(& mddev->recovery_active));
    mark_cnt[next] = io_sectors - (sector_t )tmp___44;
    last_mark = next;
  } else {
  }
  tmp___45 = kthread_should_stop();
  if ((int )tmp___45) {
    goto interrupted;
  } else {
  }
  __might_sleep("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared",
                7631, 0);
  _cond_resched();
  currspeed = (unsigned int )(((io_sectors - mddev->resync_mark_cnt) / 2UL) / (((unsigned long )jiffies - mddev->resync_mark) / 250UL + 1UL)) + 1U;
  tmp___48 = speed_min(mddev);
  if ((unsigned int )tmp___48 < currspeed) {
    tmp___46 = speed_max(mddev);
    if ((unsigned int )tmp___46 < currspeed) {
      msleep(500U);
      goto repeat;
    } else {
      tmp___47 = is_mddev_idle(mddev, 0);
      if (tmp___47 == 0) {
        msleep(500U);
        goto repeat;
      } else {
      }
    }
  } else {
  }
  ldv_34310: ;
  if (j < max_sectors) {
    goto ldv_34320;
  } else {
  }
  ldv_34309:
  tmp___49 = mdname(mddev);
  printk("\016md: %s: %s done.\n", tmp___49, desc);
  out:
  blk_finish_plug(& plug);
  tmp___50 = atomic_read((atomic_t const *)(& mddev->recovery_active));
  if (tmp___50 == 0) {
    goto ldv_34321;
  } else {
  }
  tmp___51 = get_current();
  __wait___1.flags = 0U;
  __wait___1.private = (void *)tmp___51;
  __wait___1.func = & autoremove_wake_function;
  __wait___1.task_list.next = & __wait___1.task_list;
  __wait___1.task_list.prev = & __wait___1.task_list;
  ldv_34324:
  prepare_to_wait(& mddev->recovery_wait, & __wait___1, 2);
  tmp___52 = atomic_read((atomic_t const *)(& mddev->recovery_active));
  if (tmp___52 == 0) {
    goto ldv_34323;
  } else {
  }
  schedule();
  goto ldv_34324;
  ldv_34323:
  finish_wait(& mddev->recovery_wait, & __wait___1);
  ldv_34321:
  (*((mddev->pers)->sync_request))(mddev, max_sectors, & skipped, 1);
  tmp___62 = constant_test_bit(7U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___62 == 0 && mddev->curr_resync > 2UL) {
    tmp___61 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___61 != 0) {
      tmp___55 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___55 != 0) {
        if (mddev->curr_resync >= mddev->recovery_cp) {
          tmp___53 = mdname(mddev);
          printk("\016md: checkpointing %s of %s.\n", desc, tmp___53);
          tmp___54 = constant_test_bit(10U, (unsigned long const volatile *)(& mddev->recovery));
          if (tmp___54 != 0) {
            mddev->recovery_cp = mddev->curr_resync_completed;
          } else {
            mddev->recovery_cp = mddev->curr_resync;
          }
        } else {
        }
      } else {
        mddev->recovery_cp = 0xffffffffffffffffUL;
      }
    } else {
      tmp___56 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___56 == 0) {
        mddev->curr_resync = 0xffffffffffffffffUL;
      } else {
      }
      rcu_read_lock();
      __ptr___1 = mddev->disks.next;
      _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
      tmp___57 = debug_lockdep_rcu_enabled();
      if (tmp___57 != 0 && ! __warned___1) {
        rcu_read_lock_held();
      } else {
      }
      __mptr___3 = (struct list_head const *)_________p1___1;
      rdev = (struct md_rdev *)__mptr___3;
      goto ldv_34340;
      ldv_34339: ;
      if (rdev->raid_disk >= 0 && mddev->delta_disks >= 0) {
        tmp___58 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
        if (tmp___58 == 0) {
          tmp___59 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
          if (tmp___59 == 0) {
            if (rdev->recovery_offset < mddev->curr_resync) {
              rdev->recovery_offset = mddev->curr_resync;
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
      __ptr___2 = rdev->same_set.next;
      _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
      tmp___60 = debug_lockdep_rcu_enabled();
      if (tmp___60 != 0 && ! __warned___2) {
        rcu_read_lock_held();
      } else {
      }
      __mptr___4 = (struct list_head const *)_________p1___2;
      rdev = (struct md_rdev *)__mptr___4;
      ldv_34340: ;
      if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
        goto ldv_34339;
      } else {
      }
      rcu_read_unlock();
    }
  } else {
  }
  skip:
  set_bit(0U, (unsigned long volatile *)(& mddev->flags));
  tmp___65 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___65 == 0) {
    tmp___63 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___63 != 0) {
      mddev->resync_min = 0UL;
    } else {
    }
    mddev->resync_max = 0xffffffffffffffffUL;
  } else {
    tmp___64 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___64 != 0) {
      mddev->resync_min = mddev->curr_resync_completed;
    } else {
    }
  }
  mddev->curr_resync = 0UL;
  __wake_up(& resync_wait, 3U, 1, 0);
  set_bit(4U, (unsigned long volatile *)(& mddev->recovery));
  md_wakeup_thread(mddev->thread);
  return;
  interrupted:
  printk("\016md: md_do_sync() got signal ... exiting\n");
  set_bit(3U, (unsigned long volatile *)(& mddev->recovery));
  goto out;
}
}
static int remove_and_add_spares(struct mddev *mddev , struct md_rdev *this )
{
  struct md_rdev *rdev ;
  int spares ;
  int removed ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct list_head const *__mptr___2 ;
  {
  spares = 0;
  removed = 0;
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_34360;
  ldv_34359: ;
  if (((unsigned long )this == (unsigned long )((struct md_rdev *)0) || (unsigned long )rdev == (unsigned long )this) && rdev->raid_disk >= 0) {
    tmp___0 = constant_test_bit(5U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___0 == 0) {
      tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___1 != 0) {
        goto _L;
      } else {
        tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
        if (tmp___2 == 0) {
          _L:
          tmp___3 = atomic_read((atomic_t const *)(& rdev->nr_pending));
          if (tmp___3 == 0) {
            tmp = (*((mddev->pers)->hot_remove_disk))(mddev, rdev);
            if (tmp == 0) {
              sysfs_unlink_rdev(mddev, rdev);
              rdev->raid_disk = -1;
              removed = removed + 1;
            } else {
            }
          } else {
          }
        } else {
        }
      }
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_34360: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_34359;
  } else {
  }
  if (removed != 0 && (unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    sysfs_notify(& mddev->kobj, 0, "degraded");
  } else {
  }
  if ((unsigned long )this != (unsigned long )((struct md_rdev *)0)) {
    goto no_add;
  } else {
  }
  __mptr___1 = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr___1;
  goto ldv_34369;
  ldv_34368: ;
  if (rdev->raid_disk >= 0) {
    tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___4 == 0) {
      tmp___5 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___5 == 0) {
        spares = spares + 1;
      } else {
      }
    } else {
    }
  } else {
  }
  if (rdev->raid_disk >= 0) {
    goto ldv_34367;
  } else {
  }
  tmp___6 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___6 != 0) {
    goto ldv_34367;
  } else {
  }
  if (mddev->ro != 0 && rdev->saved_raid_disk < 0) {
    goto ldv_34367;
  } else {
  }
  rdev->recovery_offset = 0UL;
  if (rdev->saved_raid_disk >= 0 && mddev->in_sync != 0) {
    spin_lock_irq(& mddev->write_lock);
    if (mddev->in_sync != 0) {
      rdev->recovery_offset = mddev->recovery_cp;
    } else {
    }
    spin_unlock_irq(& mddev->write_lock);
  } else {
  }
  if (mddev->ro != 0 && rdev->recovery_offset != 0xffffffffffffffffUL) {
    goto ldv_34367;
  } else {
  }
  tmp___8 = (*((mddev->pers)->hot_add_disk))(mddev, rdev);
  if (tmp___8 == 0) {
    tmp___7 = sysfs_link_rdev(mddev, rdev);
    spares = spares + 1;
    md_new_event(mddev);
    set_bit(0U, (unsigned long volatile *)(& mddev->flags));
  } else {
  }
  ldv_34367:
  __mptr___2 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___2;
  ldv_34369: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_34368;
  } else {
  }
  no_add: ;
  if (removed != 0) {
    set_bit(0U, (unsigned long volatile *)(& mddev->flags));
  } else {
  }
  return (spares);
}
}
void md_check_recovery(struct mddev *mddev )
{
  char *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int spares ;
  int did_change ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  char *tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  {
  if (mddev->suspended != 0) {
    return;
  } else {
  }
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    bitmap_daemon_work(mddev);
  } else {
  }
  tmp___1 = get_current();
  tmp___2 = signal_pending(tmp___1);
  if (tmp___2 != 0) {
    if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                      sector_t ,
                                                                                      int * ,
                                                                                      int ))0) && mddev->external == 0) {
      tmp = mdname(mddev);
      printk("\016md: %s in immediate safe mode\n", tmp);
      mddev->safemode = 2U;
    } else {
    }
    tmp___0 = get_current();
    flush_signals(tmp___0);
  } else {
  }
  if (mddev->ro != 0) {
    tmp___3 = constant_test_bit(5U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___3 == 0) {
      return;
    } else {
    }
  } else {
  }
  if ((mddev->flags & 0xfffffffffffffffbUL) == 0UL) {
    tmp___4 = constant_test_bit(5U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___4 == 0) {
      tmp___5 = constant_test_bit(4U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___5 == 0) {
        if (mddev->external != 0 || mddev->safemode != 1U) {
          if (mddev->safemode != 2U) {
            return;
          } else {
            tmp___6 = atomic_read((atomic_t const *)(& mddev->writes_pending));
            if (tmp___6 != 0) {
              return;
            } else
            if (mddev->in_sync != 0) {
              return;
            } else
            if (mddev->recovery_cp != 0xffffffffffffffffUL) {
              return;
            } else {
            }
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___16 = mddev_trylock(mddev);
  if (tmp___16 != 0) {
    spares = 0;
    if (mddev->ro != 0) {
      clear_bit(5, (unsigned long volatile *)(& mddev->recovery));
      remove_and_add_spares(mddev, 0);
      (*((mddev->pers)->spare_active))(mddev);
      goto unlock;
    } else {
    }
    if (mddev->external == 0) {
      did_change = 0;
      spin_lock_irq(& mddev->write_lock);
      if (mddev->safemode != 0U) {
        tmp___7 = atomic_read((atomic_t const *)(& mddev->writes_pending));
        if (tmp___7 == 0) {
          if (mddev->in_sync == 0) {
            if (mddev->recovery_cp == 0xffffffffffffffffUL) {
              mddev->in_sync = 1;
              did_change = 1;
              set_bit(1U, (unsigned long volatile *)(& mddev->flags));
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
      if (mddev->safemode == 1U) {
        mddev->safemode = 0U;
      } else {
      }
      spin_unlock_irq(& mddev->write_lock);
      if (did_change != 0) {
        sysfs_notify_dirent_safe(mddev->sysfs_state);
      } else {
      }
    } else {
    }
    if (mddev->flags != 0UL) {
      md_update_sb(mddev, 0);
    } else {
    }
    tmp___8 = constant_test_bit(0U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___8 != 0) {
      tmp___9 = constant_test_bit(4U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___9 == 0) {
        clear_bit(5, (unsigned long volatile *)(& mddev->recovery));
        goto unlock;
      } else {
      }
    } else {
    }
    if ((unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
      md_reap_sync_thread(mddev);
      goto unlock;
    } else {
    }
    mddev->curr_resync_completed = 0UL;
    set_bit(0U, (unsigned long volatile *)(& mddev->recovery));
    clear_bit(3, (unsigned long volatile *)(& mddev->recovery));
    clear_bit(4, (unsigned long volatile *)(& mddev->recovery));
    tmp___10 = test_and_clear_bit(5, (unsigned long volatile *)(& mddev->recovery));
    if (tmp___10 == 0) {
      goto unlock;
    } else {
      tmp___11 = constant_test_bit(9U, (unsigned long const volatile *)(& mddev->recovery));
      if (tmp___11 != 0) {
        goto unlock;
      } else {
      }
    }
    if (mddev->reshape_position != 0xffffffffffffffffUL) {
      if ((unsigned long )(mddev->pers)->check_reshape == (unsigned long )((int (*)(struct mddev * ))0)) {
        goto unlock;
      } else {
        tmp___12 = (*((mddev->pers)->check_reshape))(mddev);
        if (tmp___12 != 0) {
          goto unlock;
        } else {
        }
      }
      set_bit(8U, (unsigned long volatile *)(& mddev->recovery));
      clear_bit(2, (unsigned long volatile *)(& mddev->recovery));
    } else {
      spares = remove_and_add_spares(mddev, 0);
      if (spares != 0) {
        clear_bit(1, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(7, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(6, (unsigned long volatile *)(& mddev->recovery));
        set_bit(2U, (unsigned long volatile *)(& mddev->recovery));
      } else
      if (mddev->recovery_cp != 0xffffffffffffffffUL) {
        set_bit(1U, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(2, (unsigned long volatile *)(& mddev->recovery));
      } else {
        tmp___13 = constant_test_bit(1U, (unsigned long const volatile *)(& mddev->recovery));
        if (tmp___13 == 0) {
          goto unlock;
        } else {
        }
      }
    }
    if ((unsigned long )(mddev->pers)->sync_request != (unsigned long )((sector_t (*)(struct mddev * ,
                                                                                      sector_t ,
                                                                                      int * ,
                                                                                      int ))0)) {
      if (spares != 0) {
        bitmap_write_all(mddev->bitmap);
      } else {
      }
      mddev->sync_thread = md_register_thread(& md_do_sync, mddev, "resync");
      if ((unsigned long )mddev->sync_thread == (unsigned long )((struct md_thread *)0)) {
        tmp___14 = mdname(mddev);
        printk("\v%s: could not start resync thread...\n", tmp___14);
        clear_bit(0, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(1, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(8, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(6, (unsigned long volatile *)(& mddev->recovery));
        clear_bit(7, (unsigned long volatile *)(& mddev->recovery));
      } else {
        md_wakeup_thread(mddev->sync_thread);
      }
      sysfs_notify_dirent_safe(mddev->sysfs_action);
      md_new_event(mddev);
    } else {
    }
    unlock: ;
    if ((unsigned long )mddev->sync_thread == (unsigned long )((struct md_thread *)0)) {
      clear_bit(0, (unsigned long volatile *)(& mddev->recovery));
      tmp___15 = test_and_clear_bit(2, (unsigned long volatile *)(& mddev->recovery));
      if (tmp___15 != 0) {
        if ((unsigned long )mddev->sysfs_action != (unsigned long )((struct sysfs_dirent *)0)) {
          sysfs_notify_dirent_safe(mddev->sysfs_action);
        } else {
        }
      } else {
      }
    } else {
    }
    mddev_unlock(mddev);
  } else {
  }
  return;
}
}
void md_reap_sync_thread(struct mddev *mddev )
{
  struct md_rdev *rdev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  int tmp___3 ;
  struct list_head const *__mptr___0 ;
  {
  md_unregister_thread(& mddev->sync_thread);
  tmp___0 = constant_test_bit(3U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___0 == 0) {
    tmp___1 = constant_test_bit(6U, (unsigned long const volatile *)(& mddev->recovery));
    if (tmp___1 == 0) {
      tmp = (*((mddev->pers)->spare_active))(mddev);
      if (tmp != 0) {
        sysfs_notify(& mddev->kobj, 0, "degraded");
        set_bit(0U, (unsigned long volatile *)(& mddev->flags));
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___2 = constant_test_bit(8U, (unsigned long const volatile *)(& mddev->recovery));
  if (tmp___2 != 0 && (unsigned long )(mddev->pers)->finish_reshape != (unsigned long )((void (*)(struct mddev * ))0)) {
    (*((mddev->pers)->finish_reshape))(mddev);
  } else {
  }
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_34386;
  ldv_34385: ;
  if (mddev->degraded == 0) {
    rdev->saved_raid_disk = -1;
  } else {
    tmp___3 = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___3 != 0) {
      rdev->saved_raid_disk = -1;
    } else {
    }
  }
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_34386: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_34385;
  } else {
  }
  md_update_sb(mddev, 1);
  clear_bit(0, (unsigned long volatile *)(& mddev->recovery));
  clear_bit(1, (unsigned long volatile *)(& mddev->recovery));
  clear_bit(8, (unsigned long volatile *)(& mddev->recovery));
  clear_bit(6, (unsigned long volatile *)(& mddev->recovery));
  clear_bit(7, (unsigned long volatile *)(& mddev->recovery));
  set_bit(5U, (unsigned long volatile *)(& mddev->recovery));
  sysfs_notify_dirent_safe(mddev->sysfs_action);
  md_new_event(mddev);
  if ((unsigned long )mddev->event_work.func != (unsigned long )((void (*)(struct work_struct * ))0)) {
    queue_work(md_misc_wq, & mddev->event_work);
  } else {
  }
  return;
}
}
void md_wait_for_blocked_rdev(struct md_rdev *rdev , struct mddev *mddev )
{
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  sysfs_notify_dirent_safe(rdev->sysfs_state);
  tmp = msecs_to_jiffies(5000U);
  __ret = (long )tmp;
  tmp___3 = constant_test_bit(5U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp___3 != 0) {
    goto _L;
  } else {
    tmp___4 = constant_test_bit(8U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___4 != 0) {
      _L:
      tmp___0 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___0;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_34395:
      prepare_to_wait(& rdev->blocked_wait, & __wait, 2);
      tmp___1 = constant_test_bit(5U, (unsigned long const volatile *)(& rdev->flags));
      if (tmp___1 == 0) {
        tmp___2 = constant_test_bit(8U, (unsigned long const volatile *)(& rdev->flags));
        if (tmp___2 == 0) {
          goto ldv_34394;
        } else {
        }
      } else {
      }
      __ret = schedule_timeout(__ret);
      if (__ret == 0L) {
        goto ldv_34394;
      } else {
      }
      goto ldv_34395;
      ldv_34394:
      finish_wait(& rdev->blocked_wait, & __wait);
    } else {
    }
  }
  rdev_dec_pending(rdev, mddev);
  return;
}
}
void md_finish_reshape(struct mddev *mddev )
{
  struct md_rdev *rdev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_34413;
  ldv_34412: ;
  if (rdev->data_offset > rdev->new_data_offset) {
    rdev->sectors = rdev->sectors + (rdev->data_offset - rdev->new_data_offset);
  } else {
    rdev->sectors = rdev->sectors + (rdev->data_offset - rdev->new_data_offset);
  }
  rdev->data_offset = rdev->new_data_offset;
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_34413: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_34412;
  } else {
  }
  return;
}
}
int md_is_badblock(struct badblocks *bb , sector_t s , int sectors , sector_t *first_bad ,
                   int *bad_sectors )
{
  int hi ;
  int lo ;
  u64 *p ;
  int rv ;
  sector_t target ;
  unsigned int seq ;
  int mid ;
  sector_t a ;
  unsigned int tmp ;
  {
  p = bb->page;
  target = (sector_t )sectors + s;
  if (bb->shift > 0) {
    s = s >> bb->shift;
    target = (sector_t )((1 << bb->shift) + -1) + target;
    target = target >> bb->shift;
    sectors = (int )((unsigned int )target - (unsigned int )s);
  } else {
  }
  retry:
  seq = read_seqbegin((seqlock_t const *)(& bb->lock));
  lo = 0;
  rv = 0;
  hi = bb->count;
  goto ldv_34438;
  ldv_34437:
  mid = (lo + hi) / 2;
  a = (sector_t )((*(p + (unsigned long )mid) & 9223372036854775296ULL) >> 9);
  if (a < target) {
    lo = mid;
  } else {
    hi = mid;
  }
  ldv_34438: ;
  if (hi - lo > 1) {
    goto ldv_34437;
  } else {
  }
  if (hi > lo) {
    goto ldv_34441;
    ldv_34440: ;
    if ((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9 < (unsigned long long )target) {
      if (rv != -1 && (long )*(p + (unsigned long )lo) < 0L) {
        rv = 1;
      } else {
        rv = -1;
      }
      *first_bad = (sector_t )((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9);
      *bad_sectors = (int )(((unsigned int )*(p + (unsigned long )lo) & 511U) + 1U);
    } else {
    }
    lo = lo - 1;
    ldv_34441: ;
    if (lo >= 0 && (((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9) + (*(p + (unsigned long )lo) & 511ULL)) + 1ULL > (unsigned long long )s) {
      goto ldv_34440;
    } else {
    }
  } else {
  }
  tmp = read_seqretry((seqlock_t const *)(& bb->lock), seq);
  if (tmp != 0U) {
    goto retry;
  } else {
  }
  return (rv);
}
}
static int md_set_badblocks(struct badblocks *bb , sector_t s , int sectors , int acknowledged )
{
  u64 *p ;
  int lo ;
  int hi ;
  int rv ;
  sector_t next ;
  int mid ;
  sector_t a ;
  sector_t a___0 ;
  sector_t e ;
  int ack ;
  sector_t a___1 ;
  sector_t e___0 ;
  int ack___0 ;
  sector_t a___2 ;
  int lolen ;
  int hilen ;
  int newlen ;
  int ack___1 ;
  int this_sectors ;
  {
  rv = 1;
  if (bb->shift < 0) {
    return (0);
  } else {
  }
  if (bb->shift != 0) {
    next = (sector_t )sectors + s;
    s = s >> bb->shift;
    next = (sector_t )((1 << bb->shift) + -1) + next;
    next = next >> bb->shift;
    sectors = (int )((unsigned int )next - (unsigned int )s);
  } else {
  }
  write_seqlock_irq(& bb->lock);
  p = bb->page;
  lo = 0;
  hi = bb->count;
  goto ldv_34467;
  ldv_34466:
  mid = (lo + hi) / 2;
  a = (sector_t )((*(p + (unsigned long )mid) & 9223372036854775296ULL) >> 9);
  if (a <= s) {
    lo = mid;
  } else {
    hi = mid;
  }
  ldv_34467: ;
  if (hi - lo > 1) {
    goto ldv_34466;
  } else {
  }
  if (hi > lo && (*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9 > (unsigned long long )s) {
    hi = lo;
  } else {
  }
  if (hi > lo) {
    a___0 = (sector_t )((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9);
    e = (sector_t )(((*(p + (unsigned long )lo) & 511ULL) + (unsigned long long )a___0) + 1ULL);
    ack = (long )*(p + (unsigned long )lo) < 0L;
    if (e >= s) {
      if (s == a___0 && (sector_t )sectors + s >= e) {
        ack = acknowledged;
      } else {
        ack = ack != 0 && acknowledged != 0;
      }
      if ((sector_t )sectors + s > e) {
        e = (sector_t )sectors + s;
      } else {
      }
      if (e - a___0 <= 512UL) {
        *(p + (unsigned long )lo) = (unsigned long long )((a___0 << 9) | ((e - a___0) - 1UL)) | (ack != 0 ? 0x8000000000000000ULL : 0ULL);
        s = e;
      } else {
        if ((*(p + (unsigned long )lo) & 511ULL) != 511ULL) {
          *(p + (unsigned long )lo) = ((unsigned long long )(a___0 << 9) | (ack != 0 ? 0x8000000000000000ULL : 0ULL)) | 511ULL;
        } else {
        }
        s = a___0 + 512UL;
      }
      sectors = (int )((unsigned int )e - (unsigned int )s);
    } else {
    }
  } else {
  }
  if (sectors != 0 && bb->count > hi) {
    a___1 = (sector_t )((*(p + (unsigned long )hi) & 9223372036854775296ULL) >> 9);
    e___0 = (sector_t )(((*(p + (unsigned long )hi) & 511ULL) + (unsigned long long )a___1) + 1ULL);
    ack___0 = (long )*(p + (unsigned long )hi) < 0L;
    if ((sector_t )sectors + s >= a___1) {
      if ((sector_t )sectors + s >= e___0) {
        e___0 = (sector_t )sectors + s;
        ack___0 = acknowledged;
      } else {
        ack___0 = ack___0 != 0 && acknowledged != 0;
      }
      a___1 = s;
      if (e___0 - a___1 <= 512UL) {
        *(p + (unsigned long )hi) = (unsigned long long )((a___1 << 9) | ((e___0 - a___1) - 1UL)) | (ack___0 != 0 ? 0x8000000000000000ULL : 0ULL);
        s = e___0;
      } else {
        *(p + (unsigned long )hi) = ((unsigned long long )(a___1 << 9) | (ack___0 != 0 ? 0x8000000000000000ULL : 0ULL)) | 511ULL;
        s = a___1 + 512UL;
      }
      sectors = (int )((unsigned int )e___0 - (unsigned int )s);
      lo = hi;
      hi = hi + 1;
    } else {
    }
  } else {
  }
  if (sectors == 0 && bb->count > hi) {
    a___2 = (sector_t )((*(p + (unsigned long )hi) & 9223372036854775296ULL) >> 9);
    lolen = (int )(((unsigned int )*(p + (unsigned long )lo) & 511U) + 1U);
    hilen = (int )(((unsigned int )*(p + (unsigned long )hi) & 511U) + 1U);
    newlen = (int )((unsigned int )(lolen + hilen) + ((unsigned int )a___2 - (unsigned int )s));
    if (s >= a___2 && newlen <= 511) {
      ack___1 = (long )*(p + (unsigned long )lo) < 0L && (long )*(p + (unsigned long )hi) < 0L;
      *(p + (unsigned long )lo) = ((*(p + (unsigned long )lo) & 9223372036854775296ULL) | (unsigned long long )(newlen + -1)) | (ack___1 != 0 ? 0x8000000000000000ULL : 0ULL);
      memmove((void *)p + (unsigned long )hi, (void const *)(p + ((unsigned long )hi + 1UL)),
              (size_t )(((bb->count - hi) + -1) * 8));
      bb->count = bb->count - 1;
    } else {
    }
  } else {
  }
  goto ldv_34483;
  ldv_34482: ;
  if ((unsigned int )bb->count > 511U) {
    rv = 0;
    goto ldv_34480;
  } else {
    this_sectors = sectors;
    memmove((void *)(p + ((unsigned long )hi + 1UL)), (void const *)p + (unsigned long )hi,
            (size_t )((bb->count - hi) * 8));
    bb->count = bb->count + 1;
    if (this_sectors > 512) {
      this_sectors = 512;
    } else {
    }
    *(p + (unsigned long )hi) = (unsigned long long )((s << 9) | (sector_t )(this_sectors + -1)) | (acknowledged != 0 ? 0x8000000000000000ULL : 0ULL);
    sectors = sectors - this_sectors;
    s = (sector_t )this_sectors + s;
  }
  ldv_34483: ;
  if (sectors != 0) {
    goto ldv_34482;
  } else {
  }
  ldv_34480:
  bb->changed = 1;
  if (acknowledged == 0) {
    bb->unacked_exist = 1;
  } else {
  }
  write_sequnlock_irq(& bb->lock);
  return (rv);
}
}
int rdev_set_badblocks(struct md_rdev *rdev , sector_t s , int sectors , int is_new )
{
  int rv ;
  {
  if (is_new != 0) {
    s = rdev->new_data_offset + s;
  } else {
    s = rdev->data_offset + s;
  }
  rv = md_set_badblocks(& rdev->badblocks, s, sectors, 0);
  if (rv != 0) {
    sysfs_notify_dirent_safe(rdev->sysfs_state);
    set_bit(1U, (unsigned long volatile *)(& (rdev->mddev)->flags));
    md_wakeup_thread((rdev->mddev)->thread);
  } else {
  }
  return (rv);
}
}
static int md_clear_badblocks(struct badblocks *bb , sector_t s , int sectors )
{
  u64 *p ;
  int lo ;
  int hi ;
  sector_t target ;
  int rv ;
  int mid ;
  sector_t a ;
  int ack ;
  sector_t a___0 ;
  sector_t end ;
  int ack___0 ;
  sector_t start ;
  {
  target = (sector_t )sectors + s;
  rv = 0;
  if (bb->shift > 0) {
    s = (sector_t )((1 << bb->shift) + -1) + s;
    s = s >> bb->shift;
    target = target >> bb->shift;
    sectors = (int )((unsigned int )target - (unsigned int )s);
  } else {
  }
  write_seqlock_irq(& bb->lock);
  p = bb->page;
  lo = 0;
  hi = bb->count;
  goto ldv_34513;
  ldv_34512:
  mid = (lo + hi) / 2;
  a = (sector_t )((*(p + (unsigned long )mid) & 9223372036854775296ULL) >> 9);
  if (a < target) {
    lo = mid;
  } else {
    hi = mid;
  }
  ldv_34513: ;
  if (hi - lo > 1) {
    goto ldv_34512;
  } else {
  }
  if (hi > lo) {
    if ((((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9) + (*(p + (unsigned long )lo) & 511ULL)) + 1ULL > (unsigned long long )target) {
      ack = (long )*(p + (unsigned long )lo) < 0L;
      a___0 = (sector_t )((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9);
      end = (sector_t )(((*(p + (unsigned long )lo) & 511ULL) + (unsigned long long )a___0) + 1ULL);
      if (a___0 < s) {
        if ((unsigned int )bb->count > 511U) {
          rv = 0;
          goto out;
        } else {
        }
        memmove((void *)(p + ((unsigned long )lo + 1UL)), (void const *)p + (unsigned long )lo,
                (size_t )((bb->count - lo) * 8));
        bb->count = bb->count + 1;
        *(p + (unsigned long )lo) = (unsigned long long )((a___0 << 9) | ((s - a___0) - 1UL)) | (ack != 0 ? 0x8000000000000000ULL : 0ULL);
        lo = lo + 1;
      } else {
      }
      *(p + (unsigned long )lo) = (unsigned long long )((target << 9) | ((end - target) - 1UL)) | (ack != 0 ? 0x8000000000000000ULL : 0ULL);
      hi = lo;
      lo = lo - 1;
    } else {
    }
    goto ldv_34523;
    ldv_34522: ;
    if ((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9 < (unsigned long long )s) {
      ack___0 = (long )*(p + (unsigned long )lo) < 0L;
      start = (sector_t )((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9);
      *(p + (unsigned long )lo) = (unsigned long long )((start << 9) | ((s - start) - 1UL)) | (ack___0 != 0 ? 0x8000000000000000ULL : 0ULL);
      goto ldv_34521;
    } else {
    }
    lo = lo - 1;
    ldv_34523: ;
    if (lo >= 0 && (((*(p + (unsigned long )lo) & 9223372036854775296ULL) >> 9) + (*(p + (unsigned long )lo) & 511ULL)) + 1ULL > (unsigned long long )s) {
      goto ldv_34522;
    } else {
    }
    ldv_34521: ;
    if (hi - lo > 1) {
      memmove((void *)(p + ((unsigned long )lo + 1UL)), (void const *)p + (unsigned long )hi,
              (size_t )((bb->count - hi) * 8));
      bb->count = bb->count + ((lo - hi) + 1);
    } else {
    }
  } else {
  }
  bb->changed = 1;
  out:
  write_sequnlock_irq(& bb->lock);
  return (rv);
}
}
int rdev_clear_badblocks(struct md_rdev *rdev , sector_t s , int sectors , int is_new )
{
  int tmp ;
  {
  if (is_new != 0) {
    s = rdev->new_data_offset + s;
  } else {
    s = rdev->data_offset + s;
  }
  tmp = md_clear_badblocks(& rdev->badblocks, s, sectors);
  return (tmp);
}
}
void md_ack_all_badblocks(struct badblocks *bb )
{
  u64 *p ;
  int i ;
  sector_t start ;
  int len ;
  {
  if ((unsigned long )bb->page == (unsigned long )((u64 *)0) || bb->changed != 0) {
    return;
  } else {
  }
  write_seqlock_irq(& bb->lock);
  if (bb->changed == 0 && bb->unacked_exist != 0) {
    p = bb->page;
    i = 0;
    goto ldv_34547;
    ldv_34546: ;
    if ((long )*(p + (unsigned long )i) >= 0L) {
      start = (sector_t )((*(p + (unsigned long )i) & 9223372036854775296ULL) >> 9);
      len = (int )(((unsigned int )*(p + (unsigned long )i) & 511U) + 1U);
      *(p + (unsigned long )i) = (unsigned long long )((start << 9) | (sector_t )(len + -1)) | 0x8000000000000000ULL;
    } else {
    }
    i = i + 1;
    ldv_34547: ;
    if (bb->count > i) {
      goto ldv_34546;
    } else {
    }
    bb->unacked_exist = 0;
  } else {
  }
  write_sequnlock_irq(& bb->lock);
  return;
}
}
static ssize_t badblocks_show(struct badblocks *bb , char *page , int unack )
{
  size_t len ;
  int i ;
  u64 *p ;
  unsigned int seq ;
  sector_t s ;
  unsigned int length ;
  int ack ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  p = bb->page;
  if (bb->shift < 0) {
    return (0L);
  } else {
  }
  retry:
  seq = read_seqbegin((seqlock_t const *)(& bb->lock));
  len = 0UL;
  i = 0;
  goto ldv_34568;
  ldv_34569:
  s = (sector_t )((*(p + (unsigned long )i) & 9223372036854775296ULL) >> 9);
  length = ((unsigned int )*(p + (unsigned long )i) & 511U) + 1U;
  ack = (long )*(p + (unsigned long )i) < 0L;
  i = i + 1;
  if (unack != 0 && ack != 0) {
    goto ldv_34568;
  } else {
  }
  tmp = snprintf(page + len, 4096UL - len, "%llu %u\n", (unsigned long long )s << bb->shift,
                 length << bb->shift);
  len = (size_t )tmp + len;
  ldv_34568: ;
  if (len <= 4095UL && bb->count > i) {
    goto ldv_34569;
  } else {
  }
  if (unack != 0 && len == 0UL) {
    bb->unacked_exist = 0;
  } else {
  }
  tmp___0 = read_seqretry((seqlock_t const *)(& bb->lock), seq);
  if (tmp___0 != 0U) {
    goto retry;
  } else {
  }
  return ((ssize_t )len);
}
}
static ssize_t badblocks_store(struct badblocks *bb , char const *page , size_t len ,
                               int unack )
{
  unsigned long long sector ;
  int length ;
  char newline ;
  int clear___0 ;
  int tmp ;
  int tmp___0 ;
  {
  clear___0 = 0;
  if ((int )((signed char )*page) == 45) {
    clear___0 = 1;
    page = page + 1;
  } else {
  }
  tmp = sscanf(page, "%llu %d%c", & sector, & length, & newline);
  switch (tmp) {
  case 3: ;
  if ((int )((signed char )newline) != 10) {
    return (-22L);
  } else {
  }
  case 2: ;
  if (length <= 0) {
    return (-22L);
  } else {
  }
  goto ldv_34583;
  default: ;
  return (-22L);
  }
  ldv_34583: ;
  if (clear___0 != 0) {
    md_clear_badblocks(bb, (sector_t )sector, length);
    return ((ssize_t )len);
  } else {
  }
  tmp___0 = md_set_badblocks(bb, (sector_t )sector, length, unack == 0);
  if (tmp___0 != 0) {
    return ((ssize_t )len);
  } else {
    return (-28L);
  }
}
}
static int md_notify_reboot(struct notifier_block *this , unsigned long code , void *x )
{
  struct list_head *tmp ;
  struct mddev *mddev ;
  int need_delay ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  {
  need_delay = 0;
  spin_lock(& all_mddevs_lock);
  tmp = all_mddevs.next;
  mddev = 0;
  goto ldv_34601;
  ldv_34600:
  tmp___0 = mddev_trylock(mddev);
  if (tmp___0 != 0) {
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      __md_stop_writes(mddev);
    } else {
    }
    mddev->safemode = 2U;
    mddev_unlock(mddev);
  } else {
  }
  need_delay = 1;
  spin_lock(& all_mddevs_lock);
  tmp = tmp->next;
  ldv_34601: ;
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    __mptr = (struct list_head const *)tmp;
    mddev_get((struct mddev *)__mptr + 0xfffffffffffff9c8UL);
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
    mddev_put(mddev);
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp;
  mddev = (struct mddev *)__mptr___0 + 0xfffffffffffff9c8UL;
  if (((unsigned long )tmp != (unsigned long )(& all_mddevs)) != 0) {
    goto ldv_34600;
  } else {
  }
  if (need_delay != 0) {
    __ms = 1000UL;
    goto ldv_34605;
    ldv_34604:
    __const_udelay(4295000UL);
    ldv_34605:
    tmp___1 = __ms;
    __ms = __ms - 1UL;
    if (tmp___1 != 0UL) {
      goto ldv_34604;
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct notifier_block md_notifier = {& md_notify_reboot, 0, 2147483647};
static void md_geninit(void)
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "md_mod";
  descriptor.function = "md_geninit";
  descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/md.c.prepared";
  descriptor.format = "md: sizeof(mdp_super_t) = %d\n";
  descriptor.lineno = 8565U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "md: sizeof(mdp_super_t) = %d\n", 4096);
  } else {
  }
  proc_create("mdstat", 292, 0, & md_seq_fops);
  return;
}
}
static int md_init(void)
{
  int ret ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___0 ;
  char const *__lock_name___0 ;
  struct workqueue_struct *tmp___0 ;
  {
  ret = -12;
  __lock_name = "md";
  tmp = __alloc_workqueue_key("md", 8U, 0, & __key, __lock_name);
  md_wq = tmp;
  if ((unsigned long )md_wq == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_wq;
  } else {
  }
  __lock_name___0 = "md_misc";
  tmp___0 = __alloc_workqueue_key("md_misc", 0U, 0, & __key___0, __lock_name___0);
  md_misc_wq = tmp___0;
  if ((unsigned long )md_misc_wq == (unsigned long )((struct workqueue_struct *)0)) {
    goto err_misc_wq;
  } else {
  }
  ret = register_blkdev(9U, "md");
  if (ret < 0) {
    goto err_md;
  } else {
  }
  ret = register_blkdev(0U, "mdp");
  if (ret < 0) {
    goto err_mdp;
  } else {
  }
  mdp_major = ret;
  blk_register_region(9437184U, 1048576UL, & __this_module, & md_probe, 0, 0);
  blk_register_region((dev_t )(mdp_major << 20), 1048576UL, & __this_module, & md_probe,
                      0, 0);
  register_reboot_notifier(& md_notifier);
  raid_table_header = register_sysctl_table((struct ctl_table *)(& raid_root_table));
  md_geninit();
  return (0);
  err_mdp:
  unregister_blkdev(9U, "md");
  err_md:
  destroy_workqueue(md_misc_wq);
  err_misc_wq:
  destroy_workqueue(md_wq);
  err_wq: ;
  return (ret);
}
}
static void md_exit(void)
{
  struct mddev *mddev ;
  struct list_head *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  blk_unregister_region(9437184U, 1048576UL);
  blk_unregister_region((dev_t )(mdp_major << 20), 1048576UL);
  unregister_blkdev(9U, "md");
  unregister_blkdev((unsigned int )mdp_major, "mdp");
  unregister_reboot_notifier(& md_notifier);
  unregister_sysctl_table(raid_table_header);
  remove_proc_entry("mdstat", 0);
  spin_lock(& all_mddevs_lock);
  tmp = all_mddevs.next;
  mddev = 0;
  goto ldv_34640;
  ldv_34639:
  export_array(mddev);
  mddev->hold_active = 0;
  spin_lock(& all_mddevs_lock);
  tmp = tmp->next;
  ldv_34640: ;
  if ((unsigned long )tmp != (unsigned long )(& all_mddevs)) {
    __mptr = (struct list_head const *)tmp;
    mddev_get((struct mddev *)__mptr + 0xfffffffffffff9c8UL);
  } else {
  }
  spin_unlock(& all_mddevs_lock);
  if ((unsigned long )mddev != (unsigned long )((struct mddev *)0)) {
    mddev_put(mddev);
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp;
  mddev = (struct mddev *)__mptr___0 + 0xfffffffffffff9c8UL;
  if (((unsigned long )tmp != (unsigned long )(& all_mddevs)) != 0) {
    goto ldv_34639;
  } else {
  }
  destroy_workqueue(md_misc_wq);
  destroy_workqueue(md_wq);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct kobject *var_group1 ;
  struct attribute *var_group2 ;
  char *var_rdev_attr_show_94_p2 ;
  char const *var_rdev_attr_store_95_p2 ;
  size_t var_rdev_attr_store_95_p3 ;
  char *var_md_attr_show_151_p2 ;
  char const *var_md_attr_store_152_p2 ;
  size_t var_md_attr_store_152_p3 ;
  struct block_device *var_group3 ;
  fmode_t var_md_open_191_p1 ;
  int res_md_open_191 ;
  struct gendisk *var_group4 ;
  fmode_t var_md_release_192_p1 ;
  fmode_t var_md_ioctl_189_p1 ;
  unsigned int var_md_ioctl_189_p2 ;
  unsigned long var_md_ioctl_189_p3 ;
  fmode_t var_md_compat_ioctl_190_p1 ;
  unsigned int var_md_compat_ioctl_190_p2 ;
  unsigned long var_md_compat_ioctl_190_p3 ;
  struct hd_geometry *var_group5 ;
  struct seq_file *var_group6 ;
  loff_t *var_md_seq_start_201_p1 ;
  void *var_md_seq_next_202_p1 ;
  loff_t *var_md_seq_next_202_p2 ;
  void *var_md_seq_stop_203_p1 ;
  void *var_md_seq_show_204_p1 ;
  struct inode *var_group7 ;
  struct file *var_group8 ;
  int res_md_seq_open_205 ;
  poll_table *var_mdstat_poll_206_p1 ;
  struct notifier_block *var_group9 ;
  unsigned long var_md_notify_reboot_228_p1 ;
  void *var_md_notify_reboot_228_p2 ;
  unsigned long var_md_safemode_timeout_158_p0 ;
  int ldv_s_rdev_ktype_kobj_type ;
  int ldv_s_md_ktype_kobj_type ;
  int ldv_s_md_fops_block_device_operations ;
  int ldv_s_md_seq_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_rdev_ktype_kobj_type = 0;
  ldv_s_md_ktype_kobj_type = 0;
  ldv_s_md_fops_block_device_operations = 0;
  ldv_s_md_seq_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = md_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_34845;
  ldv_34844:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  rdev_attr_show(var_group1, var_group2, var_rdev_attr_show_94_p2);
  goto ldv_34821;
  case 1:
  ldv_handler_precall();
  rdev_attr_store(var_group1, var_group2, var_rdev_attr_store_95_p2, var_rdev_attr_store_95_p3);
  goto ldv_34821;
  case 2: ;
  if (ldv_s_rdev_ktype_kobj_type == 0) {
    ldv_handler_precall();
    rdev_free(var_group1);
    ldv_s_rdev_ktype_kobj_type = 0;
  } else {
  }
  goto ldv_34821;
  case 3:
  ldv_handler_precall();
  md_attr_show(var_group1, var_group2, var_md_attr_show_151_p2);
  goto ldv_34821;
  case 4:
  ldv_handler_precall();
  md_attr_store(var_group1, var_group2, var_md_attr_store_152_p2, var_md_attr_store_152_p3);
  goto ldv_34821;
  case 5: ;
  if (ldv_s_md_ktype_kobj_type == 0) {
    ldv_handler_precall();
    md_free(var_group1);
    ldv_s_md_ktype_kobj_type = 0;
  } else {
  }
  goto ldv_34821;
  case 6: ;
  if (ldv_s_md_fops_block_device_operations == 0) {
    ldv_handler_precall();
    res_md_open_191 = md_open(var_group3, var_md_open_191_p1);
    ldv_check_return_value(res_md_open_191);
    if (res_md_open_191 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_md_fops_block_device_operations = ldv_s_md_fops_block_device_operations + 1;
  } else {
  }
  goto ldv_34821;
  case 7: ;
  if (ldv_s_md_fops_block_device_operations == 1) {
    ldv_handler_precall();
    md_release(var_group4, var_md_release_192_p1);
    ldv_s_md_fops_block_device_operations = 0;
  } else {
  }
  goto ldv_34821;
  case 8:
  ldv_handler_precall();
  md_ioctl(var_group3, var_md_ioctl_189_p1, var_md_ioctl_189_p2, var_md_ioctl_189_p3);
  goto ldv_34821;
  case 9:
  ldv_handler_precall();
  md_compat_ioctl(var_group3, var_md_compat_ioctl_190_p1, var_md_compat_ioctl_190_p2,
                  var_md_compat_ioctl_190_p3);
  goto ldv_34821;
  case 10:
  ldv_handler_precall();
  md_getgeo(var_group3, var_group5);
  goto ldv_34821;
  case 11:
  ldv_handler_precall();
  md_media_changed(var_group4);
  goto ldv_34821;
  case 12:
  ldv_handler_precall();
  md_revalidate(var_group4);
  goto ldv_34821;
  case 13:
  ldv_handler_precall();
  md_seq_start(var_group6, var_md_seq_start_201_p1);
  goto ldv_34821;
  case 14:
  ldv_handler_precall();
  md_seq_next(var_group6, var_md_seq_next_202_p1, var_md_seq_next_202_p2);
  goto ldv_34821;
  case 15:
  ldv_handler_precall();
  md_seq_stop(var_group6, var_md_seq_stop_203_p1);
  goto ldv_34821;
  case 16:
  ldv_handler_precall();
  md_seq_show(var_group6, var_md_seq_show_204_p1);
  goto ldv_34821;
  case 17: ;
  if (ldv_s_md_seq_fops_file_operations == 0) {
    ldv_handler_precall();
    res_md_seq_open_205 = md_seq_open(var_group7, var_group8);
    ldv_check_return_value(res_md_seq_open_205);
    if (res_md_seq_open_205 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_md_seq_fops_file_operations = 0;
  } else {
  }
  goto ldv_34821;
  case 18:
  ldv_handler_precall();
  mdstat_poll(var_group8, var_mdstat_poll_206_p1);
  goto ldv_34821;
  case 19:
  ldv_handler_precall();
  md_notify_reboot(var_group9, var_md_notify_reboot_228_p1, var_md_notify_reboot_228_p2);
  goto ldv_34821;
  case 20:
  ldv_handler_precall();
  md_safemode_timeout(var_md_safemode_timeout_158_p0);
  goto ldv_34821;
  default: ;
  goto ldv_34821;
  }
  ldv_34821: ;
  ldv_34845:
  tmp___1 = __VERIFIER_nondet_int();
  if ((((tmp___1 != 0 || ldv_s_rdev_ktype_kobj_type != 0) || ldv_s_md_ktype_kobj_type != 0) || ldv_s_md_fops_block_device_operations != 0) || ldv_s_md_seq_fops_file_operations != 0) {
    goto ldv_34844;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  md_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_6(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_mutex_is_locked_7(struct mutex *lock )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_is_locked(lock);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_is_locked_reconfig_mutex_of_mddev(lock);
  return (tmp___0);
  return (ldv_func_res);
}
}
int ldv_mutex_trylock_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_reconfig_mutex_of_mddev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_reconfig_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_reconfig_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_disks_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_disks_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_21(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___19 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_open_mutex_of_mddev(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_open_mutex_of_mddev(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static unsigned long ffz(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "r" (~ word));
  return (word);
}
}
__inline static int test_bit_le(int nr , void const *addr )
{
  int tmp ;
  {
  tmp = variable_test_bit(nr, (unsigned long const volatile *)addr);
  return (tmp);
}
}
__inline static void set_bit_le(int nr , void *addr )
{
  {
  set_bit((unsigned int )nr, (unsigned long volatile *)addr);
  return;
}
}
__inline static void clear_bit_le(int nr , void *addr )
{
  {
  clear_bit(nr, (unsigned long volatile *)addr);
  return;
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
__inline static void atomic64_inc(atomic64_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incq %0": "=m" (v->counter): "m" (v->counter));
  return;
}
}
__inline static void atomic_long_inc(atomic_long_t *l )
{
  atomic64_t *v ;
  {
  v = l;
  atomic64_inc(v);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mutex_of_NOT_ARG_SIGN(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(struct mutex *lock ) ;
__inline static struct thread_info *current_thread_info___0(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6413;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6413;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6413;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6413;
  default:
  __bad_percpu_size();
  }
  ldv_6413:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6014.rlock, flags);
  return;
}
}
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
__inline static void __rcu_read_lock___0(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info___0();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock___0(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info___0();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void rcu_read_lock___0(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __rcu_read_lock___0();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 771, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock___0(void)
{
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 792, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock___0();
  return;
}
}
__inline static struct file *get_file(struct file *f )
{
  {
  atomic_long_inc(& f->f_count);
  return (f);
}
}
extern unsigned long invalidate_mapping_pages(struct address_space * , unsigned long ,
                                              unsigned long ) ;
extern int vfs_fsync(struct file * , int ) ;
extern sector_t bmap(struct inode * , sector_t ) ;
__inline static struct inode *file_inode(struct file *f )
{
  {
  return (f->f_inode);
}
}
__inline static int PagePrivate(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(11U, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
__inline static void SetPagePrivate(struct page *page )
{
  {
  set_bit(11U, (unsigned long volatile *)(& page->flags));
  return;
}
}
__inline static void ClearPagePrivate(struct page *page )
{
  {
  clear_bit(11, (unsigned long volatile *)(& page->flags));
  return;
}
}
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& page->ldv_8768.ldv_8767.ldv_8766._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (411), "i" (12UL));
    ldv_23087: ;
    goto ldv_23087;
  } else {
  }
  atomic_inc(& page->ldv_8768.ldv_8767.ldv_8766._count);
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  __rcu_read_lock___0();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  __rcu_read_unlock___0();
  return;
}
}
__inline static struct request_queue *bdev_get_queue(struct block_device *bdev )
{
  {
  return ((bdev->bd_disk)->queue);
}
}
__inline static unsigned short bdev_logical_block_size(struct block_device *bdev )
{
  struct request_queue *tmp ;
  unsigned short tmp___0 ;
  {
  tmp = bdev_get_queue(bdev);
  tmp___0 = queue_logical_block_size(tmp);
  return (tmp___0);
}
}
__inline static void set_buffer_locked(struct buffer_head *bh )
{
  {
  set_bit(2U, (unsigned long volatile *)(& bh->b_state));
  return;
}
}
__inline static void set_buffer_mapped(struct buffer_head *bh )
{
  {
  set_bit(5U, (unsigned long volatile *)(& bh->b_state));
  return;
}
}
extern struct buffer_head *alloc_page_buffers(struct page * , unsigned long , int ) ;
extern void free_buffer_head(struct buffer_head * ) ;
extern int submit_bh(int , struct buffer_head * ) ;
__inline static void attach_page_buffers(struct page *page , struct buffer_head *head )
{
  {
  get_page(page);
  SetPagePrivate(page);
  page->ldv_8784.private = (unsigned long )head;
  return;
}
}
extern int seq_path(struct seq_file * , struct path const * , char const * ) ;
int bitmap_startwrite(struct bitmap *bitmap , sector_t offset , unsigned long sectors ,
                      int behind ) ;
void bitmap_endwrite(struct bitmap *bitmap , sector_t offset , unsigned long sectors ,
                     int success , int behind ) ;
int bitmap_start_sync(struct bitmap *bitmap , sector_t offset , sector_t *blocks ,
                      int degraded ) ;
void bitmap_end_sync(struct bitmap *bitmap , sector_t offset , sector_t *blocks ,
                     int aborted ) ;
void bitmap_close_sync(struct bitmap *bitmap ) ;
void bitmap_cond_end_sync(struct bitmap *bitmap , sector_t sector ) ;
int bitmap_resize(struct bitmap *bitmap , sector_t blocks , int chunksize , int init ) ;
__inline static char *bmname(struct bitmap *bitmap )
{
  char *tmp ;
  char *tmp___0 ;
  {
  if ((unsigned long )bitmap->mddev != (unsigned long )((struct mddev *)0)) {
    tmp = mdname(bitmap->mddev);
    tmp___0 = tmp;
  } else {
    tmp___0 = (char *)"mdX";
  }
  return (tmp___0);
}
}
static int bitmap_checkpage(struct bitmap_counts *bitmap , unsigned long page , int create )
{
  unsigned char *mappage ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  if (bitmap->pages <= page) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(bitmap->bp + page) + 8UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned long )(bitmap->bp + page)->map != (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  if (create == 0) {
    return (-2);
  } else {
  }
  spin_unlock_irq(& bitmap->lock);
  tmp = kzalloc(4096UL, 16U);
  mappage = (unsigned char *)tmp;
  spin_lock_irq(& bitmap->lock);
  if ((unsigned long )mappage == (unsigned long )((unsigned char *)0)) {
    descriptor.modname = "md_mod";
    descriptor.function = "bitmap_checkpage";
    descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared";
    descriptor.format = "md/bitmap: map page allocation failed, hijacking\n";
    descriptor.lineno = 135U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "md/bitmap: map page allocation failed, hijacking\n");
    } else {
    }
    if ((unsigned long )(bitmap->bp + page)->map == (unsigned long )((char *)0)) {
      (bitmap->bp + page)->hijacked = 1U;
    } else {
    }
  } else
  if ((unsigned long )(bitmap->bp + page)->map != (unsigned long )((char *)0) || (unsigned int )*((unsigned char *)(bitmap->bp + page) + 8UL) != 0U) {
    kfree((void const *)mappage);
    return (0);
  } else {
    (bitmap->bp + page)->map = (char *)mappage;
    bitmap->missing_pages = bitmap->missing_pages - 1UL;
  }
  return (0);
}
}
static void bitmap_checkfree(struct bitmap_counts *bitmap , unsigned long page )
{
  char *ptr ;
  {
  if (*((unsigned int *)(bitmap->bp + page) + 2UL) != 0U) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(bitmap->bp + page) + 8UL) != 0U) {
    (bitmap->bp + page)->hijacked = 0U;
    (bitmap->bp + page)->map = 0;
  } else {
    ptr = (bitmap->bp + page)->map;
    (bitmap->bp + page)->map = 0;
    bitmap->missing_pages = bitmap->missing_pages + 1UL;
    kfree((void const *)ptr);
  }
  return;
}
}
static int read_sb_page(struct mddev *mddev , loff_t offset , struct page *page ,
                        unsigned long index , int size )
{
  struct md_rdev *rdev ;
  sector_t target ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  unsigned short __y ;
  unsigned short tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)mddev->disks.next;
  rdev = (struct md_rdev *)__mptr;
  goto ldv_30506;
  ldv_30505:
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& rdev->flags));
  if (tmp == 0) {
    goto ldv_30502;
  } else {
    tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___0 != 0) {
      goto ldv_30502;
    } else {
    }
  }
  target = (sector_t )((unsigned long long )(index * 8UL) + (unsigned long long )offset);
  tmp___1 = bdev_logical_block_size(rdev->bdev);
  __y = tmp___1;
  tmp___2 = sync_page_io(rdev, target, ((((int )__y + -1) + size) / (int )__y) * (int )__y,
                         page, 0, 1);
  if (tmp___2 != 0) {
    page->ldv_8768.ldv_8752.index = index;
    return (0);
  } else {
  }
  ldv_30502:
  __mptr___0 = (struct list_head const *)rdev->same_set.next;
  rdev = (struct md_rdev *)__mptr___0;
  ldv_30506: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_30505;
  } else {
  }
  return (-5);
}
}
static struct md_rdev *next_active_rdev(struct md_rdev *rdev , struct mddev *mddev )
{
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1___1 ;
  bool __warned___1 ;
  int tmp___2 ;
  {
  rcu_read_lock___0();
  if ((unsigned long )rdev == (unsigned long )((struct md_rdev *)0)) {
    __ptr = & mddev->disks;
    _________p1 = *((struct list_head * volatile *)(& __ptr));
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      rcu_read_lock_held();
    } else {
    }
    __mptr = (struct list_head const *)_________p1;
    rdev = (struct md_rdev *)__mptr;
  } else {
    rdev_dec_pending(rdev, mddev);
  }
  __ptr___0 = rdev->same_set.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rdev = (struct md_rdev *)__mptr___0;
  goto ldv_30534;
  ldv_30533: ;
  if (rdev->raid_disk >= 0) {
    tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& rdev->flags));
    if (tmp___1 == 0) {
      atomic_inc(& rdev->nr_pending);
      rcu_read_unlock___0();
      return (rdev);
    } else {
    }
  } else {
  }
  __ptr___1 = rdev->same_set.next;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___1) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___1 = (struct list_head const *)_________p1___1;
  rdev = (struct md_rdev *)__mptr___1;
  ldv_30534: ;
  if ((unsigned long )(& rdev->same_set) != (unsigned long )(& mddev->disks)) {
    goto ldv_30533;
  } else {
  }
  rcu_read_unlock___0();
  return (0);
}
}
static int write_sb_page(struct bitmap *bitmap , struct page *page , int wait )
{
  struct md_rdev *rdev ;
  struct block_device *bdev ;
  struct mddev *mddev ;
  struct bitmap_storage *store ;
  int size ;
  loff_t offset ;
  int last_page_size ;
  unsigned short __y ;
  unsigned short tmp ;
  {
  rdev = 0;
  mddev = bitmap->mddev;
  store = & bitmap->storage;
  goto ldv_30552;
  ldv_30551:
  size = 4096;
  offset = mddev->bitmap_info.offset;
  bdev = (unsigned long )rdev->meta_bdev != (unsigned long )((struct block_device *)0) ? rdev->meta_bdev : rdev->bdev;
  if (page->ldv_8768.ldv_8752.index == store->file_pages - 1UL) {
    last_page_size = (int )store->bytes & 4095;
    if (last_page_size == 0) {
      last_page_size = 4096;
    } else {
    }
    tmp = bdev_logical_block_size(bdev);
    __y = tmp;
    size = ((((int )__y + -1) + last_page_size) / (int )__y) * (int )__y;
  } else {
  }
  if (mddev->external != 0) {
    if (((unsigned long long )rdev->sb_start + (unsigned long long )offset) + (unsigned long long )(page->ldv_8768.ldv_8752.index * 8UL) > (unsigned long long )rdev->data_offset && (unsigned long long )rdev->sb_start + (unsigned long long )offset < (unsigned long long )((rdev->data_offset + mddev->dev_sectors) + 8UL)) {
      goto bad_alignment;
    } else {
    }
  } else
  if (offset < 0LL) {
    if (((long long )(page->ldv_8768.ldv_8752.index * 8UL) + offset) + (long long )(size / 512) > 0LL) {
      goto bad_alignment;
    } else {
    }
    if ((unsigned long long )(rdev->data_offset + mddev->dev_sectors) > (unsigned long long )rdev->sb_start + (unsigned long long )offset) {
      goto bad_alignment;
    } else {
    }
  } else
  if (rdev->sb_start < rdev->data_offset) {
    if ((((unsigned long long )rdev->sb_start + (unsigned long long )offset) + (unsigned long long )(page->ldv_8768.ldv_8752.index * 8UL)) + (unsigned long long )(size / 512) > (unsigned long long )rdev->data_offset) {
      goto bad_alignment;
    } else {
    }
  } else {
  }
  md_super_write(mddev, rdev, (sector_t )(((unsigned long long )rdev->sb_start + (unsigned long long )offset) + (unsigned long long )(page->ldv_8768.ldv_8752.index * 8UL)),
                 size, page);
  ldv_30552:
  rdev = next_active_rdev(rdev, mddev);
  if ((unsigned long )rdev != (unsigned long )((struct md_rdev *)0)) {
    goto ldv_30551;
  } else {
  }
  if (wait != 0) {
    md_super_wait(mddev);
  } else {
  }
  return (0);
  bad_alignment: ;
  return (-22);
}
}
static void bitmap_file_kick(struct bitmap *bitmap ) ;
static void write_page(struct bitmap *bitmap , struct page *page , int wait )
{
  struct buffer_head *bh ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  if ((unsigned long )bitmap->storage.file == (unsigned long )((struct file *)0)) {
    tmp = write_sb_page(bitmap, page, wait);
    switch (tmp) {
    case -22:
    set_bit(2U, (unsigned long volatile *)(& bitmap->flags));
    }
  } else {
    tmp___0 = PagePrivate((struct page const *)page);
    tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared"),
                           "i" (330), "i" (12UL));
      ldv_30563: ;
      goto ldv_30563;
    } else {
    }
    bh = (struct buffer_head *)page->ldv_8784.private;
    goto ldv_30566;
    ldv_30565:
    atomic_inc(& bitmap->pending_writes);
    set_buffer_locked(bh);
    set_buffer_mapped(bh);
    submit_bh(17, bh);
    bh = bh->b_this_page;
    ldv_30566: ;
    if ((unsigned long )bh != (unsigned long )((struct buffer_head *)0) && bh->b_blocknr != 0UL) {
      goto ldv_30565;
    } else {
    }
    if (wait != 0) {
      tmp___2 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
      if (tmp___2 == 0) {
        goto ldv_30568;
      } else {
      }
      tmp___3 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___3;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_30571:
      prepare_to_wait(& bitmap->write_wait, & __wait, 2);
      tmp___4 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
      if (tmp___4 == 0) {
        goto ldv_30570;
      } else {
      }
      schedule();
      goto ldv_30571;
      ldv_30570:
      finish_wait(& bitmap->write_wait, & __wait);
      ldv_30568: ;
    } else {
    }
  }
  tmp___5 = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp___5 != 0) {
    bitmap_file_kick(bitmap);
  } else {
  }
  return;
}
}
static void end_bitmap_write(struct buffer_head *bh , int uptodate )
{
  struct bitmap *bitmap ;
  int tmp ;
  {
  bitmap = (struct bitmap *)bh->b_private;
  if (uptodate == 0) {
    set_bit(2U, (unsigned long volatile *)(& bitmap->flags));
  } else {
  }
  tmp = atomic_dec_and_test(& bitmap->pending_writes);
  if (tmp != 0) {
    __wake_up(& bitmap->write_wait, 3U, 1, 0);
  } else {
  }
  return;
}
}
static void __clear_page_buffers(struct page *page )
{
  {
  ClearPagePrivate(page);
  page->ldv_8784.private = 0UL;
  put_page(page);
  return;
}
}
static void free_buffers(struct page *page )
{
  struct buffer_head *bh ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct buffer_head *next ;
  {
  tmp = PagePrivate((struct page const *)page);
  if (tmp == 0) {
    return;
  } else {
  }
  tmp___0 = PagePrivate((struct page const *)page);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared"),
                         "i" (373), "i" (12UL));
    ldv_30584: ;
    goto ldv_30584;
  } else {
  }
  bh = (struct buffer_head *)page->ldv_8784.private;
  goto ldv_30588;
  ldv_30587:
  next = bh->b_this_page;
  free_buffer_head(bh);
  bh = next;
  ldv_30588: ;
  if ((unsigned long )bh != (unsigned long )((struct buffer_head *)0)) {
    goto ldv_30587;
  } else {
  }
  __clear_page_buffers(page);
  put_page(page);
  return;
}
}
static int read_page(struct file *file , unsigned long index , struct bitmap *bitmap ,
                     unsigned long count , struct page *page )
{
  int ret ;
  struct inode *inode ;
  struct inode *tmp ;
  struct buffer_head *bh ;
  sector_t block ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  ret = 0;
  tmp = file_inode(file);
  inode = tmp;
  descriptor.modname = "md_mod";
  descriptor.function = "read_page";
  descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared";
  descriptor.format = "read bitmap file (%dB @ %llu)\n";
  descriptor.lineno = 401U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "read bitmap file (%dB @ %llu)\n", 4096, (unsigned long long )index << 12);
  } else {
  }
  bh = alloc_page_buffers(page, (unsigned long )(1 << (int )inode->i_blkbits), 0);
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  attach_page_buffers(page, bh);
  block = index << (int )(12U - inode->i_blkbits);
  goto ldv_30605;
  ldv_30604: ;
  if (count == 0UL) {
    bh->b_blocknr = 0UL;
  } else {
    bh->b_blocknr = bmap(inode, block);
    if (bh->b_blocknr == 0UL) {
      ret = -22;
      goto out;
    } else {
    }
    bh->b_bdev = (inode->i_sb)->s_bdev;
    if ((unsigned long )(1 << (int )inode->i_blkbits) > count) {
      count = 0UL;
    } else {
      count = count - (unsigned long )(1 << (int )inode->i_blkbits);
    }
    bh->b_end_io = & end_bitmap_write;
    bh->b_private = (void *)bitmap;
    atomic_inc(& bitmap->pending_writes);
    set_buffer_locked(bh);
    set_buffer_mapped(bh);
    submit_bh(0, bh);
  }
  block = block + 1UL;
  bh = bh->b_this_page;
  ldv_30605: ;
  if ((unsigned long )bh != (unsigned long )((struct buffer_head *)0)) {
    goto ldv_30604;
  } else {
  }
  page->ldv_8768.ldv_8752.index = index;
  tmp___1 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
  if (tmp___1 == 0) {
    goto ldv_30607;
  } else {
  }
  tmp___2 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___2;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_30610:
  prepare_to_wait(& bitmap->write_wait, & __wait, 2);
  tmp___3 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
  if (tmp___3 == 0) {
    goto ldv_30609;
  } else {
  }
  schedule();
  goto ldv_30610;
  ldv_30609:
  finish_wait(& bitmap->write_wait, & __wait);
  ldv_30607:
  tmp___4 = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp___4 != 0) {
    ret = -5;
  } else {
  }
  out: ;
  if (ret != 0) {
    printk("\tmd: bitmap read error: (%dB @ %llu): %d\n", 4096, (unsigned long long )index << 12,
           ret);
  } else {
  }
  return (ret);
}
}
void bitmap_update_sb(struct bitmap *bitmap )
{
  bitmap_super_t *sb ;
  void *tmp ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0) || (unsigned long )bitmap->mddev == (unsigned long )((struct mddev *)0)) {
    return;
  } else {
  }
  if ((bitmap->mddev)->bitmap_info.external != 0) {
    return;
  } else {
  }
  if ((unsigned long )bitmap->storage.sb_page == (unsigned long )((struct page *)0)) {
    return;
  } else {
  }
  tmp = kmap_atomic(bitmap->storage.sb_page);
  sb = (bitmap_super_t *)tmp;
  sb->events = (bitmap->mddev)->events;
  if ((bitmap->mddev)->events < bitmap->events_cleared) {
    bitmap->events_cleared = (bitmap->mddev)->events;
  } else {
  }
  sb->events_cleared = bitmap->events_cleared;
  sb->state = (unsigned int )bitmap->flags;
  sb->daemon_sleep = (unsigned int )((bitmap->mddev)->bitmap_info.daemon_sleep / 250UL);
  sb->write_behind = (unsigned int )(bitmap->mddev)->bitmap_info.max_write_behind;
  sb->sync_size = (unsigned long long )(bitmap->mddev)->resync_max_sectors;
  sb->chunksize = (unsigned int )(bitmap->mddev)->bitmap_info.chunksize;
  sb->sectors_reserved = (unsigned int )(bitmap->mddev)->bitmap_info.space;
  __kunmap_atomic((void *)sb);
  write_page(bitmap, bitmap->storage.sb_page, 1);
  return;
}
}
void bitmap_print_sb(struct bitmap *bitmap )
{
  bitmap_super_t *sb ;
  void *tmp ;
  char *tmp___0 ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0) || (unsigned long )bitmap->storage.sb_page == (unsigned long )((struct page *)0)) {
    return;
  } else {
  }
  tmp = kmap_atomic(bitmap->storage.sb_page);
  sb = (bitmap_super_t *)tmp;
  tmp___0 = bmname(bitmap);
  printk("\017%s: bitmap file superblock:\n", tmp___0);
  printk("\017         magic: %08x\n", sb->magic);
  printk("\017       version: %d\n", sb->version);
  printk("\017          uuid: %08x.%08x.%08x.%08x\n", *((__u32 *)(& sb->uuid)), *((__u32 *)(& sb->uuid) + 4U),
         *((__u32 *)(& sb->uuid) + 8U), *((__u32 *)(& sb->uuid) + 12U));
  printk("\017        events: %llu\n", sb->events);
  printk("\017events cleared: %llu\n", sb->events_cleared);
  printk("\017         state: %08x\n", sb->state);
  printk("\017     chunksize: %d B\n", sb->chunksize);
  printk("\017  daemon sleep: %ds\n", sb->daemon_sleep);
  printk("\017     sync size: %llu KB\n", sb->sync_size / 2ULL);
  printk("\017max write behind: %d\n", sb->write_behind);
  __kunmap_atomic((void *)sb);
  return;
}
}
static int bitmap_new_disk_sb(struct bitmap *bitmap )
{
  bitmap_super_t *sb ;
  unsigned long chunksize ;
  unsigned long daemon_sleep ;
  unsigned long write_behind ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  {
  bitmap->storage.sb_page = alloc_pages(208U, 0U);
  if ((unsigned long )bitmap->storage.sb_page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  (bitmap->storage.sb_page)->ldv_8768.ldv_8752.index = 0UL;
  tmp = kmap_atomic(bitmap->storage.sb_page);
  sb = (bitmap_super_t *)tmp;
  sb->magic = 1836345698U;
  sb->version = 4U;
  chunksize = (bitmap->mddev)->bitmap_info.chunksize;
  tmp___0 = ldv__builtin_expect(chunksize == 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared"),
                         "i" (541), "i" (12UL));
    ldv_30626: ;
    goto ldv_30626;
  } else {
  }
  tmp___1 = is_power_of_2(chunksize);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    __kunmap_atomic((void *)sb);
    printk("\vbitmap chunksize not a power of 2\n");
    return (-22);
  } else {
  }
  sb->chunksize = (unsigned int )chunksize;
  daemon_sleep = (bitmap->mddev)->bitmap_info.daemon_sleep;
  if ((daemon_sleep == 0UL || daemon_sleep == 0UL) || (long )daemon_sleep < 0L) {
    printk("\016Choosing daemon_sleep default (5 sec)\n");
    daemon_sleep = 1250UL;
  } else {
  }
  sb->daemon_sleep = (unsigned int )daemon_sleep;
  (bitmap->mddev)->bitmap_info.daemon_sleep = daemon_sleep;
  write_behind = (bitmap->mddev)->bitmap_info.max_write_behind;
  if (write_behind > 16383UL) {
    write_behind = 8191UL;
  } else {
  }
  sb->write_behind = (unsigned int )write_behind;
  (bitmap->mddev)->bitmap_info.max_write_behind = write_behind;
  sb->sync_size = (unsigned long long )(bitmap->mddev)->resync_max_sectors;
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sb->uuid), (void const *)(& (bitmap->mddev)->uuid),
                     __len);
  } else {
    __ret = memcpy((void *)(& sb->uuid), (void const *)(& (bitmap->mddev)->uuid),
                             __len);
  }
  set_bit(1U, (unsigned long volatile *)(& bitmap->flags));
  sb->state = (unsigned int )bitmap->flags;
  bitmap->events_cleared = (bitmap->mddev)->events;
  sb->events_cleared = (bitmap->mddev)->events;
  __kunmap_atomic((void *)sb);
  return (0);
}
}
static int bitmap_read_sb(struct bitmap *bitmap )
{
  char *reason ;
  bitmap_super_t *sb ;
  unsigned long chunksize ;
  unsigned long daemon_sleep ;
  unsigned long write_behind ;
  unsigned long long events ;
  unsigned long sectors_reserved ;
  int err ;
  struct page *sb_page ;
  loff_t isize ;
  loff_t tmp ;
  int bytes ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  int tmp___5 ;
  char *tmp___6 ;
  int tmp___7 ;
  {
  reason = 0;
  sectors_reserved = 0UL;
  err = -22;
  if ((unsigned long )bitmap->storage.file == (unsigned long )((struct file *)0) && (bitmap->mddev)->bitmap_info.offset == 0LL) {
    chunksize = 134217728UL;
    daemon_sleep = 1250UL;
    write_behind = 0UL;
    set_bit(1U, (unsigned long volatile *)(& bitmap->flags));
    err = 0;
    goto out_no_sb;
  } else {
  }
  sb_page = alloc_pages(208U, 0U);
  if ((unsigned long )sb_page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  bitmap->storage.sb_page = sb_page;
  if ((unsigned long )bitmap->storage.file != (unsigned long )((struct file *)0)) {
    tmp = i_size_read((struct inode const *)((bitmap->storage.file)->f_mapping)->host);
    isize = tmp;
    bytes = (int )(4096ULL < (unsigned long long )isize ? 4096ULL : (unsigned long long )isize);
    err = read_page(bitmap->storage.file, 0UL, bitmap, (unsigned long )bytes, sb_page);
  } else {
    err = read_sb_page(bitmap->mddev, (bitmap->mddev)->bitmap_info.offset, sb_page,
                       0UL, 256);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___0 = kmap_atomic(sb_page);
  sb = (bitmap_super_t *)tmp___0;
  chunksize = (unsigned long )sb->chunksize;
  daemon_sleep = (unsigned long )(sb->daemon_sleep * 250U);
  write_behind = (unsigned long )sb->write_behind;
  sectors_reserved = (unsigned long )sb->sectors_reserved;
  if (sb->magic != 1836345698U) {
    reason = (char *)"bad magic";
  } else
  if (sb->version <= 2U || sb->version > 4U) {
    reason = (char *)"unrecognized superblock version";
  } else
  if (chunksize <= 511UL) {
    reason = (char *)"bitmap chunksize too small";
  } else {
    tmp___1 = is_power_of_2(chunksize);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      reason = (char *)"bitmap chunksize not a power of 2";
    } else
    if (daemon_sleep == 0UL || (long )daemon_sleep < 0L) {
      reason = (char *)"daemon sleep period out of range";
    } else
    if (write_behind > 16383UL) {
      reason = (char *)"write-behind limit out of range (0 - 16383)";
    } else {
    }
  }
  if ((unsigned long )reason != (unsigned long )((char *)0)) {
    tmp___3 = bmname(bitmap);
    printk("\016%s: invalid bitmap file superblock: %s\n", tmp___3, reason);
    goto out;
  } else {
  }
  sb->sync_size = (unsigned long long )(bitmap->mddev)->resync_max_sectors;
  if ((bitmap->mddev)->persistent != 0) {
    tmp___5 = memcmp((void const *)(& sb->uuid), (void const *)(& (bitmap->mddev)->uuid),
                     16UL);
    if (tmp___5 != 0) {
      tmp___4 = bmname(bitmap);
      printk("\016%s: bitmap superblock UUID mismatch\n", tmp___4);
      goto out;
    } else {
    }
    events = sb->events;
    if ((bitmap->mddev)->events > events) {
      tmp___6 = bmname(bitmap);
      printk("\016%s: bitmap file is out of date (%llu < %llu) -- forcing full recovery\n",
             tmp___6, events, (bitmap->mddev)->events);
      set_bit(1U, (unsigned long volatile *)(& bitmap->flags));
    } else {
    }
  } else {
  }
  bitmap->flags = bitmap->flags | (unsigned long )sb->state;
  if (sb->version == 3U) {
    set_bit(15U, (unsigned long volatile *)(& bitmap->flags));
  } else {
  }
  bitmap->events_cleared = sb->events_cleared;
  err = 0;
  out:
  __kunmap_atomic((void *)sb);
  out_no_sb:
  tmp___7 = constant_test_bit(1U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp___7 != 0) {
    bitmap->events_cleared = (bitmap->mddev)->events;
  } else {
  }
  (bitmap->mddev)->bitmap_info.chunksize = chunksize;
  (bitmap->mddev)->bitmap_info.daemon_sleep = daemon_sleep;
  (bitmap->mddev)->bitmap_info.max_write_behind = write_behind;
  if ((bitmap->mddev)->bitmap_info.space == 0UL || (bitmap->mddev)->bitmap_info.space > sectors_reserved) {
    (bitmap->mddev)->bitmap_info.space = sectors_reserved;
  } else {
  }
  if (err != 0) {
    bitmap_print_sb(bitmap);
  } else {
  }
  return (err);
}
}
__inline static unsigned long file_page_index(struct bitmap_storage *store , unsigned long chunk )
{
  {
  if ((unsigned long )store->sb_page != (unsigned long )((struct page *)0)) {
    chunk = chunk + 2048UL;
  } else {
  }
  return (chunk >> 15);
}
}
__inline static unsigned long file_page_offset(struct bitmap_storage *store , unsigned long chunk )
{
  {
  if ((unsigned long )store->sb_page != (unsigned long )((struct page *)0)) {
    chunk = chunk + 2048UL;
  } else {
  }
  return (chunk & 32767UL);
}
}
__inline static struct page *filemap_get_page(struct bitmap_storage *store , unsigned long chunk )
{
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = file_page_index(store, chunk);
  if (tmp >= store->file_pages) {
    return (0);
  } else {
  }
  tmp___0 = file_page_index(store, chunk);
  tmp___1 = file_page_index(store, 0UL);
  return (*(store->filemap + (tmp___0 - tmp___1)));
}
}
static int bitmap_storage_alloc(struct bitmap_storage *store , unsigned long chunks ,
                                int with_super )
{
  int pnum ;
  unsigned long num_pages ;
  unsigned long bytes ;
  void *tmp ;
  unsigned long __y ;
  void *tmp___0 ;
  {
  bytes = (chunks + 7UL) / 8UL;
  if (with_super != 0) {
    bytes = bytes + 256UL;
  } else {
  }
  num_pages = (bytes + 4095UL) / 4096UL;
  tmp = kmalloc(num_pages * 8UL, 208U);
  store->filemap = (struct page **)tmp;
  if ((unsigned long )store->filemap == (unsigned long )((struct page **)0)) {
    return (-12);
  } else {
  }
  if (with_super != 0 && (unsigned long )store->sb_page == (unsigned long )((struct page *)0)) {
    store->sb_page = alloc_pages(32976U, 0U);
    if ((unsigned long )store->sb_page == (unsigned long )((struct page *)0)) {
      return (-12);
    } else {
    }
    (store->sb_page)->ldv_8768.ldv_8752.index = 0UL;
  } else {
  }
  pnum = 0;
  if ((unsigned long )store->sb_page != (unsigned long )((struct page *)0)) {
    *(store->filemap) = store->sb_page;
    pnum = 1;
  } else {
  }
  goto ldv_30667;
  ldv_30666:
  *(store->filemap + (unsigned long )pnum) = alloc_pages(32976U, 0U);
  if ((unsigned long )*(store->filemap + (unsigned long )pnum) == (unsigned long )((struct page *)0)) {
    store->file_pages = (unsigned long )pnum;
    return (-12);
  } else {
  }
  (*(store->filemap + (unsigned long )pnum))->ldv_8768.ldv_8752.index = (unsigned long )pnum;
  pnum = pnum + 1;
  ldv_30667: ;
  if ((unsigned long )pnum < num_pages) {
    goto ldv_30666;
  } else {
  }
  store->file_pages = (unsigned long )pnum;
  __y = 8UL;
  tmp___0 = kzalloc((((((num_pages + 2UL) * 4UL - 1UL) / 8UL + __y) - 1UL) / __y) * __y,
                    208U);
  store->filemap_attr = (unsigned long *)tmp___0;
  if ((unsigned long )store->filemap_attr == (unsigned long )((unsigned long *)0)) {
    return (-12);
  } else {
  }
  store->bytes = bytes;
  return (0);
}
}
static void bitmap_file_unmap(struct bitmap_storage *store )
{
  struct page **map ;
  struct page *sb_page ;
  int pages ;
  struct file *file ;
  int tmp ;
  struct inode *inode ;
  struct inode *tmp___0 ;
  {
  file = store->file;
  map = store->filemap;
  pages = (int )store->file_pages;
  sb_page = store->sb_page;
  goto ldv_30679;
  ldv_30678: ;
  if ((unsigned long )*(map + (unsigned long )pages) != (unsigned long )sb_page) {
    free_buffers(*(map + (unsigned long )pages));
  } else {
  }
  ldv_30679:
  tmp = pages;
  pages = pages - 1;
  if (tmp != 0) {
    goto ldv_30678;
  } else {
  }
  kfree((void const *)map);
  kfree((void const *)store->filemap_attr);
  if ((unsigned long )sb_page != (unsigned long )((struct page *)0)) {
    free_buffers(sb_page);
  } else {
  }
  if ((unsigned long )file != (unsigned long )((struct file *)0)) {
    tmp___0 = file_inode(file);
    inode = tmp___0;
    invalidate_mapping_pages(inode->i_mapping, 0UL, 0xffffffffffffffffUL);
    fput(file);
  } else {
  }
  return;
}
}
static void bitmap_file_kick(struct bitmap *bitmap )
{
  char *path ;
  char *ptr ;
  void *tmp ;
  long tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  {
  ptr = 0;
  tmp___3 = test_and_set_bit(1, (unsigned long volatile *)(& bitmap->flags));
  if (tmp___3 == 0) {
    bitmap_update_sb(bitmap);
    if ((unsigned long )bitmap->storage.file != (unsigned long )((struct file *)0)) {
      tmp = kmalloc(4096UL, 208U);
      path = (char *)tmp;
      if ((unsigned long )path != (unsigned long )((char *)0)) {
        ptr = d_path((struct path const *)(& (bitmap->storage.file)->f_path), path,
                     4096);
      } else {
      }
      tmp___0 = IS_ERR((void const *)ptr);
      tmp___1 = bmname(bitmap);
      printk("\t%s: kicking failed bitmap file %s from array!\n", tmp___1, tmp___0 == 0L ? ptr : (char *)"");
      kfree((void const *)path);
    } else {
      tmp___2 = bmname(bitmap);
      printk("\t%s: disabling internal bitmap due to errors\n", tmp___2);
    }
  } else {
  }
  return;
}
}
__inline static void set_page_attr(struct bitmap *bitmap , int pnum , enum bitmap_page_attr attr )
{
  {
  set_bit((unsigned int )(pnum << 2) + (unsigned int )attr, (unsigned long volatile *)bitmap->storage.filemap_attr);
  return;
}
}
__inline static void clear_page_attr(struct bitmap *bitmap , int pnum , enum bitmap_page_attr attr )
{
  {
  clear_bit((int )((unsigned int )(pnum << 2) + (unsigned int )attr), (unsigned long volatile *)bitmap->storage.filemap_attr);
  return;
}
}
__inline static int test_page_attr(struct bitmap *bitmap , int pnum , enum bitmap_page_attr attr )
{
  int tmp ;
  {
  tmp = variable_test_bit((int )((unsigned int )(pnum << 2) + (unsigned int )attr),
                          (unsigned long const volatile *)bitmap->storage.filemap_attr);
  return (tmp);
}
}
__inline static int test_and_clear_page_attr(struct bitmap *bitmap , int pnum , enum bitmap_page_attr attr )
{
  int tmp ;
  {
  tmp = test_and_clear_bit((int )((unsigned int )(pnum << 2) + (unsigned int )attr),
                           (unsigned long volatile *)bitmap->storage.filemap_attr);
  return (tmp);
}
}
static void bitmap_file_set_bit(struct bitmap *bitmap , sector_t block )
{
  unsigned long bit ;
  struct page *page ;
  void *kaddr ;
  unsigned long chunk ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  chunk = block >> (int )bitmap->counts.chunkshift;
  page = filemap_get_page(& bitmap->storage, chunk);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return;
  } else {
  }
  bit = file_page_offset(& bitmap->storage, chunk);
  kaddr = kmap_atomic(page);
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp != 0) {
    set_bit((unsigned int )bit, (unsigned long volatile *)kaddr);
  } else {
    set_bit_le((int )bit, kaddr);
  }
  __kunmap_atomic(kaddr);
  descriptor.modname = "md_mod";
  descriptor.function = "bitmap_file_set_bit";
  descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared";
  descriptor.format = "set file bit %lu page %lu\n";
  descriptor.lineno = 907U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "set file bit %lu page %lu\n", bit, page->ldv_8768.ldv_8752.index);
  } else {
  }
  set_page_attr(bitmap, (int )page->ldv_8768.ldv_8752.index, 0);
  return;
}
}
static void bitmap_file_clear_bit(struct bitmap *bitmap , sector_t block )
{
  unsigned long bit ;
  struct page *page ;
  void *paddr ;
  unsigned long chunk ;
  int tmp ;
  int tmp___0 ;
  {
  chunk = block >> (int )bitmap->counts.chunkshift;
  page = filemap_get_page(& bitmap->storage, chunk);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return;
  } else {
  }
  bit = file_page_offset(& bitmap->storage, chunk);
  paddr = kmap_atomic(page);
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp != 0) {
    clear_bit((int )bit, (unsigned long volatile *)paddr);
  } else {
    clear_bit_le((int )bit, paddr);
  }
  __kunmap_atomic(paddr);
  tmp___0 = test_page_attr(bitmap, (int )page->ldv_8768.ldv_8752.index, 2);
  if (tmp___0 == 0) {
    set_page_attr(bitmap, (int )page->ldv_8768.ldv_8752.index, 1);
    bitmap->allclean = 0;
  } else {
  }
  return;
}
}
void bitmap_unplug(struct bitmap *bitmap )
{
  unsigned long i ;
  int dirty ;
  int need_write ;
  int wait ;
  int tmp ;
  int tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  wait = 0;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0) || (unsigned long )bitmap->storage.filemap == (unsigned long )((struct page **)0)) {
    return;
  } else {
    tmp = constant_test_bit(1U, (unsigned long const volatile *)(& bitmap->flags));
    if (tmp != 0) {
      return;
    } else {
    }
  }
  i = 0UL;
  goto ldv_30737;
  ldv_30736: ;
  if ((unsigned long )bitmap->storage.filemap == (unsigned long )((struct page **)0)) {
    return;
  } else {
  }
  dirty = test_and_clear_page_attr(bitmap, (int )i, 0);
  need_write = test_and_clear_page_attr(bitmap, (int )i, 2);
  if (dirty != 0 || need_write != 0) {
    clear_page_attr(bitmap, (int )i, 1);
    write_page(bitmap, *(bitmap->storage.filemap + i), 0);
  } else {
  }
  if (dirty != 0) {
    wait = 1;
  } else {
  }
  i = i + 1UL;
  ldv_30737: ;
  if (bitmap->storage.file_pages > i) {
    goto ldv_30736;
  } else {
  }
  if (wait != 0) {
    if ((unsigned long )bitmap->storage.file != (unsigned long )((struct file *)0)) {
      tmp___0 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
      if (tmp___0 == 0) {
        goto ldv_30739;
      } else {
      }
      tmp___1 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___1;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_30742:
      prepare_to_wait(& bitmap->write_wait, & __wait, 2);
      tmp___2 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
      if (tmp___2 == 0) {
        goto ldv_30741;
      } else {
      }
      schedule();
      goto ldv_30742;
      ldv_30741:
      finish_wait(& bitmap->write_wait, & __wait);
      ldv_30739: ;
    } else {
      md_super_wait(bitmap->mddev);
    }
  } else {
  }
  tmp___3 = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp___3 != 0) {
    bitmap_file_kick(bitmap);
  } else {
  }
  return;
}
}
static void bitmap_set_memory_bits(struct bitmap *bitmap , sector_t offset , int needed ) ;
static int bitmap_init_from_disk(struct bitmap *bitmap , sector_t start )
{
  unsigned long i ;
  unsigned long chunks ;
  unsigned long index ;
  unsigned long oldindex ;
  unsigned long bit ;
  struct page *page ;
  unsigned long bit_cnt ;
  struct file *file ;
  unsigned long offset ;
  int outofdate ;
  int ret ;
  void *paddr ;
  struct bitmap_storage *store ;
  int needed ;
  char *tmp ;
  loff_t tmp___0 ;
  char *tmp___1 ;
  loff_t tmp___2 ;
  int b ;
  int count ;
  int tmp___3 ;
  int tmp___4 ;
  int needed___0 ;
  char *tmp___5 ;
  char *tmp___6 ;
  {
  page = 0;
  bit_cnt = 0UL;
  ret = -28;
  store = & bitmap->storage;
  chunks = bitmap->counts.chunks;
  file = store->file;
  if ((unsigned long )file == (unsigned long )((struct file *)0) && (bitmap->mddev)->bitmap_info.offset == 0LL) {
    store->filemap = 0;
    store->file_pages = 0UL;
    i = 0UL;
    goto ldv_30772;
    ldv_30771:
    needed = (i + 1UL) << (int )bitmap->counts.chunkshift >= start;
    bitmap_set_memory_bits(bitmap, i << (int )bitmap->counts.chunkshift, needed);
    i = i + 1UL;
    ldv_30772: ;
    if (i < chunks) {
      goto ldv_30771;
    } else {
    }
    return (0);
  } else {
  }
  outofdate = constant_test_bit(1U, (unsigned long const volatile *)(& bitmap->flags));
  if (outofdate != 0) {
    tmp = bmname(bitmap);
    printk("\016%s: bitmap file is out of date, doing full recovery\n", tmp);
  } else {
  }
  if ((unsigned long )file != (unsigned long )((struct file *)0)) {
    tmp___2 = i_size_read((struct inode const *)(file->f_mapping)->host);
    if ((unsigned long long )tmp___2 < (unsigned long long )store->bytes) {
      tmp___0 = i_size_read((struct inode const *)(file->f_mapping)->host);
      tmp___1 = bmname(bitmap);
      printk("\016%s: bitmap file too short %lu < %lu\n", tmp___1, (unsigned long )tmp___0,
             store->bytes);
      goto err;
    } else {
    }
  } else {
  }
  oldindex = 0xffffffffffffffffUL;
  offset = 0UL;
  if ((bitmap->mddev)->bitmap_info.external == 0) {
    offset = 256UL;
  } else {
  }
  i = 0UL;
  goto ldv_30779;
  ldv_30778:
  index = file_page_index(& bitmap->storage, i);
  bit = file_page_offset(& bitmap->storage, i);
  if (index != oldindex) {
    if (store->file_pages - 1UL == index) {
      count = (int )((unsigned int )store->bytes - (unsigned int )index * 4096U);
    } else {
      count = 4096;
    }
    page = *(store->filemap + index);
    if ((unsigned long )file != (unsigned long )((struct file *)0)) {
      ret = read_page(file, index, bitmap, (unsigned long )count, page);
    } else {
      ret = read_sb_page(bitmap->mddev, (bitmap->mddev)->bitmap_info.offset, page,
                         index, count);
    }
    if (ret != 0) {
      goto err;
    } else {
    }
    oldindex = index;
    if (outofdate != 0) {
      paddr = kmap_atomic(page);
      memset(paddr + offset, 255, 4096UL - offset);
      __kunmap_atomic(paddr);
      write_page(bitmap, page, 1);
      ret = -5;
      tmp___3 = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
      if (tmp___3 != 0) {
        goto err;
      } else {
      }
    } else {
    }
  } else {
  }
  paddr = kmap_atomic(page);
  tmp___4 = constant_test_bit(15U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp___4 != 0) {
    b = variable_test_bit((int )bit, (unsigned long const volatile *)paddr);
  } else {
    b = test_bit_le((int )bit, (void const *)paddr);
  }
  __kunmap_atomic(paddr);
  if (b != 0) {
    needed___0 = (i + 1UL) << (int )bitmap->counts.chunkshift >= start;
    bitmap_set_memory_bits(bitmap, i << (int )bitmap->counts.chunkshift, needed___0);
    bit_cnt = bit_cnt + 1UL;
  } else {
  }
  offset = 0UL;
  i = i + 1UL;
  ldv_30779: ;
  if (i < chunks) {
    goto ldv_30778;
  } else {
  }
  tmp___5 = bmname(bitmap);
  printk("\016%s: bitmap initialized from disk: read %lu pages, set %lu of %lu bits\n",
         tmp___5, store->file_pages, bit_cnt, chunks);
  return (0);
  err:
  tmp___6 = bmname(bitmap);
  printk("\016%s: bitmap initialisation failed: %d\n", tmp___6, ret);
  return (ret);
}
}
void bitmap_write_all(struct bitmap *bitmap )
{
  int i ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0) || (unsigned long )bitmap->storage.filemap == (unsigned long )((struct page **)0)) {
    return;
  } else {
  }
  if ((unsigned long )bitmap->storage.file != (unsigned long )((struct file *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_30786;
  ldv_30785:
  set_page_attr(bitmap, i, 2);
  i = i + 1;
  ldv_30786: ;
  if ((unsigned long )i < bitmap->storage.file_pages) {
    goto ldv_30785;
  } else {
  }
  bitmap->allclean = 0;
  return;
}
}
static void bitmap_count_page(struct bitmap_counts *bitmap , sector_t offset , int inc )
{
  sector_t chunk ;
  unsigned long page ;
  {
  chunk = offset >> (int )bitmap->chunkshift;
  page = chunk >> 11;
  (bitmap->bp + page)->count = (unsigned int )((int )(bitmap->bp + page)->count + inc);
  bitmap_checkfree(bitmap, page);
  return;
}
}
static void bitmap_set_pending(struct bitmap_counts *bitmap , sector_t offset )
{
  sector_t chunk ;
  unsigned long page ;
  struct bitmap_page *bp ;
  {
  chunk = offset >> (int )bitmap->chunkshift;
  page = chunk >> 11;
  bp = bitmap->bp + page;
  if ((unsigned int )*((unsigned char *)bp + 8UL) == 0U) {
    bp->pending = 1U;
  } else {
  }
  return;
}
}
static bitmap_counter_t *bitmap_get_counter(struct bitmap_counts *bitmap , sector_t offset ,
                                            sector_t *blocks , int create ) ;
void bitmap_daemon_work(struct mddev *mddev )
{
  struct bitmap *bitmap ;
  unsigned long j ;
  unsigned long nextpage ;
  sector_t blocks ;
  struct bitmap_counts *counts ;
  int tmp ;
  bitmap_super_t *sb ;
  void *tmp___0 ;
  bitmap_counter_t *bmc ;
  sector_t block ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ldv_mutex_lock_50(& mddev->bitmap_info.mutex);
  bitmap = mddev->bitmap;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    ldv_mutex_unlock_51(& mddev->bitmap_info.mutex);
    return;
  } else {
  }
  if ((long )jiffies - (long )(bitmap->daemon_lastrun + mddev->bitmap_info.daemon_sleep) < 0L) {
    goto done;
  } else {
  }
  bitmap->daemon_lastrun = jiffies;
  if (bitmap->allclean != 0) {
    (mddev->thread)->timeout = 9223372036854775807UL;
    goto done;
  } else {
  }
  bitmap->allclean = 1;
  j = 0UL;
  goto ldv_30823;
  ldv_30822:
  tmp = test_and_clear_page_attr(bitmap, (int )j, 1);
  if (tmp != 0) {
    set_page_attr(bitmap, (int )j, 2);
  } else {
  }
  j = j + 1UL;
  ldv_30823: ;
  if (bitmap->storage.file_pages > j) {
    goto ldv_30822;
  } else {
  }
  if (bitmap->need_sync != 0 && mddev->bitmap_info.external == 0) {
    bitmap->need_sync = 0;
    if ((unsigned long )bitmap->storage.filemap != (unsigned long )((struct page **)0)) {
      tmp___0 = kmap_atomic(bitmap->storage.sb_page);
      sb = (bitmap_super_t *)tmp___0;
      sb->events_cleared = bitmap->events_cleared;
      __kunmap_atomic((void *)sb);
      set_page_attr(bitmap, 0, 2);
    } else {
    }
  } else {
  }
  counts = & bitmap->counts;
  spin_lock_irq(& counts->lock);
  nextpage = 0UL;
  j = 0UL;
  goto ldv_30830;
  ldv_30829:
  block = j << (int )counts->chunkshift;
  if (j == nextpage) {
    nextpage = nextpage + 2048UL;
    if ((unsigned int )*((unsigned char *)(counts->bp + (j >> 11)) + 8UL) == 0U) {
      j = j | 2047UL;
      goto ldv_30828;
    } else {
    }
    (counts->bp + (j >> 11))->pending = 0U;
  } else {
  }
  bmc = bitmap_get_counter(counts, block, & blocks, 0);
  if ((unsigned long )bmc == (unsigned long )((bitmap_counter_t *)0)) {
    j = j | 2047UL;
    goto ldv_30828;
  } else {
  }
  if ((unsigned int )*bmc == 1U && bitmap->need_sync == 0) {
    *bmc = 0U;
    bitmap_count_page(counts, block, -1);
    bitmap_file_clear_bit(bitmap, block);
  } else
  if ((unsigned int )*bmc != 0U && (unsigned int )*bmc <= 2U) {
    *bmc = 1U;
    bitmap_set_pending(counts, block);
    bitmap->allclean = 0;
  } else {
  }
  ldv_30828:
  j = j + 1UL;
  ldv_30830: ;
  if (counts->chunks > j) {
    goto ldv_30829;
  } else {
  }
  spin_unlock_irq(& counts->lock);
  j = 0UL;
  goto ldv_30834;
  ldv_30833:
  tmp___1 = test_page_attr(bitmap, (int )j, 0);
  if (tmp___1 != 0) {
    goto ldv_30832;
  } else {
  }
  tmp___2 = test_and_clear_page_attr(bitmap, (int )j, 2);
  if (tmp___2 != 0) {
    write_page(bitmap, *(bitmap->storage.filemap + j), 0);
  } else {
  }
  j = j + 1UL;
  ldv_30834: ;
  if (bitmap->storage.file_pages > j) {
    tmp___3 = constant_test_bit(1U, (unsigned long const volatile *)(& bitmap->flags));
    if (tmp___3 == 0) {
      goto ldv_30833;
    } else {
      goto ldv_30832;
    }
  } else {
  }
  ldv_30832: ;
  done: ;
  if (bitmap->allclean == 0) {
    (mddev->thread)->timeout = mddev->bitmap_info.daemon_sleep;
  } else {
  }
  ldv_mutex_unlock_52(& mddev->bitmap_info.mutex);
  return;
}
}
static bitmap_counter_t *bitmap_get_counter(struct bitmap_counts *bitmap , sector_t offset ,
                                            sector_t *blocks , int create )
{
  sector_t chunk ;
  unsigned long page ;
  unsigned long pageoff ;
  sector_t csize ;
  int err ;
  int hi ;
  {
  chunk = offset >> (int )bitmap->chunkshift;
  page = chunk >> 11;
  pageoff = (chunk & 2047UL) << 1;
  err = bitmap_checkpage(bitmap, page, create);
  if ((unsigned int )*((unsigned char *)(bitmap->bp + page) + 8UL) != 0U || (unsigned long )(bitmap->bp + page)->map == (unsigned long )((char *)0)) {
    csize = 1UL << (int )((unsigned int )bitmap->chunkshift + 10U);
  } else {
    csize = 1UL << (int )bitmap->chunkshift;
  }
  *blocks = csize - ((csize - 1UL) & offset);
  if (err < 0) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(bitmap->bp + page) + 8UL) != 0U) {
    hi = pageoff > 2047UL;
    return ((bitmap_counter_t *)(& (bitmap->bp + page)->map) + (unsigned long )hi);
  } else {
    return ((bitmap_counter_t *)((bitmap->bp + page)->map + pageoff));
  }
}
}
int bitmap_startwrite(struct bitmap *bitmap , sector_t offset , unsigned long sectors ,
                      int behind )
{
  int bw ;
  struct _ddebug descriptor ;
  long tmp ;
  sector_t blocks ;
  bitmap_counter_t *bmc ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return (0);
  } else {
  }
  if (behind != 0) {
    atomic_inc(& bitmap->behind_writes);
    bw = atomic_read((atomic_t const *)(& bitmap->behind_writes));
    if ((unsigned long )bw > bitmap->behind_writes_used) {
      bitmap->behind_writes_used = (unsigned long )bw;
    } else {
    }
    descriptor.modname = "md_mod";
    descriptor.function = "bitmap_startwrite";
    descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared";
    descriptor.format = "inc write-behind count %d/%lu\n";
    descriptor.lineno = 1334U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "inc write-behind count %d/%lu\n", bw, (bitmap->mddev)->bitmap_info.max_write_behind);
    } else {
    }
  } else {
  }
  goto ldv_30859;
  ldv_30862:
  spin_lock_irq(& bitmap->counts.lock);
  bmc = bitmap_get_counter(& bitmap->counts, offset, & blocks, 1);
  if ((unsigned long )bmc == (unsigned long )((bitmap_counter_t *)0)) {
    spin_unlock_irq(& bitmap->counts.lock);
    return (0);
  } else {
  }
  tmp___1 = ldv__builtin_expect(((int )*bmc & 16383) == 16383, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___0;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    prepare_to_wait(& bitmap->overflow_wait, & __wait, 2);
    spin_unlock_irq(& bitmap->counts.lock);
    schedule();
    finish_wait(& bitmap->overflow_wait, & __wait);
    goto ldv_30859;
  } else {
  }
  switch ((int )*bmc) {
  case 0:
  bitmap_file_set_bit(bitmap, offset);
  bitmap_count_page(& bitmap->counts, offset, 1);
  case 1:
  *bmc = 2U;
  }
  *bmc = (bitmap_counter_t )((int )*bmc + 1);
  spin_unlock_irq(& bitmap->counts.lock);
  offset = offset + blocks;
  if (sectors > blocks) {
    sectors = sectors - blocks;
  } else {
    sectors = 0UL;
  }
  ldv_30859: ;
  if (sectors != 0UL) {
    goto ldv_30862;
  } else {
  }
  return (0);
}
}
void bitmap_endwrite(struct bitmap *bitmap , sector_t offset , unsigned long sectors ,
                     int success , int behind )
{
  int tmp ;
  struct _ddebug descriptor ;
  int tmp___0 ;
  long tmp___1 ;
  sector_t blocks ;
  unsigned long flags ;
  bitmap_counter_t *bmc ;
  raw_spinlock_t *tmp___2 ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  if (behind != 0) {
    tmp = atomic_dec_and_test(& bitmap->behind_writes);
    if (tmp != 0) {
      __wake_up(& bitmap->behind_wait, 3U, 1, 0);
    } else {
    }
    descriptor.modname = "md_mod";
    descriptor.function = "bitmap_endwrite";
    descriptor.filename = "/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared";
    descriptor.format = "dec write-behind count %d/%lu\n";
    descriptor.lineno = 1395U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = atomic_read((atomic_t const *)(& bitmap->behind_writes));
      __dynamic_pr_debug(& descriptor, "dec write-behind count %d/%lu\n", tmp___0,
                         (bitmap->mddev)->bitmap_info.max_write_behind);
    } else {
    }
  } else {
  }
  goto ldv_30889;
  ldv_30888:
  tmp___2 = spinlock_check(& bitmap->counts.lock);
  flags = _raw_spin_lock_irqsave(tmp___2);
  bmc = bitmap_get_counter(& bitmap->counts, offset, & blocks, 0);
  if ((unsigned long )bmc == (unsigned long )((bitmap_counter_t *)0)) {
    spin_unlock_irqrestore(& bitmap->counts.lock, flags);
    return;
  } else {
  }
  if ((success != 0 && (bitmap->mddev)->degraded == 0) && bitmap->events_cleared < (bitmap->mddev)->events) {
    bitmap->events_cleared = (bitmap->mddev)->events;
    bitmap->need_sync = 1;
    sysfs_notify_dirent_safe(bitmap->sysfs_can_clear);
  } else {
  }
  if (success == 0 && (int )((short )*bmc) >= 0) {
    *bmc = (bitmap_counter_t )((unsigned int )*bmc | 32768U);
  } else {
  }
  if (((int )*bmc & 16383) == 16383) {
    __wake_up(& bitmap->overflow_wait, 3U, 1, 0);
  } else {
  }
  *bmc = (bitmap_counter_t )((int )*bmc - 1);
  if ((unsigned int )*bmc <= 2U) {
    bitmap_set_pending(& bitmap->counts, offset);
    bitmap->allclean = 0;
  } else {
  }
  spin_unlock_irqrestore(& bitmap->counts.lock, flags);
  offset = offset + blocks;
  if (sectors > blocks) {
    sectors = sectors - blocks;
  } else {
    sectors = 0UL;
  }
  ldv_30889: ;
  if (sectors != 0UL) {
    goto ldv_30888;
  } else {
  }
  return;
}
}
static int __bitmap_start_sync(struct bitmap *bitmap , sector_t offset , sector_t *blocks ,
                               int degraded )
{
  bitmap_counter_t *bmc ;
  int rv ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    *blocks = 1024UL;
    return (1);
  } else {
  }
  spin_lock_irq(& bitmap->counts.lock);
  bmc = bitmap_get_counter(& bitmap->counts, offset, blocks, 0);
  rv = 0;
  if ((unsigned long )bmc != (unsigned long )((bitmap_counter_t *)0)) {
    if (((int )*bmc & 16384) != 0) {
      rv = 1;
    } else
    if ((int )((short )*bmc) < 0) {
      rv = 1;
      if (degraded == 0) {
        *bmc = (bitmap_counter_t )((unsigned int )*bmc | 16384U);
        *bmc = (unsigned int )*bmc & 32767U;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irq(& bitmap->counts.lock);
  return (rv);
}
}
int bitmap_start_sync(struct bitmap *bitmap , sector_t offset , sector_t *blocks ,
                      int degraded )
{
  int rv ;
  sector_t blocks1 ;
  int tmp ;
  {
  rv = 0;
  *blocks = 0UL;
  goto ldv_30918;
  ldv_30917:
  tmp = __bitmap_start_sync(bitmap, offset, & blocks1, degraded);
  rv = tmp | rv;
  offset = offset + blocks1;
  *blocks = *blocks + blocks1;
  ldv_30918: ;
  if (*blocks <= 7UL) {
    goto ldv_30917;
  } else {
  }
  return (rv);
}
}
void bitmap_end_sync(struct bitmap *bitmap , sector_t offset , sector_t *blocks ,
                     int aborted )
{
  bitmap_counter_t *bmc ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    *blocks = 1024UL;
    return;
  } else {
  }
  tmp = spinlock_check(& bitmap->counts.lock);
  flags = _raw_spin_lock_irqsave(tmp);
  bmc = bitmap_get_counter(& bitmap->counts, offset, blocks, 0);
  if ((unsigned long )bmc == (unsigned long )((bitmap_counter_t *)0)) {
    goto unlock;
  } else {
  }
  if (((int )*bmc & 16384) != 0) {
    *bmc = (unsigned int )*bmc & 49151U;
    if ((int )((short )*bmc) >= 0 && aborted != 0) {
      *bmc = (bitmap_counter_t )((unsigned int )*bmc | 32768U);
    } else
    if ((unsigned int )*bmc <= 2U) {
      bitmap_set_pending(& bitmap->counts, offset);
      bitmap->allclean = 0;
    } else {
    }
  } else {
  }
  unlock:
  spin_unlock_irqrestore(& bitmap->counts.lock, flags);
  return;
}
}
void bitmap_close_sync(struct bitmap *bitmap )
{
  sector_t sector ;
  sector_t blocks ;
  {
  sector = 0UL;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  goto ldv_30956;
  ldv_30955:
  bitmap_end_sync(bitmap, sector, & blocks, 0);
  sector = sector + blocks;
  ldv_30956: ;
  if ((bitmap->mddev)->resync_max_sectors > sector) {
    goto ldv_30955;
  } else {
  }
  return;
}
}
void bitmap_cond_end_sync(struct bitmap *bitmap , sector_t sector )
{
  sector_t s ;
  sector_t blocks ;
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  s = 0UL;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  if (sector == 0UL) {
    bitmap->last_end_sync = jiffies;
    return;
  } else {
  }
  if ((long )jiffies - (long )(bitmap->last_end_sync + (bitmap->mddev)->bitmap_info.daemon_sleep) < 0L) {
    return;
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& (bitmap->mddev)->recovery_active));
  if (tmp == 0) {
    goto ldv_30976;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_30979:
  prepare_to_wait(& (bitmap->mddev)->recovery_wait, & __wait, 2);
  tmp___1 = atomic_read((atomic_t const *)(& (bitmap->mddev)->recovery_active));
  if (tmp___1 == 0) {
    goto ldv_30978;
  } else {
  }
  schedule();
  goto ldv_30979;
  ldv_30978:
  finish_wait(& (bitmap->mddev)->recovery_wait, & __wait);
  ldv_30976:
  (bitmap->mddev)->curr_resync_completed = sector;
  set_bit(1U, (unsigned long volatile *)(& (bitmap->mddev)->flags));
  sector = (sector_t )(- (1ULL << (int )bitmap->counts.chunkshift) & (unsigned long long )sector);
  s = 0UL;
  goto ldv_30981;
  ldv_30980:
  bitmap_end_sync(bitmap, s, & blocks, 0);
  s = s + blocks;
  ldv_30981: ;
  if (s < sector && (bitmap->mddev)->resync_max_sectors > s) {
    goto ldv_30980;
  } else {
  }
  bitmap->last_end_sync = jiffies;
  sysfs_notify(& (bitmap->mddev)->kobj, 0, "sync_completed");
  return;
}
}
static void bitmap_set_memory_bits(struct bitmap *bitmap , sector_t offset , int needed )
{
  sector_t secs ;
  bitmap_counter_t *bmc ;
  {
  spin_lock_irq(& bitmap->counts.lock);
  bmc = bitmap_get_counter(& bitmap->counts, offset, & secs, 1);
  if ((unsigned long )bmc == (unsigned long )((bitmap_counter_t *)0)) {
    spin_unlock_irq(& bitmap->counts.lock);
    return;
  } else {
  }
  if ((unsigned int )*bmc == 0U) {
    *bmc = needed != 0 ? 32770U : 2U;
    bitmap_count_page(& bitmap->counts, offset, 1);
    bitmap_set_pending(& bitmap->counts, offset);
    bitmap->allclean = 0;
  } else {
  }
  spin_unlock_irq(& bitmap->counts.lock);
  return;
}
}
void bitmap_dirty_bits(struct bitmap *bitmap , unsigned long s , unsigned long e )
{
  unsigned long chunk ;
  sector_t sec ;
  {
  chunk = s;
  goto ldv_31005;
  ldv_31004:
  sec = chunk << (int )bitmap->counts.chunkshift;
  bitmap_set_memory_bits(bitmap, sec, 1);
  bitmap_file_set_bit(bitmap, sec);
  if ((bitmap->mddev)->recovery_cp > sec) {
    (bitmap->mddev)->recovery_cp = sec;
  } else {
  }
  chunk = chunk + 1UL;
  ldv_31005: ;
  if (chunk <= e) {
    goto ldv_31004;
  } else {
  }
  return;
}
}
void bitmap_flush(struct mddev *mddev )
{
  struct bitmap *bitmap ;
  long sleep ;
  {
  bitmap = mddev->bitmap;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  sleep = (long )(mddev->bitmap_info.daemon_sleep * 2UL);
  bitmap->daemon_lastrun = bitmap->daemon_lastrun - (unsigned long )sleep;
  bitmap_daemon_work(mddev);
  bitmap->daemon_lastrun = bitmap->daemon_lastrun - (unsigned long )sleep;
  bitmap_daemon_work(mddev);
  bitmap->daemon_lastrun = bitmap->daemon_lastrun - (unsigned long )sleep;
  bitmap_daemon_work(mddev);
  bitmap_update_sb(bitmap);
  return;
}
}
static void bitmap_free(struct bitmap *bitmap )
{
  unsigned long k ;
  unsigned long pages ;
  struct bitmap_page *bp ;
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& bitmap->pending_writes));
  if (tmp == 0) {
    goto ldv_31018;
  } else {
  }
  tmp___0 = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp___0;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_31021:
  prepare_to_wait(& bitmap->write_wait, & __wait, 2);
  tmp___1 = atomic_read((atomic_t const *)(& bitmap->pending_writes));
  if (tmp___1 == 0) {
    goto ldv_31020;
  } else {
  }
  schedule();
  goto ldv_31021;
  ldv_31020:
  finish_wait(& bitmap->write_wait, & __wait);
  ldv_31018:
  bitmap_file_unmap(& bitmap->storage);
  bp = bitmap->counts.bp;
  pages = bitmap->counts.pages;
  if ((unsigned long )bp != (unsigned long )((struct bitmap_page *)0)) {
    k = 0UL;
    goto ldv_31023;
    ldv_31022: ;
    if ((unsigned long )(bp + k)->map != (unsigned long )((char *)0) && (unsigned int )*((unsigned char *)(bp + k) + 8UL) == 0U) {
      kfree((void const *)(bp + k)->map);
    } else {
    }
    k = k + 1UL;
    ldv_31023: ;
    if (k < pages) {
      goto ldv_31022;
    } else {
    }
  } else {
  }
  kfree((void const *)bp);
  kfree((void const *)bitmap);
  return;
}
}
void bitmap_destroy(struct mddev *mddev )
{
  struct bitmap *bitmap ;
  {
  bitmap = mddev->bitmap;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  ldv_mutex_lock_53(& mddev->bitmap_info.mutex);
  mddev->bitmap = 0;
  ldv_mutex_unlock_54(& mddev->bitmap_info.mutex);
  if ((unsigned long )mddev->thread != (unsigned long )((struct md_thread *)0)) {
    (mddev->thread)->timeout = 9223372036854775807UL;
  } else {
  }
  if ((unsigned long )bitmap->sysfs_can_clear != (unsigned long )((struct sysfs_dirent *)0)) {
    sysfs_put(bitmap->sysfs_can_clear);
  } else {
  }
  bitmap_free(bitmap);
  return;
}
}
int bitmap_create(struct mddev *mddev )
{
  struct bitmap *bitmap ;
  sector_t blocks ;
  struct file *file ;
  int err ;
  struct sysfs_dirent *bm ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  int tmp___2 ;
  char *tmp___3 ;
  int tmp___4 ;
  {
  blocks = mddev->resync_max_sectors;
  file = mddev->bitmap_info.file;
  bm = 0;
  tmp = ldv__builtin_expect((unsigned long )file != (unsigned long )((struct file *)0),
                         0L);
  if (tmp != 0L) {
    tmp___0 = ldv__builtin_expect(mddev->bitmap_info.offset != 0LL, 0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/611/dscv_tempdir/dscv/ri/32_7a/drivers/md/bitmap.c.prepared"),
                           "i" (1698), "i" (12UL));
      ldv_31037: ;
      goto ldv_31037;
    } else {
    }
  } else {
  }
  tmp___1 = kzalloc(504UL, 208U);
  bitmap = (struct bitmap *)tmp___1;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return (-12);
  } else {
  }
  spinlock_check(& bitmap->counts.lock);
  __raw_spin_lock_init(& bitmap->counts.lock.ldv_6014.rlock, "&(&bitmap->counts.lock)->rlock",
                       & __key);
  atomic_set(& bitmap->pending_writes, 0);
  __init_waitqueue_head(& bitmap->write_wait, "&bitmap->write_wait", & __key___0);
  __init_waitqueue_head(& bitmap->overflow_wait, "&bitmap->overflow_wait", & __key___1);
  __init_waitqueue_head(& bitmap->behind_wait, "&bitmap->behind_wait", & __key___2);
  bitmap->mddev = mddev;
  if ((unsigned long )mddev->kobj.sd != (unsigned long )((struct sysfs_dirent *)0)) {
    bm = sysfs_get_dirent(mddev->kobj.sd, 0, (unsigned char const *)"bitmap");
  } else {
  }
  if ((unsigned long )bm != (unsigned long )((struct sysfs_dirent *)0)) {
    bitmap->sysfs_can_clear = sysfs_get_dirent(bm, 0, (unsigned char const *)"can_clear");
    sysfs_put(bm);
  } else {
    bitmap->sysfs_can_clear = 0;
  }
  bitmap->storage.file = file;
  if ((unsigned long )file != (unsigned long )((struct file *)0)) {
    get_file(file);
    vfs_fsync(file, 1);
  } else {
  }
  if (mddev->bitmap_info.external == 0) {
    tmp___2 = test_and_clear_bit(3, (unsigned long volatile *)(& mddev->flags));
    if (tmp___2 != 0) {
      err = bitmap_new_disk_sb(bitmap);
    } else {
      err = bitmap_read_sb(bitmap);
    }
  } else {
    err = 0;
    if (mddev->bitmap_info.chunksize == 0UL || mddev->bitmap_info.daemon_sleep == 0UL) {
      err = -22;
    } else {
    }
  }
  if (err != 0) {
    goto error;
  } else {
  }
  bitmap->daemon_lastrun = jiffies;
  err = bitmap_resize(bitmap, blocks, (int )mddev->bitmap_info.chunksize, 1);
  if (err != 0) {
    goto error;
  } else {
  }
  tmp___3 = bmname(bitmap);
  printk("\016created bitmap (%lu pages) for device %s\n", bitmap->counts.pages, tmp___3);
  mddev->bitmap = bitmap;
  tmp___4 = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
  return (tmp___4 != 0 ? -5 : 0);
  error:
  bitmap_free(bitmap);
  return (err);
}
}
int bitmap_load(struct mddev *mddev )
{
  int err ;
  sector_t start ;
  sector_t sector ;
  struct bitmap *bitmap ;
  sector_t blocks ;
  int tmp ;
  {
  err = 0;
  start = 0UL;
  sector = 0UL;
  bitmap = mddev->bitmap;
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    goto out;
  } else {
  }
  goto ldv_31053;
  ldv_31052:
  bitmap_start_sync(bitmap, sector, & blocks, 0);
  sector = sector + blocks;
  ldv_31053: ;
  if (mddev->resync_max_sectors > sector) {
    goto ldv_31052;
  } else {
  }
  bitmap_close_sync(bitmap);
  if (mddev->degraded == 0 || bitmap->events_cleared == mddev->events) {
    start = mddev->recovery_cp;
  } else {
  }
  ldv_mutex_lock_55(& mddev->bitmap_info.mutex);
  err = bitmap_init_from_disk(bitmap, start);
  ldv_mutex_unlock_56(& mddev->bitmap_info.mutex);
  if (err != 0) {
    goto out;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& bitmap->flags));
  set_bit(5U, (unsigned long volatile *)(& (bitmap->mddev)->recovery));
  (mddev->thread)->timeout = mddev->bitmap_info.daemon_sleep;
  md_wakeup_thread(mddev->thread);
  bitmap_update_sb(bitmap);
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& bitmap->flags));
  if (tmp != 0) {
    err = -5;
  } else {
  }
  out: ;
  return (err);
}
}
void bitmap_status(struct seq_file *seq , struct bitmap *bitmap )
{
  unsigned long chunk_kb ;
  struct bitmap_counts *counts ;
  {
  if ((unsigned long )bitmap == (unsigned long )((struct bitmap *)0)) {
    return;
  } else {
  }
  counts = & bitmap->counts;
  chunk_kb = (bitmap->mddev)->bitmap_info.chunksize >> 10;
  seq_printf(seq, "bitmap: %lu/%lu pages [%luKB], %lu%s chunk", counts->pages - counts->missing_pages,
             counts->pages, (counts->pages - counts->missing_pages) << 2, chunk_kb == 0UL ? (bitmap->mddev)->bitmap_info.chunksize : chunk_kb,
             chunk_kb != 0UL ? (char *)"KB" : (char *)"B");
  if ((unsigned long )bitmap->storage.file != (unsigned long )((struct file *)0)) {
    seq_printf(seq, ", file: ");
    seq_path(seq, (struct path const *)(& (bitmap->storage.file)->f_path), " \t\n");
  } else {
  }
  seq_printf(seq, "\n");
  return;
}
}
int bitmap_resize(struct bitmap *bitmap , sector_t blocks , int chunksize , int init )
{
  struct bitmap_storage store ;
  struct bitmap_counts old_counts ;
  unsigned long chunks ;
  sector_t block ;
  sector_t old_blocks ;
  sector_t new_blocks ;
  int chunkshift ;
  int ret ;
  long pages ;
  struct bitmap_page *new_bp ;
  long bytes ;
  long space ;
  unsigned long tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  unsigned long _min1 ;
  unsigned long _min2 ;
  bitmap_counter_t *bmc_old ;
  bitmap_counter_t *bmc_new ;
  int set ;
  sector_t end ;
  sector_t start ;
  int i ;
  bitmap_counter_t *bmc ;
  {
  ret = 0;
  if (chunksize == 0) {
    space = (long )(bitmap->mddev)->bitmap_info.space;
    if (space == 0L) {
      bytes = (long )((bitmap->counts.chunks + 7UL) / 8UL);
      if ((bitmap->mddev)->bitmap_info.external == 0) {
        bytes = (long )((unsigned long )bytes + 256UL);
      } else {
      }
      space = (bytes + 511L) / 512L;
      (bitmap->mddev)->bitmap_info.space = (unsigned long )space;
    } else {
    }
    chunkshift = (int )bitmap->counts.chunkshift;
    chunkshift = chunkshift - 1;
    ldv_31085:
    chunkshift = chunkshift + 1;
    chunks = (((sector_t )(1 << chunkshift) + blocks) - 1UL) / (sector_t )(1 << chunkshift);
    bytes = (long )((chunks + 7UL) / 8UL);
    if ((bitmap->mddev)->bitmap_info.external == 0) {
      bytes = (long )((unsigned long )bytes + 256UL);
    } else {
    }
    if (space << 9 < bytes) {
      goto ldv_31085;
    } else {
    }
  } else {
    tmp = ffz((unsigned long )(~ chunksize));
    chunkshift = (int )((unsigned int )tmp - 9U);
  }
  chunks = (((sector_t )(1 << chunkshift) + blocks) - 1UL) / (sector_t )(1 << chunkshift);
  memset((void *)(& store), 0, 48UL);
  if ((bitmap->mddev)->bitmap_info.offset != 0LL || (unsigned long )(bitmap->mddev)->bitmap_info.file != (unsigned long )((struct file *)0)) {
    ret = bitmap_storage_alloc(& store, chunks, (bitmap->mddev)->bitmap_info.external == 0);
  } else {
  }
  if (ret != 0) {
    goto err;
  } else {
  }
  pages = (long )((chunks + 2047UL) / 2048UL);
  tmp___0 = kzalloc((unsigned long )pages * 16UL, 208U);
  new_bp = (struct bitmap_page *)tmp___0;
  ret = -12;
  if ((unsigned long )new_bp == (unsigned long )((struct bitmap_page *)0)) {
    bitmap_file_unmap(& store);
    goto err;
  } else {
  }
  if (init == 0) {
    (*(((bitmap->mddev)->pers)->quiesce))(bitmap->mddev, 1);
  } else {
  }
  store.file = bitmap->storage.file;
  bitmap->storage.file = 0;
  if ((unsigned long )store.sb_page != (unsigned long )((struct page *)0) && (unsigned long )bitmap->storage.sb_page != (unsigned long )((struct page *)0)) {
    __len = 256UL;
    if (__len > 63UL) {
      tmp___1 = lowmem_page_address((struct page const *)bitmap->storage.sb_page);
      tmp___2 = lowmem_page_address((struct page const *)store.sb_page);
      __ret = memcpy(tmp___2, (void const *)tmp___1, __len);
    } else {
      tmp___3 = lowmem_page_address((struct page const *)bitmap->storage.sb_page);
      tmp___4 = lowmem_page_address((struct page const *)store.sb_page);
      __ret = memcpy(tmp___4, (void const *)tmp___3, __len);
    }
  } else {
  }
  bitmap_file_unmap(& bitmap->storage);
  bitmap->storage = store;
  old_counts = bitmap->counts;
  bitmap->counts.bp = new_bp;
  bitmap->counts.pages = (unsigned long )pages;
  bitmap->counts.missing_pages = (unsigned long )pages;
  bitmap->counts.chunkshift = (unsigned long )chunkshift;
  bitmap->counts.chunks = chunks;
  (bitmap->mddev)->bitmap_info.chunksize = (unsigned long )(1 << (chunkshift + 9));
  _min1 = old_counts.chunks << (int )old_counts.chunkshift;
  _min2 = chunks << chunkshift;
  blocks = _min1 < _min2 ? _min1 : _min2;
  spin_lock_irq(& bitmap->counts.lock);
  block = 0UL;
  goto ldv_31103;
  ldv_31102:
  bmc_old = bitmap_get_counter(& old_counts, block, & old_blocks, 0);
  set = (unsigned long )bmc_old != (unsigned long )((bitmap_counter_t *)0) && (int )((short )*bmc_old) < 0;
  if (set != 0) {
    bmc_new = bitmap_get_counter(& bitmap->counts, block, & new_blocks, 1);
    if ((unsigned int )*bmc_new == 0U) {
      end = block + new_blocks;
      start = block >> chunkshift;
      start = start << chunkshift;
      goto ldv_31100;
      ldv_31099:
      bitmap_file_set_bit(bitmap, block);
      start = (sector_t )(1 << chunkshift) + start;
      ldv_31100: ;
      if (start < end) {
        goto ldv_31099;
      } else {
      }
      *bmc_new = 2U;
      bitmap_count_page(& bitmap->counts, block, 1);
      bitmap_set_pending(& bitmap->counts, block);
    } else {
    }
    *bmc_new = (bitmap_counter_t )((unsigned int )*bmc_new | 32768U);
    if (new_blocks < old_blocks) {
      old_blocks = new_blocks;
    } else {
    }
  } else {
  }
  block = block + old_blocks;
  ldv_31103: ;
  if (block < blocks) {
    goto ldv_31102;
  } else {
  }
  if (init == 0) {
    goto ldv_31108;
    ldv_31107:
    bmc = bitmap_get_counter(& bitmap->counts, block, & new_blocks, 1);
    if ((unsigned long )bmc != (unsigned long )((bitmap_counter_t *)0)) {
      if ((unsigned int )*bmc == 0U) {
        *bmc = 32770U;
        bitmap_count_page(& bitmap->counts, block, 1);
        bitmap_set_pending(& bitmap->counts, block);
      } else {
      }
    } else {
    }
    block = block + new_blocks;
    ldv_31108: ;
    if (chunks << chunkshift > block) {
      goto ldv_31107;
    } else {
    }
    i = 0;
    goto ldv_31111;
    ldv_31110:
    set_page_attr(bitmap, i, 0);
    i = i + 1;
    ldv_31111: ;
    if ((unsigned long )i < bitmap->storage.file_pages) {
      goto ldv_31110;
    } else {
    }
  } else {
  }
  spin_unlock_irq(& bitmap->counts.lock);
  if (init == 0) {
    bitmap_unplug(bitmap);
    (*(((bitmap->mddev)->pers)->quiesce))(bitmap->mddev, 0);
  } else {
  }
  ret = 0;
  err: ;
  return (ret);
}
}
static ssize_t location_show(struct mddev *mddev , char *page )
{
  ssize_t len ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) {
    tmp = sprintf(page, "file");
    len = (ssize_t )tmp;
  } else
  if (mddev->bitmap_info.offset != 0LL) {
    tmp___0 = sprintf(page, "%+lld", mddev->bitmap_info.offset);
    len = (ssize_t )tmp___0;
  } else {
    tmp___1 = sprintf(page, "none");
    len = (ssize_t )tmp___1;
  }
  tmp___2 = sprintf(page + (unsigned long )len, "\n");
  len = (ssize_t )tmp___2 + len;
  return (len);
}
}
static ssize_t location_store(struct mddev *mddev , char const *buf , size_t len )
{
  int tmp ;
  struct file *f ;
  long long offset ;
  int rv ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
    if ((unsigned long )(mddev->pers)->quiesce == (unsigned long )((void (*)(struct mddev * ,
                                                                             int ))0)) {
      return (-16L);
    } else {
    }
    if (mddev->recovery != 0UL || (unsigned long )mddev->sync_thread != (unsigned long )((struct md_thread *)0)) {
      return (-16L);
    } else {
    }
  } else {
  }
  if (((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) || (unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) || mddev->bitmap_info.offset != 0LL) {
    tmp = strncmp(buf, "none", 4UL);
    if (tmp != 0) {
      return (-16L);
    } else {
    }
    if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
      (*((mddev->pers)->quiesce))(mddev, 1);
      bitmap_destroy(mddev);
      (*((mddev->pers)->quiesce))(mddev, 0);
    } else {
    }
    mddev->bitmap_info.offset = 0LL;
    if ((unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) {
      f = mddev->bitmap_info.file;
      mddev->bitmap_info.file = 0;
      restore_bitmap_write_access(f);
      fput(f);
    } else {
    }
  } else {
    tmp___1 = strncmp(buf, "none", 4UL);
    if (tmp___1 == 0) {
    } else {
      tmp___0 = strncmp(buf, "file:", 5UL);
      if (tmp___0 == 0) {
        return (-22L);
      } else {
        if ((int )((signed char )*buf) == 43) {
          rv = kstrtoll(buf + 1UL, 10U, & offset);
        } else {
          rv = kstrtoll(buf, 10U, & offset);
        }
        if (rv != 0) {
          return ((ssize_t )rv);
        } else {
        }
        if (offset == 0LL) {
          return (-22L);
        } else {
        }
        if ((mddev->bitmap_info.external == 0 && mddev->major_version == 0) && mddev->bitmap_info.default_offset != offset) {
          return (-22L);
        } else {
        }
        mddev->bitmap_info.offset = offset;
        if ((unsigned long )mddev->pers != (unsigned long )((struct md_personality *)0)) {
          (*((mddev->pers)->quiesce))(mddev, 1);
          rv = bitmap_create(mddev);
          if (rv == 0) {
            rv = bitmap_load(mddev);
          } else {
          }
          if (rv != 0) {
            bitmap_destroy(mddev);
            mddev->bitmap_info.offset = 0LL;
          } else {
          }
          (*((mddev->pers)->quiesce))(mddev, 0);
          if (rv != 0) {
            return ((ssize_t )rv);
          } else {
          }
        } else {
        }
      }
    }
  }
  if (mddev->external == 0) {
    set_bit(0U, (unsigned long volatile *)(& mddev->flags));
    md_wakeup_thread(mddev->thread);
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_location = {{"location", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & location_show, & location_store};
static ssize_t space_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%lu\n", mddev->bitmap_info.space);
  return ((ssize_t )tmp);
}
}
static ssize_t space_store(struct mddev *mddev , char const *buf , size_t len )
{
  unsigned long sectors ;
  int rv ;
  {
  rv = kstrtoul(buf, 10U, & sectors);
  if (rv != 0) {
    return ((ssize_t )rv);
  } else {
  }
  if (sectors == 0UL) {
    return (-22L);
  } else {
  }
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) && ((mddev->bitmap)->storage.bytes + 511UL) >> 9 > sectors) {
    return (-27L);
  } else {
  }
  mddev->bitmap_info.space = sectors;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_space = {{"space", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & space_show,
    & space_store};
static ssize_t timeout_show(struct mddev *mddev , char *page )
{
  ssize_t len ;
  unsigned long secs ;
  unsigned long jifs ;
  int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  secs = mddev->bitmap_info.daemon_sleep / 250UL;
  jifs = mddev->bitmap_info.daemon_sleep % 250UL;
  tmp = sprintf(page, "%lu", secs);
  len = (ssize_t )tmp;
  if (jifs != 0UL) {
    tmp___0 = jiffies_to_msecs(jifs);
    tmp___1 = sprintf(page + (unsigned long )len, ".%03u", tmp___0);
    len = (ssize_t )tmp___1 + len;
  } else {
  }
  tmp___2 = sprintf(page + (unsigned long )len, "\n");
  len = (ssize_t )tmp___2 + len;
  return (len);
}
}
static ssize_t timeout_store(struct mddev *mddev , char const *buf , size_t len )
{
  unsigned long timeout ;
  int rv ;
  int tmp ;
  {
  tmp = strict_strtoul_scaled(buf, & timeout, 4);
  rv = tmp;
  if (rv != 0) {
    return ((ssize_t )rv);
  } else {
  }
  if (timeout > 36893488147419102UL) {
    return (-22L);
  } else {
  }
  timeout = (timeout * 250UL) / 10000UL;
  if (timeout > 9223372036854775806UL) {
    timeout = 9223372036854775806UL;
  } else {
  }
  if (timeout == 0UL) {
    timeout = 1UL;
  } else {
  }
  mddev->bitmap_info.daemon_sleep = timeout;
  if ((unsigned long )mddev->thread != (unsigned long )((struct md_thread *)0)) {
    if ((mddev->thread)->timeout <= 9223372036854775806UL) {
      (mddev->thread)->timeout = timeout;
      md_wakeup_thread(mddev->thread);
    } else {
    }
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_timeout = {{"time_base", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & timeout_show, & timeout_store};
static ssize_t backlog_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%lu\n", mddev->bitmap_info.max_write_behind);
  return ((ssize_t )tmp);
}
}
static ssize_t backlog_store(struct mddev *mddev , char const *buf , size_t len )
{
  unsigned long backlog ;
  int rv ;
  int tmp ;
  {
  tmp = kstrtoul(buf, 10U, & backlog);
  rv = tmp;
  if (rv != 0) {
    return ((ssize_t )rv);
  } else {
  }
  if (backlog > 16383UL) {
    return (-22L);
  } else {
  }
  mddev->bitmap_info.max_write_behind = backlog;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_backlog = {{"backlog", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & backlog_show,
    & backlog_store};
static ssize_t chunksize_show(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%lu\n", mddev->bitmap_info.chunksize);
  return ((ssize_t )tmp);
}
}
static ssize_t chunksize_store(struct mddev *mddev , char const *buf , size_t len )
{
  int rv ;
  unsigned long csize ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    return (-16L);
  } else {
  }
  rv = kstrtoul(buf, 10U, & csize);
  if (rv != 0) {
    return ((ssize_t )rv);
  } else {
  }
  if (csize <= 511UL) {
    return (-22L);
  } else {
    tmp = is_power_of_2(csize);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (-22L);
    } else {
    }
  }
  mddev->bitmap_info.chunksize = csize;
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_chunksize = {{"chunksize", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & chunksize_show, & chunksize_store};
static ssize_t metadata_show___0(struct mddev *mddev , char *page )
{
  int tmp ;
  {
  tmp = sprintf(page, "%s\n", mddev->bitmap_info.external != 0 ? (char *)"external" : (char *)"internal");
  return ((ssize_t )tmp);
}
}
static ssize_t metadata_store___0(struct mddev *mddev , char const *buf , size_t len )
{
  int tmp ;
  int tmp___0 ;
  {
  if (((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0) || (unsigned long )mddev->bitmap_info.file != (unsigned long )((struct file *)0)) || mddev->bitmap_info.offset != 0LL) {
    return (-16L);
  } else {
  }
  tmp___0 = strncmp(buf, "external", 8UL);
  if (tmp___0 == 0) {
    mddev->bitmap_info.external = 1;
  } else {
    tmp = strncmp(buf, "internal", 8UL);
    if (tmp == 0) {
      mddev->bitmap_info.external = 0;
    } else {
      return (-22L);
    }
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_metadata = {{"metadata", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & metadata_show___0, & metadata_store___0};
static ssize_t can_clear_show(struct mddev *mddev , char *page )
{
  int len ;
  {
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    len = sprintf(page, "%s\n", (mddev->bitmap)->need_sync != 0 ? (char *)"false" : (char *)"true");
  } else {
    len = sprintf(page, "\n");
  }
  return ((ssize_t )len);
}
}
static ssize_t can_clear_store(struct mddev *mddev , char const *buf , size_t len )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
    return (-2L);
  } else {
  }
  tmp___0 = strncmp(buf, "false", 5UL);
  if (tmp___0 == 0) {
    (mddev->bitmap)->need_sync = 1;
  } else {
    tmp = strncmp(buf, "true", 4UL);
    if (tmp == 0) {
      if (mddev->degraded != 0) {
        return (-16L);
      } else {
      }
      (mddev->bitmap)->need_sync = 0;
    } else {
      return (-22L);
    }
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry bitmap_can_clear = {{"can_clear", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & can_clear_show, & can_clear_store};
static ssize_t behind_writes_used_show(struct mddev *mddev , char *page )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )mddev->bitmap == (unsigned long )((struct bitmap *)0)) {
    tmp = sprintf(page, "0\n");
    return ((ssize_t )tmp);
  } else {
  }
  tmp___0 = sprintf(page, "%lu\n", (mddev->bitmap)->behind_writes_used);
  return ((ssize_t )tmp___0);
}
}
static ssize_t behind_writes_used_reset(struct mddev *mddev , char const *buf ,
                                        size_t len )
{
  {
  if ((unsigned long )mddev->bitmap != (unsigned long )((struct bitmap *)0)) {
    (mddev->bitmap)->behind_writes_used = 0UL;
  } else {
  }
  return ((ssize_t )len);
}
}
static struct md_sysfs_entry max_backlog_used = {{"max_backlog_used", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & behind_writes_used_show, & behind_writes_used_reset};
static struct attribute *md_bitmap_attrs[9U] =
  { & bitmap_location.attr, & bitmap_space.attr, & bitmap_timeout.attr, & bitmap_backlog.attr,
        & bitmap_chunksize.attr, & bitmap_metadata.attr, & bitmap_can_clear.attr, & max_backlog_used.attr,
        0};
struct attribute_group md_bitmap_group = {"bitmap", 0, (struct attribute **)(& md_bitmap_attrs)};
void ldv_main1_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_31239;
  ldv_31238:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_31237;
  }
  ldv_31237: ;
  ldv_31239:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_31238;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: {reach_error();abort();}
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_disks_mutex ;
int ldv_mutex_lock_interruptible_disks_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_disks_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_disks_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_disks_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_disks_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_disks_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_disks_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_disks_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_disks_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_disks_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_disks_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_disks_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_disks_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_disks_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_disks_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mutex_of_NOT_ARG_SIGN ;
int ldv_mutex_lock_interruptible_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_NOT_ARG_SIGN = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_NOT_ARG_SIGN = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_NOT_ARG_SIGN = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_NOT_ARG_SIGN(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_NOT_ARG_SIGN(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_NOT_ARG_SIGN = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
static int ldv_mutex_open_mutex_of_mddev ;
int ldv_mutex_lock_interruptible_open_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_open_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_open_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_open_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_open_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_open_mutex_of_mddev = 2;
  return;
}
}
int ldv_mutex_trylock_open_mutex_of_mddev(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_open_mutex_of_mddev = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_open_mutex_of_mddev(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_open_mutex_of_mddev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_open_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_open_mutex_of_mddev == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_open_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_open_mutex_of_mddev == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_open_mutex_of_mddev = 1;
  return;
}
}
static int ldv_mutex_reconfig_mutex_of_mddev ;
int ldv_mutex_lock_interruptible_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_reconfig_mutex_of_mddev = 2;
  return;
}
}
int ldv_mutex_trylock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_reconfig_mutex_of_mddev(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_reconfig_mutex_of_mddev = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_reconfig_mutex_of_mddev(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_reconfig_mutex_of_mddev(struct mutex *lock )
{
  {
  if (ldv_mutex_reconfig_mutex_of_mddev == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_reconfig_mutex_of_mddev = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_disks_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_NOT_ARG_SIGN = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_open_mutex_of_mddev = 1;
  ldv_mutex_reconfig_mutex_of_mddev = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_disks_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_NOT_ARG_SIGN == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_open_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_reconfig_mutex_of_mddev == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
const char *__bdevname(dev_t arg0, char *arg1) {
  return ldv_malloc(sizeof(char));
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_add_rcu(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _atomic_dec_and_lock(atomic_t *arg0, spinlock_t *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int _cond_resched() {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_disk(struct gendisk *arg0) {
  return;
}
struct gendisk *alloc_disk(int arg0) {
  return ldv_malloc(sizeof(struct gendisk));
}
struct buffer_head *alloc_page_buffers(struct page *arg0, unsigned long arg1, int arg2) {
  return ldv_malloc(sizeof(struct buffer_head));
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int allow_signal(int arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int bd_link_disk_holder(struct block_device *arg0, struct gendisk *arg1) {
  return __VERIFIER_nondet_int();
}
void bd_unlink_disk_holder(struct block_device *arg0, struct gendisk *arg1) {
  return;
}
const char *bdevname(struct block_device *arg0, char *arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int bio_add_page(struct bio *arg0, struct page *arg1, unsigned int arg2, unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
void bio_advance(struct bio *arg0, unsigned int arg1) {
  return;
}
struct bio *bio_alloc_bioset(gfp_t arg0, int arg1, struct bio_set *arg2) {
  return ldv_malloc(sizeof(struct bio));
}
struct bio *bio_clone_bioset(struct bio *arg0, gfp_t arg1, struct bio_set *arg2) {
  return ldv_malloc(sizeof(struct bio));
}
void bio_endio(struct bio *arg0, int arg1) {
  return;
}
void bio_put(struct bio *arg0) {
  return;
}
struct bio_set *bioset_create(unsigned int arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct bio_set));
}
void bioset_free(struct bio_set *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int bioset_integrity_create(struct bio_set *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
struct request_queue *blk_alloc_queue(gfp_t arg0) {
  return ldv_malloc(sizeof(struct request_queue));
}
void blk_cleanup_queue(struct request_queue *arg0) {
  return;
}
void blk_finish_plug(struct blk_plug *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_integrity_compare(struct gendisk *arg0, struct gendisk *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int blk_integrity_register(struct gendisk *arg0, struct blk_integrity *arg1) {
  return __VERIFIER_nondet_int();
}
void blk_integrity_unregister(struct gendisk *arg0) {
  return;
}
void blk_queue_flush(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_make_request(struct request_queue *arg0, make_request_fn *arg1) {
  return;
}
void blk_register_region(dev_t arg0, unsigned long arg1, struct module *arg2, struct kobject *(*arg3)(dev_t , int *, void *), int (*arg4)(dev_t , void *), void *arg5) {
  return;
}
void blk_set_stacking_limits(struct queue_limits *arg0) {
  return;
}
void blk_start_plug(struct blk_plug *arg0) {
  return;
}
void blk_unregister_region(dev_t arg0, unsigned long arg1) {
  return;
}
struct block_device *blkdev_get_by_dev(dev_t arg0, fmode_t arg1, void *arg2) {
  return ldv_malloc(sizeof(struct block_device));
}
void blkdev_put(struct block_device *arg0, fmode_t arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
sector_t bmap(struct inode *arg0, sector_t arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int check_disk_change(struct block_device *arg0) {
  return __VERIFIER_nondet_int();
}
void complete(struct completion *arg0) {
  return;
}
char *d_path(const struct path *arg0, char *arg1, int arg2) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void del_gendisk(struct gendisk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
struct file *fget(unsigned int arg0) {
  return ldv_malloc(sizeof(struct file));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_signals(struct task_struct *arg0) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void fput(struct file *arg0) {
  return;
}
void free_buffer_head(struct buffer_head *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void invalidate_bdev(struct block_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int invalidate_mapping_pages(struct address_space *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int kobject_add(struct kobject *arg0, struct kobject *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void kobject_del(struct kobject *arg0) {
  return;
}
struct kobject *kobject_get(struct kobject *arg0) {
  return ldv_malloc(sizeof(struct kobject));
}
void kobject_init(struct kobject *arg0, struct kobj_type *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kobject_init_and_add(struct kobject *arg0, struct kobj_type *arg1, struct kobject *arg2, const char *arg3, ...) {
  return __VERIFIER_nondet_int();
}
void kobject_put(struct kobject *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kobject_uevent(struct kobject *arg0, enum kobject_action arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void module_put(struct module *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
void put_disk(struct gendisk *arg0) {
  return;
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rcu_is_cpu_idle() {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_blkdev(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
struct ctl_table_header *register_sysctl_table(struct ctl_table *arg0) {
  return ldv_malloc(sizeof(struct ctl_table_header));
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int revalidate_disk(struct gendisk *arg0) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_path(struct seq_file *arg0, const struct path *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void set_disk_ro(struct gendisk *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long long int simple_strtoull(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
char *skip_spaces(const char *arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int submit_bh(int arg0, struct buffer_head *arg1) {
  return __VERIFIER_nondet_int();
}
void submit_bio(int arg0, struct bio *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int sync_blockdev(struct block_device *arg0) {
  return __VERIFIER_nondet_int();
}
void synchronize_sched() {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
struct sysfs_dirent *sysfs_get_dirent(struct sysfs_dirent *arg0, const void *arg1, const unsigned char *arg2) {
  return ldv_malloc(0UL);
}
void sysfs_notify(struct kobject *arg0, const char *arg1, const char *arg2) {
  return;
}
void sysfs_notify_dirent(struct sysfs_dirent *arg0) {
  return;
}
void sysfs_put(struct sysfs_dirent *arg0) {
  return;
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void unregister_blkdev(unsigned int arg0, const char *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_sysctl_table(struct ctl_table_header *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vfs_fsync(struct file *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}