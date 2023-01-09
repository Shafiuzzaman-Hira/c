extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "43_2a_consumption_linux-3.16-rc1.tar.xz-43_2a-drivers--net--ethernet--dec--tulip--tulip.ko-entry_point.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
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
typedef signed char s8;
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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
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
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
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
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
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
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
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
struct __anonstruct_ldv_13760_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13762_128 {
   struct __anonstruct_ldv_13760_129 ldv_13760 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13762_128 ldv_13762 ;
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
struct cred;
struct inode;
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
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
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
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14668_154 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14668_154 ldv_14668 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
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
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
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
   struct bin_attribute **bin_attrs ;
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
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
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
   char *argv[3U] ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
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
struct exception_table_entry;
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
struct tracepoint;
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
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
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
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
struct ethtool_wolinfo;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
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
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_17891_162 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_17891_162 ldv_17891 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_163 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_163 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_23334_164 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_23334_164 ldv_23334 ;
   unsigned long nr_segs ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_166 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_166 sync_serial_settings;
struct __anonstruct_te1_settings_167 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_167 te1_settings;
struct __anonstruct_raw_hdlc_proto_168 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_168 raw_hdlc_proto;
struct __anonstruct_fr_proto_169 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_169 fr_proto;
struct __anonstruct_fr_proto_pvc_170 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_170 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_171 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_171 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_172 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_172 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_173 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_173 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_174 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_175 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_174 ifr_ifrn ;
   union __anonunion_ifr_ifru_175 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_24418_178 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_24419_177 {
   struct __anonstruct_ldv_24418_178 ldv_24418 ;
};
struct lockref {
   union __anonunion_ldv_24419_177 ldv_24419 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_24442_180 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_24444_179 {
   struct __anonstruct_ldv_24442_180 ldv_24442 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_24444_179 ldv_24444 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_181 {
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_181 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_24805_183 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_24807_182 {
   struct __anonstruct_ldv_24805_183 ldv_24805 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_24807_182 ldv_24807 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct kiocb;
struct pipe_inode_info;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_185 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_185 kprojid_t;
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
union __anonunion_ldv_25604_186 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_25604_186 ldv_25604 ;
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
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
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
union __anonunion_ldv_26019_189 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_26039_190 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_26056_191 {
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
   union __anonunion_ldv_26019_189 ldv_26019 ;
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
   union __anonunion_ldv_26039_190 ldv_26039 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_26056_191 ldv_26056 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_192 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_192 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
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
struct __anonstruct_afs_194 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_193 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_194 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_193 fl_u ;
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
   struct list_head s_mounts ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_195 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_195 sigset_t;
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
struct __anonstruct__kill_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_198 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_199 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_200 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_201 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_202 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_203 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_196 {
   int _pad[28U] ;
   struct __anonstruct__kill_197 _kill ;
   struct __anonstruct__timer_198 _timer ;
   struct __anonstruct__rt_199 _rt ;
   struct __anonstruct__sigchld_200 _sigchld ;
   struct __anonstruct__sigfault_201 _sigfault ;
   struct __anonstruct__sigpoll_202 _sigpoll ;
   struct __anonstruct__sigsys_203 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_196 _sifields ;
};
typedef struct siginfo siginfo_t;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_29018_206 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_29026_207 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_29039_209 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_29040_208 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_29039_209 ldv_29039 ;
};
union __anonunion_type_data_210 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_212 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_29055_211 {
   union __anonunion_payload_212 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_29018_206 ldv_29018 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_29026_207 ldv_29026 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_29040_208 ldv_29040 ;
   union __anonunion_type_data_210 type_data ;
   union __anonunion_ldv_29055_211 ldv_29055 ;
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
   struct list_head thread_head ;
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
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
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
   int depth ;
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
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_32685_231 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_32686_230 {
   u64 v64 ;
   struct __anonstruct_ldv_32685_231 ldv_32685 ;
};
struct skb_mstamp {
   union __anonunion_ldv_32686_230 ldv_32686 ;
};
union __anonunion_ldv_32705_232 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_32721_234 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_32722_233 {
   __wsum csum ;
   struct __anonstruct_ldv_32721_234 ldv_32721 ;
};
union __anonunion_ldv_32761_235 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_32767_236 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_32705_232 ldv_32705 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_32722_233 ldv_32722 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_32761_235 ldv_32761 ;
   __u32 secmark ;
   union __anonunion_ldv_32767_236 ldv_32767 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
   u16 max_dsize ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *base_cftypes ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_250 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_251 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_42020_252 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_250 adj_list ;
   struct __anonstruct_all_adj_list_251 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_42020_252 ldv_42020 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct tulip_rx_desc {
   __le32 status ;
   __le32 length ;
   __le32 buffer1 ;
   __le32 buffer2 ;
};
struct tulip_tx_desc {
   __le32 status ;
   __le32 length ;
   __le32 buffer1 ;
   __le32 buffer2 ;
};
struct medialeaf {
   u8 type ;
   u8 media ;
   unsigned char *leafdata ;
};
struct mediatable {
   u16 defaultmedia ;
   u8 leafcount ;
   u8 csr12dir ;
   unsigned char has_mii : 1 ;
   unsigned char has_nonmii : 1 ;
   unsigned char has_reset : 6 ;
   u32 csr15dir ;
   u32 csr15val ;
   struct medialeaf mleaf[0U] ;
};
struct ring_info {
   struct sk_buff *skb ;
   dma_addr_t mapping ;
};
struct tulip_private {
   char const *product_name ;
   struct net_device *next_module ;
   struct tulip_rx_desc *rx_ring ;
   struct tulip_tx_desc *tx_ring ;
   dma_addr_t rx_ring_dma ;
   dma_addr_t tx_ring_dma ;
   struct ring_info tx_buffers[32U] ;
   struct ring_info rx_buffers[128U] ;
   u16 setup_frame[96U] ;
   int chip_id ;
   int revision ;
   int flags ;
   struct napi_struct napi ;
   struct timer_list timer ;
   struct timer_list oom_timer ;
   u32 mc_filter[2U] ;
   spinlock_t lock ;
   spinlock_t mii_lock ;
   unsigned int cur_rx ;
   unsigned int cur_tx ;
   unsigned int dirty_rx ;
   unsigned int dirty_tx ;
   int mit_on ;
   unsigned char full_duplex : 1 ;
   unsigned char full_duplex_lock : 1 ;
   unsigned char fake_addr : 1 ;
   unsigned char default_port : 4 ;
   unsigned char media2 : 4 ;
   unsigned char medialock : 1 ;
   unsigned char mediasense : 1 ;
   unsigned char nway : 1 ;
   unsigned char nwayset : 1 ;
   unsigned char timeout_recovery : 1 ;
   unsigned int csr0 ;
   unsigned int csr6 ;
   unsigned char eeprom[512U] ;
   void (*link_change)(struct net_device * , int ) ;
   struct ethtool_wolinfo wolinfo ;
   u16 sym_advertise ;
   u16 mii_advertise ;
   u16 lpar ;
   u16 advertising[4U] ;
   signed char phys[4U] ;
   signed char mii_cnt ;
   struct mediatable *mtable ;
   int cur_index ;
   int saved_if_port ;
   struct pci_dev *pdev ;
   int ttimer ;
   int susp_rx ;
   unsigned long nir ;
   void *base_addr ;
   int csr12_shadow ;
   int pad0 ;
   struct work_struct media_work ;
   struct net_device *dev ;
};
struct eeprom_fixup {
   char *name ;
   unsigned char addr0 ;
   unsigned char addr1 ;
   unsigned char addr2 ;
   u16 newtable[32U] ;
};
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct tulip_chip_table {
   char *chip_name ;
   int io_size ;
   int valid_intrs ;
   int flags ;
   void (*media_timer)(unsigned long ) ;
   void (*media_task)(struct work_struct * ) ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
enum hrtimer_restart;
enum hrtimer_restart;
typedef int ldv_func_ret_type___4;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
enum hrtimer_restart;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern int printk(char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  {reach_error();}
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int ldv_timer_state_5 = 0;
int ldv_timer_state_3 = 0;
int ldv_irq_2_0 = 0;
int ldv_irq_2_2 = 0;
int ldv_timer_state_4 = 0;
int ldv_irq_2_1 = 0;
int ldv_irq_1_3 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
}
}
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
void tulip_parse_eeprom(struct net_device *dev ) ;
int tulip_read_eeprom(struct net_device *dev , int location , int addr_len ) ;
int tulip_debug ;
char const * const medianame[32U] ;
static struct eeprom_fixup eeprom_fixups[8U] =
  { {(char *)"Asante", 0U, 0U, 148U, {7680U, 0U, 2048U, 256U, 396U, 0U, 0U, 57464U,
                                       1U, 80U, 24U}},
        {(char *)"SMC9332DST", 0U, 0U, 192U, {7680U, 0U, 2048U, 1055U, 0U, 158U, 4U,
                                           158U, 2307U, 109U, 2309U, 109U}},
        {(char *)"Cogent EM100", 0U, 0U, 146U, {7680U, 0U, 2048U, 1599U, 263U, 32801U,
                                             264U, 32801U, 256U, 158U, 260U, 158U,
                                             259U, 109U, 261U, 109U}},
        {(char *)"Maxtech NX-110", 0U, 0U, 232U, {7680U, 0U, 2048U, 1299U, 4097U, 158U,
                                               0U, 158U, 4U, 158U, 771U, 109U, 773U,
                                               109U}},
        {(char *)"Accton EN1207", 0U, 0U, 232U, {7680U, 0U, 2048U, 1311U, 6913U, 0U,
                                              2816U, 158U, 2820U, 158U, 6915U, 109U,
                                              6917U, 109U}},
        {(char *)"NetWinder", 0U, 16U, 87U, {7680U, 0U, 11U, 36609U, 259U, 768U, 2081U,
                                          0U, 1U, 0U, 481U}},
        {(char *)"Cobalt Microserver", 0U, 16U, 224U, {7680U, 0U, 2048U, 32769U, 3U,
                                                    1024U, 2049U, 0U, 2048U, 0U, 30720U,
                                                    480U, 20480U, 6144U, 0U}},
        {(char *)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, {(unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0,
                                                                        (unsigned short)0}}};
static char const * const block_name[6U] = { "21140 non-MII", "21140 MII PHY", "21142 Serial PHY", "21142 MII PHY",
        "21143 SYM PHY", "21143 reset method"};
static void tulip_build_fake_mediatable(struct tulip_private *tp )
{
  {
  return;
}
}
void tulip_parse_eeprom(struct net_device *dev )
{
  struct mediatable *last_mediatable ;
  unsigned char *last_ee_data ;
  int controller_index ;
  struct tulip_private *tp ;
  void *tmp ;
  unsigned char *ee_data ;
  int i ;
  size_t __len ;
  void *__ret ;
  unsigned char *p ;
  unsigned char csr12dir ;
  int count ;
  int new_advertise ;
  struct mediatable *mtable ;
  u16 media ;
  u16 tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  void *tmp___3 ;
  struct mediatable *tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  u32 tmp___7 ;
  struct medialeaf *leaf ;
  int gpr_len ;
  int reset_len ;
  u16 tmp___8 ;
  u32 base15 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u16 tmp___12 ;
  u16 tmp___13 ;
  unsigned char *bp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ee_data = (unsigned char *)(& tp->eeprom);
  tp->mtable = (struct mediatable *)0;
  i = 0;
  goto ldv_43815;
  ldv_43814: ;
  if ((int )*(ee_data + (unsigned long )i) != (int )*(ee_data + (unsigned long )(i + 16))) {
    goto ldv_43813;
  } else {
  }
  i = i + 1;
  ldv_43815: ;
  if (i <= 7) {
    goto ldv_43814;
  } else {
  }
  ldv_43813: ;
  if (i > 7) {
    if ((unsigned int )*ee_data == 255U) {
      if ((unsigned long )last_mediatable != (unsigned long )((struct mediatable *)0)) {
        controller_index = controller_index + 1;
        printk("\016%s: Controller %d of multiport board\n", (char *)(& dev->name),
               controller_index);
        tp->mtable = last_mediatable;
        ee_data = last_ee_data;
        goto subsequent_board;
      } else {
        printk("\016%s: Missing EEPROM, this interface may not work correctly!\n",
               (char *)(& dev->name));
      }
      return;
    } else {
    }
    i = 0;
    goto ldv_43822;
    ldv_43821: ;
    if (((int )*(dev->dev_addr) == (int )eeprom_fixups[i].addr0 && (int )*(dev->dev_addr + 1UL) == (int )eeprom_fixups[i].addr1) && (int )*(dev->dev_addr + 2UL) == (int )eeprom_fixups[i].addr2) {
      if ((unsigned int )*(dev->dev_addr + 2UL) == 232U && (unsigned int )*(ee_data + 26UL) == 85U) {
        i = i + 1;
      } else {
      }
      __len = 64UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)ee_data + 26U, (void const *)(& eeprom_fixups[i].newtable),
                         __len);
      } else {
        __ret = memcpy((void *)ee_data + 26U, (void const *)(& eeprom_fixups[i].newtable),
                                 __len);
      }
      printk("\016%s: Old format EEPROM on \'%s\' board.  Using substitute media control info\n",
             (char *)(& dev->name), eeprom_fixups[i].name);
      goto ldv_43820;
    } else {
    }
    i = i + 1;
    ldv_43822: ;
    if ((unsigned long )eeprom_fixups[i].name != (unsigned long )((char *)0)) {
      goto ldv_43821;
    } else {
    }
    ldv_43820: ;
    if ((unsigned long )eeprom_fixups[i].name == (unsigned long )((char *)0)) {
      printk("\016%s: Old style EEPROM with no media selection information\n", (char *)(& dev->name));
      return;
    } else {
    }
  } else {
  }
  controller_index = 0;
  if ((unsigned int )*(ee_data + 19UL) > 1U) {
    last_ee_data = ee_data;
  } else {
  }
  subsequent_board: ;
  if ((unsigned int )*(ee_data + 27UL) == 0U) {
    tulip_build_fake_mediatable(tp);
  } else {
    p = ee_data + (unsigned long )*(ee_data + 27UL);
    csr12dir = 0U;
    new_advertise = 0;
    tmp___0 = get_unaligned_le16((void const *)p);
    media = tmp___0;
    p = p + 2UL;
    if ((tp->flags & 4) != 0) {
      tmp___1 = p;
      p = p + 1;
      csr12dir = *tmp___1;
    } else {
    }
    tmp___2 = p;
    p = p + 1;
    count = (int )*tmp___2;
    if (count == 0) {
      if (tulip_debug > 0) {
        printk("\f%s: no phy info, aborting mtable build\n", (char *)(& dev->name));
      } else {
      }
      return;
    } else {
    }
    tmp___3 = kmalloc(((unsigned long )count + 1UL) * 16UL, 208U);
    mtable = (struct mediatable *)tmp___3;
    if ((unsigned long )mtable == (unsigned long )((struct mediatable *)0)) {
      return;
    } else {
    }
    tmp___4 = mtable;
    tp->mtable = tmp___4;
    last_mediatable = tmp___4;
    mtable->defaultmedia = media;
    mtable->leafcount = (u8 )count;
    mtable->csr12dir = csr12dir;
    tmp___6 = 0U;
    mtable->has_reset = tmp___6;
    tmp___5 = tmp___6;
    mtable->has_mii = tmp___5;
    mtable->has_nonmii = tmp___5;
    tmp___7 = 0U;
    mtable->csr15val = tmp___7;
    mtable->csr15dir = tmp___7;
    printk("\016%s: EEPROM default media type %s\n", (char *)(& dev->name), ((int )media & 2048) == 0 ? medianame[(int )media & 31] : (char const * )"Autosense");
    i = 0;
    goto ldv_43844;
    ldv_43843:
    leaf = (struct medialeaf *)(& mtable->mleaf) + (unsigned long )i;
    if ((int )((signed char )*p) >= 0) {
      leaf->type = 0U;
      leaf->media = (unsigned int )*p & 63U;
      leaf->leafdata = p;
      if (((int )*(p + 2UL) & 97) == 1) {
        mtable->has_mii = 1U;
      } else {
      }
      p = p + 4UL;
    } else {
      leaf->type = *(p + 1UL);
      if ((unsigned int )*(p + 1UL) == 5U) {
        mtable->has_reset = (unsigned char )i;
        leaf->media = (unsigned int )*(p + 2UL) & 15U;
      } else
      if (tp->chip_id == 13 && (unsigned int )*(p + 1UL) == 128U) {
        mtable->leafcount = (u8 )((int )mtable->leafcount - 1);
        count = count - 1;
        i = i - 1;
        leaf->leafdata = p + 2UL;
        p = p + (((unsigned long )*p & 63UL) + 1UL);
        goto ldv_43830;
      } else
      if ((int )*(p + 1UL) & 1) {
        mtable->has_mii = 1U;
        leaf->media = 11U;
        gpr_len = (int )*(p + 3UL) * 2;
        reset_len = (int )*(p + (unsigned long )(gpr_len + 4)) * 2;
        tmp___8 = get_unaligned_le16((void const *)p + (unsigned long )((gpr_len + 7) + reset_len));
        new_advertise = (int )tmp___8 | new_advertise;
      } else {
        mtable->has_nonmii = 1U;
        leaf->media = (unsigned int )*(p + 2UL) & 31U;
        if (tp->chip_id == 13 && (unsigned int )leaf->media == 1U) {
          leaf->media = 3U;
        } else {
        }
        switch ((int )leaf->media) {
        case 0:
        new_advertise = new_advertise | 32;
        goto ldv_43834;
        case 4:
        new_advertise = new_advertise | 64;
        goto ldv_43834;
        case 3:
        new_advertise = new_advertise | 128;
        goto ldv_43834;
        case 5:
        new_advertise = new_advertise | 256;
        goto ldv_43834;
        case 6:
        new_advertise = new_advertise | 512;
        goto ldv_43834;
        }
        ldv_43834: ;
        if ((unsigned int )*(p + 1UL) == 2U && (unsigned int )leaf->media == 0U) {
          if (((int )*(p + 2UL) & 64) != 0) {
            tmp___9 = get_unaligned_le16((void const *)p + 7U);
            base15 = (u32 )tmp___9;
            tmp___10 = get_unaligned_le16((void const *)p + 9U);
            mtable->csr15dir = (u32 )((int )tmp___10 << 16) + base15;
            tmp___11 = get_unaligned_le16((void const *)p + 11U);
            mtable->csr15val = (u32 )((int )tmp___11 << 16) + base15;
          } else {
            tmp___12 = get_unaligned_le16((void const *)p + 3U);
            mtable->csr15dir = (u32 )((int )tmp___12 << 16);
            tmp___13 = get_unaligned_le16((void const *)p + 5U);
            mtable->csr15val = (u32 )((int )tmp___13 << 16);
          }
        } else {
        }
      }
      leaf->leafdata = p + 2UL;
      p = p + (((unsigned long )*p & 63UL) + 1UL);
    }
    if (tulip_debug > 1 && (unsigned int )leaf->media == 11U) {
      bp = leaf->leafdata;
      printk("\016%s: MII interface PHY %d, setup/reset sequences %d/%d long, capabilities %02x %02x\n",
             (char *)(& dev->name), (int )*bp, (int )*(bp + 1UL), (int )*(bp + (unsigned long )(((int )*(bp + 1UL) + 1) * 2)),
             (int )*(bp + (unsigned long )((int )*(bp + (unsigned long )(((int )*(bp + 1UL) + 1) * 2)) * 2 + 5)),
             (int )*(bp + (unsigned long )(((int )*(bp + (unsigned long )(((int )*(bp + 1UL) + 1) * 2)) + 2) * 2)));
    } else {
    }
    printk("\016%s: Index #%d - Media %s (#%d) described by a %s (%d) block\n", (char *)(& dev->name),
           i, medianame[(int )leaf->media & 15], (int )leaf->media, (unsigned int )leaf->type <= 5U ? block_name[(int )leaf->type] : (char const * )"<unknown>",
           (int )leaf->type);
    ldv_43830:
    i = i + 1;
    ldv_43844: ;
    if (i < count) {
      goto ldv_43843;
    } else {
    }
    if (new_advertise != 0) {
      tp->sym_advertise = (u16 )new_advertise;
    } else {
    }
  }
  return;
}
}
int tulip_read_eeprom(struct net_device *dev , int location , int addr_len )
{
  int i ;
  unsigned int retval ;
  struct tulip_private *tp ;
  void *tmp ;
  void *ee_addr ;
  int read_cmd ;
  short dataval ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  __u16 tmp___2 ;
  int tmp___3 ;
  {
  retval = 0U;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ee_addr = tp->base_addr + 72UL;
  read_cmd = (6 << addr_len) | location;
  if ((1 << addr_len) + -1 < location) {
    return (0);
  } else {
  }
  iowrite32(18432U, ee_addr);
  iowrite32(18433U, ee_addr);
  i = addr_len + 4;
  goto ldv_43858;
  ldv_43857:
  dataval = (read_cmd >> i) & 1 ? 4 : 0;
  iowrite32((u32 )((int )dataval | 18433), ee_addr);
  ioread32(ee_addr);
  iowrite32((u32 )((int )dataval | 18435), ee_addr);
  ioread32(ee_addr);
  tmp___0 = ioread32(ee_addr);
  retval = (retval << 1) | ((tmp___0 & 8U) != 0U ? 1U : 0U);
  i = i - 1;
  ldv_43858: ;
  if (i >= 0) {
    goto ldv_43857;
  } else {
  }
  iowrite32(18433U, ee_addr);
  ioread32(ee_addr);
  i = 16;
  goto ldv_43861;
  ldv_43860:
  iowrite32(18435U, ee_addr);
  ioread32(ee_addr);
  tmp___1 = ioread32(ee_addr);
  retval = (retval << 1) | ((tmp___1 & 8U) != 0U ? 1U : 0U);
  iowrite32(18433U, ee_addr);
  ioread32(ee_addr);
  i = i - 1;
  ldv_43861: ;
  if (i > 0) {
    goto ldv_43860;
  } else {
  }
  iowrite32(18432U, ee_addr);
  if ((tp->flags & 16384) != 0) {
    tmp___2 = __fswab16((int )((__u16 )retval));
    tmp___3 = (int )tmp___2;
  } else {
    tmp___3 = (int )retval;
  }
  return (tmp___3);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_43(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_47(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
extern unsigned long volatile jiffies ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_75(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_76(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_22401: ;
    goto ldv_22401;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops___0->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                                (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_22410: ;
    goto ldv_22410;
  } else {
  }
  if ((unsigned long )ops___0->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                        dma_addr_t ,
                                                                        size_t ,
                                                                        enum dma_data_direction ,
                                                                        struct dma_attrs * ))0)) {
    (*(ops___0->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    ldv_22460: ;
    goto ldv_22460;
  } else {
  }
  if ((unsigned long )ops___0->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                                 dma_addr_t ,
                                                                                 size_t ,
                                                                                 enum dma_data_direction ))0)) {
    (*(ops___0->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (115), "i" (12UL));
    ldv_22468: ;
    goto ldv_22468;
  } else {
  }
  if ((unsigned long )ops___0->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                    dma_addr_t ,
                                                                                    size_t ,
                                                                                    enum dma_data_direction ))0)) {
    (*(ops___0->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops___0->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                          dma_addr_t ))0)) {
    tmp___0 = (*(ops___0->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void consume_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_66(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_74(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_68(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_64(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_72(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_73(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
struct sk_buff *ldv___netdev_alloc_skb_69(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_70(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_71(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_69(dev, length, 32U);
  return (tmp);
}
}
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = memcpy((void *)skb->data, from, __len);
  return;
}
}
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
extern int netif_receive_skb(struct sk_buff * ) ;
unsigned int tulip_max_interrupt_work ;
int tulip_rx_copybreak ;
irqreturn_t tulip_interrupt(int irq , void *dev_instance ) ;
int tulip_refill_rx(struct net_device *dev ) ;
int tulip_poll(struct napi_struct *napi , int budget ) ;
struct tulip_chip_table tulip_tbl[15U] ;
void oom_timer(unsigned long data ) ;
__inline static void tulip_start_rxtx(struct tulip_private *tp )
{
  void *ioaddr ;
  {
  ioaddr = tp->base_addr;
  iowrite32(tp->csr6 | 8194U, ioaddr + 48UL);
  __asm__ volatile ("": : : "memory");
  ioread32(ioaddr + 48UL);
  return;
}
}
__inline static void tulip_stop_rxtx(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43800;
    ldv_43799:
    __const_udelay(42950UL);
    ldv_43800:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43799;
      } else {
        goto ldv_43801;
      }
    } else {
    }
    ldv_43801: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
static unsigned int mit_table[16U] =
  { 0U, 2148859904U, 2148859904U, 2150039552U,
        2151088128U, 2152267776U, 2153316352U, 2154364928U,
        2155544576U, 2156593152U, 2157772800U, 2158821376U,
        2159869952U, 2161049600U, 2162098176U, 2163277824U};
int tulip_refill_rx(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int entry ;
  int refilled ;
  struct sk_buff *skb ;
  dma_addr_t mapping ;
  struct sk_buff *tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  refilled = 0;
  goto ldv_43953;
  ldv_43952:
  entry = (int )tp->dirty_rx & 127;
  if ((unsigned long )tp->rx_buffers[entry].skb == (unsigned long )((struct sk_buff *)0)) {
    tmp___0 = netdev_alloc_skb(dev, 1540U);
    tp->rx_buffers[entry].skb = tmp___0;
    skb = tmp___0;
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto ldv_43951;
    } else {
    }
    mapping = pci_map_single(tp->pdev, (void *)skb->data, 1540UL, 2);
    tmp___1 = dma_mapping_error(& (tp->pdev)->dev, mapping);
    if (tmp___1 != 0) {
      consume_skb(skb);
      tp->rx_buffers[entry].skb = (struct sk_buff *)0;
      goto ldv_43951;
    } else {
    }
    tp->rx_buffers[entry].mapping = mapping;
    (tp->rx_ring + (unsigned long )entry)->buffer1 = (unsigned int )mapping;
    refilled = refilled + 1;
  } else {
  }
  (tp->rx_ring + (unsigned long )entry)->status = 2147483648U;
  tp->dirty_rx = tp->dirty_rx + 1U;
  ldv_43953: ;
  if (tp->cur_rx != tp->dirty_rx) {
    goto ldv_43952;
  } else {
  }
  ldv_43951: ;
  if (tp->chip_id == 4) {
    tmp___2 = ioread32(tp->base_addr + 40UL);
    if (((tmp___2 >> 17) & 7U) == 4U) {
      iowrite32(1U, tp->base_addr + 16UL);
    } else {
    }
  } else {
  }
  return (refilled);
}
}
void oom_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  napi_schedule(& tp->napi);
  return;
}
}
int tulip_poll(struct napi_struct *napi , int budget )
{
  struct tulip_private *tp ;
  struct napi_struct const *__mptr ;
  struct net_device *dev ;
  int entry ;
  int work_done ;
  int received ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  s32 status ;
  short pkt_len ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct sk_buff *skb ;
  char *temp ;
  unsigned char *tmp___4 ;
  unsigned int tmp___5 ;
  {
  __mptr = (struct napi_struct const *)napi;
  tp = (struct tulip_private *)__mptr + 0xfffffffffffff500UL;
  dev = tp->dev;
  entry = (int )tp->cur_rx & 127;
  work_done = 0;
  received = 0;
  if (budget > 127) {
    budget = budget - 1;
  } else {
  }
  if (tulip_debug > 4) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_poll";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
    descriptor.format = " In tulip_rx(), entry %d %08x\n";
    descriptor.lineno = 223U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, " In tulip_rx(), entry %d %08x\n",
                           entry, (tp->rx_ring + (unsigned long )entry)->status);
    } else {
    }
  } else {
  }
  ldv_43984:
  tmp___1 = ioread32(tp->base_addr + 40UL);
  if (tmp___1 == 4294967295U) {
    descriptor___0.modname = "tulip";
    descriptor___0.function = "tulip_poll";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
    descriptor___0.format = " In tulip_poll(), hardware disappeared\n";
    descriptor___0.lineno = 227U;
    descriptor___0.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, " In tulip_poll(), hardware disappeared\n");
    } else {
    }
    goto ldv_43973;
  } else {
  }
  iowrite32(192U, tp->base_addr + 40UL);
  goto ldv_43983;
  ldv_43982:
  status = (s32 )(tp->rx_ring + (unsigned long )entry)->status;
  if (tp->dirty_rx + 128U == tp->cur_rx) {
    goto ldv_43976;
  } else {
  }
  if (tulip_debug > 5) {
    descriptor___1.modname = "tulip";
    descriptor___1.function = "tulip_poll";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
    descriptor___1.format = "In tulip_rx(), entry %d %08x\n";
    descriptor___1.lineno = 244U;
    descriptor___1.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "In tulip_rx(), entry %d %08x\n",
                           entry, status);
    } else {
    }
  } else {
  }
  work_done = work_done + 1;
  if (work_done >= budget) {
    goto not_done;
  } else {
  }
  pkt_len = (short )(((unsigned int )((unsigned short )(status >> 16)) & 2047U) + 65532U);
  if ((status & 939543378) != 768 || (int )pkt_len > 1518) {
    if ((status & 939524880) != 768) {
      if ((status & 65535) != 32767) {
        if (tulip_debug > 1) {
          dev_warn((struct device const *)(& dev->dev), "Oversized Ethernet frame spanned multiple buffers, status %08x!\n",
                   status);
        } else {
        }
        dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
      } else {
      }
    } else {
      if (tulip_debug > 2) {
        descriptor___2.modname = "tulip";
        descriptor___2.function = "tulip_poll";
        descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
        descriptor___2.format = "Receive error, Rx status %08x\n";
        descriptor___2.lineno = 283U;
        descriptor___2.flags = 1U;
        tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev,
                               "Receive error, Rx status %08x\n", status);
        } else {
        }
      } else {
      }
      dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
      if ((int )pkt_len > 1518 || (status & 2048) != 0) {
        dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
      } else {
      }
      if ((status & 4) != 0) {
        dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
      } else {
      }
      if ((status & 2) != 0) {
        dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
      } else {
      }
      if (status & 1) {
        dev->stats.rx_fifo_errors = dev->stats.rx_fifo_errors + 1UL;
      } else {
      }
    }
  } else {
    if ((int )pkt_len < tulip_rx_copybreak) {
      skb = netdev_alloc_skb(dev, (unsigned int )((int )pkt_len + 2));
      if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
        skb_reserve(skb, 2);
        pci_dma_sync_single_for_cpu(tp->pdev, tp->rx_buffers[entry].mapping, (size_t )pkt_len,
                                    2);
        skb_copy_to_linear_data(skb, (void const *)(tp->rx_buffers[entry].skb)->data,
                                (unsigned int const )pkt_len);
        skb_put(skb, (unsigned int )pkt_len);
        pci_dma_sync_single_for_device(tp->pdev, tp->rx_buffers[entry].mapping, (size_t )pkt_len,
                                       2);
      } else {
        goto _L;
      }
    } else {
      _L:
      skb = tp->rx_buffers[entry].skb;
      tmp___4 = skb_put(skb, (unsigned int )pkt_len);
      temp = (char *)tmp___4;
      if (tp->rx_buffers[entry].mapping != (dma_addr_t )(tp->rx_ring + (unsigned long )entry)->buffer1) {
        dev_err((struct device const *)(& dev->dev), "Internal fault: The skbuff addresses do not match in tulip_rx: %08x vs. %08llx %p / %p\n",
                (tp->rx_ring + (unsigned long )entry)->buffer1, tp->rx_buffers[entry].mapping,
                skb->head, temp);
      } else {
      }
      pci_unmap_single(tp->pdev, tp->rx_buffers[entry].mapping, 1540UL, 2);
      tp->rx_buffers[entry].skb = (struct sk_buff *)0;
      tp->rx_buffers[entry].mapping = 0ULL;
    }
    skb->protocol = eth_type_trans(skb, dev);
    netif_receive_skb(skb);
    dev->stats.rx_packets = dev->stats.rx_packets + 1UL;
    dev->stats.rx_bytes = dev->stats.rx_bytes + (unsigned long )pkt_len;
  }
  received = received + 1;
  tp->cur_rx = tp->cur_rx + 1U;
  entry = (int )tp->cur_rx & 127;
  if (tp->cur_rx - tp->dirty_rx > 32U) {
    tulip_refill_rx(dev);
  } else {
  }
  ldv_43983: ;
  if ((int )(tp->rx_ring + (unsigned long )entry)->status >= 0) {
    goto ldv_43982;
  } else {
  }
  ldv_43976:
  tmp___5 = ioread32(tp->base_addr + 40UL);
  if ((tmp___5 & 64U) != 0U) {
    goto ldv_43984;
  } else {
  }
  ldv_43973: ;
  if ((tp->flags & 256) != 0) {
    if (received > 1) {
      if (tp->mit_on == 0) {
        tp->mit_on = 1;
        iowrite32(mit_table[15], tp->base_addr + 88UL);
      } else {
      }
    } else
    if (tp->mit_on != 0) {
      tp->mit_on = 0;
      iowrite32(0U, tp->base_addr + 88UL);
    } else {
    }
  } else {
  }
  tulip_refill_rx(dev);
  if ((unsigned long )tp->rx_buffers[tp->dirty_rx & 127U].skb == (unsigned long )((struct sk_buff *)0)) {
    goto oom;
  } else {
  }
  napi_complete(napi);
  iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs, tp->base_addr + 56UL);
  return (work_done);
  not_done: ;
  if (tp->cur_rx - tp->dirty_rx > 64U || (unsigned long )tp->rx_buffers[tp->dirty_rx & 127U].skb == (unsigned long )((struct sk_buff *)0)) {
    tulip_refill_rx(dev);
  } else {
  }
  if ((unsigned long )tp->rx_buffers[tp->dirty_rx & 127U].skb == (unsigned long )((struct sk_buff *)0)) {
    goto oom;
  } else {
  }
  return (work_done);
  oom:
  ldv_mod_timer_75(& tp->oom_timer, (unsigned long )jiffies + 1UL);
  napi_complete(napi);
  return (work_done);
}
}
__inline static unsigned int phy_interrupt(struct net_device *dev )
{
  {
  return (0U);
}
}
irqreturn_t tulip_interrupt(int irq , void *dev_instance )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr5 ;
  int missed ;
  int rx ;
  int tx ;
  int oi ;
  int maxrx ;
  int maxtx ;
  int maxoi ;
  int rxd ;
  unsigned int work_count ;
  unsigned int handled ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  unsigned int dirty_tx ;
  int entry ;
  int status ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  int error ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  struct _ddebug descriptor___1 ;
  unsigned int tmp___8 ;
  long tmp___9 ;
  {
  dev = (struct net_device *)dev_instance;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  rx = 0;
  tx = 0;
  oi = 0;
  maxrx = 128;
  maxtx = 32;
  maxoi = 32;
  rxd = 0;
  work_count = tulip_max_interrupt_work;
  handled = 0U;
  tmp___0 = ioread32(ioaddr + 40UL);
  csr5 = (int )tmp___0;
  if ((tp->flags & 8192) != 0) {
    handled = phy_interrupt(dev);
  } else {
  }
  if ((csr5 & 98304) == 0) {
    return (handled != 0U);
  } else {
  }
  tp->nir = tp->nir + 1UL;
  ldv_44019: ;
  if (rxd == 0 && (csr5 & 192) != 0) {
    rxd = rxd + 1;
    iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs & 4294966335U, ioaddr + 56UL);
    napi_schedule(& tp->napi);
    if ((csr5 & -99281) == 0) {
      goto ldv_44007;
    } else {
    }
  } else {
  }
  iowrite32((u32 )csr5 & 130879U, ioaddr + 40UL);
  if (tulip_debug > 4) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_interrupt";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
    descriptor.format = "interrupt  csr5=%#8.8x new csr5=%#8.8x\n";
    descriptor.lineno = 671U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = ioread32(ioaddr + 40UL);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "interrupt  csr5=%#8.8x new csr5=%#8.8x\n",
                           csr5, tmp___1);
    } else {
    }
  } else {
  }
  if ((csr5 & 2055) != 0) {
    spin_lock(& tp->lock);
    dirty_tx = tp->dirty_tx;
    goto ldv_44017;
    ldv_44016:
    entry = (int )dirty_tx & 31;
    status = (int )(tp->tx_ring + (unsigned long )entry)->status;
    if (status < 0) {
      goto ldv_44013;
    } else {
    }
    if ((unsigned long )tp->tx_buffers[entry].skb == (unsigned long )((struct sk_buff *)0)) {
      if (tp->tx_buffers[entry].mapping != 0ULL) {
        pci_unmap_single(tp->pdev, tp->tx_buffers[entry].mapping, 192UL, 1);
      } else {
      }
      goto ldv_44014;
    } else {
    }
    if ((status & 32768) != 0) {
      if (tulip_debug > 1) {
        descriptor___0.modname = "tulip";
        descriptor___0.function = "tulip_interrupt";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
        descriptor___0.format = "Transmit error, Tx status %08x\n";
        descriptor___0.lineno = 703U;
        descriptor___0.flags = 1U;
        tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___3 != 0L) {
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev,
                               "Transmit error, Tx status %08x\n", status);
        } else {
        }
      } else {
      }
      dev->stats.tx_errors = dev->stats.tx_errors + 1UL;
      if ((status & 16644) != 0) {
        dev->stats.tx_aborted_errors = dev->stats.tx_aborted_errors + 1UL;
      } else {
      }
      if ((status & 3072) != 0) {
        dev->stats.tx_carrier_errors = dev->stats.tx_carrier_errors + 1UL;
      } else {
      }
      if ((status & 512) != 0) {
        dev->stats.tx_window_errors = dev->stats.tx_window_errors + 1UL;
      } else {
      }
      if ((status & 2) != 0) {
        dev->stats.tx_fifo_errors = dev->stats.tx_fifo_errors + 1UL;
      } else {
      }
      if ((status & 128) != 0 && (unsigned int )*((unsigned char *)tp + 3428UL) == 0U) {
        dev->stats.tx_heartbeat_errors = dev->stats.tx_heartbeat_errors + 1UL;
      } else {
      }
    } else {
      dev->stats.tx_bytes = dev->stats.tx_bytes + (unsigned long )(tp->tx_buffers[entry].skb)->len;
      dev->stats.collisions = dev->stats.collisions + ((unsigned long )(status >> 3) & 15UL);
      dev->stats.tx_packets = dev->stats.tx_packets + 1UL;
    }
    pci_unmap_single(tp->pdev, tp->tx_buffers[entry].mapping, (size_t )(tp->tx_buffers[entry].skb)->len,
                     1);
    dev_kfree_skb_irq(tp->tx_buffers[entry].skb);
    tp->tx_buffers[entry].skb = (struct sk_buff *)0;
    tp->tx_buffers[entry].mapping = 0ULL;
    tx = tx + 1;
    ldv_44014:
    dirty_tx = dirty_tx + 1U;
    ldv_44017: ;
    if (tp->cur_tx != dirty_tx) {
      goto ldv_44016;
    } else {
    }
    ldv_44013: ;
    if (tp->cur_tx - dirty_tx > 32U) {
      dev_err((struct device const *)(& dev->dev), "Out-of-sync dirty pointer, %d vs. %d\n",
              dirty_tx, tp->cur_tx);
      dirty_tx = dirty_tx + 32U;
    } else {
    }
    if (tp->cur_tx - dirty_tx <= 29U) {
      netif_wake_queue(dev);
    } else {
    }
    tp->dirty_tx = dirty_tx;
    if ((csr5 & 2) != 0) {
      if (tulip_debug > 2) {
        tmp___4 = ioread32(ioaddr + 48UL);
        dev_warn((struct device const *)(& dev->dev), "The transmitter stopped.  CSR5 is %x, CSR6 %x, new CSR6 %x\n",
                 csr5, tmp___4, tp->csr6);
      } else {
      }
      tulip_restart_rxtx(tp);
    } else {
    }
    spin_unlock(& tp->lock);
  } else {
  }
  if ((csr5 & 32768) != 0) {
    if (csr5 == -1) {
      goto ldv_44007;
    } else {
    }
    if ((csr5 & 8) != 0) {
      dev->stats.tx_errors = dev->stats.tx_errors + 1UL;
    } else {
    }
    if ((csr5 & 32) != 0) {
      if ((tp->csr6 & 49152U) != 49152U) {
        tp->csr6 = tp->csr6 + 16384U;
      } else {
        tp->csr6 = tp->csr6 | 2097152U;
      }
      tulip_restart_rxtx(tp);
      iowrite32(0U, ioaddr + 8UL);
    } else {
    }
    if ((csr5 & 384) != 0) {
      if ((tp->flags & 2048) != 0) {
        iowrite32(tp->mc_filter[0], ioaddr + 172UL);
        iowrite32(tp->mc_filter[1], ioaddr + 176UL);
      } else {
      }
    } else {
    }
    if ((csr5 & 256) != 0) {
      tmp___5 = ioread32(ioaddr + 64UL);
      dev->stats.rx_missed_errors = dev->stats.rx_missed_errors + ((unsigned long )tmp___5 & 65535UL);
      dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
      tulip_start_rxtx(tp);
    } else {
    }
    if ((csr5 & 134221840) != 0) {
      if ((unsigned long )tp->link_change != (unsigned long )((void (*)(struct net_device * ,
                                                                        int ))0)) {
        (*(tp->link_change))(dev, csr5);
      } else {
      }
    } else {
    }
    if ((csr5 & 8192) != 0) {
      error = (csr5 >> 23) & 7;
      dev_err((struct device const *)(& dev->dev), "(%lu) System Error occurred (%d)\n",
              tp->nir, error);
    } else {
    }
    iowrite32(134281146U, ioaddr + 40UL);
    oi = oi + 1;
  } else {
  }
  if ((csr5 & 2048) != 0) {
    if (tulip_debug > 2) {
      dev_err((struct device const *)(& dev->dev), "Re-enabling interrupts, %08x\n",
              csr5);
    } else {
    }
    iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs, ioaddr + 56UL);
    tp->ttimer = 0;
    oi = oi + 1;
  } else {
  }
  if ((tx > maxtx || rx > maxrx) || oi > maxoi) {
    if (tulip_debug > 1) {
      dev_warn((struct device const *)(& dev->dev), "Too much work during an interrupt, csr5=0x%08x. (%lu) (%d,%d,%d)\n",
               csr5, tp->nir, tx, rx, oi);
    } else {
    }
    iowrite32(2147614719U, ioaddr + 40UL);
    if ((tp->flags & 256) != 0) {
      iowrite32(2334392320U, ioaddr + 88UL);
    } else
    if (tp->chip_id == 4) {
      iowrite32(0U, ioaddr + 56UL);
      ldv_mod_timer_76(& tp->timer, (unsigned long )jiffies + 5UL);
    } else {
      iowrite32((u32 )((~ csr5 & 91119) | 34816), ioaddr + 56UL);
      iowrite32(18U, ioaddr + 88UL);
    }
    goto ldv_44007;
  } else {
  }
  work_count = work_count - 1U;
  if (work_count == 0U) {
    goto ldv_44007;
  } else {
  }
  tmp___6 = ioread32(ioaddr + 40UL);
  csr5 = (int )tmp___6;
  if (rxd != 0) {
    csr5 = csr5 & -961;
  } else {
  }
  if ((csr5 & 14639) != 0) {
    goto ldv_44019;
  } else {
  }
  ldv_44007:
  tmp___7 = ioread32(ioaddr + 64UL);
  missed = (int )tmp___7 & 131071;
  if (missed != 0) {
    dev->stats.rx_dropped = dev->stats.rx_dropped + ((missed & 65536) == 0 ? (unsigned long )missed : 65536UL);
  } else {
  }
  if (tulip_debug > 4) {
    descriptor___1.modname = "tulip";
    descriptor___1.function = "tulip_interrupt";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/interrupt.o.c.prepared";
    descriptor___1.format = "exiting interrupt, csr5=%#04x\n";
    descriptor___1.lineno = 902U;
    descriptor___1.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = ioread32(ioaddr + 40UL);
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "exiting interrupt, csr5=%#04x\n",
                           tmp___8);
    } else {
    }
  } else {
  }
  return (1);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_43(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_47(lock);
  return;
}
}
int ldv_pskb_expand_head_64(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_66(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_68(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_69(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_70(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_71(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_72(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_73(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_74(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_75(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_76(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_96(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern int _dev_info(struct device const * , char const * , ...) ;
struct sk_buff *ldv_skb_clone_112(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_120(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_114(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_118(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_119(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_115(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_116(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static unsigned int mii_nway_result(unsigned int negotiated )
{
  unsigned int ret ;
  {
  if ((negotiated & 256U) != 0U) {
    ret = 256U;
  } else
  if ((negotiated & 512U) != 0U) {
    ret = 512U;
  } else
  if ((negotiated & 128U) != 0U) {
    ret = 128U;
  } else
  if ((negotiated & 64U) != 0U) {
    ret = 64U;
  } else {
    ret = 32U;
  }
  return (ret);
}
}
__inline static unsigned int mii_duplex(unsigned int duplex_lock , unsigned int negotiated )
{
  unsigned int tmp ;
  {
  if (duplex_lock != 0U) {
    return (1U);
  } else {
  }
  tmp = mii_nway_result(negotiated);
  if ((tmp & 320U) != 0U) {
    return (1U);
  } else {
  }
  return (0U);
}
}
u16 t21142_csr14[5U] ;
int tulip_mdio_read(struct net_device *dev , int phy_id , int location ) ;
void tulip_mdio_write(struct net_device *dev , int phy_id , int location , int val ) ;
void tulip_select_media(struct net_device *dev , int startup ) ;
int tulip_check_duplex(struct net_device *dev ) ;
void tulip_find_mii(struct net_device *dev , int board_idx ) ;
char const tulip_media_cap[32U] ;
__inline static void tulip_stop_rxtx___0(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43890;
    ldv_43889:
    __const_udelay(42950UL);
    ldv_43890:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43889;
      } else {
        goto ldv_43891;
      }
    } else {
    }
    ldv_43891: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx___0(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx___0(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
static unsigned char const comet_miireg2offset[32U] =
  { 180U, 184U, 188U, 192U,
        196U, 200U, 204U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 208U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 212U, 216U, 220U};
int tulip_mdio_read(struct net_device *dev , int phy_id , int location )
{
  struct tulip_private *tp ;
  void *tmp ;
  int i ;
  int read_cmd ;
  int retval ;
  void *ioaddr ;
  void *mdio_addr ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int dataval ;
  unsigned int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  read_cmd = (((phy_id & 31) << 5) | 251904) | location;
  retval = 0;
  ioaddr = tp->base_addr;
  mdio_addr = ioaddr + 72UL;
  if ((location & -32) != 0) {
    return (65535);
  } else {
  }
  if (tp->chip_id == 10 && phy_id == 30) {
    if ((unsigned int )((unsigned char )comet_miireg2offset[location]) != 0U) {
      tmp___0 = ioread32(ioaddr + (unsigned long )comet_miireg2offset[location]);
      return ((int )tmp___0);
    } else {
    }
    return (65535);
  } else {
  }
  ldv_spin_lock();
  if (tp->chip_id == 4) {
    iowrite32((u32 )(((phy_id << 23) + 1610743808) + (location << 18)), ioaddr + 160UL);
    ioread32(ioaddr + 160UL);
    ioread32(ioaddr + 160UL);
    i = 1000;
    goto ldv_43916;
    ldv_43915:
    __asm__ volatile ("": : : "memory");
    tmp___1 = ioread32(ioaddr + 160UL);
    retval = (int )tmp___1;
    if (retval >= 0) {
      goto ldv_43914;
    } else {
    }
    i = i - 1;
    ldv_43916: ;
    if (i >= 0) {
      goto ldv_43915;
    } else {
    }
    ldv_43914:
    spin_unlock_irqrestore(& tp->mii_lock, flags);
    return (retval & 65535);
  } else {
  }
  i = 32;
  goto ldv_43918;
  ldv_43917:
  iowrite32(131072U, mdio_addr);
  ioread32(mdio_addr);
  iowrite32(196608U, mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43918: ;
  if (i >= 0) {
    goto ldv_43917;
  } else {
  }
  i = 15;
  goto ldv_43922;
  ldv_43921:
  dataval = (read_cmd >> i) & 1 ? 131072 : 0;
  iowrite32((u32 )dataval, mdio_addr);
  ioread32(mdio_addr);
  iowrite32((u32 )(dataval | 65536), mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43922: ;
  if (i >= 0) {
    goto ldv_43921;
  } else {
  }
  i = 19;
  goto ldv_43925;
  ldv_43924:
  iowrite32(262144U, mdio_addr);
  ioread32(mdio_addr);
  tmp___2 = ioread32(mdio_addr);
  retval = (retval << 1) | ((tmp___2 & 524288U) != 0U);
  iowrite32(327680U, mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43925: ;
  if (i > 0) {
    goto ldv_43924;
  } else {
  }
  spin_unlock_irqrestore(& tp->mii_lock, flags);
  return ((retval >> 1) & 65535);
}
}
void tulip_mdio_write(struct net_device *dev , int phy_id , int location , int val )
{
  struct tulip_private *tp ;
  void *tmp ;
  int i ;
  int cmd ;
  void *ioaddr ;
  void *mdio_addr ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  int dataval ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  cmd = ((((phy_id & 31) << 23) | 1342308352) | (location << 18)) | (val & 65535);
  ioaddr = tp->base_addr;
  mdio_addr = ioaddr + 72UL;
  if ((location & -32) != 0) {
    return;
  } else {
  }
  if (tp->chip_id == 10 && phy_id == 30) {
    if ((unsigned int )((unsigned char )comet_miireg2offset[location]) != 0U) {
      iowrite32((u32 )val, ioaddr + (unsigned long )comet_miireg2offset[location]);
    } else {
    }
    return;
  } else {
  }
  ldv_spin_lock();
  if (tp->chip_id == 4) {
    iowrite32((u32 )cmd, ioaddr + 160UL);
    i = 1000;
    goto ldv_43941;
    ldv_43940:
    __asm__ volatile ("": : : "memory");
    tmp___0 = ioread32(ioaddr + 160UL);
    if ((int )tmp___0 >= 0) {
      goto ldv_43939;
    } else {
    }
    i = i - 1;
    ldv_43941: ;
    if (i >= 0) {
      goto ldv_43940;
    } else {
    }
    ldv_43939:
    spin_unlock_irqrestore(& tp->mii_lock, flags);
    return;
  } else {
  }
  i = 32;
  goto ldv_43943;
  ldv_43942:
  iowrite32(131072U, mdio_addr);
  ioread32(mdio_addr);
  iowrite32(196608U, mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43943: ;
  if (i >= 0) {
    goto ldv_43942;
  } else {
  }
  i = 31;
  goto ldv_43947;
  ldv_43946:
  dataval = (cmd >> i) & 1 ? 131072 : 0;
  iowrite32((u32 )dataval, mdio_addr);
  ioread32(mdio_addr);
  iowrite32((u32 )(dataval | 65536), mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43947: ;
  if (i >= 0) {
    goto ldv_43946;
  } else {
  }
  i = 2;
  goto ldv_43950;
  ldv_43949:
  iowrite32(262144U, mdio_addr);
  ioread32(mdio_addr);
  iowrite32(327680U, mdio_addr);
  ioread32(mdio_addr);
  i = i - 1;
  ldv_43950: ;
  if (i > 0) {
    goto ldv_43949;
  } else {
  }
  spin_unlock_irqrestore(& tp->mii_lock, flags);
  return;
}
}
void tulip_select_media(struct net_device *dev , int startup )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct mediatable *mtable ;
  u32 new_csr6 ;
  int i ;
  struct medialeaf *mleaf ;
  unsigned char *p ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u16 setup[5U] ;
  u32 csr13val ;
  u32 csr14val ;
  u32 csr15dir ;
  u32 csr15val ;
  struct medialeaf *rleaf ;
  unsigned char *rst ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  u16 tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  int phy_num ;
  int init_length ;
  u16 *misc_info ;
  u16 tmp_info ;
  u16 *init_sequence ;
  u16 *reset_sequence ;
  int reset_length ;
  int timeout ;
  u16 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u16 tmp___8 ;
  u8 *init_sequence___0 ;
  u8 *reset_sequence___0 ;
  int reset_length___0 ;
  int timeout___0 ;
  int tmp___9 ;
  int tmp___10 ;
  struct _ddebug descriptor___3 ;
  long tmp___11 ;
  u16 setup___0[5U] ;
  struct medialeaf *rleaf___0 ;
  unsigned char *rst___0 ;
  struct _ddebug descriptor___4 ;
  long tmp___12 ;
  u16 tmp___13 ;
  struct _ddebug descriptor___5 ;
  long tmp___14 ;
  struct _ddebug descriptor___6 ;
  unsigned int tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___7 ;
  unsigned int tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___8 ;
  unsigned int tmp___19 ;
  long tmp___20 ;
  unsigned long __ms ;
  unsigned long tmp___21 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  mtable = tp->mtable;
  if ((unsigned long )mtable != (unsigned long )((struct mediatable *)0)) {
    mleaf = (struct medialeaf *)(& mtable->mleaf) + (unsigned long )tp->cur_index;
    p = mleaf->leafdata;
    switch ((int )mleaf->type) {
    case 0: ;
    if (tulip_debug > 1) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_select_media";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor.format = "Using a 21140 non-MII transceiver with control setting %02x\n";
      descriptor.lineno = 273U;
      descriptor.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Using a 21140 non-MII transceiver with control setting %02x\n",
                             (int )*(p + 1UL));
      } else {
      }
    } else {
    }
    dev->if_port = *p;
    if (startup != 0) {
      iowrite32((u32 )((int )mtable->csr12dir | 256), ioaddr + 96UL);
    } else {
    }
    iowrite32((u32 )*(p + 1UL), ioaddr + 96UL);
    new_csr6 = (u32 )((((int )*(p + 2UL) & 113) << 18) | 33554432);
    goto ldv_43966;
    case 2: ;
    case 4:
    i = 0;
    goto ldv_43975;
    ldv_43974:
    setup[i] = get_unaligned_le16((void const *)(p + ((unsigned long )(i * 2) + 1UL)));
    i = i + 1;
    ldv_43975: ;
    if (i <= 4) {
      goto ldv_43974;
    } else {
    }
    dev->if_port = (unsigned int )*p & 31U;
    if (((int )tulip_media_cap[(int )dev->if_port] & 2) != 0) {
      tp->full_duplex = 1U;
    } else {
    }
    if (startup != 0 && (unsigned int )*((unsigned char *)mtable + 4UL) != 0U) {
      rleaf = (struct medialeaf *)(& mtable->mleaf) + (unsigned long )mtable->has_reset;
      rst = rleaf->leafdata;
      if (tulip_debug > 1) {
        descriptor___0.modname = "tulip";
        descriptor___0.function = "tulip_select_media";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
        descriptor___0.format = "Resetting the transceiver\n";
        descriptor___0.lineno = 294U;
        descriptor___0.flags = 1U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev,
                               "Resetting the transceiver\n");
        } else {
        }
      } else {
      }
      i = 0;
      goto ldv_43981;
      ldv_43980:
      tmp___2 = get_unaligned_le16((void const *)(rst + ((unsigned long )(i << 1) + 1UL)));
      iowrite32((u32 )((int )tmp___2 << 16), ioaddr + 120UL);
      i = i + 1;
      ldv_43981: ;
      if ((int )*rst > i) {
        goto ldv_43980;
      } else {
      }
    } else {
    }
    if (tulip_debug > 1) {
      descriptor___1.modname = "tulip";
      descriptor___1.function = "tulip_select_media";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor___1.format = "21143 non-MII %s transceiver control %04x/%04x\n";
      descriptor___1.lineno = 301U;
      descriptor___1.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "21143 non-MII %s transceiver control %04x/%04x\n",
                             medianame[(int )dev->if_port], (int )setup[0], (int )setup[1]);
      } else {
      }
    } else {
    }
    if (((int )*p & 64) != 0) {
      csr13val = (u32 )setup[0];
      csr14val = (u32 )setup[1];
      csr15dir = (u32 )(((int )setup[3] << 16) | (int )setup[2]);
      csr15val = (u32 )(((int )setup[4] << 16) | (int )setup[2]);
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(csr14val, ioaddr + 112UL);
      iowrite32(csr15dir, ioaddr + 120UL);
      iowrite32(csr15val, ioaddr + 120UL);
      iowrite32(csr13val, ioaddr + 104UL);
    } else {
      csr13val = 1U;
      csr14val = 0U;
      csr15dir = (u32 )(((int )setup[0] << 16) | 8);
      csr15val = (u32 )(((int )setup[1] << 16) | 8);
      if ((unsigned int )dev->if_port <= 4U) {
        csr14val = (u32 )t21142_csr14[(int )dev->if_port];
      } else {
      }
      if (startup != 0) {
        iowrite32(0U, ioaddr + 104UL);
        iowrite32(csr14val, ioaddr + 112UL);
      } else {
      }
      iowrite32(csr15dir, ioaddr + 120UL);
      iowrite32(csr15val, ioaddr + 120UL);
      if (startup != 0) {
        iowrite32(csr13val, ioaddr + 104UL);
      } else {
      }
    }
    if (tulip_debug > 1) {
      descriptor___2.modname = "tulip";
      descriptor___2.function = "tulip_select_media";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor___2.format = "Setting CSR15 to %08x/%08x\n";
      descriptor___2.lineno = 329U;
      descriptor___2.flags = 1U;
      tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev, "Setting CSR15 to %08x/%08x\n",
                             csr15dir, csr15val);
      } else {
      }
    } else {
    }
    if ((unsigned int )mleaf->type == 4U) {
      new_csr6 = (unsigned int )(((int )setup[2] & 113) << 18) | 2181169152U;
    } else {
      new_csr6 = 2185363456U;
    }
    goto ldv_43966;
    case 1: ;
    case 3:
    phy_num = (int )*p;
    init_length = (int )*(p + 1UL);
    dev->if_port = 11U;
    new_csr6 = 34471936U;
    if ((unsigned int )mleaf->type == 3U) {
      init_sequence = (u16 *)p + 2U;
      reset_sequence = (u16 *)p + ((unsigned long )init_length + 3UL);
      reset_length = (int )*(p + (unsigned long )((init_length + 1) * 2));
      misc_info = reset_sequence + (unsigned long )reset_length;
      if (startup != 0) {
        timeout = 10;
        i = 0;
        goto ldv_43996;
        ldv_43995:
        tmp___5 = get_unaligned_le16((void const *)reset_sequence + (unsigned long )i);
        iowrite32((u32 )((int )tmp___5 << 16), ioaddr + 120UL);
        i = i + 1;
        ldv_43996: ;
        if (i < reset_length) {
          goto ldv_43995;
        } else {
        }
        ioread32(ioaddr + 120UL);
        __const_udelay(2147500UL);
        goto ldv_43999;
        ldv_43998:
        __const_udelay(429500UL);
        ldv_43999:
        tmp___6 = timeout;
        timeout = timeout - 1;
        if (tmp___6 != 0) {
          tmp___7 = tulip_mdio_read(dev, phy_num, 0);
          if ((tmp___7 & 32768) != 0) {
            goto ldv_43998;
          } else {
            goto ldv_44000;
          }
        } else {
        }
        ldv_44000: ;
      } else {
      }
      i = 0;
      goto ldv_44002;
      ldv_44001:
      tmp___8 = get_unaligned_le16((void const *)init_sequence + (unsigned long )i);
      iowrite32((u32 )((int )tmp___8 << 16), ioaddr + 120UL);
      i = i + 1;
      ldv_44002: ;
      if (i < init_length) {
        goto ldv_44001;
      } else {
      }
      ioread32(ioaddr + 120UL);
    } else {
      init_sequence___0 = p + 2U;
      reset_sequence___0 = p + ((unsigned long )init_length + 3UL);
      reset_length___0 = (int )*(p + (unsigned long )(init_length + 2));
      misc_info = (u16 *)reset_sequence___0 + (unsigned long )reset_length___0;
      if (startup != 0) {
        timeout___0 = 10;
        iowrite32((u32 )((int )mtable->csr12dir | 256), ioaddr + 96UL);
        i = 0;
        goto ldv_44009;
        ldv_44008:
        iowrite32((u32 )*(reset_sequence___0 + (unsigned long )i), ioaddr + 96UL);
        i = i + 1;
        ldv_44009: ;
        if (i < reset_length___0) {
          goto ldv_44008;
        } else {
        }
        ioread32(ioaddr + 96UL);
        __const_udelay(2147500UL);
        goto ldv_44012;
        ldv_44011:
        __const_udelay(429500UL);
        ldv_44012:
        tmp___9 = timeout___0;
        timeout___0 = timeout___0 - 1;
        if (tmp___9 != 0) {
          tmp___10 = tulip_mdio_read(dev, phy_num, 0);
          if ((tmp___10 & 32768) != 0) {
            goto ldv_44011;
          } else {
            goto ldv_44013;
          }
        } else {
        }
        ldv_44013: ;
      } else {
      }
      i = 0;
      goto ldv_44015;
      ldv_44014:
      iowrite32((u32 )*(init_sequence___0 + (unsigned long )i), ioaddr + 96UL);
      i = i + 1;
      ldv_44015: ;
      if (i < init_length) {
        goto ldv_44014;
      } else {
      }
      ioread32(ioaddr + 96UL);
    }
    tmp_info = get_unaligned_le16((void const *)misc_info + 1U);
    if ((unsigned int )tmp_info != 0U) {
      tp->advertising[phy_num] = (u16 )((unsigned int )tmp_info | 1U);
    } else {
    }
    if ((unsigned int )tmp_info != 0U && startup <= 1) {
      if ((unsigned int )tp->mii_advertise == 0U) {
        tp->mii_advertise = tp->advertising[phy_num];
      } else {
      }
      if (tulip_debug > 1) {
        descriptor___3.modname = "tulip";
        descriptor___3.function = "tulip_select_media";
        descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
        descriptor___3.format = " Advertising %04x on MII %d\n";
        descriptor___3.lineno = 407U;
        descriptor___3.flags = 1U;
        tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
        if (tmp___11 != 0L) {
          __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)dev,
                               " Advertising %04x on MII %d\n", (int )tp->mii_advertise,
                               (int )tp->phys[phy_num]);
        } else {
        }
      } else {
      }
      tulip_mdio_write(dev, (int )tp->phys[phy_num], 4, (int )tp->mii_advertise);
    } else {
    }
    goto ldv_43966;
    case 5: ;
    case 6:
    new_csr6 = 0U;
    i = 0;
    goto ldv_44022;
    ldv_44021:
    setup___0[i] = get_unaligned_le16((void const *)(p + ((unsigned long )(i * 2) + 1UL)));
    i = i + 1;
    ldv_44022: ;
    if (i <= 4) {
      goto ldv_44021;
    } else {
    }
    if (startup != 0 && (unsigned int )*((unsigned char *)mtable + 4UL) != 0U) {
      rleaf___0 = (struct medialeaf *)(& mtable->mleaf) + (unsigned long )mtable->has_reset;
      rst___0 = rleaf___0->leafdata;
      if (tulip_debug > 1) {
        descriptor___4.modname = "tulip";
        descriptor___4.function = "tulip_select_media";
        descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
        descriptor___4.format = "Resetting the transceiver\n";
        descriptor___4.lineno = 424U;
        descriptor___4.flags = 1U;
        tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
        if (tmp___12 != 0L) {
          __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)dev,
                               "Resetting the transceiver\n");
        } else {
        }
      } else {
      }
      i = 0;
      goto ldv_44028;
      ldv_44027:
      tmp___13 = get_unaligned_le16((void const *)(rst___0 + ((unsigned long )(i << 1) + 1UL)));
      iowrite32((u32 )((int )tmp___13 << 16), ioaddr + 120UL);
      i = i + 1;
      ldv_44028: ;
      if ((int )*rst___0 > i) {
        goto ldv_44027;
      } else {
      }
    } else {
    }
    goto ldv_43966;
    default:
    descriptor___5.modname = "tulip";
    descriptor___5.function = "tulip_select_media";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
    descriptor___5.format = " Invalid media table selection %d\n";
    descriptor___5.lineno = 433U;
    descriptor___5.flags = 1U;
    tmp___14 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)dev, " Invalid media table selection %d\n",
                           (int )mleaf->type);
    } else {
    }
    new_csr6 = 34471936U;
    }
    ldv_43966: ;
    if (tulip_debug > 1) {
      descriptor___6.modname = "tulip";
      descriptor___6.function = "tulip_select_media";
      descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor___6.format = "Using media type %s, CSR12 is %02x\n";
      descriptor___6.lineno = 439U;
      descriptor___6.flags = 1U;
      tmp___16 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___16 != 0L) {
        tmp___15 = ioread32(ioaddr + 96UL);
        __dynamic_netdev_dbg(& descriptor___6, (struct net_device const *)dev, "Using media type %s, CSR12 is %02x\n",
                             medianame[(int )dev->if_port], tmp___15 & 255U);
      } else {
      }
    } else {
    }
  } else
  if (tp->chip_id == 4) {
    if (startup != 0 && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
      dev->if_port = (int )tp->mii_cnt != 0 ? 11U : 0U;
    } else {
    }
    if (tulip_debug > 1) {
      descriptor___7.modname = "tulip";
      descriptor___7.function = "tulip_select_media";
      descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor___7.format = "PNIC PHY status is %3.3x, media %s\n";
      descriptor___7.lineno = 446U;
      descriptor___7.flags = 1U;
      tmp___18 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
      if (tmp___18 != 0L) {
        tmp___17 = ioread32(ioaddr + 184UL);
        __dynamic_netdev_dbg(& descriptor___7, (struct net_device const *)dev, "PNIC PHY status is %3.3x, media %s\n",
                             tmp___17, medianame[(int )dev->if_port]);
      } else {
      }
    } else {
    }
    if ((int )tp->mii_cnt != 0) {
      new_csr6 = 2165047296U;
      iowrite32(1U, ioaddr + 120UL);
      iowrite32(33665146U, ioaddr + 184UL);
    } else
    if (startup != 0) {
      iowrite32(50U, ioaddr + 96UL);
      new_csr6 = 4325376U;
      iowrite32(110712U, ioaddr + 184UL);
      iowrite32(33665144U, ioaddr + 184UL);
    } else
    if ((unsigned int )dev->if_port == 3U || (unsigned int )dev->if_port == 5U) {
      iowrite32(51U, ioaddr + 96UL);
      new_csr6 = 25559040U;
      iowrite32(startup != 0 ? 33683560U : 129128U, ioaddr + 184UL);
    } else {
      iowrite32(50U, ioaddr + 96UL);
      new_csr6 = 4325376U;
      iowrite32(127096U, ioaddr + 184UL);
    }
  } else {
    if ((unsigned int )*((unsigned char *)tp + 3428UL) == 0U) {
      dev->if_port = (int )tp->mii_cnt != 0 ? 11U : 3U;
    } else {
    }
    if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
      new_csr6 = 34471936U;
    } else
    if (((int )tulip_media_cap[(int )dev->if_port] & 8) != 0) {
      new_csr6 = 42336256U;
    } else {
      new_csr6 = 59113472U;
    }
    if (tulip_debug > 1) {
      descriptor___8.modname = "tulip";
      descriptor___8.function = "tulip_select_media";
      descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
      descriptor___8.format = "No media description table, assuming %s transceiver, CSR12 %02x\n";
      descriptor___8.lineno = 479U;
      descriptor___8.flags = 1U;
      tmp___20 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
      if (tmp___20 != 0L) {
        tmp___19 = ioread32(ioaddr + 96UL);
        __dynamic_netdev_dbg(& descriptor___8, (struct net_device const *)dev, "No media description table, assuming %s transceiver, CSR12 %02x\n",
                             medianame[(int )dev->if_port], tmp___19);
      } else {
      }
    } else {
    }
  }
  tp->csr6 = ((tp->csr6 & 65023U) | new_csr6) | ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U ? 512U : 0U);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_44037;
    ldv_44036:
    __const_udelay(4295000UL);
    ldv_44037:
    tmp___21 = __ms;
    __ms = __ms - 1UL;
    if (tmp___21 != 0UL) {
      goto ldv_44036;
    } else {
    }
  }
  return;
}
}
int tulip_check_duplex(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  unsigned int bmsr ;
  unsigned int lpa ;
  unsigned int negotiated ;
  unsigned int new_csr6 ;
  int tmp___0 ;
  int tmp___1 ;
  int new_bmsr ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  tmp___0 = tulip_mdio_read(dev, (int )tp->phys[0], 1);
  bmsr = (unsigned int )tmp___0;
  tmp___1 = tulip_mdio_read(dev, (int )tp->phys[0], 5);
  lpa = (unsigned int )tmp___1;
  if (tulip_debug > 1) {
    _dev_info((struct device const *)(& dev->dev), "MII status %04x, Link partner report %04x\n",
              bmsr, lpa);
  } else {
  }
  if (bmsr == 65535U) {
    return (-2);
  } else {
  }
  if ((bmsr & 4U) == 0U) {
    tmp___2 = tulip_mdio_read(dev, (int )tp->phys[0], 1);
    new_bmsr = tmp___2;
    if ((new_bmsr & 4) == 0) {
      if (tulip_debug > 1) {
        _dev_info((struct device const *)(& dev->dev), "No link beat on the MII interface, status %04x\n",
                  new_bmsr);
      } else {
      }
      return (-1);
    } else {
    }
  } else {
  }
  negotiated = (unsigned int )tp->advertising[0] & lpa;
  tmp___3 = mii_duplex((unsigned int )tp->full_duplex_lock, negotiated);
  tp->full_duplex = (unsigned char )tmp___3;
  new_csr6 = tp->csr6;
  if ((negotiated & 896U) != 0U) {
    new_csr6 = new_csr6 & 4290772991U;
  } else {
    new_csr6 = new_csr6 | 4194304U;
  }
  if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
    new_csr6 = new_csr6 | 512U;
  } else {
    new_csr6 = new_csr6 & 4294966783U;
  }
  if (tp->csr6 != new_csr6) {
    tp->csr6 = new_csr6;
    tulip_restart_rxtx___0(tp);
    if (tulip_debug > 0) {
      _dev_info((struct device const *)(& dev->dev), "Setting %s-duplex based on MII#%d link partner capability of %04x\n",
                (unsigned int )*((unsigned char *)tp + 3428UL) != 0U ? (char *)"full" : (char *)"half",
                (int )tp->phys[0], lpa);
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
void tulip_find_mii(struct net_device *dev , int board_idx )
{
  struct tulip_private *tp ;
  void *tmp ;
  int phyn ;
  int phy_idx ;
  int mii_reg0 ;
  int mii_advert ;
  unsigned int to_advert ;
  unsigned int new_bmcr ;
  unsigned int ane_switch ;
  int phy ;
  int mii_status ;
  int tmp___0 ;
  unsigned int tmpadv ;
  int tmp___1 ;
  u16 tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  phy_idx = 0;
  phyn = 1;
  goto ldv_44069;
  ldv_44068:
  phy = phyn & 31;
  tmp___0 = tulip_mdio_read(dev, phy, 1);
  mii_status = tmp___0;
  if ((mii_status & 33537) == 32769 || ((mii_status & 32768) == 0 && (mii_status & 30720) != 0)) {
  } else {
    goto ldv_44064;
  }
  mii_reg0 = tulip_mdio_read(dev, phy, 0);
  mii_advert = tulip_mdio_read(dev, phy, 4);
  ane_switch = 0U;
  if ((mii_advert & 480) == 0) {
    tmp___1 = tulip_mdio_read(dev, phy, 1);
    tmpadv = (unsigned int )tmp___1;
    mii_advert = (int )(((tmpadv >> 6) & 992U) | 1U);
  } else {
  }
  if ((unsigned int )tp->mii_advertise != 0U) {
    to_advert = (unsigned int )tp->mii_advertise;
    tp->advertising[phy_idx] = (u16 )to_advert;
  } else
  if ((unsigned int )tp->advertising[phy_idx] != 0U) {
    to_advert = (unsigned int )tp->advertising[phy_idx];
  } else {
    to_advert = (unsigned int )mii_advert;
    tmp___2 = (u16 )to_advert;
    tp->mii_advertise = tmp___2;
    tp->advertising[phy_idx] = tmp___2;
  }
  tmp___3 = phy_idx;
  phy_idx = phy_idx + 1;
  tp->phys[tmp___3] = (signed char )phy;
  printk("\016tulip%d:  MII transceiver #%d config %04x status %04x advertising %04x\n",
         board_idx, phy, mii_reg0, mii_status, mii_advert);
  if ((unsigned int )mii_advert != to_advert) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_find_mii";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/media.o.c.prepared";
    descriptor.format = "tulip%d:  Advertising %04x on PHY %d, previously advertising %04x\n";
    descriptor.lineno = 594U;
    descriptor.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor, "tulip%d:  Advertising %04x on PHY %d, previously advertising %04x\n",
                         board_idx, to_advert, phy, mii_advert);
    } else {
    }
    tulip_mdio_write(dev, phy, 4, (int )to_advert);
  } else {
  }
  if ((unsigned int )*((unsigned char *)tp + 3428UL) == 0U) {
    new_bmcr = (unsigned int )(mii_reg0 | 4096);
    if ((unsigned int )mii_reg0 != new_bmcr) {
      new_bmcr = new_bmcr | 512U;
      ane_switch = 1U;
    } else {
    }
  } else {
    new_bmcr = (unsigned int )mii_reg0 & 4294963199U;
    if ((unsigned int )mii_reg0 != new_bmcr) {
      ane_switch = 1U;
    } else {
    }
  }
  new_bmcr = new_bmcr & 4294906495U;
  if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
    new_bmcr = new_bmcr | 256U;
  } else {
  }
  if (((int )tulip_media_cap[(int )tp->default_port] & 16) != 0) {
    new_bmcr = new_bmcr | 8192U;
  } else {
  }
  if ((unsigned int )mii_reg0 != new_bmcr) {
    if (ane_switch != 0U) {
      tulip_mdio_write(dev, phy, 0, (int )new_bmcr);
      __const_udelay(42950UL);
    } else {
    }
    tulip_mdio_write(dev, phy, 0, (int )new_bmcr);
  } else {
  }
  ldv_44064:
  phyn = phyn + 1;
  ldv_44069: ;
  if (phyn <= 32 && (unsigned int )phy_idx <= 3U) {
    goto ldv_44068;
  } else {
  }
  tp->mii_cnt = (signed char )phy_idx;
  if (((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0) && (unsigned int )*((unsigned char *)tp->mtable + 4UL) != 0U) && phy_idx == 0) {
    printk("\016tulip%d: ***WARNING***: No MII transceiver found!\n", board_idx);
    tp->phys[0] = 1;
  } else {
  }
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_96(lock, flags);
  return;
}
}
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_112(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_114(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_115(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_116(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_117(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_118(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_119(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_120(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
int ldv_mod_timer_163(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_164(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_165(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
struct sk_buff *ldv_skb_clone_154(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_162(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_156(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_152(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_160(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_161(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_157(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_158(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_159(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
void tulip_media_task(struct work_struct *work ) ;
void mxic_timer(unsigned long data ) ;
void comet_timer(unsigned long data ) ;
__inline static void tulip_stop_rxtx___1(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43806;
    ldv_43805:
    __const_udelay(42950UL);
    ldv_43806:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43805;
      } else {
        goto ldv_43807;
      }
    } else {
    }
    ldv_43807: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx___1(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx___1(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
__inline static void tulip_tx_timeout_complete(struct tulip_private *tp , void *ioaddr )
{
  {
  tulip_restart_rxtx___1(tp);
  iowrite32(0U, ioaddr + 8UL);
  (tp->dev)->stats.tx_errors = (tp->dev)->stats.tx_errors + 1UL;
  return;
}
}
void tulip_media_task(struct work_struct *work )
{
  struct tulip_private *tp ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  void *ioaddr ;
  u32 csr12 ;
  unsigned int tmp ;
  int next_tick ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  long tmp___5 ;
  struct medialeaf *mleaf ;
  unsigned char *p ;
  struct _ddebug descriptor___0 ;
  unsigned int tmp___6 ;
  long tmp___7 ;
  int offset ;
  s8 bitnum ;
  struct _ddebug descriptor___1 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  long tmp___10 ;
  struct _ddebug descriptor___4 ;
  long tmp___11 ;
  int tmp___12 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct tulip_private *)__mptr + 0xfffffffffffff028UL;
  dev = tp->dev;
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 96UL);
  csr12 = tmp;
  next_tick = 500;
  if (tulip_debug > 2) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_media_task";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
    descriptor.format = "Media selection tick, %s, status %08x mode %08x SIA %08x %08x %08x %08x\n";
    descriptor.lineno = 123U;
    descriptor.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___0 = ioread32(ioaddr + 120UL);
      tmp___1 = ioread32(ioaddr + 112UL);
      tmp___2 = ioread32(ioaddr + 104UL);
      tmp___3 = ioread32(ioaddr + 48UL);
      tmp___4 = ioread32(ioaddr + 40UL);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Media selection tick, %s, status %08x mode %08x SIA %08x %08x %08x %08x\n",
                           medianame[(int )dev->if_port], tmp___4, tmp___3, csr12,
                           tmp___2, tmp___1, tmp___0);
    } else {
    }
  } else {
  }
  switch (tp->chip_id) {
  case 2: ;
  case 3: ;
  case 5: ;
  case 11: ;
  case 13: ;
  default: ;
  if ((unsigned long )tp->mtable == (unsigned long )((struct mediatable *)0)) {
    next_tick = 15000;
    if (tulip_debug > 2) {
      descriptor___0.modname = "tulip";
      descriptor___0.function = "tulip_media_task";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
      descriptor___0.format = "network media monitor CSR6 %08x CSR12 0x%02x\n";
      descriptor___0.lineno = 141U;
      descriptor___0.flags = 1U;
      tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        tmp___6 = ioread32(ioaddr + 48UL);
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "network media monitor CSR6 %08x CSR12 0x%02x\n",
                             tmp___6, csr12 & 255U);
      } else {
      }
    } else {
    }
    goto ldv_43839;
  } else {
  }
  mleaf = (struct medialeaf *)(& (tp->mtable)->mleaf) + (unsigned long )tp->cur_index;
  p = mleaf->leafdata;
  switch ((int )mleaf->type) {
  case 0: ;
  case 4:
  offset = (unsigned int )mleaf->type == 4U ? 5 : 2;
  bitnum = (s8 )*(p + (unsigned long )offset);
  if ((int )((signed char )*(p + ((unsigned long )offset + 1UL))) < 0) {
    if (tulip_debug > 1) {
      descriptor___1.modname = "tulip";
      descriptor___1.function = "tulip_media_task";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
      descriptor___1.format = "Transceiver monitor tick CSR12=%#02x, no media sense\n";
      descriptor___1.lineno = 154U;
      descriptor___1.flags = 1U;
      tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev, "Transceiver monitor tick CSR12=%#02x, no media sense\n",
                             csr12);
      } else {
      }
    } else {
    }
    if ((unsigned int )mleaf->type == 4U) {
      if ((unsigned int )mleaf->media == 3U && (csr12 & 2U) != 0U) {
        goto select_next_media;
      } else {
      }
    } else {
    }
    goto ldv_43846;
  } else {
  }
  if (tulip_debug > 2) {
    descriptor___2.modname = "tulip";
    descriptor___2.function = "tulip_media_task";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
    descriptor___2.format = "Transceiver monitor tick: CSR12=%#02x bit %d is %d, expecting %d\n";
    descriptor___2.lineno = 165U;
    descriptor___2.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)dev, "Transceiver monitor tick: CSR12=%#02x bit %d is %d, expecting %d\n",
                           csr12, ((int )bitnum >> 1) & 7, ((u32 )(1 << (((int )bitnum >> 1) & 7)) & csr12) != 0U,
                           (int )bitnum >= 0);
    } else {
    }
  } else {
  }
  if (((int )bitnum < 0) ^ (((u32 )(1 << (((int )bitnum >> 1) & 7)) & csr12) != 0U)) {
    if (tulip_debug > 2) {
      descriptor___3.modname = "tulip";
      descriptor___3.function = "tulip_media_task";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
      descriptor___3.format = "Link beat detected for %s\n";
      descriptor___3.lineno = 171U;
      descriptor___3.flags = 1U;
      tmp___10 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___10 != 0L) {
        __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)dev, "Link beat detected for %s\n",
                             medianame[(int )mleaf->media & 31]);
      } else {
      }
    } else {
    }
    if (((int )*(p + 2UL) & 97) == 1) {
      goto actually_mii;
    } else {
    }
    netif_carrier_on(dev);
    goto ldv_43846;
  } else {
  }
  netif_carrier_off(dev);
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
    goto ldv_43846;
  } else {
  }
  select_next_media:
  tp->cur_index = tp->cur_index - 1;
  if (tp->cur_index < 0) {
    tp->cur_index = (int )(tp->mtable)->leafcount + -1;
  } else {
  }
  dev->if_port = (tp->mtable)->mleaf[tp->cur_index].media;
  if ((int )tulip_media_cap[(int )dev->if_port] & 1) {
    goto select_next_media;
  } else {
  }
  if (tulip_debug > 1) {
    descriptor___4.modname = "tulip";
    descriptor___4.function = "tulip_media_task";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
    descriptor___4.format = "No link beat on media %s, trying transceiver type %s\n";
    descriptor___4.lineno = 191U;
    descriptor___4.flags = 1U;
    tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)dev, "No link beat on media %s, trying transceiver type %s\n",
                           medianame[(int )mleaf->media & 31], medianame[(int )(tp->mtable)->mleaf[tp->cur_index].media]);
    } else {
    }
  } else {
  }
  tulip_select_media(dev, 0);
  tulip_restart_rxtx___1(tp);
  next_tick = 600;
  goto ldv_43846;
  case 1: ;
  case 3: ;
  actually_mii:
  tmp___12 = tulip_check_duplex(dev);
  if (tmp___12 < 0) {
    netif_carrier_off(dev);
    next_tick = 750;
  } else {
    netif_carrier_on(dev);
    next_tick = 15000;
  }
  goto ldv_43846;
  case 2: ;
  default: ;
  goto ldv_43846;
  }
  ldv_43846: ;
  goto ldv_43839;
  }
  ldv_43839:
  ldv_spin_lock();
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
    tulip_tx_timeout_complete(tp, ioaddr);
    tp->timeout_recovery = 0U;
  } else {
  }
  spin_unlock_irqrestore(& tp->lock, flags);
  ldv_mod_timer_163(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  return;
}
}
void mxic_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int next_tick ;
  unsigned int tmp___0 ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  next_tick = 15000;
  if (tulip_debug > 3) {
    tmp___0 = ioread32(ioaddr + 96UL);
    _dev_info((struct device const *)(& dev->dev), "MXIC negotiation status %08x\n",
              tmp___0);
  } else {
  }
  if (next_tick != 0) {
    ldv_mod_timer_164(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  } else {
  }
  return;
}
}
void comet_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  int next_tick ;
  struct _ddebug descriptor ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  next_tick = 15000;
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "comet_timer";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/timer.o.c.prepared";
    descriptor.format = "Comet link status %04x partner capability %04x\n";
    descriptor.lineno = 257U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___0 = tulip_mdio_read(dev, (int )tp->phys[0], 5);
      tmp___1 = tulip_mdio_read(dev, (int )tp->phys[0], 1);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Comet link status %04x partner capability %04x\n",
                           tmp___1, tmp___0);
    } else {
    }
  } else {
  }
  tmp___3 = tulip_check_duplex(dev);
  if (tmp___3 < 0) {
    netif_carrier_off(dev);
  } else {
    netif_carrier_on(dev);
  }
  ldv_mod_timer_165(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  return;
}
}
int ldv_pskb_expand_head_152(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_154(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_156(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_157(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_158(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_159(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_160(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_161(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_162(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_163(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_164(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_165(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static void __set_bit_le(int nr , void *addr )
{
  {
  __set_bit((long )nr, (unsigned long volatile *)addr);
  return;
}
}
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_212(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_213(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
extern unsigned int ioread16(void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void kfree(void const * ) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
int ldv_state_variable_8 ;
struct timer_list *ldv_timer_list_5 ;
struct timer_list *ldv_timer_list_4 ;
struct timer_list *ldv_timer_list_3 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct net_device *tulip_netdev_ops_group1 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_line_2_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
int ldv_irq_line_2_3 ;
void *ldv_irq_data_2_1 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_2 ;
struct pci_dev *tulip_driver_group0 ;
struct net_device *ops_group1 ;
void *ldv_irq_data_2_0 ;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_state_variable_4 ;
struct ethtool_wolinfo *ops_group0 ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void ldv_net_device_ops_7(void) ;
void choose_timer_5(struct timer_list *timer ) ;
void choose_timer_3(struct timer_list *timer ) ;
void activate_suitable_irq_2(int line , void *data ) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_pci_driver_6(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void choose_interrupt_1(void) ;
void choose_timer_4(struct timer_list *timer ) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
int reg_timer_4(struct timer_list *timer ) ;
void ldv_initialize_ethtool_ops_8(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int reg_timer_3(struct timer_list *timer ) ;
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_5(struct timer_list *timer ) ;
int reg_timer_5(struct timer_list *timer ) ;
int ldv_irq_2(int state , int line , void *data ) ;
extern int device_set_wakeup_enable(struct device * , bool ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern int pci_dev_present(struct pci_device_id const * ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_try_set_mwi(struct pci_dev * ) ;
extern void pci_clear_mwi(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
__inline static dma_addr_t dma_map_single_attrs___0(struct device *dev , void *ptr ,
                                                    size_t size , enum dma_data_direction dir ,
                                                    struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_22399: ;
    goto ldv_22399;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops___0->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                                (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs___0(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir ,
                                                struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_22408: ;
    goto ldv_22408;
  } else {
  }
  if ((unsigned long )ops___0->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                        dma_addr_t ,
                                                                        size_t ,
                                                                        enum dma_data_direction ,
                                                                        struct dma_attrs * ))0)) {
    (*(ops___0->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops___0->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                    size_t , dma_addr_t * ,
                                                                    gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops___0->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops___0 ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops___0 = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops___0->free != (unsigned long )((void (*)(struct device * ,
                                                                  size_t , void * ,
                                                                  dma_addr_t , struct dma_attrs * ))0)) {
    (*(ops___0->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_single___0(struct pci_dev *hwdev , void *ptr ,
                                              size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs___0((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                                 ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single___0(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                          size_t size , int direction )
{
  {
  dma_unmap_single_attrs___0((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_addr, size, (enum dma_data_direction )direction,
                             (struct dma_attrs *)0);
  return;
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern void msleep(unsigned int ) ;
struct sk_buff *ldv_skb_clone_202(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_204(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_200(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_209(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_205(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_206(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_207(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static struct sk_buff *netdev_alloc_skb___0(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_205(dev, length, 32U);
  return (tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_211(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
__inline static int ldv_request_irq_218(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_214(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_217(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  __might_sleep("include/linux/netdevice.h", 476, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  goto ldv_41577;
  ldv_41576:
  msleep(1U);
  ldv_41577:
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_41576;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (492), "i" (12UL));
    ldv_41582: ;
    goto ldv_41582;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  return;
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_216(struct net_device *dev ) ;
void ldv_free_netdev_220(struct net_device *dev ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016tulip: netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_215(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_219(struct net_device *dev ) ;
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_le16(u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
void t21142_media_task(struct work_struct *work ) ;
void t21142_start_nway(struct net_device *dev ) ;
void t21142_lnk_change(struct net_device *dev , int csr5 ) ;
void pnic2_lnk_change(struct net_device *dev , int csr5 ) ;
void pnic2_timer(unsigned long data ) ;
void pnic2_start_nway(struct net_device *dev ) ;
void pnic_do_nway(struct net_device *dev ) ;
void pnic_lnk_change(struct net_device *dev , int csr5 ) ;
void pnic_timer(unsigned long data ) ;
__inline static void tulip_stop_rxtx___2(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43868;
    ldv_43867:
    __const_udelay(42950UL);
    ldv_43868:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43867;
      } else {
        goto ldv_43869;
      }
    } else {
    }
    ldv_43869: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx___2(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx___2(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
__inline static void tulip_tx_timeout_complete___0(struct tulip_private *tp , void *ioaddr )
{
  {
  tulip_restart_rxtx___2(tp);
  iowrite32(0U, ioaddr + 8UL);
  (tp->dev)->stats.tx_errors = (tp->dev)->stats.tx_errors + 1UL;
  return;
}
}
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern u32 bitrev32(u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
static char version[55U] =
  { 'L', 'i', 'n', 'u',
        'x', ' ', 'T', 'u',
        'l', 'i', 'p', ' ',
        'd', 'r', 'i', 'v',
        'e', 'r', ' ', 'v',
        'e', 'r', 's', 'i',
        'o', 'n', ' ', '1',
        '.', '1', '.', '1',
        '5', '-', 'N', 'A',
        'P', 'I', ' ', '(',
        'F', 'e', 'b', ' ',
        '2', '7', ',', ' ',
        '2', '0', '0', '7',
        ')', '\n', '\000'};
static unsigned int max_interrupt_work = 25U;
static int full_duplex[8U] ;
static int options[8U] ;
static int mtu[8U] ;
char const * const medianame[32U] =
  { "10baseT", "10base2", "AUI", "100baseTx",
        "10baseT-FDX", "100baseTx-FDX", "100baseT4", "100baseFx",
        "100baseFx-FDX", "MII 10baseT", "MII 10baseT-FDX", "MII",
        "10baseT(forced)", "MII 100baseTx", "MII 100baseTx-FDX", "MII 100baseT4",
        "MII 100baseFx-HDX", "MII 100baseFx-FDX", "Home-PNA 1Mbps", "Invalid-19",
        "", "", "", "",
        "", "", "", "",
        "", "", "", "Transceiver reset"};
static int rx_copybreak = 100;
static int csr0 = 27295744;
int tulip_debug = 1;
static void tulip_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  bool tmp___0 ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    schedule_work(& tp->media_work);
  } else {
  }
  return;
}
}
struct tulip_chip_table tulip_tbl[15U] =
  { {0, 0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0, 0},
        {(char *)"Digital DS21140 Tulip", 128, 125935, 4103, & tulip_timer, & tulip_media_task},
        {(char *)"Digital DS21142/43 Tulip",
      128, 134347775, 4443, & tulip_timer, & t21142_media_task},
        {(char *)"Lite-On 82c168 PNIC", 256, 130031, 129, & pnic_timer, 0},
        {(char *)"Macronix 98713 PMAC", 128, 125935, 7, & mxic_timer, 0},
        {(char *)"Macronix 98715 PMAC", 256, 125935, 2, & mxic_timer, 0},
        {(char *)"Macronix 98725 PMAC", 256, 125935, 2, & mxic_timer, 0},
        {(char *)"ASIX AX88140", 128, 130047, 551, & tulip_timer, & tulip_media_task},
        {(char *)"Lite-On PNIC-II",
      256, 134347775, 5185, & pnic2_timer, 0},
        {(char *)"ADMtek Comet", 256, 109551, 2081, & comet_timer, 0},
        {(char *)"Compex 9881 PMAC", 128, 125935, 7, & mxic_timer, 0},
        {(char *)"Intel DS21145 Tulip", 128, 134347775, 4187, & tulip_timer, & tulip_media_task},
        {(char *)0,
      0, 0, 0, 0, 0},
        {(char *)"Conexant LANfinity", 256, 125935, 17, & tulip_timer, & tulip_media_task}};
static struct pci_device_id const tulip_pci_tbl[35U] =
  { {4113U, 9U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4113U, 25U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {4525U, 2U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {4313U, 1298U, 4294967295U, 4294967295U, 0U, 0U, 5UL},
        {4313U, 1329U, 4294967295U, 4294967295U, 0U, 0U, 6UL},
        {4699U, 5120U, 4294967295U, 4294967295U, 0U, 0U, 8UL},
        {4525U, 49429U, 4294967295U, 4294967295U, 0U, 0U, 9UL},
        {4887U, 2433U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4887U, 2437U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4887U, 6533U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4887U, 38161U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5073U, 43778U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5073U, 43779U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5073U, 43784U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4170U, 2433U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4170U, 10100U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4697U, 41248U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4598U, 39041U, 4294967295U, 4294967295U, 0U, 0U, 11UL},
        {32902U, 57U, 4294967295U, 4294967295U, 0U, 0U, 12UL},
        {4371U, 4630U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4371U, 4631U, 4294967295U, 4294967295U, 0U, 0U, 6UL},
        {4371U, 38161U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4486U, 5441U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4486U, 5473U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4486U, 5521U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5361U, 6147U, 4294967295U, 4294967295U, 0U, 0U, 14UL},
        {5670U, 33808U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5943U, 43785U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5943U, 43784U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {6067U, 43784U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {4279U, 37632U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5354U, 43784U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5140U, 1U, 4294967295U, 4294967295U, 0U, 0U, 10UL},
        {5140U, 2U, 4294967295U, 4294967295U, 0U, 0U, 10UL}};
struct pci_device_id const __mod_pci__tulip_pci_tbl_device_table ;
char const tulip_media_cap[32U] =
  { 0, 0, 0, 16,
        3, 19, 16, 24,
        27, 4, 7, 5,
        0, 20, 23, 20,
        28, 31, 0, 0};
static void tulip_tx_timeout(struct net_device *dev ) ;
static void tulip_init_ring(struct net_device *dev ) ;
static void tulip_free_ring(struct net_device *dev ) ;
static netdev_tx_t tulip_start_xmit(struct sk_buff *skb , struct net_device *dev ) ;
static int tulip_open(struct net_device *dev ) ;
static int tulip_close(struct net_device *dev ) ;
static void tulip_up(struct net_device *dev ) ;
static void tulip_down(struct net_device *dev ) ;
static struct net_device_stats *tulip_get_stats(struct net_device *dev ) ;
static int private_ioctl(struct net_device *dev , struct ifreq *rq , int cmd ) ;
static void set_rx_mode(struct net_device *dev ) ;
static void tulip_set_wolopts(struct pci_dev *pdev , u32 wolopts ) ;
static void poll_tulip(struct net_device *dev ) ;
static void tulip_set_power_state(struct tulip_private *tp , int sleep , int snooze )
{
  u32 tmp ;
  u32 newtmp ;
  {
  if ((tp->flags & 16) != 0) {
    pci_read_config_dword((struct pci_dev const *)tp->pdev, 64, & tmp);
    newtmp = tmp & 1073741823U;
    if (sleep != 0) {
      newtmp = newtmp | 2147483648U;
    } else
    if (snooze != 0) {
      newtmp = newtmp | 1073741824U;
    } else {
    }
    if (tmp != newtmp) {
      pci_write_config_dword((struct pci_dev const *)tp->pdev, 64, newtmp);
    } else {
    }
  } else {
  }
  return;
}
}
static void tulip_up(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int next_tick ;
  u32 reg ;
  int i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  u32 addr_low ;
  u32 tmp___3 ;
  u32 addr_high ;
  u16 tmp___4 ;
  u16 *eaddrs ;
  u16 *setup_frm ;
  dma_addr_t mapping ;
  u16 *tmp___5 ;
  u16 *tmp___6 ;
  u16 *tmp___7 ;
  u16 *tmp___8 ;
  u16 *tmp___9 ;
  u16 *tmp___10 ;
  int looking_for ;
  int looking_for___0 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  struct _ddebug descriptor___0 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  long tmp___22 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  next_tick = 750;
  napi_enable(& tp->napi);
  tulip_set_power_state(tp, 0, 0);
  pci_enable_wake(tp->pdev, 3, 0);
  pci_enable_wake(tp->pdev, 4, 0);
  tulip_set_wolopts(tp->pdev, 0U);
  if ((int )tp->mii_cnt != 0 || ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0) && (unsigned int )*((unsigned char *)tp->mtable + 4UL) != 0U)) {
    iowrite32(262144U, ioaddr + 48UL);
  } else {
  }
  iowrite32(1U, ioaddr);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 4, & reg);
  __const_udelay(429500UL);
  iowrite32(tp->csr0, ioaddr);
  pci_read_config_dword((struct pci_dev const *)tp->pdev, 4, & reg);
  __const_udelay(429500UL);
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_up";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/tulip_core.o.c.prepared";
    descriptor.format = "tulip_up(), irq==%d\n";
    descriptor.lineno = 423U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "tulip_up(), irq==%d\n",
                           (tp->pdev)->irq);
    } else {
    }
  } else {
  }
  iowrite32((u32 )tp->rx_ring_dma, ioaddr + 24UL);
  iowrite32((u32 )tp->tx_ring_dma, ioaddr + 32UL);
  tmp___1 = 0U;
  tp->cur_tx = tmp___1;
  tp->cur_rx = tmp___1;
  tmp___2 = 0U;
  tp->dirty_tx = tmp___2;
  tp->dirty_rx = tmp___2;
  if ((tp->flags & 32) != 0) {
    tmp___3 = get_unaligned_le32((void const *)dev->dev_addr);
    addr_low = tmp___3;
    tmp___4 = get_unaligned_le16((void const *)dev->dev_addr + 4U);
    addr_high = (u32 )tmp___4;
    if (tp->chip_id == 8) {
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(addr_low, ioaddr + 112UL);
      iowrite32(1U, ioaddr + 104UL);
      iowrite32(addr_high, ioaddr + 112UL);
    } else
    if ((tp->flags & 2048) != 0) {
      iowrite32(addr_low, ioaddr + 164UL);
      iowrite32(addr_high, ioaddr + 168UL);
      iowrite32(0U, ioaddr + 172UL);
      iowrite32(0U, ioaddr + 176UL);
    } else {
    }
  } else {
    eaddrs = (u16 *)dev->dev_addr;
    setup_frm = (u16 *)(& tp->setup_frame) + 90UL;
    memset((void *)(& tp->setup_frame), 255, 192UL);
    tmp___5 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___5 = *eaddrs;
    tmp___6 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___6 = *eaddrs;
    tmp___7 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___7 = *(eaddrs + 1UL);
    tmp___8 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___8 = *(eaddrs + 1UL);
    tmp___9 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___9 = *(eaddrs + 2UL);
    tmp___10 = setup_frm;
    setup_frm = setup_frm + 1;
    *tmp___10 = *(eaddrs + 2UL);
    mapping = pci_map_single___0(tp->pdev, (void *)(& tp->setup_frame), 192UL, 1);
    tp->tx_buffers[tp->cur_tx].skb = (struct sk_buff *)0;
    tp->tx_buffers[tp->cur_tx].mapping = mapping;
    (tp->tx_ring + (unsigned long )tp->cur_tx)->length = 134217920U;
    (tp->tx_ring + (unsigned long )tp->cur_tx)->buffer1 = (unsigned int )mapping;
    (tp->tx_ring + (unsigned long )tp->cur_tx)->status = 2147483648U;
    tp->cur_tx = tp->cur_tx + 1U;
  }
  tp->saved_if_port = (int )dev->if_port;
  if ((unsigned int )dev->if_port == 0U) {
    dev->if_port = tp->default_port;
  } else {
  }
  i = 0;
  if ((unsigned long )tp->mtable == (unsigned long )((struct mediatable *)0)) {
    goto media_picked;
  } else {
  }
  if ((unsigned int )dev->if_port != 0U) {
    looking_for = ((int )tulip_media_cap[(int )dev->if_port] & 4) == 0 ? ((unsigned int )dev->if_port != 12U ? (int )dev->if_port : 0) : 11;
    i = 0;
    goto ldv_44305;
    ldv_44304: ;
    if ((int )(tp->mtable)->mleaf[i].media == looking_for) {
      _dev_info((struct device const *)(& dev->dev), "Using user-specified media %s\n",
                medianame[(int )dev->if_port]);
      goto media_picked;
    } else {
    }
    i = i + 1;
    ldv_44305: ;
    if ((int )(tp->mtable)->leafcount > i) {
      goto ldv_44304;
    } else {
    }
  } else {
  }
  if (((int )(tp->mtable)->defaultmedia & 2048) == 0) {
    looking_for___0 = (int )(tp->mtable)->defaultmedia & 31;
    i = 0;
    goto ldv_44309;
    ldv_44308: ;
    if ((int )(tp->mtable)->mleaf[i].media == looking_for___0) {
      _dev_info((struct device const *)(& dev->dev), "Using EEPROM-set media %s\n",
                medianame[looking_for___0]);
      goto media_picked;
    } else {
    }
    i = i + 1;
    ldv_44309: ;
    if ((int )(tp->mtable)->leafcount > i) {
      goto ldv_44308;
    } else {
    }
  } else {
  }
  i = (int )(tp->mtable)->leafcount + -1;
  goto ldv_44312;
  ldv_44311:
  i = i - 1;
  ldv_44312: ;
  if (((int )tulip_media_cap[(int )(tp->mtable)->mleaf[i].media] & 2) != 0 && i > 0) {
    goto ldv_44311;
  } else {
  }
  media_picked:
  tp->csr6 = 0U;
  tp->cur_index = i;
  tp->nwayset = 0U;
  if ((unsigned int )dev->if_port != 0U) {
    if (tp->chip_id == 3 && ((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(0U, ioaddr + 112UL);
      iowrite32(8U, ioaddr + 120UL);
    } else {
    }
    tulip_select_media(dev, 1);
  } else
  if (tp->chip_id == 3) {
    if ((int )tp->mii_cnt != 0) {
      tulip_select_media(dev, 1);
      if (tulip_debug > 1) {
        tmp___11 = tulip_mdio_read(dev, (int )tp->phys[0], 1);
        _dev_info((struct device const *)(& dev->dev), "Using MII transceiver %d, status %04x\n",
                  (int )tp->phys[0], tmp___11);
      } else {
      }
      iowrite32(2181169152U, ioaddr + 48UL);
      tp->csr6 = 2181955584U;
      dev->if_port = 11U;
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(0U, ioaddr + 112UL);
    } else {
      t21142_start_nway(dev);
    }
  } else
  if (tp->chip_id == 9) {
    tp->sym_advertise = 480U;
    tmp___12 = ioread32(ioaddr + 40UL);
    iowrite32(tmp___12 | 32784U, ioaddr + 40UL);
    tmp___13 = ioread32(ioaddr + 56UL);
    iowrite32(tmp___13 | 32784U, ioaddr + 56UL);
    pnic2_start_nway(dev);
  } else
  if (tp->chip_id == 4 && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
    if ((int )tp->mii_cnt != 0) {
      dev->if_port = 11U;
      tp->csr6 = (unsigned int )*((unsigned char *)tp + 3428UL) != 0U ? 2169242112U : 2169241600U;
      iowrite32(1U, ioaddr + 120UL);
    } else {
      tmp___14 = ioread32(ioaddr + 40UL);
      if ((tmp___14 & 16U) != 0U) {
        pnic_do_nway(dev);
      } else {
        iowrite32(50U, ioaddr + 96UL);
        tp->csr6 = 4325376U;
        iowrite32(110712U, ioaddr + 184UL);
        iowrite32(33665144U, ioaddr + 184UL);
        next_tick = 250;
      }
    }
  } else
  if ((tp->chip_id == 5 || tp->chip_id == 11) && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
    dev->if_port = 0U;
    tp->csr6 = (unsigned int )*((unsigned char *)tp + 3428UL) != 0U ? 25690624U : 25690112U;
    tmp___15 = ioread16(ioaddr + 128UL);
    iowrite32(tmp___15 | 255262720U, ioaddr + 128UL);
  } else
  if (tp->chip_id == 6 || tp->chip_id == 7) {
    dev->if_port = 0U;
    tp->csr6 = 27787776U;
    tmp___16 = ioread16(ioaddr + 128UL);
    iowrite32(tmp___16 | 255262720U, ioaddr + 128UL);
    tmp___17 = ioread16(ioaddr + 160UL);
    iowrite32(tmp___17 | 69632U, ioaddr + 160UL);
  } else
  if (tp->chip_id == 10 || tp->chip_id == 14) {
    tmp___18 = ioread32(ioaddr + 136UL);
    iowrite32(tmp___18 | 1U, ioaddr + 136UL);
    dev->if_port = (int )tp->mii_cnt != 0 ? 11U : 0U;
    tp->csr6 = 262144U;
  } else
  if (tp->chip_id == 8) {
    tp->csr6 = (int )tp->mii_cnt != 0 ? 262400U : 256U;
  } else {
    tulip_select_media(dev, 1);
  }
  tulip_stop_rxtx___2(tp);
  __asm__ volatile ("": : : "memory");
  __const_udelay(21475UL);
  iowrite32(tp->csr6 | 8192U, ioaddr + 48UL);
  iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs, ioaddr + 40UL);
  iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs, ioaddr + 56UL);
  tulip_start_rxtx(tp);
  iowrite32(0U, ioaddr + 16UL);
  if (tulip_debug > 2) {
    descriptor___0.modname = "tulip";
    descriptor___0.function = "tulip_up";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/tulip_core.o.c.prepared";
    descriptor___0.format = "Done tulip_up(), CSR0 %08x, CSR5 %08x CSR6 %08x\n";
    descriptor___0.lineno = 593U;
    descriptor___0.flags = 1U;
    tmp___22 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___22 != 0L) {
      tmp___19 = ioread32(ioaddr + 48UL);
      tmp___20 = ioread32(ioaddr + 40UL);
      tmp___21 = ioread32(ioaddr);
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "Done tulip_up(), CSR0 %08x, CSR5 %08x CSR6 %08x\n",
                           tmp___21, tmp___20, tmp___19);
    } else {
    }
  } else {
  }
  tp->timer.expires = (unsigned long )next_tick + (unsigned long )jiffies;
  add_timer(& tp->timer);
  reg_timer_3(& tp->oom_timer);
  tp->oom_timer.data = (unsigned long )dev;
  tp->oom_timer.function = & oom_timer;
  return;
}
}
static int tulip_open(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int retval ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  tulip_init_ring(dev);
  retval = ldv_request_irq_211((tp->pdev)->irq, & tulip_interrupt, 128UL, (char const *)(& dev->name),
                               (void *)dev);
  if (retval != 0) {
    goto free_ring;
  } else {
  }
  tulip_up(dev);
  netif_start_queue(dev);
  return (0);
  free_ring:
  tulip_free_ring(dev);
  return (retval);
}
}
static void tulip_tx_timeout(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  ldv_spin_lock();
  if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
    if (tulip_debug > 1) {
      dev_warn((struct device const *)(& dev->dev), "Transmit timeout using MII device\n");
    } else {
    }
  } else
  if ((((tp->chip_id == 2 || tp->chip_id == 3) || tp->chip_id == 5) || tp->chip_id == 11) || tp->chip_id == 13) {
    tmp___0 = ioread32(ioaddr + 120UL);
    tmp___1 = ioread32(ioaddr + 112UL);
    tmp___2 = ioread32(ioaddr + 104UL);
    tmp___3 = ioread32(ioaddr + 96UL);
    tmp___4 = ioread32(ioaddr + 40UL);
    dev_warn((struct device const *)(& dev->dev), "21140 transmit timed out, status %08x, SIA %08x %08x %08x %08x, resetting...\n",
             tmp___4, tmp___3, tmp___2, tmp___1, tmp___0);
    tp->timeout_recovery = 1U;
    schedule_work(& tp->media_work);
    goto out_unlock;
  } else
  if (tp->chip_id == 9) {
    tmp___5 = ioread32(ioaddr + 96UL);
    tmp___6 = ioread32(ioaddr + 56UL);
    tmp___7 = ioread32(ioaddr + 48UL);
    tmp___8 = ioread32(ioaddr + 40UL);
    dev_warn((struct device const *)(& dev->dev), "PNIC2 transmit timed out, status %08x, CSR6/7 %08x / %08x CSR12 %08x, resetting...\n",
             (int )tmp___8, (int )tmp___7, (int )tmp___6, (int )tmp___5);
  } else {
    tmp___9 = ioread32(ioaddr + 96UL);
    tmp___10 = ioread32(ioaddr + 40UL);
    dev_warn((struct device const *)(& dev->dev), "Transmit timed out, status %08x, CSR12 %08x, resetting...\n",
             tmp___10, tmp___9);
    dev->if_port = 0U;
  }
  tulip_tx_timeout_complete___0(tp, ioaddr);
  out_unlock:
  spin_unlock_irqrestore(& tp->lock, flags);
  dev->trans_start = jiffies;
  netif_wake_queue(dev);
  return;
}
}
static void tulip_init_ring(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int i ;
  dma_addr_t mapping ;
  struct sk_buff *skb ;
  struct sk_buff *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  tp->susp_rx = 0;
  tp->ttimer = 0;
  tp->nir = 0UL;
  i = 0;
  goto ldv_44334;
  ldv_44333:
  (tp->rx_ring + (unsigned long )i)->status = 0U;
  (tp->rx_ring + (unsigned long )i)->length = 1540U;
  (tp->rx_ring + (unsigned long )i)->buffer2 = (unsigned int )tp->rx_ring_dma + (unsigned int )((unsigned long )(i + 1)) * 16U;
  tp->rx_buffers[i].skb = (struct sk_buff *)0;
  tp->rx_buffers[i].mapping = 0ULL;
  i = i + 1;
  ldv_44334: ;
  if (i <= 127) {
    goto ldv_44333;
  } else {
  }
  (tp->rx_ring + ((unsigned long )i + 0xffffffffffffffffUL))->length = 33555972U;
  (tp->rx_ring + ((unsigned long )i + 0xffffffffffffffffUL))->buffer2 = (unsigned int )tp->rx_ring_dma;
  i = 0;
  goto ldv_44340;
  ldv_44339:
  tmp___0 = netdev_alloc_skb___0(dev, 1540U);
  skb = tmp___0;
  tp->rx_buffers[i].skb = skb;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_44338;
  } else {
  }
  mapping = pci_map_single___0(tp->pdev, (void *)skb->data, 1540UL, 2);
  tp->rx_buffers[i].mapping = mapping;
  (tp->rx_ring + (unsigned long )i)->status = 2147483648U;
  (tp->rx_ring + (unsigned long )i)->buffer1 = (unsigned int )mapping;
  i = i + 1;
  ldv_44340: ;
  if (i <= 127) {
    goto ldv_44339;
  } else {
  }
  ldv_44338:
  tp->dirty_rx = (unsigned int )(i + -128);
  i = 0;
  goto ldv_44342;
  ldv_44341:
  tp->tx_buffers[i].skb = (struct sk_buff *)0;
  tp->tx_buffers[i].mapping = 0ULL;
  (tp->tx_ring + (unsigned long )i)->status = 0U;
  (tp->tx_ring + (unsigned long )i)->buffer2 = (unsigned int )tp->tx_ring_dma + (unsigned int )((unsigned long )(i + 1)) * 16U;
  i = i + 1;
  ldv_44342: ;
  if (i <= 31) {
    goto ldv_44341;
  } else {
  }
  (tp->tx_ring + ((unsigned long )i + 0xffffffffffffffffUL))->buffer2 = (unsigned int )tp->tx_ring_dma;
  return;
}
}
static netdev_tx_t tulip_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int entry ;
  u32 flag ;
  dma_addr_t mapping ;
  unsigned long flags ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ldv_spin_lock();
  entry = (int )tp->cur_tx & 31;
  tp->tx_buffers[entry].skb = skb;
  mapping = pci_map_single___0(tp->pdev, (void *)skb->data, (size_t )skb->len, 1);
  tp->tx_buffers[entry].mapping = mapping;
  (tp->tx_ring + (unsigned long )entry)->buffer1 = (unsigned int )mapping;
  if (tp->cur_tx - tp->dirty_tx <= 15U) {
    flag = 1610612736U;
  } else
  if (tp->cur_tx - tp->dirty_tx == 16U) {
    flag = 3758096384U;
  } else
  if (tp->cur_tx - tp->dirty_tx <= 29U) {
    flag = 1610612736U;
  } else {
    flag = 3758096384U;
    netif_stop_queue(dev);
  }
  if (entry == 31) {
    flag = 3791650816U;
  } else {
  }
  (tp->tx_ring + (unsigned long )entry)->length = skb->len | flag;
  (tp->tx_ring + (unsigned long )entry)->status = 2147483648U;
  __asm__ volatile ("sfence": : : "memory");
  tp->cur_tx = tp->cur_tx + 1U;
  iowrite32(0U, tp->base_addr + 8UL);
  spin_unlock_irqrestore(& tp->lock, flags);
  return (0);
}
}
static void tulip_clean_tx_ring(struct tulip_private *tp )
{
  unsigned int dirty_tx ;
  int entry ;
  int status ;
  {
  dirty_tx = tp->dirty_tx;
  goto ldv_44361;
  ldv_44360:
  entry = (int )dirty_tx & 31;
  status = (int )(tp->tx_ring + (unsigned long )entry)->status;
  if (status < 0) {
    (tp->dev)->stats.tx_errors = (tp->dev)->stats.tx_errors + 1UL;
    (tp->tx_ring + (unsigned long )entry)->status = 0U;
  } else {
  }
  if ((unsigned long )tp->tx_buffers[entry].skb == (unsigned long )((struct sk_buff *)0)) {
    if (tp->tx_buffers[entry].mapping != 0ULL) {
      pci_unmap_single___0(tp->pdev, tp->tx_buffers[entry].mapping, 192UL, 1);
    } else {
    }
    goto ldv_44359;
  } else {
  }
  pci_unmap_single___0(tp->pdev, tp->tx_buffers[entry].mapping, (size_t )(tp->tx_buffers[entry].skb)->len,
                       1);
  dev_kfree_skb_irq(tp->tx_buffers[entry].skb);
  tp->tx_buffers[entry].skb = (struct sk_buff *)0;
  tp->tx_buffers[entry].mapping = 0ULL;
  ldv_44359:
  dirty_tx = dirty_tx + 1U;
  ldv_44361: ;
  if (tp->cur_tx != dirty_tx) {
    goto ldv_44360;
  } else {
  }
  return;
}
}
static void tulip_down(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  cancel_work_sync(& tp->media_work);
  napi_disable(& tp->napi);
  ldv_del_timer_sync_212(& tp->timer);
  ldv_del_timer_sync_213(& tp->oom_timer);
  ldv_spin_lock();
  iowrite32(0U, ioaddr + 56UL);
  tulip_stop_rxtx___2(tp);
  tulip_refill_rx(dev);
  tulip_clean_tx_ring(tp);
  tmp___1 = ioread32(ioaddr + 48UL);
  if (tmp___1 != 4294967295U) {
    tmp___0 = ioread32(ioaddr + 64UL);
    dev->stats.rx_missed_errors = dev->stats.rx_missed_errors + ((unsigned long )tmp___0 & 65535UL);
  } else {
  }
  spin_unlock_irqrestore(& tp->lock, flags);
  reg_timer_3(& tp->timer);
  tp->timer.data = (unsigned long )dev;
  tp->timer.function = tulip_tbl[tp->chip_id].media_timer;
  dev->if_port = (unsigned char )tp->saved_if_port;
  tulip_set_power_state(tp, 0, 1);
  return;
}
}
static void tulip_free_ring(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int i ;
  struct sk_buff *skb ;
  dma_addr_t mapping ;
  struct sk_buff *skb___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  i = 0;
  goto ldv_44377;
  ldv_44376:
  skb = tp->rx_buffers[i].skb;
  mapping = tp->rx_buffers[i].mapping;
  tp->rx_buffers[i].skb = (struct sk_buff *)0;
  tp->rx_buffers[i].mapping = 0ULL;
  (tp->rx_ring + (unsigned long )i)->status = 0U;
  (tp->rx_ring + (unsigned long )i)->length = 0U;
  (tp->rx_ring + (unsigned long )i)->buffer1 = 3135176912U;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    pci_unmap_single___0(tp->pdev, mapping, 1540UL, 2);
    consume_skb(skb);
  } else {
  }
  i = i + 1;
  ldv_44377: ;
  if (i <= 127) {
    goto ldv_44376;
  } else {
  }
  i = 0;
  goto ldv_44381;
  ldv_44380:
  skb___0 = tp->tx_buffers[i].skb;
  if ((unsigned long )skb___0 != (unsigned long )((struct sk_buff *)0)) {
    pci_unmap_single___0(tp->pdev, tp->tx_buffers[i].mapping, (size_t )skb___0->len,
                         1);
    consume_skb(skb___0);
  } else {
  }
  tp->tx_buffers[i].skb = (struct sk_buff *)0;
  tp->tx_buffers[i].mapping = 0ULL;
  i = i + 1;
  ldv_44381: ;
  if (i <= 31) {
    goto ldv_44380;
  } else {
  }
  return;
}
}
static int tulip_close(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct _ddebug descriptor ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  netif_stop_queue(dev);
  tulip_down(dev);
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_close";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/tulip_core.o.c.prepared";
    descriptor.format = "Shutting down ethercard, status was %02x\n";
    descriptor.lineno = 936U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = ioread32(ioaddr + 40UL);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Shutting down ethercard, status was %02x\n",
                           tmp___0);
    } else {
    }
  } else {
  }
  ldv_free_irq_214((tp->pdev)->irq, (void *)dev);
  tulip_free_ring(dev);
  return (0);
}
}
static struct net_device_stats *tulip_get_stats(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___1 = netif_running((struct net_device const *)dev);
  if ((int )tmp___1) {
    ldv_spin_lock();
    tmp___0 = ioread32(ioaddr + 64UL);
    dev->stats.rx_missed_errors = dev->stats.rx_missed_errors + ((unsigned long )tmp___0 & 65535UL);
    spin_unlock_irqrestore(& tp->lock, flags);
  } else {
  }
  return (& dev->stats);
}
}
static void tulip_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct tulip_private *np ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  np = (struct tulip_private *)tmp;
  strlcpy((char *)(& info->driver), "tulip", 32UL);
  strlcpy((char *)(& info->version), "1.1.15-NAPI", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)np->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  return;
}
}
static int tulip_ethtool_set_wol(struct net_device *dev , struct ethtool_wolinfo *wolinfo )
{
  struct tulip_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  if ((wolinfo->wolopts & ~ tp->wolinfo.supported) != 0U) {
    return (-95);
  } else {
  }
  tp->wolinfo.wolopts = wolinfo->wolopts;
  device_set_wakeup_enable(& (tp->pdev)->dev, tp->wolinfo.wolopts != 0U);
  return (0);
}
}
static void tulip_ethtool_get_wol(struct net_device *dev , struct ethtool_wolinfo *wolinfo )
{
  struct tulip_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  wolinfo->supported = tp->wolinfo.supported;
  wolinfo->wolopts = tp->wolinfo.wolopts;
  return;
}
}
static struct ethtool_ops const ops =
     {0, 0, & tulip_get_drvinfo, 0, 0, & tulip_ethtool_get_wol, & tulip_ethtool_set_wol,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int private_ioctl(struct net_device *dev , struct ifreq *rq , int cmd )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  unsigned int phy_idx ;
  int phy ;
  unsigned int regnum ;
  int csr12 ;
  unsigned int tmp___1 ;
  int csr14 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  int tmp___4 ;
  u16 value ;
  u16 tmp___5 ;
  u16 value___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = if_mii(rq);
  data = tmp___0;
  phy_idx = 0U;
  phy = (int )tp->phys[phy_idx] & 31;
  regnum = (unsigned int )data->reg_num;
  switch (cmd) {
  case 35143: ;
  if ((int )tp->mii_cnt != 0) {
    data->phy_id = (__u16 )phy;
  } else
  if ((tp->flags & 64) != 0) {
    data->phy_id = 32U;
  } else
  if (tp->chip_id == 10) {
    data->phy_id = 1U;
  } else {
    return (-19);
  }
  case 35144: ;
  if ((unsigned int )data->phy_id == 32U && (tp->flags & 64) != 0) {
    tmp___1 = ioread32(ioaddr + 96UL);
    csr12 = (int )tmp___1;
    tmp___2 = ioread32(ioaddr + 112UL);
    csr14 = (int )tmp___2;
    switch (regnum) {
    case 0U: ;
    if (((csr14 << 5) & 4096) != 0 || ((unsigned int )dev->if_port == 5U && (unsigned int )*((unsigned char *)tp + 3429UL) != 0U)) {
      data->val_out = 4096U;
    } else {
      data->val_out = (__u16 )((((int )tulip_media_cap[(int )dev->if_port] & 16) != 0 ? 8192 : 0) | ((int )tulip_media_cap[(int )dev->if_port] & 1 ? 256 : 0));
    }
    goto ldv_44428;
    case 1U:
    data->val_out = ((csr12 & 28672) == 20480 ? 6248U : 6216U) + ((csr12 & 6) == 6 ? 0U : 4U);
    data->val_out = (__u16 )((unsigned int )data->val_out | 24648U);
    goto ldv_44428;
    case 4U:
    tmp___3 = ioread32(ioaddr + 48UL);
    data->val_out = (((unsigned int )((__u16 )(tmp___3 >> 3)) & 64U) + ((unsigned int )((__u16 )(csr14 >> 1)) & 32U)) + 1U;
    data->val_out = (__u16 )((int )((short )data->val_out) | ((int )((short )(csr14 >> 9)) & 960));
    goto ldv_44428;
    case 5U:
    data->val_out = tp->lpar;
    goto ldv_44428;
    default:
    data->val_out = 0U;
    goto ldv_44428;
    }
    ldv_44428: ;
  } else {
    tmp___4 = tulip_mdio_read(dev, (int )data->phy_id & 31, (int )regnum);
    data->val_out = (__u16 )tmp___4;
  }
  return (0);
  case 35145: ;
  if ((regnum & 4294967264U) != 0U) {
    return (-22);
  } else {
  }
  if ((int )data->phy_id == phy) {
    value = data->val_in;
    switch (regnum) {
    case 0U:
    tp->full_duplex_lock = ((int )value & 36864) == 0;
    if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
      tp->full_duplex = ((int )value & 256) != 0;
    } else {
    }
    goto ldv_44436;
    case 4U:
    tmp___5 = data->val_in;
    tp->mii_advertise = tmp___5;
    tp->advertising[phy_idx] = tmp___5;
    goto ldv_44436;
    }
    ldv_44436: ;
  } else {
  }
  if ((unsigned int )data->phy_id == 32U && (tp->flags & 64) != 0) {
    value___0 = data->val_in;
    if (regnum == 0U) {
      if (((int )value___0 & 4608) == 4608) {
        if (tp->chip_id == 9) {
          pnic2_start_nway(dev);
        } else {
          t21142_start_nway(dev);
        }
      } else {
      }
    } else
    if (regnum == 4U) {
      tp->sym_advertise = value___0;
    } else {
    }
  } else {
    tulip_mdio_write(dev, (int )data->phy_id & 31, (int )regnum, (int )data->val_in);
  }
  return (0);
  default: ;
  return (-95);
  }
  return (-95);
}
}
static void build_setup_frame_hash(u16 *setup_frm , struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  u16 hash_table[32U] ;
  struct netdev_hw_addr *ha ;
  int i ;
  u16 *eaddrs ;
  struct list_head const *__mptr ;
  int index ;
  u32 tmp___0 ;
  struct list_head const *__mptr___0 ;
  u16 *tmp___1 ;
  u16 *tmp___2 ;
  u16 *tmp___3 ;
  u16 *tmp___4 ;
  u16 *tmp___5 ;
  u16 *tmp___6 ;
  u16 *tmp___7 ;
  u16 *tmp___8 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  memset((void *)(& hash_table), 0, 64UL);
  __set_bit_le(255, (void *)(& hash_table));
  __mptr = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_44455;
  ldv_44454:
  tmp___0 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
  index = (int )tmp___0 & 511;
  __set_bit_le(index, (void *)(& hash_table));
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_44455: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_44454;
  } else {
  }
  i = 0;
  goto ldv_44458;
  ldv_44457:
  tmp___1 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___1 = hash_table[i];
  tmp___2 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___2 = hash_table[i];
  i = i + 1;
  ldv_44458: ;
  if (i <= 31) {
    goto ldv_44457;
  } else {
  }
  setup_frm = (u16 *)(& tp->setup_frame) + 78UL;
  eaddrs = (u16 *)dev->dev_addr;
  tmp___3 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___3 = *eaddrs;
  tmp___4 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___4 = *eaddrs;
  tmp___5 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___5 = *(eaddrs + 1UL);
  tmp___6 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___6 = *(eaddrs + 1UL);
  tmp___7 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___7 = *(eaddrs + 2UL);
  tmp___8 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___8 = *(eaddrs + 2UL);
  return;
}
}
static void build_setup_frame_perfect(u16 *setup_frm , struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  struct netdev_hw_addr *ha ;
  u16 *eaddrs ;
  struct list_head const *__mptr ;
  u16 *tmp___0 ;
  u16 *tmp___1 ;
  u16 *tmp___2 ;
  u16 *tmp___3 ;
  u16 *tmp___4 ;
  u16 *tmp___5 ;
  u16 *tmp___6 ;
  u16 *tmp___7 ;
  u16 *tmp___8 ;
  struct list_head const *__mptr___0 ;
  u16 *tmp___9 ;
  u16 *tmp___10 ;
  u16 *tmp___11 ;
  u16 *tmp___12 ;
  u16 *tmp___13 ;
  u16 *tmp___14 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  __mptr = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_44472;
  ldv_44471:
  eaddrs = (u16 *)(& ha->addr);
  tmp___0 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___0 = *eaddrs;
  tmp___1 = setup_frm;
  setup_frm = setup_frm + 1;
  tmp___2 = eaddrs;
  eaddrs = eaddrs + 1;
  *tmp___1 = *tmp___2;
  tmp___3 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___3 = *eaddrs;
  tmp___4 = setup_frm;
  setup_frm = setup_frm + 1;
  tmp___5 = eaddrs;
  eaddrs = eaddrs + 1;
  *tmp___4 = *tmp___5;
  tmp___6 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___6 = *eaddrs;
  tmp___7 = setup_frm;
  setup_frm = setup_frm + 1;
  tmp___8 = eaddrs;
  eaddrs = eaddrs + 1;
  *tmp___7 = *tmp___8;
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_44472: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_44471;
  } else {
  }
  memset((void *)setup_frm, 255, (size_t )(dev->mc.count * -12 + 180));
  setup_frm = (u16 *)(& tp->setup_frame) + 90UL;
  eaddrs = (u16 *)dev->dev_addr;
  tmp___9 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___9 = *eaddrs;
  tmp___10 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___10 = *eaddrs;
  tmp___11 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___11 = *(eaddrs + 1UL);
  tmp___12 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___12 = *(eaddrs + 1UL);
  tmp___13 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___13 = *(eaddrs + 2UL);
  tmp___14 = setup_frm;
  setup_frm = setup_frm + 1;
  *tmp___14 = *(eaddrs + 2UL);
  return;
}
}
static void set_rx_mode(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr6 ;
  unsigned int tmp___0 ;
  struct netdev_hw_addr *ha ;
  u32 mc_filter[2U] ;
  int filterbit ;
  struct list_head const *__mptr ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  struct list_head const *__mptr___0 ;
  unsigned long flags ;
  u32 tx_flags ;
  unsigned int entry ;
  int dummy ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 48UL);
  csr6 = (int )tmp___0 & -214;
  tp->csr6 = tp->csr6 & 4294967082U;
  if ((dev->flags & 256U) != 0U) {
    tp->csr6 = tp->csr6 | 192U;
    csr6 = csr6 | 192;
  } else
  if (dev->mc.count > 1000 || (dev->flags & 512U) != 0U) {
    tp->csr6 = tp->csr6 | 128U;
    csr6 = csr6 | 128;
  } else
  if ((tp->flags & 32) != 0) {
    if (dev->mc.count > 64) {
      tp->csr6 = tp->csr6 | 128U;
      csr6 = csr6 | 128;
    } else {
      mc_filter[0] = 0U;
      mc_filter[1] = 0U;
      __mptr = (struct list_head const *)dev->mc.list.next;
      ha = (struct netdev_hw_addr *)__mptr;
      goto ldv_44488;
      ldv_44487: ;
      if ((tp->flags & 2048) != 0) {
        tmp___1 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
        filterbit = (int )tmp___1;
      } else {
        tmp___2 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
        tmp___3 = bitrev32(tmp___2);
        filterbit = (int )(tmp___3 >> 26);
      }
      filterbit = filterbit & 63;
      mc_filter[filterbit >> 5] = mc_filter[filterbit >> 5] | (u32 )(1 << (filterbit & 31));
      if (tulip_debug > 2) {
        tmp___4 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
        tmp___5 = bitrev32(tmp___4);
        _dev_info((struct device const *)(& dev->dev), "Added filter for %pM  %08x bit %d\n",
                  (unsigned char *)(& ha->addr), tmp___5, filterbit);
      } else {
      }
      __mptr___0 = (struct list_head const *)ha->list.next;
      ha = (struct netdev_hw_addr *)__mptr___0;
      ldv_44488: ;
      if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
        goto ldv_44487;
      } else {
      }
      if (mc_filter[0] == tp->mc_filter[0] && mc_filter[1] == tp->mc_filter[1]) {
      } else
      if ((tp->flags & 512) != 0) {
        iowrite32(2U, ioaddr + 104UL);
        iowrite32(mc_filter[0], ioaddr + 112UL);
        iowrite32(3U, ioaddr + 104UL);
        iowrite32(mc_filter[1], ioaddr + 112UL);
      } else
      if ((tp->flags & 2048) != 0) {
        iowrite32(mc_filter[0], ioaddr + 172UL);
        iowrite32(mc_filter[1], ioaddr + 176UL);
      } else {
      }
      tp->mc_filter[0] = mc_filter[0];
      tp->mc_filter[1] = mc_filter[1];
    }
  } else {
    tx_flags = 134217920U;
    if (dev->mc.count > 14) {
      build_setup_frame_hash((u16 *)(& tp->setup_frame), dev);
      tx_flags = 138412224U;
    } else {
      build_setup_frame_perfect((u16 *)(& tp->setup_frame), dev);
    }
    ldv_spin_lock();
    if (tp->cur_tx - tp->dirty_tx > 30U) {
    } else {
      dummy = -1;
      tmp___6 = tp->cur_tx;
      tp->cur_tx = tp->cur_tx + 1U;
      entry = tmp___6 & 31U;
      if (entry != 0U) {
        tp->tx_buffers[entry].skb = (struct sk_buff *)0;
        tp->tx_buffers[entry].mapping = 0ULL;
        (tp->tx_ring + (unsigned long )entry)->length = entry == 31U ? 33554432U : 0U;
        (tp->tx_ring + (unsigned long )entry)->buffer1 = 0U;
        dummy = (int )entry;
        tmp___7 = tp->cur_tx;
        tp->cur_tx = tp->cur_tx + 1U;
        entry = tmp___7 & 31U;
      } else {
      }
      tp->tx_buffers[entry].skb = (struct sk_buff *)0;
      tp->tx_buffers[entry].mapping = pci_map_single___0(tp->pdev, (void *)(& tp->setup_frame),
                                                         192UL, 1);
      if (entry == 31U) {
        tx_flags = tx_flags | 33554432U;
      } else {
      }
      (tp->tx_ring + (unsigned long )entry)->length = tx_flags;
      (tp->tx_ring + (unsigned long )entry)->buffer1 = (unsigned int )tp->tx_buffers[entry].mapping;
      (tp->tx_ring + (unsigned long )entry)->status = 2147483648U;
      if (dummy >= 0) {
        (tp->tx_ring + (unsigned long )dummy)->status = 2147483648U;
      } else {
      }
      if (tp->cur_tx - tp->dirty_tx > 29U) {
        netif_stop_queue(dev);
      } else {
      }
      iowrite32(0U, ioaddr + 8UL);
    }
    spin_unlock_irqrestore(& tp->lock, flags);
  }
  iowrite32((u32 )csr6, ioaddr + 48UL);
  return;
}
}
static void tulip_mwi_config(struct pci_dev *pdev , struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  u8 cache ;
  u16 pci_command ;
  u32 csr0___0 ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  if (tulip_debug > 3) {
    descriptor.modname = "tulip";
    descriptor.function = "tulip_mwi_config";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/tulip_core.o.c.prepared";
    descriptor.format = "tulip_mwi_config()\n";
    descriptor.lineno = 1294U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "tulip_mwi_config()\n");
    } else {
    }
  } else {
  }
  csr0___0 = 0U;
  tp->csr0 = csr0___0;
  csr0___0 = csr0___0 | 18874368U;
  pci_try_set_mwi(pdev);
  pci_read_config_word((struct pci_dev const *)pdev, 4, & pci_command);
  if ((csr0___0 & 16777216U) != 0U && ((int )pci_command & 16) == 0) {
    csr0___0 = csr0___0 & 4278190079U;
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, 12, & cache);
  if ((csr0___0 & 16777216U) != 0U && (unsigned int )cache == 0U) {
    csr0___0 = csr0___0 & 4278190079U;
    pci_clear_mwi(pdev);
  } else {
  }
  switch ((int )cache) {
  case 8:
  csr0___0 = csr0___0 | 8409088U;
  goto ldv_44505;
  case 16:
  csr0___0 = csr0___0 | 8425472U;
  goto ldv_44505;
  case 32:
  csr0___0 = csr0___0 | 8445952U;
  goto ldv_44505;
  default:
  cache = 0U;
  goto ldv_44505;
  }
  ldv_44505: ;
  if ((unsigned int )cache != 0U) {
    goto out;
  } else {
  }
  if ((csr0___0 & 16777216U) != 0U) {
    pci_clear_mwi(pdev);
    csr0___0 = csr0___0 & 4278190079U;
  } else {
  }
  csr0___0 = csr0___0 | 18432U;
  out:
  tp->csr0 = csr0___0;
  if (tulip_debug > 2) {
    descriptor___0.modname = "tulip";
    descriptor___0.function = "tulip_mwi_config";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/tulip_core.o.c.prepared";
    descriptor___0.format = "MWI config cacheline=%d, csr0=%08x\n";
    descriptor___0.lineno = 1357U;
    descriptor___0.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "MWI config cacheline=%d, csr0=%08x\n",
                           (int )cache, csr0___0);
    } else {
    }
  } else {
  }
  return;
}
}
static int tulip_uli_dm_quirk(struct pci_dev *pdev )
{
  {
  if ((unsigned int )pdev->vendor == 4738U && (unsigned int )pdev->device == 37122U) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct net_device_ops const tulip_netdev_ops =
     {0, 0, & tulip_open, & tulip_close, & tulip_start_xmit, 0, 0, & set_rx_mode, & eth_mac_addr,
    & eth_validate_addr, & private_ioctl, 0, & eth_change_mtu, 0, & tulip_tx_timeout,
    0, & tulip_get_stats, 0, 0, & poll_tulip, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
struct pci_device_id const early_486_chipsets[3U] = { {32902U, 1155U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4153U, 1174U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
static int tulip_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct tulip_private *tp ;
  unsigned char last_phys_addr[6U] ;
  int last_irq ;
  int multiport_cnt ;
  int i ;
  int irq ;
  unsigned short sum ;
  unsigned char *ee_data ;
  struct net_device *dev ;
  void *ioaddr ;
  int board_idx ;
  int chip_idx ;
  char const *chip_name ;
  unsigned int eeprom_missing ;
  unsigned int force_csr0 ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  u32 sig ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  int value ;
  int boguscnt ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  int sa_offset ;
  int ee_addr_size ;
  int tmp___8 ;
  int ee_max_addr ;
  u16 data ;
  int tmp___9 ;
  char tmp___10 ;
  u16 media2advert[7U] ;
  int tmp___11 ;
  {
  last_phys_addr[0] = 0U;
  last_phys_addr[1] = 76U;
  last_phys_addr[2] = 105U;
  last_phys_addr[3] = 110U;
  last_phys_addr[4] = 117U;
  last_phys_addr[5] = 120U;
  board_idx = -1;
  chip_idx = (int )ent->driver_data;
  chip_name = (char const *)tulip_tbl[chip_idx].chip_name;
  eeprom_missing = 0U;
  force_csr0 = 0U;
  board_idx = board_idx + 1;
  if ((unsigned int )pdev->subsystem_vendor == 4982U) {
    printk("\vtulip: skipping LMC card\n");
    return (-19);
  } else
  if ((unsigned int )pdev->subsystem_vendor == 4470U && (((unsigned int )pdev->subsystem_device == 9U || (unsigned int )pdev->subsystem_device == 2305U) || (unsigned int )pdev->subsystem_device == 2306U)) {
    printk("\vtulip: skipping SBE T3E3 port\n");
    return (-19);
  } else {
  }
  tmp = pci_dev_present((struct pci_device_id const *)(& early_486_chipsets));
  if (tmp != 0) {
    csr0 = 10504192;
    force_csr0 = 1U;
  } else {
  }
  if (chip_idx == 8) {
    if ((csr0 & 16128) == 0) {
      csr0 = csr0 | 8192;
    } else {
    }
  } else {
  }
  if (chip_idx == 4) {
    csr0 = csr0 & 983039;
  } else {
  }
  tmp___0 = tulip_uli_dm_quirk(pdev);
  if (tmp___0 != 0) {
    csr0 = csr0 & -32571648;
  } else {
  }
  i = pci_enable_device(pdev);
  if (i != 0) {
    printk("\vtulip: Cannot enable tulip board #%d, aborting\n", board_idx);
    return (i);
  } else {
  }
  irq = (int )pdev->irq;
  dev = alloc_etherdev_mqs(4144, 1U, 1U);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  dev->dev.parent = & pdev->dev;
  if ((pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (pdev->resource[0].end - pdev->resource[0].start) + 1ULL : 0ULL) < (resource_size_t )tulip_tbl[chip_idx].io_size) {
    tmp___1 = pci_name((struct pci_dev const *)pdev);
    printk("\vtulip: %s: I/O region (0x%llx@0x%llx) too small, aborting\n", tmp___1,
           pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (pdev->resource[0].end - pdev->resource[0].start) + 1ULL : 0ULL,
           pdev->resource[0].start);
    goto err_out_free_netdev;
  } else {
  }
  tmp___2 = pci_request_regions(pdev, "tulip");
  if (tmp___2 != 0) {
    goto err_out_free_netdev;
  } else {
  }
  ioaddr = pci_iomap(pdev, 1, (unsigned long )tulip_tbl[chip_idx].io_size);
  if ((unsigned long )ioaddr == (unsigned long )((void *)0)) {
    goto err_out_free_res;
  } else {
  }
  tmp___3 = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp___3;
  tp->dev = dev;
  tmp___4 = pci_alloc_consistent(pdev, 2560UL, & tp->rx_ring_dma);
  tp->rx_ring = (struct tulip_rx_desc *)tmp___4;
  if ((unsigned long )tp->rx_ring == (unsigned long )((struct tulip_rx_desc *)0)) {
    goto err_out_mtable;
  } else {
  }
  tp->tx_ring = (struct tulip_tx_desc *)tp->rx_ring + 128U;
  tp->tx_ring_dma = tp->rx_ring_dma + 2048ULL;
  tp->chip_id = chip_idx;
  tp->flags = tulip_tbl[chip_idx].flags;
  tp->wolinfo.supported = 0U;
  tp->wolinfo.wolopts = 0U;
  if (chip_idx == 10) {
    pci_read_config_dword((struct pci_dev const *)pdev, 128, & sig);
    if (sig == 159453975U) {
      tp->flags = tp->flags | 65536;
      tp->wolinfo.supported = 33U;
      printk("\016tulip: %s: Enabled WOL support for AN983B\n", "tulip_init_one");
    } else {
    }
  } else {
  }
  tp->pdev = pdev;
  tp->base_addr = ioaddr;
  tp->revision = (int )pdev->revision;
  tp->csr0 = (unsigned int )csr0;
  spinlock_check(& tp->lock);
  __raw_spin_lock_init(& tp->lock.ldv_6347.rlock, "&(&tp->lock)->rlock", & __key);
  spinlock_check(& tp->mii_lock);
  __raw_spin_lock_init(& tp->mii_lock.ldv_6347.rlock, "&(&tp->mii_lock)->rlock", & __key___0);
  reg_timer_3(& tp->timer);
  tp->timer.data = (unsigned long )dev;
  tp->timer.function = tulip_tbl[tp->chip_id].media_timer;
  __init_work(& tp->media_work, 0);
  __constr_expr_0.counter = 137438953408L;
  tp->media_work.data = __constr_expr_0;
  lockdep_init_map(& tp->media_work.lockdep_map, "(&tp->media_work)", & __key___1,
                   0);
  INIT_LIST_HEAD(& tp->media_work.entry);
  tp->media_work.func = tulip_tbl[tp->chip_id].media_task;
  if (force_csr0 == 0U && (tp->flags & 4096) != 0) {
    tulip_mwi_config(pdev, dev);
  } else {
  }
  tulip_stop_rxtx___2(tp);
  pci_set_master(pdev);
  ioread32(ioaddr + 64UL);
  ee_data = (unsigned char *)(& tp->eeprom);
  memset((void *)ee_data, 0, 512UL);
  sum = 0U;
  if (chip_idx == 4) {
    i = 0;
    goto ldv_44549;
    ldv_44548:
    boguscnt = 100000;
    iowrite32((u32 )(i | 1536), ioaddr + 152UL);
    ldv_44546:
    tmp___5 = ioread32(ioaddr + 72UL);
    value = (int )tmp___5;
    if (value < 0) {
      boguscnt = boguscnt - 1;
      if (boguscnt > 0) {
        goto ldv_44546;
      } else {
        goto ldv_44547;
      }
    } else {
    }
    ldv_44547:
    put_unaligned_le16((int )((u16 )value), (void *)dev->dev_addr + (unsigned long )i);
    sum = (int )((unsigned short )value) + (int )sum;
    i = i + 1;
    ldv_44549: ;
    if (i <= 2) {
      goto ldv_44548;
    } else {
    }
  } else
  if (chip_idx == 10) {
    tmp___6 = ioread32(ioaddr + 164UL);
    put_unaligned_le32(tmp___6, (void *)dev->dev_addr);
    tmp___7 = ioread32(ioaddr + 168UL);
    put_unaligned_le16((int )((u16 )tmp___7), (void *)dev->dev_addr + 4U);
    i = 0;
    goto ldv_44552;
    ldv_44551:
    sum = (int )((unsigned short )*(dev->dev_addr + (unsigned long )i)) + (int )sum;
    i = i + 1;
    ldv_44552: ;
    if (i <= 5) {
      goto ldv_44551;
    } else {
    }
  } else {
    sa_offset = 0;
    tmp___8 = tulip_read_eeprom(dev, 255, 8);
    ee_addr_size = (tmp___8 & 262144) != 0 ? 8 : 6;
    ee_max_addr = (2 << ee_addr_size) + -2;
    if ((unsigned int )ee_max_addr > 512U) {
      ee_max_addr = 512;
    } else {
    }
    i = 0;
    goto ldv_44559;
    ldv_44558:
    tmp___9 = tulip_read_eeprom(dev, i / 2, ee_addr_size);
    data = (u16 )tmp___9;
    *(ee_data + (unsigned long )i) = (unsigned char )data;
    *(ee_data + ((unsigned long )i + 1UL)) = (unsigned char )((int )data >> 8);
    i = (int )((unsigned int )i + 2U);
    ldv_44559: ;
    if (i < ee_max_addr) {
      goto ldv_44558;
    } else {
    }
    i = 0;
    goto ldv_44562;
    ldv_44561: ;
    if ((int )*(ee_data + (unsigned long )i) != (int )*(ee_data + (unsigned long )(i + 16))) {
      sa_offset = 20;
    } else {
    }
    i = i + 1;
    ldv_44562: ;
    if (i <= 7) {
      goto ldv_44561;
    } else {
    }
    if (chip_idx == 14) {
      if ((unsigned int )*(ee_data + 408UL) == 4U && (unsigned int )*(ee_data + 409UL) == 6U) {
        sa_offset = 410;
      } else {
      }
    } else
    if (((unsigned int )*ee_data == 255U && (unsigned int )*(ee_data + 1UL) == 255U) && (unsigned int )*(ee_data + 2UL) == 0U) {
      sa_offset = 2;
      multiport_cnt = 4;
    } else {
    }
    i = 0;
    goto ldv_44565;
    ldv_44564:
    *(dev->dev_addr + (unsigned long )i) = *(ee_data + (unsigned long )(i + sa_offset));
    sum = (int )((unsigned short )*(ee_data + (unsigned long )(i + sa_offset))) + (int )sum;
    i = i + 1;
    ldv_44565: ;
    if (i <= 5) {
      goto ldv_44564;
    } else {
    }
  }
  if ((((unsigned int )*(dev->dev_addr) == 160U || (unsigned int )*(dev->dev_addr) == 192U) || (unsigned int )*(dev->dev_addr) == 2U) && (unsigned int )*(dev->dev_addr + 1UL) == 0U) {
    i = 0;
    goto ldv_44569;
    ldv_44568:
    tmp___10 = (char )*(dev->dev_addr + (unsigned long )i);
    *(dev->dev_addr + (unsigned long )i) = *(dev->dev_addr + ((unsigned long )i + 1UL));
    *(dev->dev_addr + ((unsigned long )i + 1UL)) = (unsigned char )tmp___10;
    i = i + 2;
    ldv_44569: ;
    if (i <= 5) {
      goto ldv_44568;
    } else {
    }
  } else {
  }
  if ((unsigned int )sum == 0U || (unsigned int )sum == 1530U) {
    eeprom_missing = 1U;
    i = 0;
    goto ldv_44572;
    ldv_44571:
    *(dev->dev_addr + (unsigned long )i) = last_phys_addr[i];
    i = i + 1;
    ldv_44572: ;
    if (i <= 4) {
      goto ldv_44571;
    } else {
    }
    *(dev->dev_addr + (unsigned long )i) = (unsigned int )last_phys_addr[i] + 1U;
    if (last_irq != 0) {
      irq = last_irq;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_44575;
  ldv_44574:
  last_phys_addr[i] = *(dev->dev_addr + (unsigned long )i);
  i = i + 1;
  ldv_44575: ;
  if (i <= 5) {
    goto ldv_44574;
  } else {
  }
  last_irq = irq;
  if (board_idx >= 0 && board_idx <= 7) {
    if ((options[board_idx] & 31) != 0) {
      tp->default_port = (unsigned int )((unsigned char )options[board_idx]) & 15U;
    } else {
    }
    if ((options[board_idx] & 512) != 0 || full_duplex[board_idx] > 0) {
      tp->full_duplex = 1U;
    } else {
    }
    if (mtu[board_idx] > 0) {
      dev->mtu = (unsigned int )mtu[board_idx];
    } else {
    }
  } else {
  }
  if ((dev->mem_start & 31UL) != 0UL) {
    tp->default_port = (unsigned int )((unsigned char )dev->mem_start) & 15U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
    printk("\016tulip: tulip%d: Transceiver selection forced to %s\n", board_idx,
           medianame[(int )tp->default_port & 31]);
    tp->medialock = 1U;
    if (((int )tulip_media_cap[(int )tp->default_port] & 2) != 0) {
      tp->full_duplex = 1U;
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
    tp->full_duplex_lock = 1U;
  } else {
  }
  if (((int )tulip_media_cap[(int )tp->default_port] & 4) != 0) {
    media2advert[0] = 32U;
    media2advert[1] = 64U;
    media2advert[2] = 992U;
    media2advert[3] = 96U;
    media2advert[4] = 128U;
    media2advert[5] = 256U;
    media2advert[6] = 512U;
    tp->mii_advertise = media2advert[(int )tp->default_port + -9];
    tp->mii_advertise = (u16 )((int )((short )tp->mii_advertise) | ((int )((short )tp->flags) & 1024));
  } else {
  }
  if ((tp->flags & 2) != 0) {
    sprintf((char *)(& dev->name), "tulip%d", board_idx);
    tulip_parse_eeprom(dev);
    strcpy((char *)(& dev->name), "eth%d");
  } else {
  }
  if (((tp->flags & 8) != 0 || ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0) && (unsigned int )*((unsigned char *)tp->mtable + 4UL) != 0U)) || ((unsigned long )tp->mtable == (unsigned long )((struct mediatable *)0) && tp->flags & 1)) {
    if ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0) && (unsigned int )*((unsigned char *)tp->mtable + 4UL) != 0U) {
      i = 0;
      goto ldv_44580;
      ldv_44579: ;
      if ((unsigned int )(tp->mtable)->mleaf[i].media == 11U) {
        tp->cur_index = i;
        tp->saved_if_port = (int )dev->if_port;
        tulip_select_media(dev, 2);
        dev->if_port = (unsigned char )tp->saved_if_port;
        goto ldv_44578;
      } else {
      }
      i = i + 1;
      ldv_44580: ;
      if ((int )(tp->mtable)->leafcount > i) {
        goto ldv_44579;
      } else {
      }
      ldv_44578: ;
    } else {
    }
    tulip_find_mii(dev, board_idx);
  } else {
  }
  dev->netdev_ops = & tulip_netdev_ops;
  dev->watchdog_timeo = 1000;
  netif_napi_add(dev, & tp->napi, & tulip_poll, 16);
  dev->ethtool_ops = & ops;
  tmp___11 = ldv_register_netdev_215(dev);
  if (tmp___11 != 0) {
    goto err_out_free_ring;
  } else {
  }
  pci_set_drvdata(pdev, (void *)dev);
  _dev_info((struct device const *)(& dev->dev), "%s rev %d at MMIO %#llx,%s %pM, IRQ %d\n",
            chip_name, (int )pdev->revision, pdev->resource[1].start, eeprom_missing != 0U ? (char *)" EEPROM not present," : (char *)"",
            dev->dev_addr, irq);
  if (tp->chip_id == 9) {
    tp->link_change = & pnic2_lnk_change;
  } else
  if ((tp->flags & 64) != 0) {
    tp->link_change = & t21142_lnk_change;
  } else
  if ((tp->flags & 128) != 0) {
    tp->link_change = & pnic_lnk_change;
  } else {
  }
  switch (chip_idx) {
  case 2: ;
  case 13: ;
  default: ;
  if ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0)) {
    iowrite32((u32 )((int )(tp->mtable)->csr12dir | 256), ioaddr + 96UL);
  } else {
  }
  goto ldv_44585;
  case 3: ;
  if ((int )tp->mii_cnt != 0 || ((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
    iowrite32(2181169152U, ioaddr + 48UL);
    iowrite32(0U, ioaddr + 104UL);
    iowrite32(0U, ioaddr + 112UL);
    iowrite32(2181955584U, ioaddr + 48UL);
  } else {
    t21142_start_nway(dev);
  }
  goto ldv_44585;
  case 9:
  iowrite32(0U, ioaddr + 104UL);
  iowrite32(0U, ioaddr + 112UL);
  goto ldv_44585;
  case 4: ;
  if ((int )tp->mii_cnt == 0) {
    tp->nway = 1U;
    tp->nwayset = 0U;
    iowrite32(4325376U, ioaddr + 48UL);
    iowrite32(48U, ioaddr + 96UL);
    iowrite32(127096U, ioaddr + 48UL);
    iowrite32(33681528U, ioaddr + 48UL);
  } else {
  }
  goto ldv_44585;
  case 5: ;
  case 11:
  iowrite32(0U, ioaddr + 48UL);
  iowrite32(463296U, ioaddr + 112UL);
  iowrite32(1U, ioaddr + 104UL);
  goto ldv_44585;
  case 6: ;
  case 7:
  iowrite32(27787264U, ioaddr + 48UL);
  iowrite32(4294967295U, ioaddr + 112UL);
  iowrite32(4096U, ioaddr + 96UL);
  goto ldv_44585;
  case 10: ;
  goto ldv_44585;
  }
  ldv_44585:
  tulip_set_power_state(tp, 0, 1);
  return (0);
  err_out_free_ring:
  pci_free_consistent(pdev, 2560UL, (void *)tp->rx_ring, tp->rx_ring_dma);
  err_out_mtable:
  kfree((void const *)tp->mtable);
  pci_iounmap(pdev, ioaddr);
  err_out_free_res:
  pci_release_regions(pdev);
  err_out_free_netdev:
  ldv_free_netdev_216(dev);
  return (-19);
}
}
static void tulip_set_wolopts(struct pci_dev *pdev , u32 wolopts )
{
  struct net_device *dev ;
  void *tmp ;
  struct tulip_private *tp ;
  void *tmp___0 ;
  void *ioaddr ;
  unsigned int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp___0;
  ioaddr = tp->base_addr;
  if ((tp->flags & 65536) != 0) {
    tmp___1 = ioread32(ioaddr + 136UL);
    tmp___1 = tmp___1 & 4277927807U;
    tmp___1 = tmp___1 | 524288U;
    iowrite32(tmp___1, ioaddr + 136UL);
    tmp___1 = ioread32(ioaddr + 104UL);
    tmp___1 = tmp___1 & 4294768895U;
    if ((wolopts & 32U) != 0U) {
      tmp___1 = tmp___1 | 512U;
    } else {
    }
    if ((int )wolopts & 1) {
      tmp___1 = tmp___1 | 196864U;
    } else {
    }
    tmp___1 = tmp___1 | 7U;
    iowrite32(tmp___1, ioaddr + 104UL);
  } else {
  }
  return;
}
}
static int tulip_suspend(struct pci_dev *pdev , pm_message_t state )
{
  pci_power_t pstate ;
  struct net_device *dev ;
  void *tmp ;
  struct tulip_private *tp ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int rc ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp___0;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    goto save_state;
  } else {
  }
  tulip_down(dev);
  netif_device_detach(dev);
  ldv_free_irq_217((tp->pdev)->irq, (void *)dev);
  save_state:
  pci_save_state(pdev);
  pci_disable_device(pdev);
  pstate = pci_choose_state(pdev, state);
  if (state.event == 2 && pstate != 0) {
    tulip_set_wolopts(pdev, tp->wolinfo.wolopts);
    rc = pci_enable_wake(pdev, pstate, tp->wolinfo.wolopts != 0U);
    if (rc != 0) {
      printk("\vtulip: pci_enable_wake failed (%d)\n", rc);
    } else {
    }
  } else {
  }
  pci_set_power_state(pdev, pstate);
  return (0);
}
}
static int tulip_resume(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct tulip_private *tp ;
  void *tmp___0 ;
  void *ioaddr ;
  int retval ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp___0;
  ioaddr = tp->base_addr;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  tmp___2 = netif_running((struct net_device const *)dev);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  retval = pci_enable_device(pdev);
  if (retval != 0) {
    printk("\vtulip: pci_enable_device failed in resume\n");
    return (retval);
  } else {
  }
  retval = ldv_request_irq_218(pdev->irq, & tulip_interrupt, 128UL, (char const *)(& dev->name),
                               (void *)dev);
  if (retval != 0) {
    printk("\vtulip: request_irq failed in resume\n");
    return (retval);
  } else {
  }
  if ((tp->flags & 65536) != 0) {
    pci_enable_wake(pdev, 3, 0);
    pci_enable_wake(pdev, 4, 0);
    tmp___1 = ioread32(ioaddr + 144UL);
    tmp___1 = tmp___1 | 32768U;
    iowrite32(tmp___1, ioaddr + 144UL);
    tulip_set_wolopts(pdev, 0U);
  } else {
  }
  netif_device_attach(dev);
  tmp___4 = netif_running((struct net_device const *)dev);
  if ((int )tmp___4) {
    tulip_up(dev);
  } else {
  }
  return (0);
}
}
static void tulip_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct tulip_private *tp ;
  void *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return;
  } else {
  }
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp___0;
  ldv_unregister_netdev_219(dev);
  pci_free_consistent(pdev, 2560UL, (void *)tp->rx_ring, tp->rx_ring_dma);
  kfree((void const *)tp->mtable);
  pci_iounmap(pdev, tp->base_addr);
  ldv_free_netdev_220(dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  return;
}
}
static void poll_tulip(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  int irq ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  irq = (int const )(tp->pdev)->irq;
  disable_irq((unsigned int )irq);
  tulip_interrupt(irq, (void *)dev);
  enable_irq((unsigned int )irq);
  return;
}
}
static struct pci_driver tulip_driver =
     {{0, 0}, "tulip", (struct pci_device_id const *)(& tulip_pci_tbl), & tulip_init_one,
    & tulip_remove_one, & tulip_suspend, 0, 0, & tulip_resume, 0, 0, 0, {0, 0, 0,
                                                                         0, (_Bool)0,
                                                                         0, 0, 0,
                                                                         0, 0, 0,
                                                                         0, 0, 0,
                                                                         0}, {{{{{{0U}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                              {0,
                                                                               0}}};
static int tulip_init(void)
{
  int tmp ;
  {
  printk("\016tulip: %s", (char *)(& version));
  tulip_rx_copybreak = rx_copybreak;
  tulip_max_interrupt_work = max_interrupt_work;
  tmp = __pci_register_driver(& tulip_driver, & __this_module, "tulip");
  return (tmp);
}
}
static void tulip_cleanup(void)
{
  {
  pci_unregister_driver(& tulip_driver);
  return;
}
}
extern int ldv_ndo_init_7(void) ;
extern int ldv_ndo_uninit_7(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_44664;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_44664;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_44664;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_44664;
  default:
  ldv_stop();
  }
  ldv_44664: ;
  return;
}
}
void disable_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) {
    ldv_irq_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  tulip_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void choose_timer_5(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_5 = 2;
  return;
}
}
void choose_timer_3(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_3 = 2;
  return;
}
}
void activate_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_4 == (unsigned long )timer) {
    if (ldv_timer_state_4 == 2 || pending_flag != 0) {
      ldv_timer_list_4 = timer;
      ldv_timer_list_4->data = data;
      ldv_timer_state_4 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_4(timer);
  ldv_timer_list_4->data = data;
  return;
}
}
void ldv_initialize_pci_driver_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  tulip_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& tulip_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_44703;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_44703;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_44703;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_44703;
  default:
  ldv_stop();
  }
  ldv_44703: ;
  return;
}
}
void choose_timer_4(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_4 = 2;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& tulip_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_3) {
    ldv_timer_state_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_4) {
    ldv_timer_state_4 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_timer_4(struct timer_list *timer )
{
  {
  ldv_timer_list_4 = timer;
  ldv_timer_state_4 = 1;
  return (0);
}
}
void ldv_initialize_ethtool_ops_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(20UL);
  ops_group0 = (struct ethtool_wolinfo *)tmp;
  tmp___0 = ldv_zalloc(3264UL);
  ops_group1 = (struct net_device *)tmp___0;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = tulip_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_44739;
    default:
    ldv_stop();
    }
    ldv_44739: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3 == (unsigned long )timer) {
    if (ldv_timer_state_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3 = timer;
      ldv_timer_list_3->data = data;
      ldv_timer_state_3 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_3(timer);
  ldv_timer_list_3->data = data;
  return;
}
}
int reg_timer_3(struct timer_list *timer )
{
  {
  ldv_timer_list_3 = timer;
  ldv_timer_state_3 = 1;
  return (0);
}
}
void activate_pending_timer_5(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_5 == (unsigned long )timer) {
    if (ldv_timer_state_5 == 2 || pending_flag != 0) {
      ldv_timer_list_5 = timer;
      ldv_timer_list_5->data = data;
      ldv_timer_state_5 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_5(timer);
  ldv_timer_list_5->data = data;
  return;
}
}
void disable_suitable_timer_5(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_5) {
    ldv_timer_state_5 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_timer_5(struct timer_list *timer )
{
  {
  ldv_timer_list_5 = timer;
  ldv_timer_state_5 = 1;
  return (0);
}
}
int ldv_irq_2(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = tulip_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_44773;
    default:
    ldv_stop();
    }
    ldv_44773: ;
  } else {
  }
  return (state);
}
}
int main(void)
{
  struct pci_device_id *ldvarg1 ;
  void *tmp ;
  pm_message_t ldvarg0 ;
  int ldvarg4 ;
  int tmp___0 ;
  struct sk_buff *ldvarg3 ;
  void *tmp___1 ;
  int ldvarg5 ;
  int tmp___2 ;
  void *ldvarg2 ;
  void *tmp___3 ;
  struct ifreq *ldvarg6 ;
  void *tmp___4 ;
  struct ethtool_drvinfo *ldvarg7 ;
  void *tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg1 = (struct pci_device_id *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___0;
  tmp___1 = ldv_zalloc(232UL);
  ldvarg3 = (struct sk_buff *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg5 = tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg2 = tmp___3;
  tmp___4 = ldv_zalloc(40UL);
  ldvarg6 = (struct ifreq *)tmp___4;
  tmp___5 = ldv_zalloc(196UL);
  ldvarg7 = (struct ethtool_drvinfo *)tmp___5;
  ldv_initialize();
  memset((void *)(& ldvarg0), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 1;
  ldv_44836:
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_2 = tulip_init_one(tulip_driver_group0, (struct pci_device_id const *)ldvarg1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_44796;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      ldv_retval_1 = tulip_suspend(tulip_driver_group0, ldvarg0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 3;
      } else {
      }
    } else {
    }
    goto ldv_44796;
    case 2: ;
    if (ldv_state_variable_6 == 3) {
      tulip_remove_one(tulip_driver_group0);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      tulip_remove_one(tulip_driver_group0);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_44796;
    case 3: ;
    if (ldv_state_variable_6 == 3) {
      ldv_retval_0 = tulip_resume(tulip_driver_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
      } else {
      }
    } else {
    }
    goto ldv_44796;
    default:
    ldv_stop();
    }
    ldv_44796: ;
  } else {
  }
  goto ldv_44801;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3(ldv_timer_list_3);
  } else {
  }
  goto ldv_44801;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___8 = __VERIFIER_nondet_int();
    switch (tmp___8) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      set_rx_mode(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      set_rx_mode(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      set_rx_mode(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 1: ;
    if (ldv_state_variable_7 == 3) {
      tulip_close(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      eth_validate_addr(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      eth_validate_addr(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      eth_validate_addr(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      private_ioctl(tulip_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      private_ioctl(tulip_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      private_ioctl(tulip_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      tulip_get_stats(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      tulip_get_stats(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      tulip_get_stats(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      poll_tulip(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      poll_tulip(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      poll_tulip(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 6: ;
    if (ldv_state_variable_7 == 3) {
      eth_change_mtu(tulip_netdev_ops_group1, ldvarg4);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      eth_change_mtu(tulip_netdev_ops_group1, ldvarg4);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 7: ;
    if (ldv_state_variable_7 == 2) {
      ldv_retval_4 = tulip_open(tulip_netdev_ops_group1);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_7 = 3;
      } else {
      }
    } else {
    }
    goto ldv_44805;
    case 8: ;
    if (ldv_state_variable_7 == 3) {
      tulip_start_xmit(ldvarg3, tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_44805;
    case 9: ;
    if (ldv_state_variable_7 == 1) {
      eth_mac_addr(tulip_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      eth_mac_addr(tulip_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      eth_mac_addr(tulip_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 10: ;
    if (ldv_state_variable_7 == 1) {
      tulip_tx_timeout(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      tulip_tx_timeout(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      tulip_tx_timeout(tulip_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_44805;
    case 11: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_3 = ldv_ndo_init_7();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_44805;
    case 12: ;
    if (ldv_state_variable_7 == 2) {
      ldv_ndo_uninit_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_44805;
    default:
    ldv_stop();
    }
    ldv_44805: ;
  } else {
  }
  goto ldv_44801;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_44801;
  case 4: ;
  if (ldv_state_variable_8 != 0) {
    tmp___9 = __VERIFIER_nondet_int();
    switch (tmp___9) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      tulip_ethtool_get_wol(ops_group1, ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_44822;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      tulip_ethtool_set_wol(ops_group1, ops_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_44822;
    case 2: ;
    if (ldv_state_variable_8 == 1) {
      tulip_get_drvinfo(ops_group1, ldvarg7);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_44822;
    default:
    ldv_stop();
    }
    ldv_44822: ;
  } else {
  }
  goto ldv_44801;
  case 5: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_44801;
  case 6: ;
  if (ldv_state_variable_4 != 0) {
    choose_timer_4(ldv_timer_list_4);
  } else {
  }
  goto ldv_44801;
  case 7: ;
  if (ldv_state_variable_0 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      tulip_cleanup();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_44831;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_5 = tulip_init();
      if (ldv_retval_5 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_5 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_6 = 1;
        ldv_initialize_pci_driver_6();
        ldv_state_variable_8 = 1;
        ldv_initialize_ethtool_ops_8();
      } else {
      }
    } else {
    }
    goto ldv_44831;
    default:
    ldv_stop();
    }
    ldv_44831: ;
  } else {
  }
  goto ldv_44801;
  case 8: ;
  if (ldv_state_variable_5 != 0) {
    choose_timer_5(ldv_timer_list_5);
  } else {
  }
  goto ldv_44801;
  default:
  ldv_stop();
  }
  ldv_44801: ;
  goto ldv_44836;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
int ldv_pskb_expand_head_200(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_202(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_204(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_205(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_206(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_207(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_209(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
__inline static int ldv_request_irq_211(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_212(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_213(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_free_irq_214(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_register_netdev_215(struct net_device *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_net_device_ops_7();
  return (ldv_func_res);
}
}
void ldv_free_netdev_216(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_free_irq_217(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_218(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_219(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_free_netdev_220(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
int ldv_mod_timer_273(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_del_timer_sync_274(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_275(struct timer_list *ldv_func_arg1 ) ;
extern void iowrite16(u16 , void * ) ;
struct sk_buff *ldv_skb_clone_264(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_272(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_266(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_270(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_271(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_267(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_268(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_269(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void tulip_stop_rxtx___3(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43802;
    ldv_43801:
    __const_udelay(42950UL);
    ldv_43802:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43801;
      } else {
        goto ldv_43803;
      }
    } else {
    }
    ldv_43803: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx___3(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx___3(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
static u16 t21142_csr13[5U] = { 1U, 9U, 9U, 0U,
        1U};
u16 t21142_csr14[5U] = { 65535U, 1797U, 1797U, 0U,
        32573U};
static u16 t21142_csr15[5U] = { 8U, 6U, 14U, 8U,
        8U};
void t21142_media_task(struct work_struct *work )
{
  struct tulip_private *tp ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  void *ioaddr ;
  int csr12 ;
  unsigned int tmp ;
  int next_tick ;
  int new_csr6 ;
  int csr14 ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct tulip_private *)__mptr + 0xfffffffffffff028UL;
  dev = tp->dev;
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 96UL);
  csr12 = (int )tmp;
  next_tick = 15000;
  new_csr6 = 0;
  tmp___0 = ioread32(ioaddr + 112UL);
  csr14 = (int )tmp___0;
  if ((csr14 & 128) != 0 && (csr12 & 28672) != 20480) {
    csr12 = csr12 | 6;
  } else {
  }
  if (tulip_debug > 2) {
    _dev_info((struct device const *)(& dev->dev), "21143 negotiation status %08x, %s\n",
              csr12, medianame[(int )dev->if_port]);
  } else {
  }
  if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
    tmp___1 = tulip_check_duplex(dev);
    if (tmp___1 < 0) {
      netif_carrier_off(dev);
      next_tick = 750;
    } else {
      netif_carrier_on(dev);
      next_tick = 15000;
    }
  } else
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "Using NWay-set %s media, csr12 %08x\n",
                medianame[(int )dev->if_port], csr12);
    } else {
    }
  } else
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
  } else
  if ((unsigned int )dev->if_port == 3U) {
    if ((csr12 & 2) != 0) {
      if (tulip_debug > 1) {
        _dev_info((struct device const *)(& dev->dev), "No 21143 100baseTx link beat, %08x, trying NWay\n",
                  csr12);
      } else {
      }
      t21142_start_nway(dev);
      next_tick = 750;
    } else {
    }
  } else
  if ((csr12 & 28672) != 20480) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "21143 negotiation failed, status %08x\n",
                csr12);
    } else {
    }
    if ((csr12 & 4) == 0) {
      new_csr6 = -2109603840;
      dev->if_port = 0U;
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(262143U, ioaddr + 112UL);
      iowrite16((int )t21142_csr15[(int )dev->if_port], ioaddr + 120UL);
      iowrite32((u32 )t21142_csr13[(int )dev->if_port], ioaddr + 104UL);
    } else {
      new_csr6 = -2088370176;
      dev->if_port = 3U;
      iowrite32(0U, ioaddr + 104UL);
      iowrite32(262143U, ioaddr + 112UL);
      iowrite16(8, ioaddr + 120UL);
      iowrite32(1U, ioaddr + 104UL);
    }
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "Testing new 21143 media %s\n",
                medianame[(int )dev->if_port]);
    } else {
    }
    if ((unsigned int )new_csr6 != (tp->csr6 & 4294967082U)) {
      tp->csr6 = tp->csr6 & 213U;
      tp->csr6 = tp->csr6 | (unsigned int )new_csr6;
      iowrite32(769U, ioaddr + 96UL);
      tulip_restart_rxtx___3(tp);
    } else {
    }
    next_tick = 750;
  } else {
  }
  ldv_mod_timer_273(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  return;
}
}
void t21142_start_nway(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr14 ;
  unsigned char tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  csr14 = ((((int )tp->sym_advertise & 1920) << 9) | (((int )tp->sym_advertise & 32) << 1)) | 65471;
  dev->if_port = 0U;
  tmp___0 = 1U;
  tp->mediasense = tmp___0;
  tp->nway = tmp___0;
  tp->lpar = 0U;
  tp->nwayset = 0U;
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "t21142_start_nway";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/21142.o.c.prepared";
    descriptor.format = "Restarting 21143 autonegotiation, csr14=%08x\n";
    descriptor.lineno = 214U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Restarting 21143 autonegotiation, csr14=%08x\n",
                           csr14);
    } else {
    }
  } else {
  }
  iowrite32(1U, ioaddr + 104UL);
  __const_udelay(429500UL);
  iowrite32((u32 )csr14, ioaddr + 112UL);
  tp->csr6 = ((int )tp->sym_advertise & 64) != 0 ? 2185363968U : 2185363456U;
  iowrite32(tp->csr6, ioaddr + 48UL);
  if ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0) && (tp->mtable)->csr15dir != 0U) {
    iowrite32((tp->mtable)->csr15dir, ioaddr + 120UL);
    iowrite32((tp->mtable)->csr15val, ioaddr + 120UL);
  } else {
    iowrite16(8, ioaddr + 120UL);
  }
  iowrite32(4865U, ioaddr + 96UL);
  return;
}
}
void t21142_lnk_change(struct net_device *dev , int csr5 )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr12 ;
  unsigned int tmp___0 ;
  int csr14 ;
  unsigned int tmp___1 ;
  int setup_done ;
  int negotiated ;
  int i ;
  int startup ;
  struct _ddebug descriptor ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 96UL);
  csr12 = (int )tmp___0;
  tmp___1 = ioread32(ioaddr + 112UL);
  csr14 = (int )tmp___1;
  if ((csr14 & 128) != 0 && (csr12 & 28672) != 20480) {
    csr12 = csr12 | 6;
  } else {
  }
  if (tulip_debug > 1) {
    _dev_info((struct device const *)(& dev->dev), "21143 link status interrupt %08x, CSR5 %x, %08x\n",
              csr12, csr5, csr14);
  } else {
  }
  if (((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) && (csr12 & 28672) == 20480) {
    setup_done = 0;
    negotiated = (int )tp->sym_advertise & (csr12 >> 16);
    tp->lpar = (u16 )(csr12 >> 16);
    tp->nwayset = 1U;
    if ((csr12 & 32768) == 0) {
      dev->if_port = 0U;
    } else
    if ((negotiated & 256) != 0) {
      dev->if_port = 5U;
    } else
    if ((negotiated & 128) != 0) {
      dev->if_port = 3U;
    } else
    if ((negotiated & 64) != 0) {
      dev->if_port = 4U;
    } else
    if ((negotiated & 32) != 0) {
      dev->if_port = 0U;
    } else {
      tp->nwayset = 0U;
      if ((csr12 & 2) == 0 && ((int )tp->sym_advertise & 384) != 0) {
        dev->if_port = 3U;
      } else {
      }
    }
    tp->full_duplex = ((int )tulip_media_cap[(int )dev->if_port] & 2) != 0;
    if (tulip_debug > 1) {
      if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
        _dev_info((struct device const *)(& dev->dev), "Switching to %s based on link negotiation %04x & %04x = %04x\n",
                  medianame[(int )dev->if_port], (int )tp->sym_advertise, (int )tp->lpar,
                  negotiated);
      } else {
        _dev_info((struct device const *)(& dev->dev), "Autonegotiation failed, using %s, link beat status %04x\n",
                  medianame[(int )dev->if_port], csr12);
      }
    } else {
    }
    if ((unsigned long )tp->mtable != (unsigned long )((struct mediatable *)0)) {
      i = 0;
      goto ldv_43850;
      ldv_43849: ;
      if ((int )(tp->mtable)->mleaf[i].media == (int )dev->if_port) {
        startup = tp->chip_id != 3 || (tp->revision != 48 && tp->revision != 65);
        tp->cur_index = i;
        tulip_select_media(dev, startup);
        setup_done = 1;
        goto ldv_43848;
      } else {
      }
      i = i + 1;
      ldv_43850: ;
      if ((int )(tp->mtable)->leafcount > i) {
        goto ldv_43849;
      } else {
      }
      ldv_43848: ;
    } else {
    }
    if (setup_done == 0) {
      tp->csr6 = ((int )dev->if_port & 1 ? 2207121408U : 2185363456U) | (tp->csr6 & 8447U);
      if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
        tp->csr6 = tp->csr6 | 512U;
      } else {
      }
      iowrite32(1U, ioaddr + 104UL);
    } else {
    }
    tulip_start_rxtx(tp);
    if (tulip_debug > 2) {
      descriptor.modname = "tulip";
      descriptor.function = "t21142_lnk_change";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/21142.o.c.prepared";
      descriptor.format = " Setting CSR6 %08x/%x CSR12 %08x\n";
      descriptor.lineno = 304U;
      descriptor.flags = 1U;
      tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        tmp___2 = ioread32(ioaddr + 96UL);
        tmp___3 = ioread32(ioaddr + 48UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, " Setting CSR6 %08x/%x CSR12 %08x\n",
                             tp->csr6, tmp___3, tmp___2);
      } else {
      }
    } else {
    }
  } else
  if (((((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (csr5 & 134217728) != 0) && ((unsigned int )dev->if_port == 3U || (unsigned int )dev->if_port == 5U)) && (csr12 & 2) != 0) || ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (csr5 & 4096) != 0)) {
    ldv_del_timer_sync_274(& tp->timer);
    t21142_start_nway(dev);
    tp->timer.expires = (unsigned long )jiffies + 750UL;
    add_timer(& tp->timer);
  } else
  if ((unsigned int )dev->if_port == 3U || (unsigned int )dev->if_port == 5U) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "21143 %s link beat %s\n",
                medianame[(int )dev->if_port], (csr12 & 2) != 0 ? (char *)"failed" : (char *)"good");
    } else {
    }
    if ((csr12 & 2) != 0 && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
      ldv_del_timer_sync_275(& tp->timer);
      t21142_start_nway(dev);
      tp->timer.expires = (unsigned long )jiffies + 750UL;
      add_timer(& tp->timer);
    } else
    if ((unsigned int )dev->if_port == 5U) {
      iowrite32((u32 )csr14 & 4294967167U, ioaddr + 112UL);
    } else {
    }
  } else
  if ((unsigned int )dev->if_port == 0U || (unsigned int )dev->if_port == 4U) {
    if ((csr12 & 4) == 0) {
      _dev_info((struct device const *)(& dev->dev), "21143 10baseT link beat good\n");
    } else {
    }
  } else
  if ((csr12 & 4) == 0) {
    if (tulip_debug != 0) {
      _dev_info((struct device const *)(& dev->dev), "21143 10mbps sensed media\n");
    } else {
    }
    dev->if_port = 0U;
  } else
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
    if (tulip_debug != 0) {
      _dev_info((struct device const *)(& dev->dev), "21143 using NWay-set %s, csr6 %08x\n",
                medianame[(int )dev->if_port], tp->csr6);
    } else {
    }
  } else {
    if (tulip_debug != 0) {
      _dev_info((struct device const *)(& dev->dev), "21143 100baseTx sensed media\n");
    } else {
    }
    dev->if_port = 3U;
    tp->csr6 = (tp->csr6 & 8447U) | 2207121408U;
    iowrite32(262015U, ioaddr + 112UL);
    iowrite32(769U, ioaddr + 96UL);
    tulip_restart_rxtx___3(tp);
  }
  return;
}
}
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_264(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_266(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_267(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_268(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_269(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_270(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_271(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_272(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_273(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_274(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_275(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_292(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_295(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
int ldv_mod_timer_321(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
struct sk_buff *ldv_skb_clone_312(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_320(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_314(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_310(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_318(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_319(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_315(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_316(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_317(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern unsigned long dev_trans_start(struct net_device * ) ;
__inline static void tulip_stop_rxtx___4(struct tulip_private *tp )
{
  void *ioaddr ;
  u32 csr6 ;
  unsigned int tmp ;
  unsigned int i ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  {
  ioaddr = tp->base_addr;
  tmp = ioread32(ioaddr + 48UL);
  csr6 = tmp;
  if ((csr6 & 8194U) != 0U) {
    i = 130U;
    iowrite32(csr6 & 4294959101U, ioaddr + 48UL);
    __asm__ volatile ("": : : "memory");
    goto ldv_43794;
    ldv_43793:
    __const_udelay(42950UL);
    ldv_43794:
    i = i - 1U;
    if (i != 0U) {
      tmp___0 = ioread32(ioaddr + 40UL);
      if ((tmp___0 & 8257536U) != 0U) {
        goto ldv_43793;
      } else {
        goto ldv_43795;
      }
    } else {
    }
    ldv_43795: ;
    if (i == 0U) {
      descriptor.modname = "tulip";
      descriptor.function = "tulip_stop_rxtx";
      descriptor.filename = "/work/ldvuser/mutilin/launch/inst/current/envs/linux-3.16-rc1.tar.xz/linux-3.16-rc1/drivers/net/ethernet/dec/tulip/tulip.h";
      descriptor.format = "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n";
      descriptor.lineno = 549U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___1 = ioread32(ioaddr + 48UL);
        tmp___2 = ioread32(ioaddr + 40UL);
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)tp->dev, "tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\n",
                             tmp___2, tmp___1);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void tulip_restart_rxtx___4(struct tulip_private *tp )
{
  {
  tulip_stop_rxtx___4(tp);
  __const_udelay(21475UL);
  tulip_start_rxtx(tp);
  return;
}
}
void pnic_do_nway(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  u32 phy_reg ;
  unsigned int tmp___0 ;
  u32 new_csr6 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 184UL);
  phy_reg = tmp___0;
  new_csr6 = tp->csr6 & 3208379903U;
  if ((phy_reg & 2013265920U) != 0U) {
    if ((phy_reg & 536870912U) != 0U) {
      dev->if_port = 5U;
    } else
    if ((phy_reg & 1073741824U) != 0U) {
      dev->if_port = 3U;
    } else
    if ((phy_reg & 268435456U) != 0U) {
      dev->if_port = 4U;
    } else
    if ((phy_reg & 134217728U) != 0U) {
      dev->if_port = 0U;
    } else {
    }
    tp->nwayset = 1U;
    new_csr6 = (int )dev->if_port & 1 ? 25559040U : 4325376U;
    iowrite32((u32 )(((int )dev->if_port & 1) | 50), ioaddr + 96UL);
    if ((int )dev->if_port & 1) {
      iowrite32(129128U, ioaddr + 184UL);
    } else {
    }
    if ((phy_reg & 805306368U) != 0U) {
      tp->full_duplex = 1U;
      new_csr6 = new_csr6 | 512U;
    } else {
    }
    if (tulip_debug > 1) {
      descriptor.modname = "tulip";
      descriptor.function = "pnic_do_nway";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic.o.c.prepared";
      descriptor.format = "PNIC autonegotiated status %08x, %s\n";
      descriptor.lineno = 133U;
      descriptor.flags = 1U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "PNIC autonegotiated status %08x, %s\n",
                             phy_reg, medianame[(int )dev->if_port]);
      } else {
      }
    } else {
    }
    if (tp->csr6 != new_csr6) {
      tp->csr6 = new_csr6;
      tulip_restart_rxtx___4(tp);
      dev->trans_start = jiffies;
    } else {
    }
  } else {
  }
  return;
}
}
void pnic_lnk_change(struct net_device *dev , int csr5 )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int phy_reg ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  unsigned long tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 184UL);
  phy_reg = (int )tmp___0;
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "pnic_lnk_change";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic.o.c.prepared";
    descriptor.format = "PNIC link changed state %08x, CSR5 %08x\n";
    descriptor.lineno = 151U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "PNIC link changed state %08x, CSR5 %08x\n",
                           phy_reg, csr5);
    } else {
    }
  } else {
  }
  tmp___6 = ioread32(ioaddr + 40UL);
  if ((tmp___6 & 4096U) != 0U) {
    tmp___2 = ioread32(ioaddr + 56UL);
    iowrite32((tmp___2 & 4294963183U) | 16U, ioaddr + 56UL);
    if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
      return;
    } else {
    }
    if ((unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
      tp->csr6 = (tp->csr6 & 65023U) | 4325376U;
      iowrite32(tp->csr6, ioaddr + 48UL);
      iowrite32(48U, ioaddr + 96UL);
      iowrite32(33681528U, ioaddr + 184UL);
      dev->trans_start = jiffies;
    } else {
      tmp___3 = dev_trans_start(dev);
      if ((long )((tmp___3 - (unsigned long )jiffies) + 250UL) < 0L) {
        tp->csr6 = (tp->csr6 & 65023U) | 4325376U;
        iowrite32(tp->csr6, ioaddr + 48UL);
        iowrite32(48U, ioaddr + 96UL);
        iowrite32(33681528U, ioaddr + 184UL);
        dev->trans_start = jiffies;
      } else {
      }
    }
  } else {
    tmp___5 = ioread32(ioaddr + 40UL);
    if ((tmp___5 & 16U) != 0U) {
      if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
        spin_lock(& tp->lock);
        tulip_check_duplex(dev);
        spin_unlock(& tp->lock);
      } else {
        pnic_do_nway(dev);
      }
      tmp___4 = ioread32(ioaddr + 56UL);
      iowrite32((tmp___4 & 4294963183U) | 4096U, ioaddr + 56UL);
    } else {
    }
  }
  return;
}
}
void pnic_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int next_tick ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int csr12 ;
  unsigned int tmp___2 ;
  int new_csr6 ;
  int phy_reg ;
  unsigned int tmp___3 ;
  int csr5 ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  struct _ddebug descriptor___0 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  next_tick = 15000;
  tmp___0 = ioread32(ioaddr + 56UL);
  if (tmp___0 == 0U) {
    goto too_good_connection;
  } else {
  }
  if (((int )tulip_media_cap[(int )dev->if_port] & 4) != 0) {
    spin_lock_irq(& tp->lock);
    tmp___1 = tulip_check_duplex(dev);
    if (tmp___1 > 0) {
      next_tick = 750;
    } else {
    }
    spin_unlock_irq(& tp->lock);
  } else {
    tmp___2 = ioread32(ioaddr + 96UL);
    csr12 = (int )tmp___2;
    new_csr6 = (int )tp->csr6 & -1086587393;
    tmp___3 = ioread32(ioaddr + 184UL);
    phy_reg = (int )tmp___3;
    tmp___4 = ioread32(ioaddr + 40UL);
    csr5 = (int )tmp___4;
    if (tulip_debug > 1) {
      descriptor.modname = "tulip";
      descriptor.function = "pnic_timer";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic.o.c.prepared";
      descriptor.format = "PNIC timer PHY status %08x, %s CSR5 %08x\n";
      descriptor.lineno = 207U;
      descriptor.flags = 1U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "PNIC timer PHY status %08x, %s CSR5 %08x\n",
                             phy_reg, medianame[(int )dev->if_port], csr5);
      } else {
      }
    } else {
    }
    if ((phy_reg & 67108864) != 0) {
      iowrite32(33681528U, ioaddr + 184UL);
      next_tick = 250;
      tp->nwayset = 0U;
    } else
    if ((phy_reg & 2013265920) != 0) {
      pnic_do_nway(dev);
      next_tick = 15000;
    } else
    if ((csr5 & 4096) != 0) {
      if (tulip_debug > 1) {
        descriptor___0.modname = "tulip";
        descriptor___0.function = "pnic_timer";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic.o.c.prepared";
        descriptor___0.format = "%s link beat failed, CSR12 %04x, CSR5 %08x, PHY %03x\n";
        descriptor___0.lineno = 221U;
        descriptor___0.flags = 1U;
        tmp___8 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___8 != 0L) {
          tmp___6 = ioread32(ioaddr + 184UL);
          tmp___7 = ioread32(ioaddr + 40UL);
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev,
                               "%s link beat failed, CSR12 %04x, CSR5 %08x, PHY %03x\n",
                               medianame[(int )dev->if_port], csr12, tmp___7, tmp___6);
        } else {
        }
      } else {
      }
      next_tick = 750;
      if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
      } else
      if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (int )dev->if_port & 1) {
        next_tick = 250;
      } else
      if ((unsigned int )dev->if_port == 0U) {
        dev->if_port = 3U;
        iowrite32(51U, ioaddr + 96UL);
        new_csr6 = 25559040;
        iowrite32(129128U, ioaddr + 184UL);
      } else {
        dev->if_port = 0U;
        iowrite32(50U, ioaddr + 96UL);
        new_csr6 = 4325376;
        iowrite32(127096U, ioaddr + 184UL);
      }
      if (tp->csr6 != (unsigned int )new_csr6) {
        tp->csr6 = (unsigned int )new_csr6;
        tulip_restart_rxtx___4(tp);
        dev->trans_start = jiffies;
        if (tulip_debug > 1) {
          _dev_info((struct device const *)(& dev->dev), "Changing PNIC configuration to %s %s-duplex, CSR6 %08x\n",
                    medianame[(int )dev->if_port], (unsigned int )*((unsigned char *)tp + 3428UL) != 0U ? (char *)"full" : (char *)"half",
                    new_csr6);
        } else {
        }
      } else {
      }
    } else {
    }
  }
  too_good_connection:
  ldv_mod_timer_321(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  tmp___9 = ioread32(ioaddr + 56UL);
  if (tmp___9 == 0U) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "sw timer wakeup\n");
    } else {
    }
    disable_irq((unsigned int )dev->irq);
    tulip_refill_rx(dev);
    enable_irq((unsigned int )dev->irq);
    iowrite32((u32 )tulip_tbl[tp->chip_id].valid_intrs, ioaddr + 56UL);
  } else {
  }
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_292(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_295(lock);
  return;
}
}
int ldv_pskb_expand_head_310(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_312(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_314(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_315(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_316(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_317(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_318(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_319(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_320(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_321(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_365(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_del_timer_sync_366(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_367(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_368(struct timer_list *ldv_func_arg1 ) ;
struct sk_buff *ldv_skb_clone_356(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_364(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_358(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_354(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_362(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_363(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_359(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_360(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_361(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
void pnic2_timer(unsigned long data )
{
  struct net_device *dev ;
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int next_tick ;
  unsigned int tmp___0 ;
  {
  dev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  next_tick = 15000;
  if (tulip_debug > 3) {
    tmp___0 = ioread32(ioaddr + 96UL);
    _dev_info((struct device const *)(& dev->dev), "PNIC2 negotiation status %08x\n",
              tmp___0);
  } else {
  }
  if (next_tick != 0) {
    ldv_mod_timer_365(& tp->timer, (unsigned long )next_tick + (unsigned long )jiffies);
  } else {
  }
  return;
}
}
void pnic2_start_nway(struct net_device *dev )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr14 ;
  int csr12 ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  unsigned char tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  unsigned int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 112UL);
  csr14 = (int )tmp___0 & -987591;
  if (((int )tp->sym_advertise & 256) != 0) {
    csr14 = csr14 | 131072;
  } else {
  }
  if (((int )tp->sym_advertise & 128) != 0) {
    csr14 = csr14 | 65536;
  } else {
  }
  if (((int )tp->sym_advertise & 32) != 0) {
    csr14 = csr14 | 64;
  } else {
  }
  csr14 = csr14 | 4484;
  if (tulip_debug > 1) {
    descriptor.modname = "tulip";
    descriptor.function = "pnic2_start_nway";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic2.o.c.prepared";
    descriptor.format = "Restarting PNIC2 autonegotiation, csr14=%08x\n";
    descriptor.lineno = 217U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Restarting PNIC2 autonegotiation, csr14=%08x\n",
                           csr14);
    } else {
    }
  } else {
  }
  dev->if_port = 0U;
  tmp___2 = 1U;
  tp->mediasense = tmp___2;
  tp->nway = tmp___2;
  tp->lpar = 0U;
  tp->nwayset = 0U;
  tp->csr6 = ioread32(ioaddr + 48UL);
  if (tulip_debug > 1) {
    descriptor___0.modname = "tulip";
    descriptor___0.function = "pnic2_start_nway";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic2.o.c.prepared";
    descriptor___0.format = "On Entry to Nway, csr6=%08x\n";
    descriptor___0.lineno = 228U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "On Entry to Nway, csr6=%08x\n",
                           tp->csr6);
    } else {
    }
  } else {
  }
  tp->csr6 = tp->csr6 & 4265333245U;
  if (((int )tp->sym_advertise & 64) != 0) {
    tp->csr6 = tp->csr6 | 512U;
  } else {
  }
  tp->csr6 = tp->csr6 | 16777216U;
  iowrite32((u32 )csr14, ioaddr + 112UL);
  iowrite32(tp->csr6, ioaddr + 48UL);
  __const_udelay(429500UL);
  tmp___4 = ioread32(ioaddr + 96UL);
  csr12 = (int )tmp___4 & -28673;
  csr12 = csr12 | 4096;
  iowrite32((u32 )csr12, ioaddr + 96UL);
  return;
}
}
void pnic2_lnk_change(struct net_device *dev , int csr5 )
{
  struct tulip_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int csr14 ;
  int csr12 ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int negotiated ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  struct _ddebug descriptor ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  long tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  struct _ddebug descriptor___0 ;
  long tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct tulip_private *)tmp;
  ioaddr = tp->base_addr;
  tmp___0 = ioread32(ioaddr + 96UL);
  csr12 = (int )tmp___0;
  if (tulip_debug > 1) {
    tmp___1 = ioread32(ioaddr + 112UL);
    _dev_info((struct device const *)(& dev->dev), "PNIC2 link status interrupt %08x,  CSR5 %x, %08x\n",
              csr12, csr5, tmp___1);
  } else {
  }
  if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
    if ((csr12 & 28672) == 20480) {
      negotiated = ((csr12 >> 16) & 480) & (int )tp->sym_advertise;
      tp->lpar = (u16 )(csr12 >> 16);
      tp->nwayset = 1U;
      if ((negotiated & 256) != 0) {
        dev->if_port = 5U;
      } else
      if ((negotiated & 128) != 0) {
        dev->if_port = 3U;
      } else
      if ((negotiated & 64) != 0) {
        dev->if_port = 4U;
      } else
      if ((negotiated & 32) != 0) {
        dev->if_port = 0U;
      } else {
        if (tulip_debug > 1) {
          _dev_info((struct device const *)(& dev->dev), "funny autonegotiate result csr12 %08x advertising %04x\n",
                    csr12, (int )tp->sym_advertise);
        } else {
        }
        tp->nwayset = 0U;
        if ((csr12 & 2) == 0 && ((int )tp->sym_advertise & 384) != 0) {
          dev->if_port = 3U;
        } else {
        }
      }
      tp->full_duplex = 0U;
      if ((unsigned int )dev->if_port == 4U || (unsigned int )dev->if_port == 5U) {
        tp->full_duplex = 1U;
      } else {
      }
      if (tulip_debug > 1) {
        if ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U) {
          _dev_info((struct device const *)(& dev->dev), "Switching to %s based on link negotiation %04x & %04x = %04x\n",
                    medianame[(int )dev->if_port], (int )tp->sym_advertise, (int )tp->lpar,
                    negotiated);
        } else {
        }
      } else {
      }
      tmp___2 = ioread32(ioaddr + 112UL);
      csr14 = (int )tmp___2 & -129;
      iowrite32((u32 )csr14, ioaddr + 112UL);
      tmp___3 = ioread32(ioaddr + 48UL);
      tp->csr6 = tmp___3 & 4265333245U;
      if ((int )dev->if_port & 1) {
        tp->csr6 = tp->csr6 | 25427968U;
      } else {
        tp->csr6 = tp->csr6 | 4194304U;
      }
      if ((unsigned int )*((unsigned char *)tp + 3428UL) != 0U) {
        tp->csr6 = tp->csr6 | 512U;
      } else {
      }
      iowrite32(1U, ioaddr + 104UL);
      if (tulip_debug > 2) {
        descriptor.modname = "tulip";
        descriptor.function = "pnic2_lnk_change";
        descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic2.o.c.prepared";
        descriptor.format = "Setting CSR6 %08x/%x CSR12 %08x\n";
        descriptor.lineno = 364U;
        descriptor.flags = 1U;
        tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___6 != 0L) {
          tmp___4 = ioread32(ioaddr + 96UL);
          tmp___5 = ioread32(ioaddr + 48UL);
          __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev, "Setting CSR6 %08x/%x CSR12 %08x\n",
                               tp->csr6, tmp___5, tmp___4);
        } else {
        }
      } else {
      }
      tulip_start_rxtx(tp);
      return;
    } else {
      _dev_info((struct device const *)(& dev->dev), "Autonegotiation failed, using %s, link beat status %04x\n",
                medianame[(int )dev->if_port], csr12);
      tmp___7 = ioread32(ioaddr + 112UL);
      csr14 = (int )tmp___7 & -129;
      iowrite32((u32 )csr14, ioaddr + 112UL);
      dev->if_port = 0U;
      tp->nway = 0U;
      tp->nwayset = 1U;
      tmp___8 = ioread32(ioaddr + 48UL);
      tp->csr6 = tmp___8 & 4265333245U;
      tp->csr6 = tp->csr6 | 4194304U;
      tulip_restart_rxtx___1(tp);
      return;
    }
  } else {
  }
  if (((((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (csr5 & 134217728) != 0) && ((unsigned int )dev->if_port == 3U || (unsigned int )dev->if_port == 5U)) && (csr12 & 2) != 0) || ((unsigned int )*((unsigned char *)tp + 3429UL) != 0U && (csr5 & 4096) != 0)) {
    if (tulip_debug > 2) {
      descriptor___0.modname = "tulip";
      descriptor___0.function = "pnic2_lnk_change";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/10342/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/dec/tulip/pnic2.o.c.prepared";
      descriptor___0.format = "Ugh! Link blew?\n";
      descriptor___0.lineno = 415U;
      descriptor___0.flags = 1U;
      tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___9 != 0L) {
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev, "Ugh! Link blew?\n");
      } else {
      }
    } else {
    }
    ldv_del_timer_sync_366(& tp->timer);
    pnic2_start_nway(dev);
    tp->timer.expires = (unsigned long )jiffies + 750UL;
    add_timer(& tp->timer);
    return;
  } else {
  }
  if ((unsigned int )dev->if_port == 3U || (unsigned int )dev->if_port == 5U) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "PNIC2 %s link beat %s\n",
                medianame[(int )dev->if_port], (csr12 & 2) != 0 ? (char *)"failed" : (char *)"good");
    } else {
    }
    tp->nway = 0U;
    tp->nwayset = 1U;
    if ((csr12 & 2) != 0 && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
      ldv_del_timer_sync_367(& tp->timer);
      pnic2_start_nway(dev);
      tp->timer.expires = (unsigned long )jiffies + 750UL;
      add_timer(& tp->timer);
    } else {
    }
    return;
  } else {
  }
  if ((unsigned int )dev->if_port == 0U || (unsigned int )dev->if_port == 4U) {
    if (tulip_debug > 1) {
      _dev_info((struct device const *)(& dev->dev), "PNIC2 %s link beat %s\n",
                medianame[(int )dev->if_port], (csr12 & 4) != 0 ? (char *)"failed" : (char *)"good");
    } else {
    }
    tp->nway = 0U;
    tp->nwayset = 1U;
    if ((csr12 & 4) != 0 && (unsigned int )*((unsigned char *)tp + 3429UL) == 0U) {
      ldv_del_timer_sync_368(& tp->timer);
      pnic2_start_nway(dev);
      tp->timer.expires = (unsigned long )jiffies + 750UL;
      add_timer(& tp->timer);
    } else {
    }
    return;
  } else {
  }
  if (tulip_debug > 1) {
    _dev_info((struct device const *)(& dev->dev), "PNIC2 Link Change Default?\n");
  } else {
  }
  dev->if_port = 0U;
  tmp___10 = ioread32(ioaddr + 112UL);
  csr14 = (int )tmp___10 & -129;
  iowrite32((u32 )csr14, ioaddr + 112UL);
  tmp___11 = ioread32(ioaddr + 48UL);
  tp->csr6 = tmp___11 & 4265333245U;
  tp->csr6 = tp->csr6 | 4194304U;
  tulip_restart_rxtx___1(tp);
  return;
}
}
int ldv_pskb_expand_head_354(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_356(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_358(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_359(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_360(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_361(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_362(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_363(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_364(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_mod_timer_365(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_366(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_367(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_368(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  struct sk_buff *skb = ldv_malloc(sizeof(struct sk_buff));
  if(skb) {
    skb->dev = arg0;
    skb->head = ldv_malloc(arg1);
    skb->data = skb->head;
    skb->tail = 0;
  }
  return skb;
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
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
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int dev_trans_start(struct net_device *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_set_wakeup_enable(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread16(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16(u16 arg0, void *arg1) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_7() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_clear_mwi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_dev_present(const struct pci_device_id *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return ldv_malloc(arg2);
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_try_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}