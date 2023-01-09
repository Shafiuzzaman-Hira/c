extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "linux-4.2-rc1.tar.xz-32_7a-drivers--platform--x86--thinkpad_acpi.ko-entry_point.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
struct va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
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
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct file_operations;
struct completion;
struct lockdep_map;
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
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
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
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
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
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
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
struct vm_area_struct;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct wake_irq;
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
   struct wake_irq *wakeirq ;
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
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_159 shared ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
};
typedef unsigned long cputime_t;
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
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
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
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
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct kernfs_root;
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
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
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
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
   seqlock_t stats_lock ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct compat_robust_list_head;
struct numa_group;
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
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
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
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
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
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
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
   unsigned int kasan_depth ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct snd_kcontrol;
struct device_attribute;
struct led_classdev;
struct platform_device;
struct device_driver;
struct backlight_device;
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
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
   char *prealloc_buf ;
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
   bool prealloc ;
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
union __anonunion____missing_field_name_210 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_220 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_219 {
   struct __anonstruct____missing_field_name_220 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_219 __annonCompField59 ;
};
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_222 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_221 {
   struct __anonstruct____missing_field_name_222 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_221 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_223 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_223 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_227 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_226 __annonCompField63 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct bdi_writeback;
struct export_operations;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_231 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_231 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_232 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_232 __annonCompField65 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct writeback_control;
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
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
union __anonunion____missing_field_name_235 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_236 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_237 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_235 __annonCompField66 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_236 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
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
union __anonunion_f_u_238 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_238 f_u ;
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
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_240 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_239 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_240 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_239 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned long s_iflags ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
struct proc_dir_entry;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
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
struct pdev_archdata {
};
struct device_private;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
   struct fwnode_handle *fwnode ;
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
   struct wake_irq *wakeirq ;
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
typedef unsigned long kernel_ulong_t;
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
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct fb_fix_screeninfo {
   char id[16U] ;
   unsigned long smem_start ;
   __u32 smem_len ;
   __u32 type ;
   __u32 type_aux ;
   __u32 visual ;
   __u16 xpanstep ;
   __u16 ypanstep ;
   __u16 ywrapstep ;
   __u32 line_length ;
   unsigned long mmio_start ;
   __u32 mmio_len ;
   __u32 accel ;
   __u16 capabilities ;
   __u16 reserved[2U] ;
};
struct fb_bitfield {
   __u32 offset ;
   __u32 length ;
   __u32 msb_right ;
};
struct fb_var_screeninfo {
   __u32 xres ;
   __u32 yres ;
   __u32 xres_virtual ;
   __u32 yres_virtual ;
   __u32 xoffset ;
   __u32 yoffset ;
   __u32 bits_per_pixel ;
   __u32 grayscale ;
   struct fb_bitfield red ;
   struct fb_bitfield green ;
   struct fb_bitfield blue ;
   struct fb_bitfield transp ;
   __u32 nonstd ;
   __u32 activate ;
   __u32 height ;
   __u32 width ;
   __u32 accel_flags ;
   __u32 pixclock ;
   __u32 left_margin ;
   __u32 right_margin ;
   __u32 upper_margin ;
   __u32 lower_margin ;
   __u32 hsync_len ;
   __u32 vsync_len ;
   __u32 sync ;
   __u32 vmode ;
   __u32 rotate ;
   __u32 colorspace ;
   __u32 reserved[4U] ;
};
struct fb_cmap {
   __u32 start ;
   __u32 len ;
   __u16 *red ;
   __u16 *green ;
   __u16 *blue ;
   __u16 *transp ;
};
struct fb_copyarea {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 sx ;
   __u32 sy ;
};
struct fb_fillrect {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 color ;
   __u32 rop ;
};
struct fb_image {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 fg_color ;
   __u32 bg_color ;
   __u8 depth ;
   char const *data ;
   struct fb_cmap cmap ;
};
struct fbcurpos {
   __u16 x ;
   __u16 y ;
};
struct fb_cursor {
   __u16 set ;
   __u16 enable ;
   __u16 rop ;
   char const *mask ;
   struct fbcurpos hot ;
   struct fb_image image ;
};
struct fb_info;
struct fb_chroma {
   __u32 redx ;
   __u32 greenx ;
   __u32 bluex ;
   __u32 whitex ;
   __u32 redy ;
   __u32 greeny ;
   __u32 bluey ;
   __u32 whitey ;
};
struct fb_videomode;
struct fb_monspecs {
   struct fb_chroma chroma ;
   struct fb_videomode *modedb ;
   __u8 manufacturer[4U] ;
   __u8 monitor[14U] ;
   __u8 serial_no[14U] ;
   __u8 ascii[14U] ;
   __u32 modedb_len ;
   __u32 model ;
   __u32 serial ;
   __u32 year ;
   __u32 week ;
   __u32 hfmin ;
   __u32 hfmax ;
   __u32 dclkmin ;
   __u32 dclkmax ;
   __u16 input ;
   __u16 dpms ;
   __u16 signal ;
   __u16 vfmin ;
   __u16 vfmax ;
   __u16 gamma ;
   unsigned char gtf : 1 ;
   __u16 misc ;
   __u8 version ;
   __u8 revision ;
   __u8 max_x ;
   __u8 max_y ;
};
struct fb_blit_caps {
   u32 x ;
   u32 y ;
   u32 len ;
   u32 flags ;
};
struct fb_pixmap {
   u8 *addr ;
   u32 size ;
   u32 offset ;
   u32 buf_align ;
   u32 scan_align ;
   u32 access_align ;
   u32 flags ;
   u32 blit_x ;
   u32 blit_y ;
   void (*writeio)(struct fb_info * , void * , void * , unsigned int ) ;
   void (*readio)(struct fb_info * , void * , void * , unsigned int ) ;
};
struct fb_deferred_io {
   unsigned long delay ;
   struct mutex lock ;
   struct list_head pagelist ;
   void (*first_io)(struct fb_info * ) ;
   void (*deferred_io)(struct fb_info * , struct list_head * ) ;
};
struct fb_ops {
   struct module *owner ;
   int (*fb_open)(struct fb_info * , int ) ;
   int (*fb_release)(struct fb_info * , int ) ;
   ssize_t (*fb_read)(struct fb_info * , char * , size_t , loff_t * ) ;
   ssize_t (*fb_write)(struct fb_info * , char const * , size_t , loff_t * ) ;
   int (*fb_check_var)(struct fb_var_screeninfo * , struct fb_info * ) ;
   int (*fb_set_par)(struct fb_info * ) ;
   int (*fb_setcolreg)(unsigned int , unsigned int , unsigned int , unsigned int ,
                       unsigned int , struct fb_info * ) ;
   int (*fb_setcmap)(struct fb_cmap * , struct fb_info * ) ;
   int (*fb_blank)(int , struct fb_info * ) ;
   int (*fb_pan_display)(struct fb_var_screeninfo * , struct fb_info * ) ;
   void (*fb_fillrect)(struct fb_info * , struct fb_fillrect const * ) ;
   void (*fb_copyarea)(struct fb_info * , struct fb_copyarea const * ) ;
   void (*fb_imageblit)(struct fb_info * , struct fb_image const * ) ;
   int (*fb_cursor)(struct fb_info * , struct fb_cursor * ) ;
   void (*fb_rotate)(struct fb_info * , int ) ;
   int (*fb_sync)(struct fb_info * ) ;
   int (*fb_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_compat_ioctl)(struct fb_info * , unsigned int , unsigned long ) ;
   int (*fb_mmap)(struct fb_info * , struct vm_area_struct * ) ;
   void (*fb_get_caps)(struct fb_info * , struct fb_blit_caps * , struct fb_var_screeninfo * ) ;
   void (*fb_destroy)(struct fb_info * ) ;
   int (*fb_debug_enter)(struct fb_info * ) ;
   int (*fb_debug_leave)(struct fb_info * ) ;
};
struct fb_tilemap {
   __u32 width ;
   __u32 height ;
   __u32 depth ;
   __u32 length ;
   __u8 const *data ;
};
struct fb_tilerect {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 index ;
   __u32 fg ;
   __u32 bg ;
   __u32 rop ;
};
struct fb_tilearea {
   __u32 sx ;
   __u32 sy ;
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
};
struct fb_tileblit {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 fg ;
   __u32 bg ;
   __u32 length ;
   __u32 *indices ;
};
struct fb_tilecursor {
   __u32 sx ;
   __u32 sy ;
   __u32 mode ;
   __u32 shape ;
   __u32 fg ;
   __u32 bg ;
};
struct fb_tile_ops {
   void (*fb_settile)(struct fb_info * , struct fb_tilemap * ) ;
   void (*fb_tilecopy)(struct fb_info * , struct fb_tilearea * ) ;
   void (*fb_tilefill)(struct fb_info * , struct fb_tilerect * ) ;
   void (*fb_tileblit)(struct fb_info * , struct fb_tileblit * ) ;
   void (*fb_tilecursor)(struct fb_info * , struct fb_tilecursor * ) ;
   int (*fb_get_tilemax)(struct fb_info * ) ;
};
struct aperture {
   resource_size_t base ;
   resource_size_t size ;
};
struct apertures_struct {
   unsigned int count ;
   struct aperture ranges[0U] ;
};
struct fb_info {
   atomic_t count ;
   int node ;
   int flags ;
   struct mutex lock ;
   struct mutex mm_lock ;
   struct fb_var_screeninfo var ;
   struct fb_fix_screeninfo fix ;
   struct fb_monspecs monspecs ;
   struct work_struct queue ;
   struct fb_pixmap pixmap ;
   struct fb_pixmap sprite ;
   struct fb_cmap cmap ;
   struct list_head modelist ;
   struct fb_videomode *mode ;
   struct backlight_device *bl_dev ;
   struct mutex bl_curve_mutex ;
   u8 bl_curve[128U] ;
   struct delayed_work deferred_work ;
   struct fb_deferred_io *fbdefio ;
   struct fb_ops *fbops ;
   struct device *device ;
   struct device *dev ;
   int class_flag ;
   struct fb_tile_ops *tileops ;
   char *screen_base ;
   unsigned long screen_size ;
   void *pseudo_palette ;
   u32 state ;
   void *fbcon_par ;
   void *par ;
   struct apertures_struct *apertures ;
   bool skip_vt_switch ;
};
struct fb_videomode {
   char const *name ;
   u32 refresh ;
   u32 xres ;
   u32 yres ;
   u32 pixclock ;
   u32 left_margin ;
   u32 right_margin ;
   u32 upper_margin ;
   u32 lower_margin ;
   u32 hsync_len ;
   u32 vsync_len ;
   u32 sync ;
   u32 vmode ;
   u32 flag ;
};
enum backlight_update_reason {
    BACKLIGHT_UPDATE_HOTKEY = 0,
    BACKLIGHT_UPDATE_SYSFS = 1
} ;
enum backlight_type {
    BACKLIGHT_RAW = 1,
    BACKLIGHT_PLATFORM = 2,
    BACKLIGHT_FIRMWARE = 3,
    BACKLIGHT_TYPE_MAX = 4
} ;
struct backlight_ops {
   unsigned int options ;
   int (*update_status)(struct backlight_device * ) ;
   int (*get_brightness)(struct backlight_device * ) ;
   int (*check_fb)(struct backlight_device * , struct fb_info * ) ;
};
struct backlight_properties {
   int brightness ;
   int max_brightness ;
   int power ;
   int fb_blank ;
   enum backlight_type type ;
   unsigned int state ;
};
struct backlight_device {
   struct backlight_properties props ;
   struct mutex update_lock ;
   struct mutex ops_lock ;
   struct backlight_ops const *ops ;
   struct notifier_block fb_notif ;
   struct list_head entry ;
   struct device dev ;
   bool fb_bl_on[32U] ;
   int use_count ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_device_info {
   struct device *parent ;
   struct fwnode_handle *fwnode ;
   char const *name ;
   int id ;
   struct resource const *res ;
   unsigned int num_res ;
   void const *data ;
   size_t size_data ;
   u64 dma_mask ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_245 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_245 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
enum rfkill_type {
    RFKILL_TYPE_ALL = 0,
    RFKILL_TYPE_WLAN = 1,
    RFKILL_TYPE_BLUETOOTH = 2,
    RFKILL_TYPE_UWB = 3,
    RFKILL_TYPE_WIMAX = 4,
    RFKILL_TYPE_WWAN = 5,
    RFKILL_TYPE_GPS = 6,
    RFKILL_TYPE_FM = 7,
    RFKILL_TYPE_NFC = 8,
    NUM_RFKILL_TYPES = 9
} ;
struct rfkill;
struct rfkill_ops {
   void (*poll)(struct rfkill * , void * ) ;
   void (*query)(struct rfkill * , void * ) ;
   int (*set_block)(void * , bool ) ;
};
struct dmi_device {
   struct list_head list ;
   int type ;
   char const *name ;
   void *device_data ;
};
typedef u64 acpi_size;
typedef u64 acpi_io_address;
typedef u32 acpi_status;
typedef char *acpi_string;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_246 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_247 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_248 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_249 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_250 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_251 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_252 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_246 integer ;
   struct __anonstruct_string_247 string ;
   struct __anonstruct_buffer_248 buffer ;
   struct __anonstruct_package_249 package ;
   struct __anonstruct_reference_250 reference ;
   struct __anonstruct_processor_251 processor ;
   struct __anonstruct_power_resource_252 power_resource ;
};
struct acpi_object_list {
   u32 count ;
   union acpi_object *pointer ;
};
struct acpi_buffer {
   acpi_size length ;
   void *pointer ;
};
struct acpi_driver;
struct acpi_device;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned char of_compatible_ok : 1 ;
   unsigned char coherent_dma : 1 ;
   unsigned char cca_seen : 1 ;
   unsigned int reserved : 20 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_253 {
   unsigned char valid : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_253 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_254 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_254 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
struct snd_card;
struct snd_info_entry;
struct snd_shutdown_f_ops;
struct snd_mixer_oss;
struct snd_card {
   int number ;
   char id[16U] ;
   char driver[16U] ;
   char shortname[32U] ;
   char longname[80U] ;
   char mixername[80U] ;
   char components[128U] ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_card * ) ;
   struct list_head devices ;
   struct device ctl_dev ;
   unsigned int last_numid ;
   struct rw_semaphore controls_rwsem ;
   rwlock_t ctl_files_rwlock ;
   int controls_count ;
   int user_ctl_count ;
   struct list_head controls ;
   struct list_head ctl_files ;
   struct mutex user_ctl_lock ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_id ;
   struct proc_dir_entry *proc_root_link ;
   struct list_head files_list ;
   struct snd_shutdown_f_ops *s_f_ops ;
   spinlock_t files_lock ;
   int shutdown ;
   struct completion *release_completion ;
   struct device *dev ;
   struct device card_dev ;
   struct attribute_group const *dev_groups[4U] ;
   bool registered ;
   unsigned int power_state ;
   struct mutex power_lock ;
   wait_queue_head_t power_sleep ;
   struct snd_mixer_oss *mixer_oss ;
   int mixer_oss_change_count ;
};
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_258 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_259 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_260 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_257 {
   struct __anonstruct_integer_258 integer ;
   struct __anonstruct_integer64_259 integer64 ;
   struct __anonstruct_enumerated_260 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_261 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_257 value ;
   union __anonunion_dimen_261 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_263 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_264 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_265 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_266 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_262 {
   union __anonunion_integer_263 integer ;
   union __anonunion_integer64_264 integer64 ;
   union __anonunion_enumerated_265 enumerated ;
   union __anonunion_bytes_266 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned char indirect : 1 ;
   union __anonunion_value_262 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
union __anonunion_tlv_269 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol_new {
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char const *name ;
   unsigned int index ;
   unsigned int access ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_269 tlv ;
   unsigned long private_value ;
};
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_270 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_270 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int preferred_subdevice[2U] ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
enum acpi_backlight_type {
    acpi_backlight_undef = -1,
    acpi_backlight_none = 0,
    acpi_backlight_video = 1,
    acpi_backlight_vendor = 2,
    acpi_backlight_native = 3
} ;
struct ibm_struct;
struct tp_acpi_drv_struct {
   struct acpi_device_id const *hid ;
   struct acpi_driver *driver ;
   void (*notify)(struct ibm_struct * , u32 ) ;
   acpi_handle **handle ;
   u32 type ;
   struct acpi_device *device ;
};
struct __anonstruct_flags_271 {
   unsigned char acpi_driver_registered : 1 ;
   unsigned char acpi_notify_installed : 1 ;
   unsigned char proc_created : 1 ;
   unsigned char init_called : 1 ;
   unsigned char experimental : 1 ;
};
struct ibm_struct {
   char *name ;
   int (*read)(struct seq_file * ) ;
   int (*write)(char * ) ;
   void (*exit)(void) ;
   void (*resume)(void) ;
   void (*suspend)(void) ;
   void (*shutdown)(void) ;
   struct list_head all_drivers ;
   struct tp_acpi_drv_struct *acpi ;
   struct __anonstruct_flags_271 flags ;
};
struct ibm_init_struct {
   char param[32U] ;
   int (*init)(struct ibm_init_struct * ) ;
   umode_t base_procfs_mode ;
   struct ibm_struct *data ;
};
struct __anonstruct_tp_features_272 {
   unsigned char bluetooth : 1 ;
   unsigned char hotkey : 1 ;
   unsigned char hotkey_mask : 1 ;
   unsigned char hotkey_wlsw : 1 ;
   unsigned char hotkey_tablet : 1 ;
   unsigned char light : 1 ;
   unsigned char light_status : 1 ;
   unsigned char bright_acpimode : 1 ;
   unsigned char bright_unkfw : 1 ;
   unsigned char wan : 1 ;
   unsigned char uwb : 1 ;
   unsigned char fan_ctrl_status_undef : 1 ;
   unsigned char second_fan : 1 ;
   unsigned char beep_needs_two_args : 1 ;
   unsigned char mixer_no_level_control : 1 ;
   unsigned char input_device_registered : 1 ;
   unsigned char platform_drv_registered : 1 ;
   unsigned char platform_drv_attrs_registered : 1 ;
   unsigned char sensors_pdrv_registered : 1 ;
   unsigned char sensors_pdrv_attrs_registered : 1 ;
   unsigned char sensors_pdev_attrs_registered : 1 ;
   unsigned char hotkey_poll_active : 1 ;
   unsigned char has_adaptive_kbd : 1 ;
};
struct __anonstruct_tp_warned_273 {
   unsigned char hotkey_mask_ff : 1 ;
   unsigned char volume_ctrl_forbidden : 1 ;
};
struct thinkpad_id_data {
   unsigned int vendor ;
   char *bios_version_str ;
   char *ec_version_str ;
   u16 bios_model ;
   u16 ec_model ;
   u16 bios_release ;
   u16 ec_release ;
   char *model_str ;
   char *nummodel_str ;
};
enum ldv_24110 {
    TPACPI_LIFE_INIT = 0,
    TPACPI_LIFE_RUNNING = 1,
    TPACPI_LIFE_EXITING = 2
} ;
enum led_status_t {
    TPACPI_LED_OFF = 0,
    TPACPI_LED_ON = 1,
    TPACPI_LED_BLINK = 2
} ;
struct tpacpi_led_classdev {
   struct led_classdev led_classdev ;
   struct work_struct work ;
   enum led_status_t new_state ;
   int led ;
};
struct tpacpi_quirk {
   unsigned int vendor ;
   u16 bios ;
   u16 ec ;
   unsigned long quirks ;
};
struct attribute_set {
   unsigned int members ;
   unsigned int max_members ;
   struct attribute_group group ;
};
struct attribute_set_obj {
   struct attribute_set s ;
   struct attribute *a ;
};
enum tpacpi_rfkill_state {
    TPACPI_RFK_RADIO_OFF = 0,
    TPACPI_RFK_RADIO_ON = 1
} ;
enum tpacpi_rfk_id {
    TPACPI_RFK_BLUETOOTH_SW_ID = 0,
    TPACPI_RFK_WWAN_SW_ID = 1,
    TPACPI_RFK_UWB_SW_ID = 2,
    TPACPI_RFK_SW_MAX = 3
} ;
struct tpacpi_rfk_ops;
struct tpacpi_rfk {
   struct rfkill *rfkill ;
   enum tpacpi_rfk_id id ;
   struct tpacpi_rfk_ops const *ops ;
};
struct tpacpi_rfk_ops {
   int (*get_status)(void) ;
   int (*set_status)(enum tpacpi_rfkill_state const ) ;
};
struct tp_nvram_state {
   unsigned char thinkpad_toggle : 1 ;
   unsigned char zoom_toggle : 1 ;
   unsigned char display_toggle : 1 ;
   unsigned char thinklight_toggle : 1 ;
   unsigned char hibernate_toggle : 1 ;
   unsigned char displayexp_toggle : 1 ;
   unsigned char display_state : 1 ;
   unsigned char brightness_toggle : 1 ;
   unsigned char volume_toggle : 1 ;
   unsigned char mute : 1 ;
   u8 brightness_level ;
   u8 volume_level ;
};
enum ldv_24708 {
    TP_ACPI_WAKEUP_NONE = 0,
    TP_ACPI_WAKEUP_BAYEJ = 1,
    TP_ACPI_WAKEUP_UNDOCK = 2
} ;
typedef u16 tpacpi_keymap_entry_t;
typedef tpacpi_keymap_entry_t tpacpi_keymap_t[52U];
enum video_access_mode {
    TPACPI_VIDEO_NONE = 0,
    TPACPI_VIDEO_570 = 1,
    TPACPI_VIDEO_770 = 2,
    TPACPI_VIDEO_NEW = 3
} ;
enum led_access_mode {
    TPACPI_LED_NONE = 0,
    TPACPI_LED_570 = 1,
    TPACPI_LED_OLD = 2,
    TPACPI_LED_NEW = 3
} ;
enum thermal_access_mode {
    TPACPI_THERMAL_NONE = 0,
    TPACPI_THERMAL_ACPI_TMP07 = 1,
    TPACPI_THERMAL_ACPI_UPDT = 2,
    TPACPI_THERMAL_TPEC_8 = 3,
    TPACPI_THERMAL_TPEC_16 = 4
} ;
struct ibm_thermal_sensors_struct {
   s32 temp[16U] ;
};
enum tpacpi_brightness_access_mode {
    TPACPI_BRGHT_MODE_AUTO = 0,
    TPACPI_BRGHT_MODE_EC = 1,
    TPACPI_BRGHT_MODE_UCMS_STEP = 2,
    TPACPI_BRGHT_MODE_ECNVRAM = 3,
    TPACPI_BRGHT_MODE_MAX = 4
} ;
struct tpacpi_alsa_data {
   struct snd_card *card ;
   struct snd_ctl_elem_id *ctl_mute_id ;
   struct snd_ctl_elem_id *ctl_vol_id ;
};
enum tpacpi_volume_access_mode {
    TPACPI_VOL_MODE_AUTO = 0,
    TPACPI_VOL_MODE_EC = 1,
    TPACPI_VOL_MODE_UCMS_STEP = 2,
    TPACPI_VOL_MODE_ECNVRAM = 3,
    TPACPI_VOL_MODE_MAX = 4
} ;
enum tpacpi_volume_capabilities {
    TPACPI_VOL_CAP_AUTO = 0,
    TPACPI_VOL_CAP_VOLMUTE = 1,
    TPACPI_VOL_CAP_MUTEONLY = 2,
    TPACPI_VOL_CAP_MAX = 3
} ;
enum fan_status_access_mode {
    TPACPI_FAN_NONE = 0,
    TPACPI_FAN_RD_ACPI_GFAN = 1,
    TPACPI_FAN_RD_TPEC = 2
} ;
enum fan_control_access_mode {
    TPACPI_FAN_WR_NONE = 0,
    TPACPI_FAN_WR_ACPI_SFAN = 1,
    TPACPI_FAN_WR_TPEC = 2,
    TPACPI_FAN_WR_ACPI_FANS = 3
} ;
enum fan_control_commands {
    TPACPI_FAN_CMD_SPEED = 1,
    TPACPI_FAN_CMD_LEVEL = 2,
    TPACPI_FAN_CMD_ENABLE = 4
} ;
struct tp_led_table {
   acpi_string name ;
   int on_value ;
   int off_value ;
   int state ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef int ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
typedef int ldv_func_ret_type___16;
typedef int ldv_func_ret_type___17;
typedef int ldv_func_ret_type___18;
typedef int ldv_func_ret_type___19;
typedef bool ldv_func_ret_type___20;
typedef int ldv_func_ret_type___21;
typedef bool ldv_func_ret_type___22;
typedef int ldv_func_ret_type___23;
typedef int ldv_func_ret_type___24;
void ldv__builtin_va_end(__builtin_va_list * ) ;
void ldv__builtin_va_arg(__builtin_va_list , unsigned long , void * ) ;
__inline static long ldv__builtin_expect(long exp , long c ) ;
void ldv__builtin_va_start(__builtin_va_list * ) ;
extern struct module __this_module ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern void __might_fault(char const * , int ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2696;
  default:
  __bad_percpu_size();
  }
  ldv_2696: ;
  return (pfo_ret__);
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern int strncasecmp(char const * , char const * , size_t ) ;
extern char *strchr(char const * , int ) ;
extern char *skip_spaces(char const * ) ;
extern char *strstr(char const * , char const * ) ;
extern __kernel_size_t strcspn(char const * , char const * ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_15(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
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
    assume_abort_if_not(IS_ERR(p) == 0);
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
    assume_abort_if_not(IS_ERR(p) == 0);
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
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
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern int mutex_lock_killable(struct mutex * ) ;
int ldv_mutex_lock_killable_36(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_38(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_42(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_50(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_52(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_56(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_58(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_60(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_62(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_64(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_66(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_68(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_70(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_72(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_74(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_76(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_79(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_killable_brightness_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_brightness_mutex(struct mutex *lock ) ;
int ldv_mutex_lock_killable_fan_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_fan_mutex(struct mutex *lock ) ;
int ldv_mutex_lock_killable_hotkey_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_hotkey_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_hotkey_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_hotkey_thread_data_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_hotkey_thread_data_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_fb_info(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_power_lock_of_snd_card(struct mutex *lock ) ;
void ldv_mutex_unlock_power_lock_of_snd_card(struct mutex *lock ) ;
void ldv_mutex_lock_tpacpi_inputdev_send_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_tpacpi_inputdev_send_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_backlight_device(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock ) ;
int ldv_mutex_lock_killable_volume_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_volume_mutex(struct mutex *lock ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_85(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern bool mod_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                unsigned long ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_55(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_78(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_81(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_5(8192, wq, work);
  return (tmp);
}
}
__inline static bool mod_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                      unsigned long delay )
{
  bool tmp ;
  {
  tmp = mod_delayed_work_on(8192, wq, dwork, delay);
  return (tmp);
}
}
extern int acpi_disabled ;
extern bool capable(int ) ;
extern pid_t pid_vnr(struct pid * ) ;
__inline static struct pid *task_tgid(struct task_struct *task )
{
  {
  return ((task->group_leader)->pids[0].pid);
}
}
__inline static pid_t task_tgid_vnr(struct task_struct *tsk )
{
  struct pid *tmp ;
  pid_t tmp___0 ;
  {
  tmp = task_tgid(tsk);
  tmp___0 = pid_vnr(tmp);
  return (tmp___0);
}
}
extern int wake_up_process(struct task_struct * ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
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
int ldv_state_variable_47 ;
int ldv_state_variable_20 ;
struct work_struct *ldv_work_struct_3_1 ;
int ldv_state_variable_30 ;
int ldv_state_variable_0 ;
struct snd_kcontrol *volume_alsa_control_mute_group0 ;
int ldv_state_variable_45 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct device_attribute *dev_attr_hotkey_source_mask_group0 ;
struct led_classdev *tpacpi_led_thinklight_group0 ;
int ldv_state_variable_22 ;
struct snd_kcontrol *volume_alsa_control_vol_group0 ;
int ldv_state_variable_54 ;
int ldv_state_variable_14 ;
int ldv_state_variable_37 ;
int ldv_state_variable_29 ;
int ldv_state_variable_17 ;
int ldv_state_variable_51 ;
struct work_struct *ldv_work_struct_2_0 ;
struct device *dev_attr_wwan_enable_group1 ;
struct device_attribute *dev_attr_hotkey_mask_group0 ;
int ldv_state_variable_66 ;
int ldv_state_variable_19 ;
struct inode *dispatch_proc_fops_group1 ;
int ldv_state_variable_61 ;
int ldv_state_variable_27 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_2_2 ;
int ref_cnt ;
int ldv_state_variable_42 ;
int ldv_work_3_3 ;
int ldv_state_variable_7 ;
int ldv_state_variable_23 ;
struct work_struct *ldv_work_struct_3_3 ;
int ldv_state_variable_55 ;
struct device *dev_attr_bluetooth_enable_group1 ;
int probed_68 = 0;
struct work_struct *ldv_work_struct_1_1 ;
int ldv_state_variable_59 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
struct device *dev_attr_hotkey_source_mask_group1 ;
int ldv_state_variable_50 ;
int ldv_state_variable_64 ;
struct platform_device *tpacpi_pdriver_group1 ;
int ldv_state_variable_26 ;
struct device_attribute *dev_attr_pwm1_group0 ;
int ldv_state_variable_28 ;
struct device_attribute *dev_attr_adaptive_kbd_mode_group0 ;
int ldv_state_variable_44 ;
struct device *dev_attr_hotkey_mask_group1 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_38 ;
struct device *dev_attr_hotkey_enable_group1 ;
int ldv_state_variable_58 ;
int ldv_state_variable_39 ;
int ldv_state_variable_56 ;
int ldv_state_variable_3 ;
struct file *dispatch_proc_fops_group2 ;
int ldv_state_variable_31 ;
int ldv_state_variable_52 ;
int ldv_work_1_0 ;
struct device_attribute *dev_attr_pwm1_enable_group0 ;
int ldv_state_variable_4 ;
int ldv_state_variable_68 ;
int ldv_work_2_1 ;
struct device_attribute *dev_attr_hotkey_poll_freq_group0 ;
struct device_attribute *dev_attr_bluetooth_enable_group0 ;
int ldv_state_variable_36 ;
int ldv_state_variable_60 ;
int ldv_state_variable_8 ;
int ldv_state_variable_46 ;
int ldv_state_variable_15 ;
struct device_driver *driver_attr_uwb_emulstate_group0 ;
struct work_struct *ldv_work_struct_1_3 ;
int ldv_state_variable_48 ;
struct device_attribute *dev_attr_hotkey_enable_group0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_21 ;
int ldv_state_variable_33 ;
int ldv_state_variable_13 ;
struct device_driver *driver_attr_bluetooth_emulstate_group0 ;
int ldv_state_variable_69 ;
int ldv_work_3_2 ;
struct device *dev_attr_pwm1_enable_group1 ;
struct device_driver *driver_attr_wlsw_emulstate_group0 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct device_attribute *dev_attr_wwan_enable_group0 ;
int ldv_state_variable_65 ;
int ldv_state_variable_49 ;
int ldv_state_variable_24 ;
int ldv_state_variable_70 ;
int ldv_state_variable_1 ;
struct device *dev_attr_hotkey_poll_freq_group1 ;
int ldv_state_variable_41 ;
int ldv_state_variable_62 ;
struct device *dev_attr_adaptive_kbd_mode_group1 ;
struct device_driver *driver_attr_wwan_emulstate_group0 ;
int ldv_state_variable_40 ;
struct work_struct *ldv_work_struct_1_0 ;
int ldv_state_variable_10 ;
struct backlight_device *ibm_backlight_data_group0 ;
int ldv_state_variable_16 ;
int ldv_work_3_1 ;
int ldv_state_variable_63 ;
int ldv_state_variable_2 ;
int ldv_state_variable_43 ;
int ldv_state_variable_25 ;
struct device_driver *driver_attr_fan_watchdog_group0 ;
int ldv_work_2_0 ;
int ldv_state_variable_57 ;
struct device_driver *driver_attr_debug_level_group0 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int ldv_state_variable_53 ;
int ldv_state_variable_67 ;
int ldv_state_variable_18 ;
struct device *dev_attr_pwm1_group1 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_work_2_2 ;
int ldv_state_variable_32 ;
int ldv_state_variable_34 ;
struct device *tpacpi_pm_group1 ;
int ldv_work_2_3 ;
int ldv_state_variable_35 ;
void ldv_file_operations_70(void) ;
void work_init_3(void) ;
void ldv_initialize_driver_attribute_63(void) ;
void ldv_initialize_device_attribute_52(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_snd_kcontrol_new_24(void) ;
void call_and_disable_all_2(int state ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_platform_probe_68(int (*probe)(struct platform_device * ) ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void ldv_initialize_device_attribute_21(void) ;
void ldv_initialize_driver_attribute_17(void) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void work_init_1(void) ;
void ldv_initialize_device_attribute_43(void) ;
void ldv_initialize_driver_attribute_61(void) ;
void ldv_initialize_device_attribute_51(void) ;
void ldv_initialize_backlight_ops_27(void) ;
void ldv_initialize_driver_attribute_60(void) ;
void invoke_work_2(void) ;
void ldv_initialize_device_attribute_58(void) ;
void ldv_initialize_device_attribute_20(void) ;
void ldv_initialize_snd_kcontrol_new_25(void) ;
void ldv_initialize_driver_attribute_62(void) ;
void ldv_platform_driver_init_68(void) ;
void work_init_2(void) ;
void call_and_disable_all_1(int state ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_initialize_device_attribute_57(void) ;
void ldv_initialize_driver_attribute_65(void) ;
void ldv_initialize_tpacpi_led_classdev_34(void) ;
void ldv_initialize_device_attribute_46(void) ;
void disable_work_2(struct work_struct *work ) ;
void invoke_work_3(void) ;
void invoke_work_1(void) ;
void ldv_initialize_device_attribute_40(void) ;
void call_and_disable_all_3(int state ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void ldv_dev_pm_ops_69(void) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_notify(struct kobject * , char const * , char const * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern bool kthread_freezable_should_stop(bool * ) ;
extern bool set_freezable(void) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern unsigned char nvram_read_byte(int ) ;
extern void nvram_write_byte(unsigned char , int ) ;
__inline static struct inode *file_inode(struct file const *f )
{
  {
  return ((struct inode *)f->f_inode);
}
}
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int driver_create_file(struct device_driver * , struct driver_attribute const * ) ;
extern void driver_remove_file(struct device_driver * , struct driver_attribute const * ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
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
__inline static int backlight_update_status(struct backlight_device *bd )
{
  int ret ;
  {
  ret = -2;
  ldv_mutex_lock_18(& bd->update_lock);
  if ((unsigned long )bd->ops != (unsigned long )((struct backlight_ops const *)0) && (unsigned long )(bd->ops)->update_status != (unsigned long )((int (* )(struct backlight_device * ))0)) {
    ret = (*((bd->ops)->update_status))(bd);
  } else {
  }
  ldv_mutex_unlock_19(& bd->update_lock);
  return (ret);
}
}
extern struct backlight_device *backlight_device_register(char const * , struct device * ,
                                                          void * , struct backlight_ops const * ,
                                                          struct backlight_properties const * ) ;
extern void backlight_device_unregister(struct backlight_device * ) ;
extern void backlight_force_update(struct backlight_device * , enum backlight_update_reason ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_register_full(struct platform_device_info const * ) ;
__inline static struct platform_device *platform_device_register_resndata(struct device *parent ,
                                                                          char const *name ,
                                                                          int id ,
                                                                          struct resource const *res ,
                                                                          unsigned int num ,
                                                                          void const *data ,
                                                                          size_t size )
{
  struct platform_device_info pdevinfo ;
  struct platform_device *tmp ;
  {
  pdevinfo.parent = parent;
  pdevinfo.fwnode = 0;
  pdevinfo.name = name;
  pdevinfo.id = id;
  pdevinfo.res = res;
  pdevinfo.num_res = num;
  pdevinfo.data = data;
  pdevinfo.size_data = size;
  pdevinfo.dma_mask = 0ULL;
  tmp = platform_device_register_full((struct platform_device_info const *)(& pdevinfo));
  return (tmp);
}
}
__inline static struct platform_device *platform_device_register_simple(char const *name ,
                                                                        int id , struct resource const *res ,
                                                                        unsigned int num )
{
  struct platform_device *tmp ;
  {
  tmp = platform_device_register_resndata((struct device *)0, name, id, res, num,
                                          (void const *)0, 0UL);
  return (tmp);
}
}
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_86(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
int ldv___platform_driver_register_87(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_83(struct platform_driver *ldv_func_arg1 ) ;
void ldv_platform_driver_unregister_84(struct platform_driver *ldv_func_arg1 ) ;
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
struct input_dev *input_allocate_device(void) {
       return kzalloc(sizeof(struct input_dev), 0x10u | 0x40u | 0x80u);
}
extern void input_free_device(struct input_dev * ) ;
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_report_key(struct input_dev *dev , unsigned int code ,
                                      int value )
{
  {
  input_event(dev, 1U, code, value != 0);
  return;
}
}
__inline static void input_report_switch(struct input_dev *dev , unsigned int code ,
                                         int value )
{
  {
  input_event(dev, 5U, code, value != 0);
  return;
}
}
__inline static void input_sync(struct input_dev *dev )
{
  {
  input_event(dev, 0U, 0U, 0);
  return;
}
}
extern void input_set_capability(struct input_dev * , unsigned int , unsigned int ) ;
extern int led_classdev_register(struct device * , struct led_classdev * ) ;
extern void led_classdev_unregister(struct led_classdev * ) ;
extern struct rfkill *rfkill_alloc(char const * , struct device * , enum rfkill_type const ,
                                   struct rfkill_ops const * , void * ) ;
extern int rfkill_register(struct rfkill * ) ;
extern void rfkill_unregister(struct rfkill * ) ;
extern void rfkill_destroy(struct rfkill * ) ;
extern bool rfkill_set_hw_state(struct rfkill * , bool ) ;
extern bool rfkill_set_sw_state(struct rfkill * , bool ) ;
extern void rfkill_init_sw_state(struct rfkill * , bool ) ;
extern char const *dmi_get_system_info(int ) ;
extern struct dmi_device const *dmi_find_device(int , char const * , struct dmi_device const * ) ;
extern int dmi_name_in_vendors(char const * ) ;
extern char const *acpi_format_exception(acpi_status ) ;
extern acpi_status acpi_get_devices(char const * , acpi_status (*)(acpi_handle ,
                                                                     u32 , void * ,
                                                                     void ** ) , void * ,
                                    void ** ) ;
extern acpi_status acpi_get_handle(acpi_handle , acpi_string , acpi_handle ** ) ;
extern acpi_status acpi_evaluate_object(acpi_handle , acpi_string , struct acpi_object_list * ,
                                        struct acpi_buffer * ) ;
extern acpi_status acpi_install_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                              u32 ,
                                                                              void * ) ,
                                               void * ) ;
extern acpi_status acpi_remove_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                             u32 ,
                                                                             void * ) ) ;
extern struct proc_dir_entry *acpi_root_dir ;
extern char const *acpi_device_hid(struct acpi_device * ) ;
extern int acpi_bus_generate_netlink_event(char const * , char const * , u8 ,
                                           int ) ;
extern int acpi_bus_get_device(acpi_handle , struct acpi_device ** ) ;
extern int acpi_bus_register_driver(struct acpi_driver * ) ;
extern void acpi_bus_unregister_driver(struct acpi_driver * ) ;
extern int ec_read(u8 , u8 * ) ;
extern int ec_write(u8 , u8 ) ;
int tpacpi_led_set(int whichled , bool on ) ;
extern int snd_card_new(struct device * , int , char const * , struct module * ,
                        int , struct snd_card ** ) ;
extern int snd_card_free(struct snd_card * ) ;
extern int snd_card_register(struct snd_card * ) ;
extern void snd_ctl_notify(struct snd_card * , unsigned int , struct snd_ctl_elem_id * ) ;
extern struct snd_kcontrol *snd_ctl_new1(struct snd_kcontrol_new const * , void * ) ;
extern int snd_ctl_add(struct snd_card * , struct snd_kcontrol * ) ;
extern int snd_ctl_boolean_mono_info(struct snd_kcontrol * , struct snd_ctl_elem_info * ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
extern enum acpi_backlight_type acpi_video_get_backlight_type(void) ;
static struct __anonstruct_tp_features_272 tp_features ;
static struct __anonstruct_tp_warned_273 tp_warned ;
static struct thinkpad_id_data thinkpad_id ;
static enum ldv_24110 tpacpi_lifecycle ;
static int experimental ;
static u32 dbg_level ;
static struct workqueue_struct *tpacpi_wq ;
static unsigned int bright_maxlvl ;
static int dbg_wlswemul ;
static bool tpacpi_wlsw_emulstate ;
static int dbg_bluetoothemul ;
static bool tpacpi_bluetooth_emulstate ;
static int dbg_wwanemul ;
static bool tpacpi_wwan_emulstate ;
static int dbg_uwbemul ;
static bool tpacpi_uwb_emulstate ;
static char const *str_supported(int is_supported ) ;
static void tpacpi_log_usertask(char const * const what )
{
  struct task_struct *tmp ;
  pid_t tmp___0 ;
  {
  tmp = get_current();
  tmp___0 = task_tgid_vnr(tmp);
  printk("\017thinkpad_acpi: %s: access by process with PID %d\n", what, tmp___0);
  return;
}
}
static unsigned long tpacpi_check_quirks(struct tpacpi_quirk const *qlist , unsigned int qlist_size )
{
  {
  goto ldv_34028;
  ldv_34027: ;
  if ((((unsigned int )qlist->vendor == thinkpad_id.vendor || (unsigned int )qlist->vendor == 65535U) && ((int )((unsigned short )qlist->bios) == (int )thinkpad_id.bios_model || (unsigned int )((unsigned short )qlist->bios) == 65535U)) && ((int )((unsigned short )qlist->ec) == (int )thinkpad_id.ec_model || (unsigned int )((unsigned short )qlist->ec) == 65535U)) {
    return ((unsigned long )qlist->quirks);
  } else {
  }
  qlist_size = qlist_size - 1U;
  qlist = qlist + 1;
  ldv_34028: ;
  if (qlist_size != 0U) {
    goto ldv_34027;
  } else {
  }
  return (0UL);
}
}
__inline static bool tpacpi_is_lenovo(void)
{
  {
  return (thinkpad_id.vendor == 6058U);
}
}
__inline static bool tpacpi_is_ibm(void)
{
  {
  return (thinkpad_id.vendor == 4116U);
}
}
static acpi_handle root_handle ;
static acpi_handle ec_handle ;
static acpi_handle ecrd_handle ;
static acpi_handle * const * const ecrd_parent = (acpi_handle * const * )(& ec_handle);
static char *ecrd_paths[1U] = { (char *)"ECRD"};
static acpi_handle ecwr_handle ;
static acpi_handle * const * const ecwr_parent = (acpi_handle * const * )(& ec_handle);
static char *ecwr_paths[1U] = { (char *)"ECWR"};
static acpi_handle cmos_handle ;
static acpi_handle * const * const cmos_parent = (acpi_handle * const * )(& root_handle);
static char *cmos_paths[3U] = { (char *)"\\UCMS", (char *)"\\CMOS", (char *)"\\CMS"};
static acpi_handle hkey_handle ;
static acpi_handle * const * const hkey_parent = (acpi_handle * const * )(& ec_handle);
static char *hkey_paths[3U] = { (char *)"\\_SB.HKEY", (char *)"^HKEY", (char *)"HKEY"};
static int acpi_evalf(acpi_handle handle , int *res , char *method , char *fmt , ...)
{
  char *fmt0 ;
  struct acpi_object_list params ;
  union acpi_object in_objs[3U] ;
  struct acpi_buffer result ;
  struct acpi_buffer *resultp ;
  union acpi_object out_obj ;
  acpi_status status ;
  va_list ap ;
  char res_type ;
  int success ;
  int quiet ;
  char *tmp ;
  char c ;
  char *tmp___0 ;
  int tmp___2 ;
  u32 tmp___3 ;
  char const *tmp___4 ;
  {
  fmt0 = fmt;
  if ((int )((signed char )*fmt) == 0) {
    printk("\vthinkpad_acpi: acpi_evalf() called with empty format\n");
    return (0);
  } else {
  }
  if ((int )((signed char )*fmt) == 113) {
    quiet = 1;
    fmt = fmt + 1;
  } else {
    quiet = 0;
  }
  tmp = fmt;
  fmt = fmt + 1;
  res_type = *tmp;
  params.count = 0U;
  params.pointer = (union acpi_object *)(& in_objs);
  ldv__builtin_va_start((va_list *)(& ap));
  goto ldv_34072;
  ldv_34071:
  tmp___0 = fmt;
  fmt = fmt + 1;
  c = *tmp___0;
  switch ((int )c) {
  case 100:
  ldv__builtin_va_arg(ap, sizeof(int ), (void *)(& tmp___2));
  in_objs[params.count].integer.value = (u64 )tmp___2;
  tmp___3 = params.count;
  params.count = params.count + 1U;
  in_objs[tmp___3].type = 1U;
  goto ldv_34069;
  default:
  printk("\vthinkpad_acpi: acpi_evalf() called with invalid format character \'%c\'\n",
         (int )c);
  ldv__builtin_va_end((va_list *)(& ap));
  return (0);
  }
  ldv_34069: ;
  ldv_34072: ;
  if ((int )((signed char )*fmt) != 0) {
    goto ldv_34071;
  } else {
  }
  ldv__builtin_va_end((va_list *)(& ap));
  if ((int )((signed char )res_type) != 118) {
    result.length = 24ULL;
    result.pointer = (void *)(& out_obj);
    resultp = & result;
  } else {
    resultp = (struct acpi_buffer *)0;
  }
  status = acpi_evaluate_object(handle, method, & params, resultp);
  switch ((int )res_type) {
  case 100:
  success = status == 0U && out_obj.type == 1U;
  if (success != 0 && (unsigned long )res != (unsigned long )((int *)0)) {
    *res = (int )out_obj.integer.value;
  } else {
  }
  goto ldv_34075;
  case 118:
  success = status == 0U;
  goto ldv_34075;
  default:
  printk("\vthinkpad_acpi: acpi_evalf() called with invalid format character \'%c\'\n",
         (int )res_type);
  return (0);
  }
  ldv_34075: ;
  if (success == 0 && quiet == 0) {
    tmp___4 = acpi_format_exception(status);
    printk("\vthinkpad_acpi: acpi_evalf(%s, %s, ...) failed: %s\n", method, fmt0,
           tmp___4);
  } else {
  }
  return (success);
}
}
static int acpi_ec_read(int i , u8 *p )
{
  int v ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ecrd_handle != (unsigned long )((acpi_handle )0)) {
    tmp = acpi_evalf(ecrd_handle, & v, (char *)0, (char *)"dd", i);
    if (tmp == 0) {
      return (0);
    } else {
    }
    *p = (u8 )v;
  } else {
    tmp___0 = ec_read((int )((u8 )i), p);
    if (tmp___0 < 0) {
      return (0);
    } else {
    }
  }
  return (1);
}
}
static int acpi_ec_write(int i , u8 v )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ecwr_handle != (unsigned long )((acpi_handle )0)) {
    tmp = acpi_evalf(ecwr_handle, (int *)0, (char *)0, (char *)"vdd", i, (int )v);
    if (tmp == 0) {
      return (0);
    } else {
    }
  } else {
    tmp___0 = ec_write((int )((u8 )i), (int )v);
    if (tmp___0 < 0) {
      return (0);
    } else {
    }
  }
  return (1);
}
}
static int issue_thinkpad_cmos_command(int cmos_cmd )
{
  int tmp ;
  {
  if ((unsigned long )cmos_handle == (unsigned long )((acpi_handle )0)) {
    return (-6);
  } else {
  }
  tmp = acpi_evalf(cmos_handle, (int *)0, (char *)0, (char *)"vd", cmos_cmd);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static void drv_acpi_handle_init(char const *name , acpi_handle **handle , acpi_handle parent ,
                                 char **paths , int const num_paths )
{
  int i ;
  acpi_status status ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: trying to locate ACPI handle for %s\n", "drv_acpi_handle_init",
           name);
  } else {
  }
  i = 0;
  goto ldv_34101;
  ldv_34100:
  status = acpi_get_handle(parent, *(paths + (unsigned long )i), handle);
  if (status == 0U) {
    if ((int )dbg_level & 1) {
      printk("\017thinkpad_acpi: %s: Found ACPI handle %s for %s\n", "drv_acpi_handle_init",
             *(paths + (unsigned long )i), name);
    } else {
    }
    return;
  } else {
  }
  i = i + 1;
  ldv_34101: ;
  if (i < (int )num_paths) {
    goto ldv_34100;
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: ACPI handle for %s not found\n", "drv_acpi_handle_init",
           name);
  } else {
  }
  *handle = (void *)0;
  return;
}
}
static acpi_status tpacpi_acpi_handle_locate_callback(acpi_handle handle , u32 level ,
                                                      void *context , void **return_value )
{
  struct acpi_device *dev ;
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___2 = strcmp((char const *)context, "video");
  if (tmp___2 == 0) {
    tmp = acpi_bus_get_device(handle, & dev);
    if (tmp != 0) {
      return (0U);
    } else {
    }
    tmp___0 = acpi_device_hid(dev);
    tmp___1 = strcmp("LNXVIDEO", tmp___0);
    if (tmp___1 != 0) {
      return (0U);
    } else {
    }
  } else {
  }
  *((acpi_handle **)return_value) = handle;
  return (16387U);
}
}
static void tpacpi_acpi_handle_locate(char const *name , char const *hid , acpi_handle **handle )
{
  acpi_status status ;
  acpi_handle device_found ;
  long tmp ;
  char const *tmp___0 ;
  {
  tmp = ldv__builtin_expect((long )((unsigned long )name == (unsigned long )((char const *)0) || (unsigned long )handle == (unsigned long )((acpi_handle **)0)),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (721), "i" (12UL));
    ldv_34117: ;
    goto ldv_34117;
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: trying to locate ACPI handle for %s, using HID %s\n",
           "tpacpi_acpi_handle_locate", name, (unsigned long )hid != (unsigned long )((char const *)0) ? hid : "NULL");
  } else {
  }
  memset((void *)(& device_found), 0, 8UL);
  status = acpi_get_devices(hid, & tpacpi_acpi_handle_locate_callback, (void *)name,
                            & device_found);
  *handle = (void *)0;
  if (status == 0U) {
    *handle = device_found;
    if ((int )dbg_level & 1) {
      printk("\017thinkpad_acpi: %s: Found ACPI handle for %s\n", "tpacpi_acpi_handle_locate",
             name);
    } else {
    }
  } else
  if ((int )dbg_level & 1) {
    tmp___0 = acpi_format_exception(status);
    printk("\017thinkpad_acpi: %s: Could not locate an ACPI handle for %s: %s\n",
           "tpacpi_acpi_handle_locate", name, tmp___0);
  } else {
  }
  return;
}
}
static void dispatch_acpi_notify(acpi_handle handle , u32 event , void *data )
{
  struct ibm_struct *ibm ;
  {
  ibm = (struct ibm_struct *)data;
  if ((unsigned int )tpacpi_lifecycle != 1U) {
    return;
  } else {
  }
  if (((unsigned long )ibm == (unsigned long )((struct ibm_struct *)0) || (unsigned long )ibm->acpi == (unsigned long )((struct tp_acpi_drv_struct *)0)) || (unsigned long )(ibm->acpi)->notify == (unsigned long )((void (*)(struct ibm_struct * ,
                                                                                                                                                                                                                              u32 ))0)) {
    return;
  } else {
  }
  (*((ibm->acpi)->notify))(ibm, event);
  return;
}
}
static int setup_acpi_notify(struct ibm_struct *ibm )
{
  acpi_status status ;
  int rc ;
  long tmp ;
  char const *tmp___0 ;
  {
  tmp = ldv__builtin_expect((unsigned long )ibm->acpi == (unsigned long )((struct tp_acpi_drv_struct *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (761), "i" (12UL));
    ldv_34130: ;
    goto ldv_34130;
  } else {
  }
  if ((unsigned long )*((ibm->acpi)->handle) == (unsigned long )((acpi_handle )0)) {
    return (0);
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: setting up ACPI notify for %s\n", "setup_acpi_notify",
           ibm->name);
  } else {
  }
  rc = acpi_bus_get_device(*((ibm->acpi)->handle), & (ibm->acpi)->device);
  if (rc < 0) {
    printk("\vthinkpad_acpi: acpi_bus_get_device(%s) failed: %d\n", ibm->name, rc);
    return (-19);
  } else {
  }
  ((ibm->acpi)->device)->driver_data = (void *)ibm;
  sprintf((char *)(& ((ibm->acpi)->device)->pnp.device_class), "%s/%s", (char *)"ibm",
          ibm->name);
  status = acpi_install_notify_handler(*((ibm->acpi)->handle), (ibm->acpi)->type,
                                       & dispatch_acpi_notify, (void *)ibm);
  if (status != 0U) {
    if (status == 7U) {
      printk("\rthinkpad_acpi: another device driver is already handling %s events\n",
             ibm->name);
    } else {
      tmp___0 = acpi_format_exception(status);
      printk("\vthinkpad_acpi: acpi_install_notify_handler(%s) failed: %s\n", ibm->name,
             tmp___0);
    }
    return (-19);
  } else {
  }
  ibm->flags.acpi_notify_installed = 1U;
  return (0);
}
}
static int tpacpi_device_add(struct acpi_device *device )
{
  {
  return (0);
}
}
static int register_tpacpi_subdriver(struct ibm_struct *ibm )
{
  int rc ;
  long tmp ;
  void *tmp___0 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: registering %s as an ACPI driver\n", "register_tpacpi_subdriver",
           ibm->name);
  } else {
  }
  tmp = ldv__builtin_expect((unsigned long )ibm->acpi == (unsigned long )((struct tp_acpi_drv_struct *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (808), "i" (12UL));
    ldv_34140: ;
    goto ldv_34140;
  } else {
  }
  tmp___0 = kzalloc(328UL, 208U);
  (ibm->acpi)->driver = (struct acpi_driver *)tmp___0;
  if ((unsigned long )(ibm->acpi)->driver == (unsigned long )((struct acpi_driver *)0)) {
    printk("\vthinkpad_acpi: failed to allocate memory for ibm->acpi->driver\n");
    return (-12);
  } else {
  }
  sprintf((char *)(& ((ibm->acpi)->driver)->name), "%s_%s", (char *)"thinkpad", ibm->name);
  ((ibm->acpi)->driver)->ids = (ibm->acpi)->hid;
  ((ibm->acpi)->driver)->ops.add = & tpacpi_device_add;
  rc = acpi_bus_register_driver((ibm->acpi)->driver);
  if (rc < 0) {
    printk("\vthinkpad_acpi: acpi_bus_register_driver(%s) failed: %d\n", ibm->name,
           rc);
    kfree((void const *)(ibm->acpi)->driver);
    (ibm->acpi)->driver = (struct acpi_driver *)0;
  } else
  if (rc == 0) {
    ibm->flags.acpi_driver_registered = 1U;
  } else {
  }
  return (rc);
}
}
static int dispatch_proc_show(struct seq_file *m , void *v )
{
  struct ibm_struct *ibm ;
  int tmp ;
  {
  ibm = (struct ibm_struct *)m->private;
  if ((unsigned long )ibm == (unsigned long )((struct ibm_struct *)0) || (unsigned long )ibm->read == (unsigned long )((int (*)(struct seq_file * ))0)) {
    return (-22);
  } else {
  }
  tmp = (*(ibm->read))(m);
  return (tmp);
}
}
static int dispatch_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & dispatch_proc_show, tmp);
  return (tmp___0);
}
}
static ssize_t dispatch_proc_write(struct file *file , char const *userbuf , size_t count ,
                                   loff_t *pos )
{
  struct ibm_struct *ibm ;
  struct inode *tmp ;
  void *tmp___0 ;
  char *kernbuf ;
  int ret ;
  void *tmp___1 ;
  unsigned long tmp___2 ;
  {
  tmp = file_inode((struct file const *)file);
  tmp___0 = PDE_DATA((struct inode const *)tmp);
  ibm = (struct ibm_struct *)tmp___0;
  if ((unsigned long )ibm == (unsigned long )((struct ibm_struct *)0) || (unsigned long )ibm->write == (unsigned long )((int (*)(char * ))0)) {
    return (-22L);
  } else {
  }
  if (count > 4094UL) {
    return (-22L);
  } else {
  }
  tmp___1 = kmalloc(count + 2UL, 208U);
  kernbuf = (char *)tmp___1;
  if ((unsigned long )kernbuf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  tmp___2 = copy_from_user((void *)kernbuf, (void const *)userbuf, count);
  if (tmp___2 != 0UL) {
    kfree((void const *)kernbuf);
    return (-14L);
  } else {
  }
  *(kernbuf + count) = 0;
  strcat(kernbuf, ",");
  ret = (*(ibm->write))(kernbuf);
  if (ret == 0) {
    ret = (int )count;
  } else {
  }
  kfree((void const *)kernbuf);
  return ((ssize_t )ret);
}
}
static struct file_operations const dispatch_proc_fops =
     {& __this_module, & seq_lseek, & seq_read, & dispatch_proc_write, 0, 0, 0, 0, 0,
    0, 0, 0, & dispatch_proc_open, 0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0};
static char *next_cmd(char **cmds )
{
  char *start ;
  char *end ;
  {
  start = *cmds;
  goto ldv_34166;
  ldv_34165:
  start = end + 1UL;
  ldv_34166:
  end = strchr((char const *)start, 44);
  if ((unsigned long )end != (unsigned long )((char *)0) && (unsigned long )end == (unsigned long )start) {
    goto ldv_34165;
  } else {
  }
  if ((unsigned long )end == (unsigned long )((char *)0)) {
    return ((char *)0);
  } else {
  }
  *end = 0;
  *cmds = end + 1UL;
  return (start);
}
}
static struct platform_device *tpacpi_pdev ;
static struct platform_device *tpacpi_sensors_pdev ;
static struct device *tpacpi_hwmon ;
static struct input_dev *tpacpi_inputdev ;
static struct mutex tpacpi_inputdev_send_mutex ;
static struct list_head tpacpi_all_drivers = {& tpacpi_all_drivers, & tpacpi_all_drivers};
static int tpacpi_suspend_handler(struct device *dev )
{
  struct ibm_struct *ibm ;
  struct ibm_struct *itmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)tpacpi_all_drivers.next;
  ibm = (struct ibm_struct *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)ibm->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_34186;
  ldv_34185: ;
  if ((unsigned long )ibm->suspend != (unsigned long )((void (*)(void))0)) {
    (*(ibm->suspend))();
  } else {
  }
  ibm = itmp;
  __mptr___1 = (struct list_head const *)itmp->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_34186: ;
  if ((unsigned long )(& ibm->all_drivers) != (unsigned long )(& tpacpi_all_drivers)) {
    goto ldv_34185;
  } else {
  }
  return (0);
}
}
static int tpacpi_resume_handler(struct device *dev )
{
  struct ibm_struct *ibm ;
  struct ibm_struct *itmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)tpacpi_all_drivers.next;
  ibm = (struct ibm_struct *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)ibm->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_34200;
  ldv_34199: ;
  if ((unsigned long )ibm->resume != (unsigned long )((void (*)(void))0)) {
    (*(ibm->resume))();
  } else {
  }
  ibm = itmp;
  __mptr___1 = (struct list_head const *)itmp->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_34200: ;
  if ((unsigned long )(& ibm->all_drivers) != (unsigned long )(& tpacpi_all_drivers)) {
    goto ldv_34199;
  } else {
  }
  return (0);
}
}
static struct dev_pm_ops const tpacpi_pm =
     {0, 0, & tpacpi_suspend_handler, & tpacpi_resume_handler, & tpacpi_suspend_handler,
    & tpacpi_resume_handler, & tpacpi_suspend_handler, & tpacpi_resume_handler, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void tpacpi_shutdown_handler(struct platform_device *pdev )
{
  struct ibm_struct *ibm ;
  struct ibm_struct *itmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)tpacpi_all_drivers.next;
  ibm = (struct ibm_struct *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)ibm->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_34215;
  ldv_34214: ;
  if ((unsigned long )ibm->shutdown != (unsigned long )((void (*)(void))0)) {
    (*(ibm->shutdown))();
  } else {
  }
  ibm = itmp;
  __mptr___1 = (struct list_head const *)itmp->all_drivers.next;
  itmp = (struct ibm_struct *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_34215: ;
  if ((unsigned long )(& ibm->all_drivers) != (unsigned long )(& tpacpi_all_drivers)) {
    goto ldv_34214;
  } else {
  }
  return;
}
}
static struct platform_driver tpacpi_pdriver =
     {0, 0, & tpacpi_shutdown_handler, 0, 0, {"thinkpad_acpi", 0, 0, 0, (_Bool)0, 0,
                                            0, 0, 0, 0, 0, 0, 0, 0, & tpacpi_pm, 0},
    0, (_Bool)0};
static struct platform_driver tpacpi_hwmon_pdriver =
     {0, 0, 0, 0, 0, {"thinkpad_hwmon", 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0}, 0, (_Bool)0};
static struct attribute_set *create_attr_set(unsigned int max_members , char const *name )
{
  struct attribute_set_obj *sobj ;
  void *tmp ;
  {
  if (max_members == 0U) {
    return ((struct attribute_set *)0);
  } else {
  }
  tmp = kzalloc(((unsigned long )max_members + 6UL) * 8UL, 208U);
  sobj = (struct attribute_set_obj *)tmp;
  if ((unsigned long )sobj == (unsigned long )((struct attribute_set_obj *)0)) {
    return ((struct attribute_set *)0);
  } else {
  }
  sobj->s.max_members = max_members;
  sobj->s.group.attrs = & sobj->a;
  sobj->s.group.name = name;
  return (& sobj->s);
}
}
static int add_to_attr_set(struct attribute_set *s , struct attribute *attr )
{
  {
  if ((unsigned long )s == (unsigned long )((struct attribute_set *)0) || (unsigned long )attr == (unsigned long )((struct attribute *)0)) {
    return (-22);
  } else {
  }
  if (s->members >= s->max_members) {
    return (-12);
  } else {
  }
  *(s->group.attrs + (unsigned long )s->members) = attr;
  s->members = s->members + 1U;
  return (0);
}
}
static int add_many_to_attr_set(struct attribute_set *s , struct attribute **attr ,
                                unsigned int count )
{
  int i ;
  int res ;
  {
  i = 0;
  goto ldv_34243;
  ldv_34242:
  res = add_to_attr_set(s, *(attr + (unsigned long )i));
  if (res != 0) {
    return (res);
  } else {
  }
  i = i + 1;
  ldv_34243: ;
  if ((unsigned int )i < count) {
    goto ldv_34242;
  } else {
  }
  return (0);
}
}
static void delete_attr_set(struct attribute_set *s , struct kobject *kobj )
{
  {
  sysfs_remove_group(kobj, (struct attribute_group const *)(& s->group));
  kfree((void const *)s);
  return;
}
}
static int parse_strtoul(char const *buf , unsigned long max , unsigned long *value )
{
  char *endp ;
  char *tmp ;
  {
  tmp = skip_spaces(buf);
  *value = simple_strtoul((char const *)tmp, & endp, 0U);
  endp = skip_spaces((char const *)endp);
  if ((int )((signed char )*endp) != 0 || *value > max) {
    return (-22);
  } else {
  }
  return (0);
}
}
static void tpacpi_disable_brightness_delay(void)
{
  int tmp ;
  {
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"PWMS", (char *)"qvd", 0);
  if (tmp != 0) {
    printk("\rthinkpad_acpi: ACPI backlight control delay disabled\n");
  } else {
  }
  return;
}
}
static void printk_deprecated_attribute(char const * const what , char const * const details )
{
  {
  tpacpi_log_usertask((char const * )"deprecated sysfs attribute");
  printk("\fthinkpad_acpi: WARNING: sysfs attribute %s is deprecated and will be removed. %s\n",
         what, details);
  return;
}
}
static char const *tpacpi_rfkill_names[4U] = { "bluetooth", "wwan", "uwb", (char const *)0};
static struct tpacpi_rfk *tpacpi_rfkill_switches[3U] ;
static int tpacpi_rfk_update_swstate(struct tpacpi_rfk const *tp_rfk )
{
  int status ;
  {
  if ((unsigned long )tp_rfk == (unsigned long )((struct tpacpi_rfk const *)0)) {
    return (-19);
  } else {
  }
  status = (*((tp_rfk->ops)->get_status))();
  if (status < 0) {
    return (status);
  } else {
  }
  rfkill_set_sw_state(tp_rfk->rfkill, status == 0);
  return (status);
}
}
static void tpacpi_rfk_update_swstate_all(void)
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_34290;
  ldv_34289:
  tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tpacpi_rfkill_switches[i]);
  i = i + 1U;
  ldv_34290: ;
  if (i <= 2U) {
    goto ldv_34289;
  } else {
  }
  return;
}
}
static void tpacpi_rfk_update_hwblock_state(bool blocked )
{
  unsigned int i ;
  struct tpacpi_rfk *tp_rfk ;
  {
  i = 0U;
  goto ldv_34298;
  ldv_34297:
  tp_rfk = tpacpi_rfkill_switches[i];
  if ((unsigned long )tp_rfk != (unsigned long )((struct tpacpi_rfk *)0)) {
    rfkill_set_hw_state(tp_rfk->rfkill, (int )blocked);
  } else {
  }
  i = i + 1U;
  ldv_34298: ;
  if (i <= 2U) {
    goto ldv_34297;
  } else {
  }
  return;
}
}
static int hotkey_get_wlsw(void) ;
static bool tpacpi_rfk_check_hwblock_state(void)
{
  int res ;
  int tmp ;
  int hw_blocked ;
  {
  tmp = hotkey_get_wlsw();
  res = tmp;
  if (res < 0) {
    return (0);
  } else {
  }
  hw_blocked = res == 0;
  tpacpi_rfk_update_hwblock_state(hw_blocked != 0);
  return (hw_blocked != 0);
}
}
static int tpacpi_rfk_hook_set_block(void *data , bool blocked )
{
  struct tpacpi_rfk *tp_rfk ;
  int res ;
  {
  tp_rfk = (struct tpacpi_rfk *)data;
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: request to change radio state to %s\n", "tpacpi_rfk_hook_set_block",
           (int )blocked ? (char *)"blocked" : (char *)"unblocked");
  } else {
  }
  res = (*((tp_rfk->ops)->set_status))((int )blocked ? 0 : 1);
  tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tp_rfk);
  return (0 < res ? 0 : res);
}
}
static struct rfkill_ops const tpacpi_rfk_rfkill_ops = {0, 0, & tpacpi_rfk_hook_set_block};
static int tpacpi_new_rfkill(enum tpacpi_rfk_id const id , struct tpacpi_rfk_ops const *tp_rfkops ,
                             enum rfkill_type const rfktype , char const *name ,
                             bool const set_default )
{
  struct tpacpi_rfk *atp_rfk ;
  int res ;
  bool sw_state ;
  bool hw_state ;
  int sw_status ;
  long tmp ;
  void *tmp___0 ;
  {
  sw_state = 0;
  tmp = ldv__builtin_expect((long )((unsigned int )id > 2U || (unsigned long )tpacpi_rfkill_switches[(unsigned int )id] != (unsigned long )((struct tpacpi_rfk *)0)),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (1254), "i" (12UL));
    ldv_34327: ;
    goto ldv_34327;
  } else {
  }
  tmp___0 = kzalloc(24UL, 208U);
  atp_rfk = (struct tpacpi_rfk *)tmp___0;
  if ((unsigned long )atp_rfk != (unsigned long )((struct tpacpi_rfk *)0)) {
    atp_rfk->rfkill = rfkill_alloc(name, & tpacpi_pdev->dev, rfktype, & tpacpi_rfk_rfkill_ops,
                                   (void *)atp_rfk);
  } else {
  }
  if ((unsigned long )atp_rfk == (unsigned long )((struct tpacpi_rfk *)0) || (unsigned long )atp_rfk->rfkill == (unsigned long )((struct rfkill *)0)) {
    printk("\vthinkpad_acpi: failed to allocate memory for rfkill class\n");
    kfree((void const *)atp_rfk);
    return (-12);
  } else {
  }
  atp_rfk->id = id;
  atp_rfk->ops = tp_rfkops;
  sw_status = (*(tp_rfkops->get_status))();
  if (sw_status < 0) {
    printk("\vthinkpad_acpi: failed to read initial state for %s, error %d\n", name,
           sw_status);
  } else {
    sw_state = sw_status == 0;
    if ((int )set_default) {
      rfkill_init_sw_state(atp_rfk->rfkill, (int )sw_state);
    } else {
    }
  }
  hw_state = tpacpi_rfk_check_hwblock_state();
  rfkill_set_hw_state(atp_rfk->rfkill, (int )hw_state);
  res = rfkill_register(atp_rfk->rfkill);
  if (res < 0) {
    printk("\vthinkpad_acpi: failed to register %s rfkill switch: %d\n", name, res);
    rfkill_destroy(atp_rfk->rfkill);
    kfree((void const *)atp_rfk);
    return (res);
  } else {
  }
  tpacpi_rfkill_switches[(unsigned int )id] = atp_rfk;
  printk("\016thinkpad_acpi: rfkill switch %s: radio is %sblocked\n", name, (int )sw_state || (int )hw_state ? (char *)"" : (char *)"un");
  return (0);
}
}
static void tpacpi_destroy_rfkill(enum tpacpi_rfk_id const id )
{
  struct tpacpi_rfk *tp_rfk ;
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )id > 2U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (1306), "i" (12UL));
    ldv_34332: ;
    goto ldv_34332;
  } else {
  }
  tp_rfk = tpacpi_rfkill_switches[(unsigned int )id];
  if ((unsigned long )tp_rfk != (unsigned long )((struct tpacpi_rfk *)0)) {
    rfkill_unregister(tp_rfk->rfkill);
    rfkill_destroy(tp_rfk->rfkill);
    tpacpi_rfkill_switches[(unsigned int )id] = (struct tpacpi_rfk *)0;
    kfree((void const *)tp_rfk);
  } else {
  }
  return;
}
}
static void printk_deprecated_rfkill_attribute(char const * const what )
{
  {
  printk_deprecated_attribute(what, (char const * )"Please switch to generic rfkill before year 2010");
  return;
}
}
static ssize_t tpacpi_rfk_sysfs_enable_show(enum tpacpi_rfk_id const id , struct device_attribute *attr ,
                                            char *buf )
{
  int status ;
  bool tmp ;
  int tmp___0 ;
  {
  printk_deprecated_rfkill_attribute(attr->attr.name);
  tmp = tpacpi_rfk_check_hwblock_state();
  if ((int )tmp) {
    status = 0;
  } else {
    status = tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tpacpi_rfkill_switches[(unsigned int )id]);
    if (status < 0) {
      return ((ssize_t )status);
    } else {
    }
  }
  tmp___0 = snprintf(buf, 4096UL, "%d\n", status == 1);
  return ((ssize_t )tmp___0);
}
}
static ssize_t tpacpi_rfk_sysfs_enable_store(enum tpacpi_rfk_id const id , struct device_attribute *attr ,
                                             char const *buf , size_t count )
{
  unsigned long t ;
  int res ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  printk_deprecated_rfkill_attribute(attr->attr.name);
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___2 != 0L) {
    tmp___0 = get_current();
    tmp___1 = task_tgid_vnr(tmp___0);
    printk("\017thinkpad_acpi: %s: PID %d: set to %ld\n", attr->attr.name, tmp___1,
           t);
  } else {
  }
  tmp___3 = tpacpi_rfk_check_hwblock_state();
  if ((int )tmp___3 && t != 0UL) {
    return (-1L);
  } else {
  }
  res = (*(((tpacpi_rfkill_switches[(unsigned int )id])->ops)->set_status))(t != 0UL);
  tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tpacpi_rfkill_switches[(unsigned int )id]);
  return ((ssize_t )(res < 0 ? (size_t )res : count));
}
}
static int tpacpi_rfk_procfs_read(enum tpacpi_rfk_id const id , struct seq_file *m )
{
  int status ;
  bool tmp ;
  {
  if ((unsigned int )id > 2U) {
    seq_printf(m, "status:\t\tnot supported\n");
  } else {
    tmp = tpacpi_rfk_check_hwblock_state();
    if ((int )tmp) {
      status = 0;
    } else {
      status = tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tpacpi_rfkill_switches[(unsigned int )id]);
      if (status < 0) {
        return (status);
      } else {
      }
    }
    seq_printf(m, "status:\t\t%s\n", status == 1 ? (char *)"enabled" : (char *)"disabled");
    seq_printf(m, "commands:\tenable, disable\n");
  }
  return (0);
}
}
static int tpacpi_rfk_procfs_write(enum tpacpi_rfk_id const id , char *buf )
{
  char *cmd ;
  int status ;
  int res ;
  size_t tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  struct task_struct *tmp___3 ;
  pid_t tmp___4 ;
  long tmp___5 ;
  {
  status = -1;
  res = 0;
  if ((unsigned int )id > 2U) {
    return (-19);
  } else {
  }
  goto ldv_34363;
  ldv_34362:
  tmp___1 = strlen("enable");
  tmp___2 = strncmp((char const *)cmd, "enable", tmp___1);
  if (tmp___2 == 0) {
    status = 1;
  } else {
    tmp = strlen("disable");
    tmp___0 = strncmp((char const *)cmd, "disable", tmp);
    if (tmp___0 == 0) {
      status = 0;
    } else {
      return (-22);
    }
  }
  ldv_34363:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_34362;
  } else {
  }
  if (status != -1) {
    tmp___5 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___5 != 0L) {
      tmp___3 = get_current();
      tmp___4 = task_tgid_vnr(tmp___3);
      printk("\017thinkpad_acpi: %s: PID %d: attempt to %s %s\n", (char *)"procfs",
             tmp___4, status == 1 ? (char *)"enable" : (char *)"disable", tpacpi_rfkill_names[(unsigned int )id]);
    } else {
    }
    res = (*(((tpacpi_rfkill_switches[(unsigned int )id])->ops)->set_status))((enum tpacpi_rfkill_state const )status);
    tpacpi_rfk_update_swstate((struct tpacpi_rfk const *)tpacpi_rfkill_switches[(unsigned int )id]);
  } else {
  }
  return (res);
}
}
static ssize_t tpacpi_driver_interface_version_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%08x\n", 132864);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_interface_version = {{"interface_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & tpacpi_driver_interface_version_show, (ssize_t (*)(struct device_driver * ,
                                                         char const * , size_t ))0};
static ssize_t tpacpi_driver_debug_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%04x\n", dbg_level);
  return ((ssize_t )tmp);
}
}
static ssize_t tpacpi_driver_debug_store(struct device_driver *drv , char const *buf ,
                                         size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 65535UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  dbg_level = (u32 )t;
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_debug_level = {{"debug_level", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & tpacpi_driver_debug_show, & tpacpi_driver_debug_store};
static ssize_t tpacpi_driver_version_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%s v%s\n", (char *)"ThinkPad ACPI Extras", (char *)"0.25");
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_version = {{"version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & tpacpi_driver_version_show,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t tpacpi_driver_wlsw_emulstate_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", (int )tpacpi_wlsw_emulstate);
  return ((ssize_t )tmp);
}
}
static ssize_t tpacpi_driver_wlsw_emulstate_store(struct device_driver *drv , char const *buf ,
                                                  size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if ((int )tpacpi_wlsw_emulstate != (t != 0UL)) {
    tpacpi_wlsw_emulstate = t != 0UL;
    tpacpi_rfk_update_hwblock_state(t == 0UL);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_wlsw_emulstate = {{"wlsw_emulstate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & tpacpi_driver_wlsw_emulstate_show, & tpacpi_driver_wlsw_emulstate_store};
static ssize_t tpacpi_driver_bluetooth_emulstate_show(struct device_driver *drv ,
                                                      char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", (int )tpacpi_bluetooth_emulstate);
  return ((ssize_t )tmp);
}
}
static ssize_t tpacpi_driver_bluetooth_emulstate_store(struct device_driver *drv ,
                                                       char const *buf , size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tpacpi_bluetooth_emulstate = t != 0UL;
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_bluetooth_emulstate = {{"bluetooth_emulstate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & tpacpi_driver_bluetooth_emulstate_show,
    & tpacpi_driver_bluetooth_emulstate_store};
static ssize_t tpacpi_driver_wwan_emulstate_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", (int )tpacpi_wwan_emulstate);
  return ((ssize_t )tmp);
}
}
static ssize_t tpacpi_driver_wwan_emulstate_store(struct device_driver *drv , char const *buf ,
                                                  size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tpacpi_wwan_emulstate = t != 0UL;
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_wwan_emulstate = {{"wwan_emulstate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & tpacpi_driver_wwan_emulstate_show, & tpacpi_driver_wwan_emulstate_store};
static ssize_t tpacpi_driver_uwb_emulstate_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", (int )tpacpi_uwb_emulstate);
  return ((ssize_t )tmp);
}
}
static ssize_t tpacpi_driver_uwb_emulstate_store(struct device_driver *drv , char const *buf ,
                                                 size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tpacpi_uwb_emulstate = t != 0UL;
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_uwb_emulstate = {{"uwb_emulstate", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & tpacpi_driver_uwb_emulstate_show, & tpacpi_driver_uwb_emulstate_store};
static struct driver_attribute *tpacpi_driver_attributes[3U] = { & driver_attr_debug_level, & driver_attr_version, & driver_attr_interface_version};
static int tpacpi_create_driver_attributes(struct device_driver *drv )
{
  int i ;
  int res ;
  {
  i = 0;
  res = 0;
  goto ldv_34523;
  ldv_34522:
  res = driver_create_file(drv, (struct driver_attribute const *)tpacpi_driver_attributes[i]);
  i = i + 1;
  ldv_34523: ;
  if (res == 0 && (unsigned int )i <= 2U) {
    goto ldv_34522;
  } else {
  }
  if (res == 0 && dbg_wlswemul != 0) {
    res = driver_create_file(drv, (struct driver_attribute const *)(& driver_attr_wlsw_emulstate));
  } else {
  }
  if (res == 0 && dbg_bluetoothemul != 0) {
    res = driver_create_file(drv, (struct driver_attribute const *)(& driver_attr_bluetooth_emulstate));
  } else {
  }
  if (res == 0 && dbg_wwanemul != 0) {
    res = driver_create_file(drv, (struct driver_attribute const *)(& driver_attr_wwan_emulstate));
  } else {
  }
  if (res == 0 && dbg_uwbemul != 0) {
    res = driver_create_file(drv, (struct driver_attribute const *)(& driver_attr_uwb_emulstate));
  } else {
  }
  return (res);
}
}
static void tpacpi_remove_driver_attributes(struct device_driver *drv )
{
  int i ;
  {
  i = 0;
  goto ldv_34532;
  ldv_34531:
  driver_remove_file(drv, (struct driver_attribute const *)tpacpi_driver_attributes[i]);
  i = i + 1;
  ldv_34532: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_34531;
  } else {
  }
  return;
}
}
static struct tpacpi_quirk const tpacpi_bios_version_qtable[69U] =
  { {4116U, 19785U, 65535U, 4294915637UL},
        {4116U, 21833U, 65535U, 4294914614UL},
        {4116U, 16969U, 65535U, 4294915380UL},
        {4116U, 18505U, 65535U, 4294915127UL},
        {4116U, 20041U, 65535U, 4294914870UL},
        {4116U, 21577U, 65535U, 4294915381UL},
        {4116U, 17481U, 65535U, 4294915128UL},
        {4116U, 18761U, 65535U, 4294915122UL},
        {4116U, 20297U, 65535U, 4294914611UL},
        {4116U, 22345U, 65535U, 4294915385UL},
        {4116U, 22089U, 65535U, 4294915641UL},
        {4116U, 12337U, 65535U, 4294914614UL},
        {4116U, 21835U, 65535U, 4294914870UL},
        {4116U, 22603U, 65535U, 4294914870UL},
        {4116U, 22859U, 65535U, 4294914872UL},
        {4116U, 16945U, 65535U, 4294914359UL},
        {4116U, 13105U, 65535U, 4294914608UL},
        {4116U, 17713U, 65535U, 4294915891UL},
        {4116U, 18225U, 18225U, 825701425UL},
        {4116U, 18225U, 0U, 825701425UL},
        {4116U, 20017U, 20017U, 808923446UL},
        {4116U, 20017U, 0U, 808923446UL},
        {4116U, 21553U, 65535U, 4294918454UL},
        {4116U, 22577U, 65535U, 4294915383UL},
        {4116U, 17201U, 65535U, 4294919728UL},
        {4116U, 17969U, 65535U, 4294919729UL},
        {4116U, 19761U, 65535U, 4294916407UL},
        {4116U, 20273U, 65535U, 4294915633UL},
        {4116U, 20529U, 65535U, 4294915637UL},
        {4116U, 21297U, 65535U, 4294915888UL},
        {4116U, 21041U, 21041U, 925975634UL},
        {4116U, 21041U, 0U, 925975634UL},
        {4116U, 22065U, 22065U, 842544945UL},
        {4116U, 22065U, 0U, 842544945UL},
        {4116U, 14391U, 14391U, 808859441UL},
        {4116U, 14391U, 0U, 808859441UL},
        {4116U, 13879U, 13879U, 825636409UL},
        {4116U, 13879U, 0U, 825636409UL},
        {4116U, 12343U, 12343U, 842544697UL},
        {4116U, 12343U, 0U, 842544697UL},
        {4116U, 22857U, 65535U, 4294915633UL},
        {4116U, 23115U, 65535U, 4294914868UL},
        {4116U, 13873U, 65535U, 4294914866UL},
        {4116U, 16689U, 16689U, 842217012UL},
        {4116U, 16689U, 0U, 842217012UL},
        {4116U, 18737U, 18737U, 842020657UL},
        {4116U, 18737U, 0U, 842020657UL},
        {4116U, 22833U, 22833U, 842610229UL},
        {4116U, 22833U, 0U, 842610229UL},
        {6058U, 14647U, 14647U, 892355891UL},
        {6058U, 17207U, 17207U, 842155058UL},
        {6058U, 17719U, 17719U, 825574448UL},
        {4116U, 22321U, 22065U, 842545456UL},
        {4116U, 22321U, 0U, 842545456UL},
        {6058U, 18743U, 14647U, 892351284UL},
        {4116U, 23113U, 65535U, 4294916420UL},
        {4116U, 17457U, 65535U, 4294915888UL},
        {4116U, 19249U, 19249U, 825766968UL},
        {4116U, 19249U, 0U, 825766968UL},
        {4116U, 20785U, 20785U, 842217783UL},
        {4116U, 20785U, 0U, 842217783UL},
        {4116U, 21809U, 21809U, 1110590515UL},
        {4116U, 21809U, 0U, 1110590515UL},
        {4116U, 13367U, 13367U, 842479156UL},
        {4116U, 13367U, 0U, 842479156UL},
        {4116U, 13623U, 13623U, 842020400UL},
        {4116U, 13623U, 0U, 842020400UL},
        {6058U, 16951U, 16951U, 875578423UL},
        {6058U, 18999U, 18999U, 825439024UL}};
static void tpacpi_check_outdated_fw(void)
{
  unsigned long fwvers ;
  u16 ec_version ;
  u16 bios_version ;
  {
  fwvers = tpacpi_check_quirks((struct tpacpi_quirk const *)(& tpacpi_bios_version_qtable),
                               69U);
  if (fwvers == 0UL) {
    return;
  } else {
  }
  bios_version = (u16 )fwvers;
  ec_version = (u16 )(fwvers >> 16);
  if ((int )thinkpad_id.bios_release < (int )bios_version || ((int )thinkpad_id.ec_release < (int )ec_version && (unsigned int )ec_version != 65535U)) {
    printk("\fthinkpad_acpi: WARNING: Outdated ThinkPad BIOS/EC firmware\n");
    printk("\fthinkpad_acpi: WARNING: This firmware may be missing critical bug fixes and/or important features\n");
  } else {
  }
  return;
}
}
static bool tpacpi_is_fw_known(void)
{
  unsigned long tmp ;
  {
  tmp = tpacpi_check_quirks((struct tpacpi_quirk const *)(& tpacpi_bios_version_qtable),
                            69U);
  return (tmp != 0UL);
}
}
static int thinkpad_acpi_driver_read(struct seq_file *m )
{
  {
  seq_printf(m, "driver:\t\t%s\n", (char *)"ThinkPad ACPI Extras");
  seq_printf(m, "version:\t%s\n", (char *)"0.25");
  return (0);
}
}
static struct ibm_struct thinkpad_acpi_driver_data =
     {(char *)"driver", & thinkpad_acpi_driver_read, 0, 0, 0, 0, 0, {0, 0}, 0, {(unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0}};
static struct task_struct *tpacpi_hotkey_task ;
static struct mutex hotkey_thread_data_mutex ;
static unsigned int hotkey_config_change ;
static u32 hotkey_source_mask ;
static unsigned int hotkey_poll_freq = 10U;
static struct mutex hotkey_mutex ;
static enum ldv_24708 hotkey_wakeup_reason ;
static int hotkey_autosleep_ack ;
static u32 hotkey_orig_mask ;
static u32 hotkey_all_mask ;
static u32 hotkey_reserved_mask ;
static u32 hotkey_driver_mask ;
static u32 hotkey_user_mask ;
static u32 hotkey_acpi_mask ;
static u16 *hotkey_keycode_map ;
static struct attribute_set *hotkey_dev_attributes ;
static void tpacpi_driver_event(unsigned int const hkey_event ) ;
static void hotkey_driver_event(unsigned int const scancode ) ;
static void hotkey_poll_setup(bool const may_warn ) ;
static int hotkey_get_wlsw(void)
{
  int status ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (-19);
  } else {
  }
  if (dbg_wlswemul != 0) {
    return ((int )tpacpi_wlsw_emulstate);
  } else {
  }
  tmp = acpi_evalf(hkey_handle, & status, (char *)"WLSW", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (status != 0);
}
}
static int hotkey_get_tablet_mode(int *status )
{
  int s ;
  int tmp ;
  {
  tmp = acpi_evalf(hkey_handle, & s, (char *)"MHKG", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  *status = (s & 8) != 0;
  return (0);
}
}
static int hotkey_mask_get(void)
{
  u32 m ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    m = 0U;
    tmp = acpi_evalf(hkey_handle, (int *)(& m), (char *)"DHKN", (char *)"d");
    if (tmp == 0) {
      return (-5);
    } else {
    }
    hotkey_acpi_mask = m;
  } else {
    hotkey_acpi_mask = hotkey_all_mask;
  }
  hotkey_user_mask = (hotkey_acpi_mask | hotkey_source_mask) & hotkey_user_mask;
  return (0);
}
}
static void hotkey_mask_warn_incomplete_mask(void)
{
  u32 wantedmask ;
  {
  wantedmask = (~ (hotkey_acpi_mask | hotkey_source_mask) & hotkey_driver_mask) & (hotkey_all_mask | 16484544U);
  if (wantedmask != 0U) {
    printk("\rthinkpad_acpi: required events 0x%08x not enabled!\n", wantedmask);
  } else {
  }
  return;
}
}
static int hotkey_mask_set(u32 mask )
{
  int i ;
  int rc ;
  u32 fwmask ;
  int tmp ;
  int tmp___0 ;
  {
  rc = 0;
  fwmask = ~ hotkey_source_mask & mask;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    i = 0;
    goto ldv_34688;
    ldv_34687:
    tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"MHKM", (char *)"vdd", i + 1,
                     ((u32 )(1 << i) & mask) != 0U);
    if (tmp == 0) {
      rc = -5;
      goto ldv_34686;
    } else {
    }
    i = i + 1;
    ldv_34688: ;
    if (i <= 31) {
      goto ldv_34687;
    } else {
    }
    ldv_34686: ;
  } else {
  }
  tmp___0 = hotkey_mask_get();
  if ((tmp___0 == 0 && rc == 0) && (~ hotkey_acpi_mask & fwmask) != 0U) {
    printk("\rthinkpad_acpi: asked for hotkey mask 0x%08x, but firmware forced it to 0x%08x\n",
           fwmask, hotkey_acpi_mask);
  } else {
  }
  if ((unsigned int )tpacpi_lifecycle != 2U) {
    hotkey_mask_warn_incomplete_mask();
  } else {
  }
  return (rc);
}
}
static int hotkey_user_mask_set(u32 const mask )
{
  int rc ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_warned) + 0UL) == 0U && (((unsigned int )mask == 65535U || (unsigned int )mask == 16777215U) || (unsigned int )mask == 4294967295U)) {
    tp_warned.hotkey_mask_ff = 1U;
    printk("\rthinkpad_acpi: setting the hotkey mask to 0x%08x is likely not the best way to go about it\n",
           mask);
    printk("\rthinkpad_acpi: please consider using the driver defaults, and refer to up-to-date thinkpad-acpi documentation\n");
  } else {
  }
  rc = hotkey_mask_set(((unsigned int )mask | hotkey_driver_mask) & ~ hotkey_source_mask);
  hotkey_user_mask = (hotkey_acpi_mask | hotkey_source_mask) & (unsigned int )mask;
  return (rc);
}
}
static int tpacpi_hotkey_driver_mask_set(u32 const mask )
{
  int rc ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    hotkey_driver_mask = mask;
    return (0);
  } else {
  }
  ldv_mutex_lock_22(& hotkey_mutex);
  ldv_mutex_lock_23(& hotkey_thread_data_mutex);
  hotkey_config_change = hotkey_config_change + 1U;
  hotkey_driver_mask = mask;
  hotkey_source_mask = (~ hotkey_all_mask & (unsigned int )mask) | hotkey_source_mask;
  ldv_mutex_unlock_24(& hotkey_thread_data_mutex);
  rc = hotkey_mask_set((hotkey_acpi_mask | hotkey_driver_mask) & ~ hotkey_source_mask);
  hotkey_poll_setup(1);
  ldv_mutex_unlock_25(& hotkey_mutex);
  return (rc);
}
}
static int hotkey_status_get(int *status )
{
  int tmp ;
  {
  tmp = acpi_evalf(hkey_handle, status, (char *)"DHKC", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int hotkey_status_set(bool enable )
{
  int tmp ;
  {
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"MHKC", (char *)"vd", (int )enable);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static void tpacpi_input_send_tabletsw(void)
{
  int state ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    tmp = hotkey_get_tablet_mode(& state);
    if (tmp == 0) {
      ldv_mutex_lock_26(& tpacpi_inputdev_send_mutex);
      input_report_switch(tpacpi_inputdev, 1U, state != 0);
      input_sync(tpacpi_inputdev);
      ldv_mutex_unlock_27(& tpacpi_inputdev_send_mutex);
    } else {
    }
  } else {
  }
  return;
}
}
static void tpacpi_input_send_key(unsigned int const scancode )
{
  unsigned int keycode ;
  {
  keycode = (unsigned int const )*(hotkey_keycode_map + (unsigned long )scancode);
  if (keycode != 0U) {
    ldv_mutex_lock_28(& tpacpi_inputdev_send_mutex);
    input_event(tpacpi_inputdev, 4U, 4U, (int )scancode);
    input_report_key(tpacpi_inputdev, keycode, 1);
    input_sync(tpacpi_inputdev);
    input_event(tpacpi_inputdev, 4U, 4U, (int )scancode);
    input_report_key(tpacpi_inputdev, keycode, 0);
    input_sync(tpacpi_inputdev);
    ldv_mutex_unlock_29(& tpacpi_inputdev_send_mutex);
  } else {
  }
  return;
}
}
static void tpacpi_input_send_key_masked(unsigned int const scancode )
{
  {
  hotkey_driver_event(scancode);
  if (((u32 )(1 << (int )scancode) & hotkey_user_mask) != 0U) {
    tpacpi_input_send_key(scancode);
  } else {
  }
  return;
}
}
static struct tp_acpi_drv_struct ibm_hotkey_acpidriver ;
static void tpacpi_hotkey_send_key(unsigned int scancode )
{
  {
  tpacpi_input_send_key_masked(scancode);
  return;
}
}
static void hotkey_read_nvram(struct tp_nvram_state *n , u32 const m )
{
  u8 d ;
  {
  if (((unsigned int )m & 8915008U) != 0U) {
    d = nvram_read_byte(87);
    n->thinkpad_toggle = ((int )d & 8) != 0;
    n->zoom_toggle = ((int )d & 32) != 0;
    n->display_toggle = ((int )d & 64) != 0;
    n->hibernate_toggle = (int )((signed char )d) < 0;
  } else {
  }
  if (((unsigned int )m & 131072U) != 0U) {
    d = nvram_read_byte(88);
    n->thinklight_toggle = ((int )d & 16) != 0;
  } else {
  }
  if (((unsigned int )m & 128U) != 0U) {
    d = nvram_read_byte(89);
    n->displayexp_toggle = ((int )d & 48) != 0;
  } else {
  }
  if (((unsigned int )m & 98304U) != 0U) {
    d = nvram_read_byte(94);
    n->brightness_level = (unsigned int )d & 15U;
    n->brightness_toggle = ((int )d & 32) != 0;
  } else {
  }
  if (((unsigned int )m & 7340032U) != 0U) {
    d = nvram_read_byte(96);
    n->volume_level = (unsigned int )d & 15U;
    n->mute = ((int )d & 64) != 0;
    n->volume_toggle = (int )((signed char )d) < 0;
  } else {
  }
  return;
}
}
static void issue_volchange(unsigned int const oldvol , unsigned int const newvol ,
                            u32 const event_mask )
{
  unsigned int i ;
  {
  i = oldvol;
  goto ldv_34730;
  ldv_34729: ;
  if (((unsigned int )event_mask & 2097152U) != 0U) {
    tpacpi_hotkey_send_key(21U);
  } else {
  }
  i = i - 1U;
  ldv_34730: ;
  if (i > (unsigned int )newvol) {
    goto ldv_34729;
  } else {
  }
  goto ldv_34733;
  ldv_34732: ;
  if (((unsigned int )event_mask & 1048576U) != 0U) {
    tpacpi_hotkey_send_key(20U);
  } else {
  }
  i = i + 1U;
  ldv_34733: ;
  if (i < (unsigned int )newvol) {
    goto ldv_34732;
  } else {
  }
  return;
}
}
static void issue_brightnesschange(unsigned int const oldbrt , unsigned int const newbrt ,
                                   u32 const event_mask )
{
  unsigned int i ;
  {
  i = oldbrt;
  goto ldv_34742;
  ldv_34741: ;
  if (((unsigned int )event_mask & 65536U) != 0U) {
    tpacpi_hotkey_send_key(16U);
  } else {
  }
  i = i - 1U;
  ldv_34742: ;
  if (i > (unsigned int )newbrt) {
    goto ldv_34741;
  } else {
  }
  goto ldv_34745;
  ldv_34744: ;
  if (((unsigned int )event_mask & 32768U) != 0U) {
    tpacpi_hotkey_send_key(15U);
  } else {
  }
  i = i + 1U;
  ldv_34745: ;
  if (i < (unsigned int )newbrt) {
    goto ldv_34744;
  } else {
  }
  return;
}
}
static void hotkey_compare_and_issue_event(struct tp_nvram_state *oldn , struct tp_nvram_state *newn ,
                                           u32 const event_mask )
{
  {
  if (((unsigned int )event_mask & 8388608U) != 0U && (int )oldn->thinkpad_toggle != (int )newn->thinkpad_toggle) {
    tpacpi_hotkey_send_key(23U);
  } else {
  }
  if (((unsigned int )event_mask & 524288U) != 0U && (int )oldn->zoom_toggle != (int )newn->zoom_toggle) {
    tpacpi_hotkey_send_key(19U);
  } else {
  }
  if (((unsigned int )event_mask & 64U) != 0U && (int )oldn->display_toggle != (int )newn->display_toggle) {
    tpacpi_hotkey_send_key(6U);
  } else {
  }
  if (((unsigned int )event_mask & 2048U) != 0U && (int )oldn->hibernate_toggle != (int )newn->hibernate_toggle) {
    tpacpi_hotkey_send_key(11U);
  } else {
  }
  if (((unsigned int )event_mask & 131072U) != 0U && (int )oldn->thinklight_toggle != (int )newn->thinklight_toggle) {
    tpacpi_hotkey_send_key(17U);
  } else {
  }
  if (((unsigned int )event_mask & 128U) != 0U && (int )oldn->displayexp_toggle != (int )newn->displayexp_toggle) {
    tpacpi_hotkey_send_key(7U);
  } else {
  }
  if ((unsigned int )*((unsigned char *)newn + 1UL) != 0U) {
    if (((unsigned int )*((unsigned char *)oldn + 1UL) == 0U || (int )oldn->volume_toggle != (int )newn->volume_toggle) || (int )oldn->volume_level != (int )newn->volume_level) {
      issue_volchange((unsigned int const )oldn->volume_level, (unsigned int const )newn->volume_level,
                      event_mask);
      if (((unsigned int )event_mask & 4194304U) != 0U) {
        tpacpi_hotkey_send_key(22U);
      } else {
      }
    } else {
    }
  } else {
    if ((unsigned int )*((unsigned char *)oldn + 1UL) != 0U) {
      if (((unsigned int )event_mask & 1048576U) != 0U) {
        tpacpi_hotkey_send_key(20U);
      } else {
      }
    } else {
    }
    if ((int )oldn->volume_level != (int )newn->volume_level) {
      issue_volchange((unsigned int const )oldn->volume_level, (unsigned int const )newn->volume_level,
                      event_mask);
    } else
    if ((int )oldn->volume_toggle != (int )newn->volume_toggle) {
      if ((unsigned int )newn->volume_level == 0U) {
        if (((unsigned int )event_mask & 2097152U) != 0U) {
          tpacpi_hotkey_send_key(21U);
        } else {
        }
      } else
      if ((unsigned int )newn->volume_level > 13U) {
        if (((unsigned int )event_mask & 1048576U) != 0U) {
          tpacpi_hotkey_send_key(20U);
        } else {
        }
      } else {
      }
    } else {
    }
  }
  if ((int )oldn->brightness_level != (int )newn->brightness_level) {
    issue_brightnesschange((unsigned int const )oldn->brightness_level, (unsigned int const )newn->brightness_level,
                           event_mask);
  } else
  if ((int )oldn->brightness_toggle != (int )newn->brightness_toggle) {
    if ((unsigned int )newn->brightness_level == 0U) {
      if (((unsigned int )event_mask & 65536U) != 0U) {
        tpacpi_hotkey_send_key(16U);
      } else {
      }
    } else
    if ((unsigned int )newn->brightness_level >= bright_maxlvl && (unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
      if (((unsigned int )event_mask & 32768U) != 0U) {
        tpacpi_hotkey_send_key(15U);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static int hotkey_kthread(void *data )
{
  struct tp_nvram_state s[2U] ;
  u32 poll_mask ;
  u32 event_mask ;
  unsigned int si ;
  unsigned int so ;
  unsigned long t ;
  unsigned int change_detector ;
  unsigned int poll_freq ;
  bool was_frozen ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  if ((unsigned int )tpacpi_lifecycle == 2U) {
    goto exit;
  } else {
  }
  set_freezable();
  so = 0U;
  si = 1U;
  t = 0UL;
  ldv_mutex_lock_30(& hotkey_thread_data_mutex);
  change_detector = hotkey_config_change;
  poll_mask = hotkey_source_mask;
  event_mask = (hotkey_driver_mask | hotkey_user_mask) & hotkey_source_mask;
  poll_freq = hotkey_poll_freq;
  ldv_mutex_unlock_31(& hotkey_thread_data_mutex);
  hotkey_read_nvram((struct tp_nvram_state *)(& s) + (unsigned long )so, poll_mask);
  goto ldv_34766;
  ldv_34767: ;
  if (t == 0UL) {
    tmp = ldv__builtin_expect(poll_freq != 0U, 1L);
    if (tmp != 0L) {
      t = (unsigned long )(1000U / poll_freq);
    } else {
      t = 100UL;
    }
  } else {
  }
  t = msleep_interruptible((unsigned int )t);
  tmp___0 = kthread_freezable_should_stop(& was_frozen);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    goto ldv_34765;
  } else {
  }
  if (t != 0UL && ! was_frozen) {
    goto ldv_34766;
  } else {
  }
  ldv_mutex_lock_32(& hotkey_thread_data_mutex);
  if ((int )was_frozen || hotkey_config_change != change_detector) {
    si = so;
    t = 0UL;
    change_detector = hotkey_config_change;
  } else {
  }
  poll_mask = hotkey_source_mask;
  event_mask = (hotkey_driver_mask | hotkey_user_mask) & hotkey_source_mask;
  poll_freq = hotkey_poll_freq;
  ldv_mutex_unlock_33(& hotkey_thread_data_mutex);
  tmp___3 = ldv__builtin_expect(poll_mask != 0U, 1L);
  if (tmp___3 != 0L) {
    hotkey_read_nvram((struct tp_nvram_state *)(& s) + (unsigned long )si, poll_mask);
    tmp___2 = ldv__builtin_expect(si != so, 1L);
    if (tmp___2 != 0L) {
      hotkey_compare_and_issue_event((struct tp_nvram_state *)(& s) + (unsigned long )so,
                                     (struct tp_nvram_state *)(& s) + (unsigned long )si,
                                     event_mask);
    } else {
    }
  } else {
  }
  so = si;
  si = si ^ 1U;
  ldv_34766:
  tmp___4 = kthread_should_stop();
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    goto ldv_34767;
  } else {
  }
  ldv_34765: ;
  exit: ;
  return (0);
}
}
static void hotkey_poll_stop_sync(void)
{
  {
  if ((unsigned long )tpacpi_hotkey_task != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(tpacpi_hotkey_task);
    tpacpi_hotkey_task = (struct task_struct *)0;
  } else {
  }
  return;
}
}
static void hotkey_poll_setup(bool const may_warn )
{
  u32 poll_driver_mask ;
  u32 poll_user_mask ;
  struct task_struct *__k ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  poll_driver_mask = hotkey_driver_mask & hotkey_source_mask;
  poll_user_mask = hotkey_user_mask & hotkey_source_mask;
  if (hotkey_poll_freq != 0U && (poll_driver_mask != 0U || (poll_user_mask != 0U && tpacpi_inputdev->users != 0U))) {
    if ((unsigned long )tpacpi_hotkey_task == (unsigned long )((struct task_struct *)0)) {
      tmp = kthread_create_on_node(& hotkey_kthread, (void *)0, -1, "ktpacpi_nvramd");
      __k = tmp;
      tmp___0 = IS_ERR((void const *)__k);
      if (tmp___0) {
        tmp___1 = 0;
      } else {
        tmp___1 = 1;
      }
      if (tmp___1) {
        wake_up_process(__k);
      } else {
      }
      tpacpi_hotkey_task = __k;
      tmp___2 = IS_ERR((void const *)tpacpi_hotkey_task);
      if ((int )tmp___2) {
        tpacpi_hotkey_task = (struct task_struct *)0;
        printk("\vthinkpad_acpi: could not create kernel thread for hotkey polling\n");
      } else {
      }
    } else {
    }
  } else {
    hotkey_poll_stop_sync();
    if (((int )may_warn && (poll_driver_mask != 0U || poll_user_mask != 0U)) && hotkey_poll_freq == 0U) {
      printk("\rthinkpad_acpi: hot keys 0x%08x and/or events 0x%08x require polling, which is currently disabled\n",
             poll_user_mask, poll_driver_mask);
    } else {
    }
  }
  return;
}
}
static void hotkey_poll_setup_safe(bool const may_warn )
{
  {
  ldv_mutex_lock_34(& hotkey_mutex);
  hotkey_poll_setup((int )may_warn);
  ldv_mutex_unlock_35(& hotkey_mutex);
  return;
}
}
static void hotkey_poll_set_freq(unsigned int freq )
{
  {
  if (freq == 0U) {
    hotkey_poll_stop_sync();
  } else {
  }
  hotkey_poll_freq = freq;
  return;
}
}
static int hotkey_inputdev_open(struct input_dev *dev )
{
  {
  switch ((unsigned int )tpacpi_lifecycle) {
  case 0U: ;
  case 1U:
  hotkey_poll_setup_safe(0);
  return (0);
  case 2U: ;
  return (-16);
  }
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                       "i" (2626), "i" (12UL));
  ldv_34790: ;
  goto ldv_34790;
  return (-16);
}
}
static void hotkey_inputdev_close(struct input_dev *dev )
{
  {
  if ((unsigned int )tpacpi_lifecycle != 2U && (hotkey_source_mask & hotkey_driver_mask) == 0U) {
    hotkey_poll_setup_safe(0);
  } else {
  }
  return;
}
}
static ssize_t hotkey_enable_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  int res ;
  int status ;
  int tmp ;
  {
  printk_deprecated_attribute((char const * )"hotkey_enable", (char const * )"Hotkey reporting is always enabled");
  res = hotkey_status_get(& status);
  if (res != 0) {
    return ((ssize_t )res);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%d\n", status);
  return ((ssize_t )tmp);
}
}
static ssize_t hotkey_enable_store(struct device *dev , struct device_attribute *attr ,
                                   char const *buf , size_t count )
{
  unsigned long t ;
  int tmp ;
  {
  printk_deprecated_attribute((char const * )"hotkey_enable", (char const * )"Hotkeys can be disabled through hotkey_mask");
  tmp = parse_strtoul(buf, 1UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if (t == 0UL) {
    return (-1L);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_hotkey_enable = {{"hotkey_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_enable_show, & hotkey_enable_store};
static ssize_t hotkey_mask_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%08x\n", hotkey_user_mask);
  return ((ssize_t )tmp);
}
}
static ssize_t hotkey_mask_store(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  unsigned long t ;
  int res ;
  int tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  pid_t tmp___2 ;
  long tmp___3 ;
  {
  tmp = parse_strtoul(buf, 4294967295UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tmp___0 = ldv_mutex_lock_killable_36(& hotkey_mutex);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  res = hotkey_user_mask_set((u32 const )t);
  hotkey_poll_setup(1);
  ldv_mutex_unlock_37(& hotkey_mutex);
  tmp___3 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___3 != 0L) {
    tmp___1 = get_current();
    tmp___2 = task_tgid_vnr(tmp___1);
    printk("\017thinkpad_acpi: %s: PID %d: set to 0x%08lx\n", (char *)"hotkey_mask",
           tmp___2, t);
  } else {
  }
  return ((ssize_t )(res != 0 ? (size_t )res : count));
}
}
static struct device_attribute dev_attr_hotkey_mask = {{"hotkey_mask", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_mask_show, & hotkey_mask_store};
static ssize_t hotkey_bios_enabled_show(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "0\n");
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_bios_enabled = {{"hotkey_bios_enabled", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & hotkey_bios_enabled_show,
    0};
static ssize_t hotkey_bios_mask_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  int tmp ;
  {
  printk_deprecated_attribute((char const * )"hotkey_bios_mask", (char const * )"This attribute is useless.");
  tmp = snprintf(buf, 4096UL, "0x%08x\n", hotkey_orig_mask);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_bios_mask = {{"hotkey_bios_mask", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_bios_mask_show, 0};
static ssize_t hotkey_all_mask_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%08x\n", hotkey_all_mask | hotkey_source_mask);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_all_mask = {{"hotkey_all_mask", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_all_mask_show, 0};
static ssize_t hotkey_recommended_mask_show(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%08x\n", (hotkey_all_mask | hotkey_source_mask) & ~ hotkey_reserved_mask);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_recommended_mask = {{"hotkey_recommended_mask", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}, {(char)0},
                                                     {(char)0}, {(char)0}}}}, & hotkey_recommended_mask_show,
    0};
static ssize_t hotkey_source_mask_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "0x%08x\n", hotkey_source_mask);
  return ((ssize_t )tmp);
}
}
static ssize_t hotkey_source_mask_store(struct device *dev , struct device_attribute *attr ,
                                        char const *buf , size_t count )
{
  unsigned long t ;
  u32 r_ev ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  pid_t tmp___2 ;
  long tmp___3 ;
  {
  tmp = parse_strtoul(buf, 4294967295UL, & t);
  if (tmp != 0 || (t & 0xffffffffff04773fUL) != 0UL) {
    return (-22L);
  } else {
  }
  tmp___0 = ldv_mutex_lock_killable_38(& hotkey_mutex);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  ldv_mutex_lock_39(& hotkey_thread_data_mutex);
  hotkey_config_change = hotkey_config_change + 1U;
  hotkey_source_mask = (u32 )t;
  ldv_mutex_unlock_40(& hotkey_thread_data_mutex);
  rc = hotkey_mask_set((hotkey_user_mask | hotkey_driver_mask) & ~ hotkey_source_mask);
  hotkey_poll_setup(1);
  r_ev = ((~ (hotkey_acpi_mask & hotkey_all_mask) & hotkey_driver_mask) & ~ hotkey_source_mask) & 16484544U;
  ldv_mutex_unlock_41(& hotkey_mutex);
  if (rc < 0) {
    printk("\vthinkpad_acpi: hotkey_source_mask: failed to update the firmware event mask!\n");
  } else {
  }
  if (r_ev != 0U) {
    printk("\rthinkpad_acpi: hotkey_source_mask: some important events were disabled: 0x%04x\n",
           r_ev);
  } else {
  }
  tmp___3 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___3 != 0L) {
    tmp___1 = get_current();
    tmp___2 = task_tgid_vnr(tmp___1);
    printk("\017thinkpad_acpi: %s: PID %d: set to 0x%08lx\n", (char *)"hotkey_source_mask",
           tmp___2, t);
  } else {
  }
  return ((ssize_t )(rc < 0 ? (size_t )rc : count));
}
}
static struct device_attribute dev_attr_hotkey_source_mask = {{"hotkey_source_mask", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_source_mask_show, & hotkey_source_mask_store};
static ssize_t hotkey_poll_freq_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", hotkey_poll_freq);
  return ((ssize_t )tmp);
}
}
static ssize_t hotkey_poll_freq_store(struct device *dev , struct device_attribute *attr ,
                                      char const *buf , size_t count )
{
  unsigned long t ;
  int tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  pid_t tmp___2 ;
  long tmp___3 ;
  {
  tmp = parse_strtoul(buf, 25UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tmp___0 = ldv_mutex_lock_killable_42(& hotkey_mutex);
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  hotkey_poll_set_freq((unsigned int )t);
  hotkey_poll_setup(1);
  ldv_mutex_unlock_43(& hotkey_mutex);
  tmp___3 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___3 != 0L) {
    tmp___1 = get_current();
    tmp___2 = task_tgid_vnr(tmp___1);
    printk("\017thinkpad_acpi: %s: PID %d: set to %lu\n", (char *)"hotkey_poll_freq",
           tmp___2, t);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_hotkey_poll_freq = {{"hotkey_poll_freq", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_poll_freq_show, & hotkey_poll_freq_store};
static ssize_t hotkey_radio_sw_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  int res ;
  int tmp ;
  {
  res = hotkey_get_wlsw();
  if (res < 0) {
    return ((ssize_t )res);
  } else {
  }
  tpacpi_rfk_update_hwblock_state(res == 0);
  tmp = snprintf(buf, 4096UL, "%d\n", res != 0);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_radio_sw = {{"hotkey_radio_sw", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_radio_sw_show, 0};
static void hotkey_radio_sw_notify_change(void)
{
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    sysfs_notify(& tpacpi_pdev->dev.kobj, (char const *)0, "hotkey_radio_sw");
  } else {
  }
  return;
}
}
static ssize_t hotkey_tablet_mode_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  int res ;
  int s ;
  int tmp ;
  {
  res = hotkey_get_tablet_mode(& s);
  if (res < 0) {
    return ((ssize_t )res);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%d\n", s != 0);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_hotkey_tablet_mode = {{"hotkey_tablet_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_tablet_mode_show, 0};
static void hotkey_tablet_mode_notify_change(void)
{
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    sysfs_notify(& tpacpi_pdev->dev.kobj, (char const *)0, "hotkey_tablet_mode");
  } else {
  }
  return;
}
}
static ssize_t hotkey_wakeup_reason_show(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", (unsigned int )hotkey_wakeup_reason);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_wakeup_reason = {{"wakeup_reason", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & hotkey_wakeup_reason_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static void hotkey_wakeup_reason_notify_change(void)
{
  {
  sysfs_notify(& tpacpi_pdev->dev.kobj, (char const *)0, "wakeup_reason");
  return;
}
}
static ssize_t hotkey_wakeup_hotunplug_complete_show(struct device *dev , struct device_attribute *attr ,
                                                     char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%d\n", hotkey_autosleep_ack);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_wakeup_hotunplug_complete = {{"wakeup_hotunplug_complete", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & hotkey_wakeup_hotunplug_complete_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static void hotkey_wakeup_hotunplug_complete_notify_change(void)
{
  {
  sysfs_notify(& tpacpi_pdev->dev.kobj, (char const *)0, "wakeup_hotunplug_complete");
  return;
}
}
static int adaptive_keyboard_get_mode(void) ;
static int adaptive_keyboard_set_mode(int new_mode ) ;
static ssize_t adaptive_kbd_mode_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  int current_mode ;
  int tmp ;
  {
  current_mode = adaptive_keyboard_get_mode();
  if (current_mode < 0) {
    return ((ssize_t )current_mode);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%d\n", current_mode);
  return ((ssize_t )tmp);
}
}
static ssize_t adaptive_kbd_mode_store(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  unsigned long t ;
  int res ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 4UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  res = adaptive_keyboard_set_mode((int )t);
  return ((ssize_t )(res < 0 ? (size_t )res : count));
}
}
static struct device_attribute dev_attr_adaptive_kbd_mode = {{"adaptive_kbd_mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & adaptive_kbd_mode_show, & adaptive_kbd_mode_store};
static struct attribute *adaptive_kbd_attributes[2U] = { & dev_attr_adaptive_kbd_mode.attr, (struct attribute *)0};
static struct attribute_group const adaptive_kbd_attr_group = {0, 0, (struct attribute **)(& adaptive_kbd_attributes), 0};
static struct attribute *hotkey_attributes[10U] =
  { & dev_attr_hotkey_enable.attr, & dev_attr_hotkey_bios_enabled.attr, & dev_attr_hotkey_bios_mask.attr, & dev_attr_wakeup_reason.attr,
        & dev_attr_wakeup_hotunplug_complete.attr, & dev_attr_hotkey_mask.attr, & dev_attr_hotkey_all_mask.attr, & dev_attr_hotkey_recommended_mask.attr,
        & dev_attr_hotkey_source_mask.attr, & dev_attr_hotkey_poll_freq.attr};
static void tpacpi_send_radiosw_update(void)
{
  int wlsw ;
  {
  wlsw = hotkey_get_wlsw();
  if (wlsw == 0) {
    tpacpi_rfk_update_hwblock_state(1);
  } else {
  }
  tpacpi_rfk_update_swstate_all();
  if (wlsw == 1) {
    tpacpi_rfk_update_hwblock_state(0);
  } else {
  }
  if (wlsw >= 0) {
    ldv_mutex_lock_44(& tpacpi_inputdev_send_mutex);
    input_report_switch(tpacpi_inputdev, 3U, wlsw > 0);
    input_sync(tpacpi_inputdev);
    ldv_mutex_unlock_45(& tpacpi_inputdev_send_mutex);
  } else {
  }
  hotkey_radio_sw_notify_change();
  return;
}
}
static void hotkey_exit(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_mutex_lock_46(& hotkey_mutex);
  hotkey_poll_stop_sync();
  ldv_mutex_unlock_47(& hotkey_mutex);
  if ((unsigned long )hotkey_dev_attributes != (unsigned long )((struct attribute_set *)0)) {
    delete_attr_set(hotkey_dev_attributes, & tpacpi_pdev->dev.kobj);
  } else {
  }
  if ((dbg_level & 10U) != 0U) {
    printk("\017thinkpad_acpi: %s: restoring original HKEY status and mask\n", "hotkey_exit");
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    tmp = hotkey_mask_set(hotkey_orig_mask);
    if (tmp != 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  tmp___1 = hotkey_status_set(0);
  if ((tmp___0 | tmp___1) != 0) {
    printk("\vthinkpad_acpi: failed to restore hot key mask to BIOS defaults\n");
  } else {
  }
  return;
}
}
static void hotkey_unmap(unsigned int const scancode )
{
  {
  if ((unsigned int )*(hotkey_keycode_map + (unsigned long )scancode) != 0U) {
    clear_bit((long )*(hotkey_keycode_map + (unsigned long )scancode), (unsigned long volatile *)(& tpacpi_inputdev->keybit));
    *(hotkey_keycode_map + (unsigned long )scancode) = 0U;
  } else {
  }
  return;
}
}
static struct tpacpi_quirk const tpacpi_hotkey_qtable[19U] =
  { {4116U, 18505U, 65535U, 1UL},
        {4116U, 20041U, 65535U, 1UL},
        {4116U, 17481U, 65535U, 1UL},
        {4116U, 22345U, 65535U, 1UL},
        {4116U, 22089U, 65535U, 1UL},
        {4116U, 12337U, 65535U, 1UL},
        {4116U, 21835U, 65535U, 1UL},
        {4116U, 22603U, 65535U, 1UL},
        {4116U, 22859U, 65535U, 1UL},
        {4116U, 16945U, 65535U, 1UL},
        {4116U, 13105U, 65535U, 1UL},
        {4116U, 17713U, 65535U, 1UL},
        {4116U, 17201U, 65535U, 1UL},
        {4116U, 17969U, 65535U, 1UL},
        {4116U, 22857U, 65535U, 1UL},
        {4116U, 23115U, 65535U, 1UL},
        {4116U, 13873U, 65535U, 1UL},
        {4116U, 23113U, 65535U, 1UL},
        {4116U, 17457U, 65535U, 1UL}};
static int hotkey_init(struct ibm_init_struct *iibm )
{
  tpacpi_keymap_t tpacpi_keymaps[2U][52U] ;
  unsigned int tmp ;
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
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned int tmp___17 ;
  unsigned int tmp___18 ;
  unsigned int tmp___19 ;
  unsigned int tmp___20 ;
  unsigned int tmp___21 ;
  unsigned int tmp___22 ;
  unsigned int tmp___23 ;
  unsigned int tmp___24 ;
  unsigned int tmp___25 ;
  unsigned int tmp___26 ;
  unsigned int tmp___27 ;
  unsigned int tmp___28 ;
  unsigned int tmp___29 ;
  unsigned int tmp___30 ;
  unsigned int tmp___31 ;
  unsigned int tmp___32 ;
  unsigned int tmp___33 ;
  unsigned int tmp___34 ;
  unsigned int tmp___35 ;
  unsigned int tmp___36 ;
  unsigned int tmp___37 ;
  unsigned int tmp___38 ;
  unsigned int tmp___39 ;
  unsigned int tmp___40 ;
  unsigned int tmp___41 ;
  unsigned int tmp___42 ;
  unsigned int tmp___43 ;
  unsigned int tmp___44 ;
  unsigned int tmp___45 ;
  unsigned int tmp___46 ;
  unsigned int tmp___47 ;
  unsigned int tmp___48 ;
  unsigned int tmp___49 ;
  unsigned int tmp___50 ;
  unsigned int tmp___51 ;
  unsigned int tmp___52 ;
  unsigned int tmp___53 ;
  unsigned int tmp___54 ;
  unsigned int tmp___55 ;
  unsigned int tmp___56 ;
  unsigned int tmp___57 ;
  unsigned int tmp___58 ;
  unsigned int tmp___59 ;
  unsigned int tmp___60 ;
  unsigned int tmp___61 ;
  unsigned int tmp___62 ;
  unsigned int tmp___63 ;
  unsigned int tmp___64 ;
  unsigned int tmp___65 ;
  unsigned int tmp___66 ;
  unsigned int tmp___67 ;
  unsigned int tmp___68 ;
  unsigned int tmp___69 ;
  unsigned int tmp___70 ;
  unsigned int tmp___71 ;
  unsigned int tmp___72 ;
  unsigned int tmp___73 ;
  unsigned int tmp___74 ;
  unsigned int tmp___75 ;
  unsigned int tmp___76 ;
  unsigned int tmp___77 ;
  unsigned int tmp___78 ;
  unsigned int tmp___79 ;
  unsigned int tmp___80 ;
  unsigned int tmp___81 ;
  unsigned int tmp___82 ;
  unsigned int tmp___83 ;
  unsigned int tmp___84 ;
  unsigned int tmp___85 ;
  unsigned int tmp___86 ;
  unsigned int tmp___87 ;
  unsigned int tmp___88 ;
  unsigned int tmp___89 ;
  unsigned int tmp___90 ;
  unsigned int tmp___91 ;
  unsigned int tmp___92 ;
  unsigned int tmp___93 ;
  unsigned int tmp___94 ;
  unsigned int tmp___95 ;
  unsigned int tmp___96 ;
  unsigned int tmp___97 ;
  unsigned int tmp___98 ;
  unsigned int tmp___99 ;
  unsigned int tmp___100 ;
  unsigned int tmp___101 ;
  unsigned int tmp___102 ;
  struct tpacpi_quirk tpacpi_keymap_qtable[2U] ;
  int res ;
  int i ;
  int status ;
  int hkeyv ;
  bool radiosw_state ;
  bool tabletsw_state ;
  unsigned long quirks ;
  unsigned long keymap_id ;
  long tmp___103 ;
  long tmp___104 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *tmp___105 ;
  int tmp___106 ;
  int tmp___107 ;
  int tmp___108 ;
  char const *tmp___109 ;
  int tmp___110 ;
  int tmp___111 ;
  void *tmp___112 ;
  long tmp___113 ;
  enum acpi_backlight_type tmp___114 ;
  {
  tpacpi_keymaps[0][0][0] = 466U;
  tmp = 1U;
  while (1) {
    if (tmp >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][0][tmp] = (unsigned short)0;
    tmp = tmp + 1U;
  }
  tpacpi_keymaps[0][1][0] = 236U;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][1][tmp___0] = (unsigned short)0;
    tmp___0 = tmp___0 + 1U;
  }
  tpacpi_keymaps[0][2][0] = 152U;
  tmp___1 = 1U;
  while (1) {
    if (tmp___1 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][2][tmp___1] = (unsigned short)0;
    tmp___1 = tmp___1 + 1U;
  }
  tpacpi_keymaps[0][3][0] = 142U;
  tmp___2 = 1U;
  while (1) {
    if (tmp___2 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][3][tmp___2] = (unsigned short)0;
    tmp___2 = tmp___2 + 1U;
  }
  tpacpi_keymaps[0][4][0] = 238U;
  tmp___3 = 1U;
  while (1) {
    if (tmp___3 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][4][tmp___3] = (unsigned short)0;
    tmp___3 = tmp___3 + 1U;
  }
  tpacpi_keymaps[0][5][0] = 471U;
  tmp___4 = 1U;
  while (1) {
    if (tmp___4 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][5][tmp___4] = (unsigned short)0;
    tmp___4 = tmp___4 + 1U;
  }
  tpacpi_keymaps[0][6][0] = 227U;
  tmp___5 = 1U;
  while (1) {
    if (tmp___5 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][6][tmp___5] = (unsigned short)0;
    tmp___5 = tmp___5 + 1U;
  }
  tpacpi_keymaps[0][7][0] = 473U;
  tmp___6 = 1U;
  while (1) {
    if (tmp___6 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][7][tmp___6] = (unsigned short)0;
    tmp___6 = tmp___6 + 1U;
  }
  tpacpi_keymaps[0][8][0] = 474U;
  tmp___7 = 1U;
  while (1) {
    if (tmp___7 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][8][tmp___7] = (unsigned short)0;
    tmp___7 = tmp___7 + 1U;
  }
  tpacpi_keymaps[0][9][0] = 475U;
  tmp___8 = 1U;
  while (1) {
    if (tmp___8 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][9][tmp___8] = (unsigned short)0;
    tmp___8 = tmp___8 + 1U;
  }
  tpacpi_keymaps[0][10][0] = 476U;
  tmp___9 = 1U;
  while (1) {
    if (tmp___9 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][10][tmp___9] = (unsigned short)0;
    tmp___9 = tmp___9 + 1U;
  }
  tpacpi_keymaps[0][11][0] = 205U;
  tmp___10 = 1U;
  while (1) {
    if (tmp___10 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][11][tmp___10] = (unsigned short)0;
    tmp___10 = tmp___10 + 1U;
  }
  tpacpi_keymaps[0][12][0] = 240U;
  tmp___11 = 1U;
  while (1) {
    if (tmp___11 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][12][tmp___11] = (unsigned short)0;
    tmp___11 = tmp___11 + 1U;
  }
  tpacpi_keymaps[0][13][0] = 240U;
  tmp___12 = 1U;
  while (1) {
    if (tmp___12 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][13][tmp___12] = (unsigned short)0;
    tmp___12 = tmp___12 + 1U;
  }
  tpacpi_keymaps[0][14][0] = 240U;
  tmp___13 = 1U;
  while (1) {
    if (tmp___13 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][14][tmp___13] = (unsigned short)0;
    tmp___13 = tmp___13 + 1U;
  }
  tpacpi_keymaps[0][15][0] = 0U;
  tmp___14 = 1U;
  while (1) {
    if (tmp___14 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][15][tmp___14] = (unsigned short)0;
    tmp___14 = tmp___14 + 1U;
  }
  tpacpi_keymaps[0][16][0] = 0U;
  tmp___15 = 1U;
  while (1) {
    if (tmp___15 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][16][tmp___15] = (unsigned short)0;
    tmp___15 = tmp___15 + 1U;
  }
  tpacpi_keymaps[0][17][0] = 0U;
  tmp___16 = 1U;
  while (1) {
    if (tmp___16 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][17][tmp___16] = (unsigned short)0;
    tmp___16 = tmp___16 + 1U;
  }
  tpacpi_keymaps[0][18][0] = 240U;
  tmp___17 = 1U;
  while (1) {
    if (tmp___17 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][18][tmp___17] = (unsigned short)0;
    tmp___17 = tmp___17 + 1U;
  }
  tpacpi_keymaps[0][19][0] = 372U;
  tmp___18 = 1U;
  while (1) {
    if (tmp___18 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][19][tmp___18] = (unsigned short)0;
    tmp___18 = tmp___18 + 1U;
  }
  tpacpi_keymaps[0][20][0] = 0U;
  tmp___19 = 1U;
  while (1) {
    if (tmp___19 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][20][tmp___19] = (unsigned short)0;
    tmp___19 = tmp___19 + 1U;
  }
  tpacpi_keymaps[0][21][0] = 0U;
  tmp___20 = 1U;
  while (1) {
    if (tmp___20 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][21][tmp___20] = (unsigned short)0;
    tmp___20 = tmp___20 + 1U;
  }
  tpacpi_keymaps[0][22][0] = 0U;
  tmp___21 = 1U;
  while (1) {
    if (tmp___21 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][22][tmp___21] = (unsigned short)0;
    tmp___21 = tmp___21 + 1U;
  }
  tpacpi_keymaps[0][23][0] = 360U;
  tmp___22 = 1U;
  while (1) {
    if (tmp___22 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][23][tmp___22] = (unsigned short)0;
    tmp___22 = tmp___22 + 1U;
  }
  tpacpi_keymaps[0][24][0] = 240U;
  tmp___23 = 1U;
  while (1) {
    if (tmp___23 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][24][tmp___23] = (unsigned short)0;
    tmp___23 = tmp___23 + 1U;
  }
  tpacpi_keymaps[0][25][0] = 240U;
  tmp___24 = 1U;
  while (1) {
    if (tmp___24 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][25][tmp___24] = (unsigned short)0;
    tmp___24 = tmp___24 + 1U;
  }
  tpacpi_keymaps[0][26][0] = 240U;
  tmp___25 = 1U;
  while (1) {
    if (tmp___25 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][26][tmp___25] = (unsigned short)0;
    tmp___25 = tmp___25 + 1U;
  }
  tpacpi_keymaps[0][27][0] = 240U;
  tmp___26 = 1U;
  while (1) {
    if (tmp___26 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][27][tmp___26] = (unsigned short)0;
    tmp___26 = tmp___26 + 1U;
  }
  tpacpi_keymaps[0][28][0] = 240U;
  tmp___27 = 1U;
  while (1) {
    if (tmp___27 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][28][tmp___27] = (unsigned short)0;
    tmp___27 = tmp___27 + 1U;
  }
  tpacpi_keymaps[0][29][0] = 240U;
  tmp___28 = 1U;
  while (1) {
    if (tmp___28 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][29][tmp___28] = (unsigned short)0;
    tmp___28 = tmp___28 + 1U;
  }
  tpacpi_keymaps[0][30][0] = 240U;
  tmp___29 = 1U;
  while (1) {
    if (tmp___29 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][30][tmp___29] = (unsigned short)0;
    tmp___29 = tmp___29 + 1U;
  }
  tpacpi_keymaps[0][31][0] = 240U;
  tmp___30 = 1U;
  while (1) {
    if (tmp___30 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][31][tmp___30] = (unsigned short)0;
    tmp___30 = tmp___30 + 1U;
  }
  tpacpi_keymaps[0][32][0] = 240U;
  tmp___31 = 1U;
  while (1) {
    if (tmp___31 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][32][tmp___31] = (unsigned short)0;
    tmp___31 = tmp___31 + 1U;
  }
  tpacpi_keymaps[0][33][0] = 240U;
  tmp___32 = 1U;
  while (1) {
    if (tmp___32 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][33][tmp___32] = (unsigned short)0;
    tmp___32 = tmp___32 + 1U;
  }
  tpacpi_keymaps[0][34][0] = 240U;
  tmp___33 = 1U;
  while (1) {
    if (tmp___33 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][34][tmp___33] = (unsigned short)0;
    tmp___33 = tmp___33 + 1U;
  }
  tpacpi_keymaps[0][35][0] = 240U;
  tmp___34 = 1U;
  while (1) {
    if (tmp___34 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][35][tmp___34] = (unsigned short)0;
    tmp___34 = tmp___34 + 1U;
  }
  tpacpi_keymaps[0][36][0] = 240U;
  tmp___35 = 1U;
  while (1) {
    if (tmp___35 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][36][tmp___35] = (unsigned short)0;
    tmp___35 = tmp___35 + 1U;
  }
  tpacpi_keymaps[0][37][0] = 240U;
  tmp___36 = 1U;
  while (1) {
    if (tmp___36 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][37][tmp___36] = (unsigned short)0;
    tmp___36 = tmp___36 + 1U;
  }
  tpacpi_keymaps[0][38][0] = 240U;
  tmp___37 = 1U;
  while (1) {
    if (tmp___37 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][38][tmp___37] = (unsigned short)0;
    tmp___37 = tmp___37 + 1U;
  }
  tpacpi_keymaps[0][39][0] = 240U;
  tmp___38 = 1U;
  while (1) {
    if (tmp___38 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][39][tmp___38] = (unsigned short)0;
    tmp___38 = tmp___38 + 1U;
  }
  tpacpi_keymaps[0][40][0] = 240U;
  tmp___39 = 1U;
  while (1) {
    if (tmp___39 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][40][tmp___39] = (unsigned short)0;
    tmp___39 = tmp___39 + 1U;
  }
  tpacpi_keymaps[0][41][0] = 240U;
  tmp___40 = 1U;
  while (1) {
    if (tmp___40 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][41][tmp___40] = (unsigned short)0;
    tmp___40 = tmp___40 + 1U;
  }
  tpacpi_keymaps[0][42][0] = 240U;
  tmp___41 = 1U;
  while (1) {
    if (tmp___41 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][42][tmp___41] = (unsigned short)0;
    tmp___41 = tmp___41 + 1U;
  }
  tpacpi_keymaps[0][43][0] = 240U;
  tmp___42 = 1U;
  while (1) {
    if (tmp___42 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][43][tmp___42] = (unsigned short)0;
    tmp___42 = tmp___42 + 1U;
  }
  tpacpi_keymaps[0][44][0] = 240U;
  tmp___43 = 1U;
  while (1) {
    if (tmp___43 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][44][tmp___43] = (unsigned short)0;
    tmp___43 = tmp___43 + 1U;
  }
  tpacpi_keymaps[0][45][0] = 240U;
  tmp___44 = 1U;
  while (1) {
    if (tmp___44 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][45][tmp___44] = (unsigned short)0;
    tmp___44 = tmp___44 + 1U;
  }
  tpacpi_keymaps[0][46][0] = 240U;
  tmp___45 = 1U;
  while (1) {
    if (tmp___45 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][46][tmp___45] = (unsigned short)0;
    tmp___45 = tmp___45 + 1U;
  }
  tpacpi_keymaps[0][47][0] = 240U;
  tmp___46 = 1U;
  while (1) {
    if (tmp___46 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][47][tmp___46] = (unsigned short)0;
    tmp___46 = tmp___46 + 1U;
  }
  tpacpi_keymaps[0][48][0] = 240U;
  tmp___47 = 1U;
  while (1) {
    if (tmp___47 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][48][tmp___47] = (unsigned short)0;
    tmp___47 = tmp___47 + 1U;
  }
  tpacpi_keymaps[0][49][0] = 240U;
  tmp___48 = 1U;
  while (1) {
    if (tmp___48 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][49][tmp___48] = (unsigned short)0;
    tmp___48 = tmp___48 + 1U;
  }
  tpacpi_keymaps[0][50][0] = 240U;
  tmp___49 = 1U;
  while (1) {
    if (tmp___49 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][50][tmp___49] = (unsigned short)0;
    tmp___49 = tmp___49 + 1U;
  }
  tmp___50 = 51U;
  while (1) {
    if (tmp___50 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[0][tmp___50][0] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][1] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][2] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][3] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][4] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][5] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][6] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][7] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][8] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][9] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][10] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][11] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][12] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][13] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][14] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][15] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][16] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][17] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][18] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][19] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][20] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][21] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][22] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][23] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][24] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][25] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][26] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][27] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][28] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][29] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][30] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][31] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][32] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][33] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][34] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][35] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][36] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][37] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][38] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][39] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][40] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][41] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][42] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][43] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][44] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][45] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][46] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][47] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][48] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][49] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][50] = (unsigned short)0;
    tpacpi_keymaps[0][tmp___50][51] = (unsigned short)0;
    tmp___50 = tmp___50 + 1U;
  }
  tpacpi_keymaps[1][0][0] = 466U;
  tmp___51 = 1U;
  while (1) {
    if (tmp___51 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][0][tmp___51] = (unsigned short)0;
    tmp___51 = tmp___51 + 1U;
  }
  tpacpi_keymaps[1][1][0] = 152U;
  tmp___52 = 1U;
  while (1) {
    if (tmp___52 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][1][tmp___52] = (unsigned short)0;
    tmp___52 = tmp___52 + 1U;
  }
  tpacpi_keymaps[1][2][0] = 236U;
  tmp___53 = 1U;
  while (1) {
    if (tmp___53 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][2][tmp___53] = (unsigned short)0;
    tmp___53 = tmp___53 + 1U;
  }
  tpacpi_keymaps[1][3][0] = 142U;
  tmp___54 = 1U;
  while (1) {
    if (tmp___54 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][3][tmp___54] = (unsigned short)0;
    tmp___54 = tmp___54 + 1U;
  }
  tpacpi_keymaps[1][4][0] = 238U;
  tmp___55 = 1U;
  while (1) {
    if (tmp___55 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][4][tmp___55] = (unsigned short)0;
    tmp___55 = tmp___55 + 1U;
  }
  tpacpi_keymaps[1][5][0] = 212U;
  tmp___56 = 1U;
  while (1) {
    if (tmp___56 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][5][tmp___56] = (unsigned short)0;
    tmp___56 = tmp___56 + 1U;
  }
  tpacpi_keymaps[1][6][0] = 227U;
  tmp___57 = 1U;
  while (1) {
    if (tmp___57 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][6][tmp___57] = (unsigned short)0;
    tmp___57 = tmp___57 + 1U;
  }
  tpacpi_keymaps[1][7][0] = 473U;
  tmp___58 = 1U;
  while (1) {
    if (tmp___58 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][7][tmp___58] = (unsigned short)0;
    tmp___58 = tmp___58 + 1U;
  }
  tpacpi_keymaps[1][8][0] = 474U;
  tmp___59 = 1U;
  while (1) {
    if (tmp___59 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][8][tmp___59] = (unsigned short)0;
    tmp___59 = tmp___59 + 1U;
  }
  tpacpi_keymaps[1][9][0] = 475U;
  tmp___60 = 1U;
  while (1) {
    if (tmp___60 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][9][tmp___60] = (unsigned short)0;
    tmp___60 = tmp___60 + 1U;
  }
  tpacpi_keymaps[1][10][0] = 476U;
  tmp___61 = 1U;
  while (1) {
    if (tmp___61 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][10][tmp___61] = (unsigned short)0;
    tmp___61 = tmp___61 + 1U;
  }
  tpacpi_keymaps[1][11][0] = 205U;
  tmp___62 = 1U;
  while (1) {
    if (tmp___62 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][11][tmp___62] = (unsigned short)0;
    tmp___62 = tmp___62 + 1U;
  }
  tpacpi_keymaps[1][12][0] = 240U;
  tmp___63 = 1U;
  while (1) {
    if (tmp___63 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][12][tmp___63] = (unsigned short)0;
    tmp___63 = tmp___63 + 1U;
  }
  tpacpi_keymaps[1][13][0] = 240U;
  tmp___64 = 1U;
  while (1) {
    if (tmp___64 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][13][tmp___64] = (unsigned short)0;
    tmp___64 = tmp___64 + 1U;
  }
  tpacpi_keymaps[1][14][0] = 240U;
  tmp___65 = 1U;
  while (1) {
    if (tmp___65 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][14][tmp___65] = (unsigned short)0;
    tmp___65 = tmp___65 + 1U;
  }
  tpacpi_keymaps[1][15][0] = 225U;
  tmp___66 = 1U;
  while (1) {
    if (tmp___66 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][15][tmp___66] = (unsigned short)0;
    tmp___66 = tmp___66 + 1U;
  }
  tpacpi_keymaps[1][16][0] = 224U;
  tmp___67 = 1U;
  while (1) {
    if (tmp___67 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][16][tmp___67] = (unsigned short)0;
    tmp___67 = tmp___67 + 1U;
  }
  tpacpi_keymaps[1][17][0] = 0U;
  tmp___68 = 1U;
  while (1) {
    if (tmp___68 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][17][tmp___68] = (unsigned short)0;
    tmp___68 = tmp___68 + 1U;
  }
  tpacpi_keymaps[1][18][0] = 240U;
  tmp___69 = 1U;
  while (1) {
    if (tmp___69 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][18][tmp___69] = (unsigned short)0;
    tmp___69 = tmp___69 + 1U;
  }
  tpacpi_keymaps[1][19][0] = 372U;
  tmp___70 = 1U;
  while (1) {
    if (tmp___70 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][19][tmp___70] = (unsigned short)0;
    tmp___70 = tmp___70 + 1U;
  }
  tpacpi_keymaps[1][20][0] = 0U;
  tmp___71 = 1U;
  while (1) {
    if (tmp___71 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][20][tmp___71] = (unsigned short)0;
    tmp___71 = tmp___71 + 1U;
  }
  tpacpi_keymaps[1][21][0] = 0U;
  tmp___72 = 1U;
  while (1) {
    if (tmp___72 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][21][tmp___72] = (unsigned short)0;
    tmp___72 = tmp___72 + 1U;
  }
  tpacpi_keymaps[1][22][0] = 0U;
  tmp___73 = 1U;
  while (1) {
    if (tmp___73 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][22][tmp___73] = (unsigned short)0;
    tmp___73 = tmp___73 + 1U;
  }
  tpacpi_keymaps[1][23][0] = 360U;
  tmp___74 = 1U;
  while (1) {
    if (tmp___74 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][23][tmp___74] = (unsigned short)0;
    tmp___74 = tmp___74 + 1U;
  }
  tpacpi_keymaps[1][24][0] = 240U;
  tmp___75 = 1U;
  while (1) {
    if (tmp___75 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][24][tmp___75] = (unsigned short)0;
    tmp___75 = tmp___75 + 1U;
  }
  tpacpi_keymaps[1][25][0] = 240U;
  tmp___76 = 1U;
  while (1) {
    if (tmp___76 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][25][tmp___76] = (unsigned short)0;
    tmp___76 = tmp___76 + 1U;
  }
  tpacpi_keymaps[1][26][0] = 248U;
  tmp___77 = 1U;
  while (1) {
    if (tmp___77 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][26][tmp___77] = (unsigned short)0;
    tmp___77 = tmp___77 + 1U;
  }
  tpacpi_keymaps[1][27][0] = 240U;
  tmp___78 = 1U;
  while (1) {
    if (tmp___78 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][27][tmp___78] = (unsigned short)0;
    tmp___78 = tmp___78 + 1U;
  }
  tpacpi_keymaps[1][28][0] = 171U;
  tmp___79 = 1U;
  while (1) {
    if (tmp___79 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][28][tmp___79] = (unsigned short)0;
    tmp___79 = tmp___79 + 1U;
  }
  tpacpi_keymaps[1][29][0] = 217U;
  tmp___80 = 1U;
  while (1) {
    if (tmp___80 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][29][tmp___80] = (unsigned short)0;
    tmp___80 = tmp___80 + 1U;
  }
  tpacpi_keymaps[1][30][0] = 120U;
  tmp___81 = 1U;
  while (1) {
    if (tmp___81 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][30][tmp___81] = (unsigned short)0;
    tmp___81 = tmp___81 + 1U;
  }
  tpacpi_keymaps[1][31][0] = 144U;
  tmp___82 = 1U;
  while (1) {
    if (tmp___82 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][31][tmp___82] = (unsigned short)0;
    tmp___82 = tmp___82 + 1U;
  }
  tpacpi_keymaps[1][32][0] = 0U;
  tmp___83 = 1U;
  while (1) {
    if (tmp___83 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][32][tmp___83] = (unsigned short)0;
    tmp___83 = tmp___83 + 1U;
  }
  tpacpi_keymaps[1][33][0] = 592U;
  tmp___84 = 1U;
  while (1) {
    if (tmp___84 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][33][tmp___84] = (unsigned short)0;
    tmp___84 = tmp___84 + 1U;
  }
  tpacpi_keymaps[1][34][0] = 0U;
  tmp___85 = 1U;
  while (1) {
    if (tmp___85 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][34][tmp___85] = (unsigned short)0;
    tmp___85 = tmp___85 + 1U;
  }
  tpacpi_keymaps[1][35][0] = 0U;
  tmp___86 = 1U;
  while (1) {
    if (tmp___86 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][35][tmp___86] = (unsigned short)0;
    tmp___86 = tmp___86 + 1U;
  }
  tpacpi_keymaps[1][36][0] = 0U;
  tmp___87 = 1U;
  while (1) {
    if (tmp___87 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][36][tmp___87] = (unsigned short)0;
    tmp___87 = tmp___87 + 1U;
  }
  tpacpi_keymaps[1][37][0] = 582U;
  tmp___88 = 1U;
  while (1) {
    if (tmp___88 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][37][tmp___88] = (unsigned short)0;
    tmp___88 = tmp___88 + 1U;
  }
  tpacpi_keymaps[1][38][0] = 0U;
  tmp___89 = 1U;
  while (1) {
    if (tmp___89 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][38][tmp___89] = (unsigned short)0;
    tmp___89 = tmp___89 + 1U;
  }
  tpacpi_keymaps[1][39][0] = 0U;
  tmp___90 = 1U;
  while (1) {
    if (tmp___90 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][39][tmp___90] = (unsigned short)0;
    tmp___90 = tmp___90 + 1U;
  }
  tpacpi_keymaps[1][40][0] = 0U;
  tmp___91 = 1U;
  while (1) {
    if (tmp___91 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][40][tmp___91] = (unsigned short)0;
    tmp___91 = tmp___91 + 1U;
  }
  tpacpi_keymaps[1][41][0] = 0U;
  tmp___92 = 1U;
  while (1) {
    if (tmp___92 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][41][tmp___92] = (unsigned short)0;
    tmp___92 = tmp___92 + 1U;
  }
  tpacpi_keymaps[1][42][0] = 0U;
  tmp___93 = 1U;
  while (1) {
    if (tmp___93 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][42][tmp___93] = (unsigned short)0;
    tmp___93 = tmp___93 + 1U;
  }
  tpacpi_keymaps[1][43][0] = 171U;
  tmp___94 = 1U;
  while (1) {
    if (tmp___94 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][43][tmp___94] = (unsigned short)0;
    tmp___94 = tmp___94 + 1U;
  }
  tpacpi_keymaps[1][44][0] = 0U;
  tmp___95 = 1U;
  while (1) {
    if (tmp___95 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][44][tmp___95] = (unsigned short)0;
    tmp___95 = tmp___95 + 1U;
  }
  tpacpi_keymaps[1][45][0] = 173U;
  tmp___96 = 1U;
  while (1) {
    if (tmp___96 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][45][tmp___96] = (unsigned short)0;
    tmp___96 = tmp___96 + 1U;
  }
  tpacpi_keymaps[1][46][0] = 158U;
  tmp___97 = 1U;
  while (1) {
    if (tmp___97 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][46][tmp___97] = (unsigned short)0;
    tmp___97 = tmp___97 + 1U;
  }
  tpacpi_keymaps[1][47][0] = 0U;
  tmp___98 = 1U;
  while (1) {
    if (tmp___98 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][47][tmp___98] = (unsigned short)0;
    tmp___98 = tmp___98 + 1U;
  }
  tpacpi_keymaps[1][48][0] = 0U;
  tmp___99 = 1U;
  while (1) {
    if (tmp___99 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][48][tmp___99] = (unsigned short)0;
    tmp___99 = tmp___99 + 1U;
  }
  tpacpi_keymaps[1][49][0] = 0U;
  tmp___100 = 1U;
  while (1) {
    if (tmp___100 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][49][tmp___100] = (unsigned short)0;
    tmp___100 = tmp___100 + 1U;
  }
  tpacpi_keymaps[1][50][0] = 0U;
  tmp___101 = 1U;
  while (1) {
    if (tmp___101 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][50][tmp___101] = (unsigned short)0;
    tmp___101 = tmp___101 + 1U;
  }
  tpacpi_keymaps[1][51][0] = 0U;
  tmp___102 = 1U;
  while (1) {
    if (tmp___102 >= 52U) {
      break;
    } else {
    }
    tpacpi_keymaps[1][51][tmp___102] = (unsigned short)0;
    tmp___102 = tmp___102 + 1U;
  }
  tpacpi_keymap_qtable[0].vendor = 4116U;
  tpacpi_keymap_qtable[0].bios = 65535U;
  tpacpi_keymap_qtable[0].ec = 65535U;
  tpacpi_keymap_qtable[0].quirks = 0UL;
  tpacpi_keymap_qtable[1].vendor = 6058U;
  tpacpi_keymap_qtable[1].bios = 65535U;
  tpacpi_keymap_qtable[1].ec = 65535U;
  tpacpi_keymap_qtable[1].quirks = 1UL;
  radiosw_state = 0;
  tabletsw_state = 0;
  if ((dbg_level & 9U) != 0U) {
    printk("\017thinkpad_acpi: %s: initializing hotkey subdriver\n", "hotkey_init");
  } else {
  }
  tmp___103 = ldv__builtin_expect((unsigned long )tpacpi_inputdev == (unsigned long )((struct input_dev *)0),
                               0L);
  if (tmp___103 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (3302), "i" (12UL));
    ldv_35057: ;
    goto ldv_35057;
  } else {
  }
  tmp___104 = ldv__builtin_expect((long )((unsigned long )tpacpi_inputdev->open != (unsigned long )((int (*)(struct input_dev * ))0) || (unsigned long )tpacpi_inputdev->close != (unsigned long )((void (*)(struct input_dev * ))0)),
                               0L);
  if (tmp___104 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (3304), "i" (12UL));
    ldv_35058: ;
    goto ldv_35058;
  } else {
  }
  drv_acpi_handle_init("hkey", & hkey_handle, *hkey_parent, (char **)(& hkey_paths),
                       3);
  __mutex_init(& hotkey_mutex, "&hotkey_mutex", & __key);
  __mutex_init(& hotkey_thread_data_mutex, "&hotkey_thread_data_mutex", & __key___0);
  tp_features.hotkey = (unsigned long )hkey_handle != (unsigned long )((acpi_handle )0);
  if ((dbg_level & 9U) != 0U) {
    tmp___105 = str_supported((int )tp_features.hotkey);
    printk("\017thinkpad_acpi: %s: hotkeys are %s\n", "hotkey_init", tmp___105);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (1);
  } else {
  }
  tmp___106 = acpi_evalf(hkey_handle, & hkeyv, (char *)"MHKV", (char *)"qd");
  if (tmp___106 != 0) {
    if (hkeyv >> 8 == 2) {
      tp_features.has_adaptive_kbd = 1U;
      res = sysfs_create_group(& tpacpi_pdev->dev.kobj, & adaptive_kbd_attr_group);
      if (res != 0) {
        goto err_exit;
      } else {
      }
    } else {
    }
  } else {
  }
  quirks = tpacpi_check_quirks((struct tpacpi_quirk const *)(& tpacpi_hotkey_qtable),
                               19U);
  tpacpi_disable_brightness_delay();
  hotkey_dev_attributes = create_attr_set(12U, (char const *)0);
  if ((unsigned long )hotkey_dev_attributes == (unsigned long )((struct attribute_set *)0)) {
    return (-12);
  } else {
  }
  res = add_many_to_attr_set(hotkey_dev_attributes, (struct attribute **)(& hotkey_attributes),
                             10U);
  if (res != 0) {
    goto err_exit;
  } else {
  }
  tmp___108 = acpi_evalf(hkey_handle, & hkeyv, (char *)"MHKV", (char *)"qd");
  if (tmp___108 != 0) {
    if (hkeyv >> 8 != 1) {
      printk("\vthinkpad_acpi: unknown version of the HKEY interface: 0x%x\n", hkeyv);
      printk("\vthinkpad_acpi: please report this to %s\n", (char *)"ibm-acpi-devel@lists.sourceforge.net");
    } else {
      if ((dbg_level & 9U) != 0U) {
        printk("\017thinkpad_acpi: %s: firmware HKEY interface version: 0x%x\n", "hotkey_init",
               hkeyv);
      } else {
      }
      tmp___107 = acpi_evalf(hkey_handle, (int *)(& hotkey_all_mask), (char *)"MHKA",
                             (char *)"qd");
      if (tmp___107 == 0) {
        printk("\vthinkpad_acpi: missing MHKA handler, please report this to %s\n",
               (char *)"ibm-acpi-devel@lists.sourceforge.net");
        hotkey_all_mask = 2060U;
      } else {
        tp_features.hotkey_mask = 1U;
      }
    }
  } else {
  }
  if ((dbg_level & 9U) != 0U) {
    tmp___109 = str_supported((int )tp_features.hotkey_mask);
    printk("\017thinkpad_acpi: %s: hotkey masks are %s\n", "hotkey_init", tmp___109);
  } else {
  }
  if (((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U && hotkey_all_mask == 0U) && (int )quirks & 1) {
    hotkey_all_mask = 2060U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    res = hotkey_mask_get();
    if (res != 0) {
      goto err_exit;
    } else {
    }
    hotkey_orig_mask = hotkey_acpi_mask;
  } else {
    hotkey_orig_mask = hotkey_all_mask;
    hotkey_acpi_mask = hotkey_all_mask;
  }
  if (dbg_wlswemul != 0) {
    tp_features.hotkey_wlsw = 1U;
    radiosw_state = (int )tpacpi_wlsw_emulstate != 0;
    printk("\016thinkpad_acpi: radio switch emulation enabled\n");
  } else {
    tmp___110 = acpi_evalf(hkey_handle, & status, (char *)"WLSW", (char *)"qd");
    if (tmp___110 != 0) {
      tp_features.hotkey_wlsw = 1U;
      radiosw_state = status != 0;
      printk("\016thinkpad_acpi: radio switch found; radios are %s\n", status & 1 ? (char *)"enabled" : (char *)"disabled");
    } else {
    }
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    res = add_to_attr_set(hotkey_dev_attributes, & dev_attr_hotkey_radio_sw.attr);
  } else {
  }
  if (res == 0) {
    tmp___111 = acpi_evalf(hkey_handle, & status, (char *)"MHKG", (char *)"qd");
    if (tmp___111 != 0) {
      tp_features.hotkey_tablet = 1U;
      tabletsw_state = (status & 8) != 0;
      printk("\016thinkpad_acpi: possible tablet mode switch found; ThinkPad in %s mode\n",
             (int )tabletsw_state ? (char *)"tablet" : (char *)"laptop");
      res = add_to_attr_set(hotkey_dev_attributes, & dev_attr_hotkey_tablet_mode.attr);
    } else {
    }
  } else {
  }
  if (res == 0) {
    res = sysfs_create_group(& tpacpi_pdev->dev.kobj, (struct attribute_group const *)(& hotkey_dev_attributes->group));
  } else {
  }
  if (res != 0) {
    goto err_exit;
  } else {
  }
  tmp___112 = kmalloc(104UL, 208U);
  hotkey_keycode_map = (u16 *)tmp___112;
  if ((unsigned long )hotkey_keycode_map == (unsigned long )((u16 *)0U)) {
    printk("\vthinkpad_acpi: failed to allocate memory for key map\n");
    res = -12;
    goto err_exit;
  } else {
  }
  keymap_id = tpacpi_check_quirks((struct tpacpi_quirk const *)(& tpacpi_keymap_qtable),
                                  2U);
  tmp___113 = ldv__builtin_expect(keymap_id > 1UL, 0L);
  if (tmp___113 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (3456), "i" (12UL));
    ldv_35074: ;
    goto ldv_35074;
  } else {
  }
  if ((dbg_level & 9U) != 0U) {
    printk("\017thinkpad_acpi: %s: using keymap number %lu\n", "hotkey_init", keymap_id);
  } else {
  }
  memcpy((void *)hotkey_keycode_map, (void const *)(& tpacpi_keymaps) + keymap_id,
           104UL);
  input_set_capability(tpacpi_inputdev, 4U, 4U);
  tpacpi_inputdev->keycodesize = 2U;
  tpacpi_inputdev->keycodemax = 52U;
  tpacpi_inputdev->keycode = (void *)hotkey_keycode_map;
  i = 0;
  goto ldv_35076;
  ldv_35075: ;
  if ((unsigned int )*(hotkey_keycode_map + (unsigned long )i) != 0U) {
    input_set_capability(tpacpi_inputdev, 1U, (unsigned int )*(hotkey_keycode_map + (unsigned long )i));
  } else
  if ((unsigned int )i <= 31U) {
    hotkey_reserved_mask = (u32 )(1 << i) | hotkey_reserved_mask;
  } else {
  }
  i = i + 1;
  ldv_35076: ;
  if (i <= 51) {
    goto ldv_35075;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    input_set_capability(tpacpi_inputdev, 5U, 3U);
    input_report_switch(tpacpi_inputdev, 3U, (int )radiosw_state);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    input_set_capability(tpacpi_inputdev, 5U, 1U);
    input_report_switch(tpacpi_inputdev, 1U, (int )tabletsw_state);
  } else {
  }
  tmp___114 = acpi_video_get_backlight_type();
  if ((int )tmp___114 != 2) {
    printk("\016thinkpad_acpi: This ThinkPad has standard ACPI backlight brightness control, supported by the ACPI video driver\n");
    printk("\rthinkpad_acpi: Disabling thinkpad-acpi brightness events by default...\n");
    hotkey_reserved_mask = hotkey_reserved_mask | 98304U;
    hotkey_unmap(15U);
    hotkey_unmap(16U);
  } else {
  }
  hotkey_source_mask = ~ (hotkey_all_mask | hotkey_reserved_mask) & 16482304U;
  if ((dbg_level & 9U) != 0U) {
    printk("\017thinkpad_acpi: %s: hotkey source mask 0x%08x, polling freq %u\n",
           "hotkey_init", hotkey_source_mask, hotkey_poll_freq);
  } else {
  }
  if ((dbg_level & 9U) != 0U) {
    printk("\017thinkpad_acpi: %s: enabling firmware HKEY event interface...\n", "hotkey_init");
  } else {
  }
  res = hotkey_status_set(1);
  if (res != 0) {
    hotkey_exit();
    return (res);
  } else {
  }
  res = hotkey_mask_set(((~ hotkey_reserved_mask & hotkey_all_mask) | hotkey_driver_mask) & ~ hotkey_source_mask);
  if (res < 0 && res != -6) {
    hotkey_exit();
    return (res);
  } else {
  }
  hotkey_user_mask = (hotkey_acpi_mask | hotkey_source_mask) & ~ hotkey_reserved_mask;
  if ((dbg_level & 9U) != 0U) {
    printk("\017thinkpad_acpi: %s: initial masks: user=0x%08x, fw=0x%08x, poll=0x%08x\n",
           "hotkey_init", hotkey_user_mask, hotkey_acpi_mask, hotkey_source_mask);
  } else {
  }
  tpacpi_inputdev->open = & hotkey_inputdev_open;
  tpacpi_inputdev->close = & hotkey_inputdev_close;
  hotkey_poll_setup_safe(1);
  return (0);
  err_exit:
  delete_attr_set(hotkey_dev_attributes, & tpacpi_pdev->dev.kobj);
  sysfs_remove_group(& tpacpi_pdev->dev.kobj, & adaptive_kbd_attr_group);
  hotkey_dev_attributes = (struct attribute_set *)0;
  return (res < 0 ? res : 1);
}
}
static int const adaptive_keyboard_modes[2U] = { 0, 3};
static bool adaptive_keyboard_mode_is_saved ;
static int adaptive_keyboard_prev_mode ;
static int adaptive_keyboard_get_mode(void)
{
  int mode ;
  int tmp ;
  {
  mode = 0;
  tmp = acpi_evalf(hkey_handle, & mode, (char *)"GTRW", (char *)"dd", 0);
  if (tmp == 0) {
    printk("\vthinkpad_acpi: Cannot read adaptive keyboard mode\n");
    return (-5);
  } else {
  }
  return (mode);
}
}
static int adaptive_keyboard_set_mode(int new_mode )
{
  int tmp ;
  {
  if (new_mode < 0 || new_mode > 4) {
    return (-22);
  } else {
  }
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"STRW", (char *)"vd", new_mode);
  if (tmp == 0) {
    printk("\vthinkpad_acpi: Cannot set adaptive keyboard mode\n");
    return (-5);
  } else {
  }
  return (0);
}
}
static int adaptive_keyboard_get_next_mode(int mode )
{
  size_t i ;
  size_t max_mode ;
  {
  max_mode = 1UL;
  i = 0UL;
  goto ldv_35097;
  ldv_35096: ;
  if ((int )adaptive_keyboard_modes[i] == mode) {
    goto ldv_35095;
  } else {
  }
  i = i + 1UL;
  ldv_35097: ;
  if (i <= max_mode) {
    goto ldv_35096;
  } else {
  }
  ldv_35095: ;
  if (i >= max_mode) {
    i = 0UL;
  } else {
    i = i + 1UL;
  }
  return ((int )adaptive_keyboard_modes[i]);
}
}
static bool adaptive_keyboard_hotkey_notify_hotkey(unsigned int scancode )
{
  int current_mode ;
  int new_mode ;
  int keycode ;
  int tmp ;
  int tmp___0 ;
  {
  current_mode = 0;
  new_mode = 0;
  switch (scancode) {
  case 257U: ;
  if ((int )adaptive_keyboard_mode_is_saved) {
    new_mode = adaptive_keyboard_prev_mode;
    adaptive_keyboard_mode_is_saved = 0;
  } else {
    current_mode = adaptive_keyboard_get_mode();
    if (current_mode < 0) {
      return (0);
    } else {
    }
    new_mode = adaptive_keyboard_get_next_mode(current_mode);
  }
  tmp = adaptive_keyboard_set_mode(new_mode);
  if (tmp < 0) {
    return (0);
  } else {
  }
  return (1);
  case 258U:
  current_mode = adaptive_keyboard_get_mode();
  if (current_mode < 0) {
    return (0);
  } else {
  }
  adaptive_keyboard_prev_mode = current_mode;
  adaptive_keyboard_mode_is_saved = 1;
  tmp___0 = adaptive_keyboard_set_mode(3);
  if (tmp___0 < 0) {
    return (0);
  } else {
  }
  return (1);
  default: ;
  if (scancode <= 258U || scancode > 278U) {
    printk("\016thinkpad_acpi: Unhandled adaptive keyboard key: 0x%x\n", scancode);
    return (0);
  } else {
  }
  keycode = (int )*(hotkey_keycode_map + (unsigned long )(scancode - 227U));
  if (keycode != 0) {
    ldv_mutex_lock_48(& tpacpi_inputdev_send_mutex);
    input_report_key(tpacpi_inputdev, (unsigned int )keycode, 1);
    input_sync(tpacpi_inputdev);
    input_report_key(tpacpi_inputdev, (unsigned int )keycode, 0);
    input_sync(tpacpi_inputdev);
    ldv_mutex_unlock_49(& tpacpi_inputdev_send_mutex);
  } else {
  }
  return (1);
  }
}
}
static bool hotkey_notify_hotkey(u32 const hkey , bool *send_acpi_ev , bool *ignore_acpi_ev )
{
  unsigned int scancode ;
  bool tmp ;
  {
  scancode = (unsigned int )hkey & 4095U;
  *send_acpi_ev = 1;
  *ignore_acpi_ev = 0;
  if (scancode != 0U && scancode <= 52U) {
    scancode = scancode - 1U;
    if (((u32 )(1 << (int )scancode) & hotkey_source_mask) == 0U) {
      tpacpi_input_send_key_masked(scancode);
      *send_acpi_ev = 0;
    } else {
      *ignore_acpi_ev = 1;
    }
    return (1);
  } else {
    tmp = adaptive_keyboard_hotkey_notify_hotkey(scancode);
    return (tmp);
  }
  return (0);
}
}
static bool hotkey_notify_wakeup(u32 const hkey , bool *send_acpi_ev , bool *ignore_acpi_ev )
{
  {
  *send_acpi_ev = 1;
  *ignore_acpi_ev = 0;
  switch (hkey) {
  case 8964U: ;
  case 9220U:
  hotkey_wakeup_reason = 2;
  *ignore_acpi_ev = 1;
  goto ldv_35120;
  case 8965U: ;
  case 9221U:
  hotkey_wakeup_reason = 1;
  *ignore_acpi_ev = 1;
  goto ldv_35120;
  case 8979U: ;
  case 9235U:
  printk("\tthinkpad_acpi: EMERGENCY WAKEUP: battery almost empty\n");
  goto ldv_35120;
  default: ;
  return (0);
  }
  ldv_35120: ;
  if ((unsigned int )hotkey_wakeup_reason != 0U) {
    printk("\016thinkpad_acpi: woke up due to a hot-unplug request...\n");
    hotkey_wakeup_reason_notify_change();
  } else {
  }
  return (1);
}
}
static bool hotkey_notify_dockevent(u32 const hkey , bool *send_acpi_ev , bool *ignore_acpi_ev )
{
  {
  *send_acpi_ev = 1;
  *ignore_acpi_ev = 0;
  switch (hkey) {
  case 16387U:
  hotkey_autosleep_ack = 1;
  printk("\016thinkpad_acpi: undocked\n");
  hotkey_wakeup_hotunplug_complete_notify_change();
  return (1);
  case 16400U:
  printk("\016thinkpad_acpi: docked into hotplug port replicator\n");
  return (1);
  case 16401U:
  printk("\016thinkpad_acpi: undocked from hotplug port replicator\n");
  return (1);
  default: ;
  return (0);
  }
}
}
static bool hotkey_notify_usrevent(u32 const hkey , bool *send_acpi_ev , bool *ignore_acpi_ev )
{
  {
  *send_acpi_ev = 1;
  *ignore_acpi_ev = 0;
  switch (hkey) {
  case 20491U: ;
  case 20492U: ;
  return (1);
  case 20489U: ;
  case 20490U:
  tpacpi_input_send_tabletsw();
  hotkey_tablet_mode_notify_change();
  *send_acpi_ev = 0;
  return (1);
  case 20481U: ;
  case 20482U: ;
  case 20496U:
  *ignore_acpi_ev = 1;
  return (1);
  default: ;
  return (0);
  }
}
}
static void thermal_dump_all_sensors(void) ;
static bool hotkey_notify_6xxx(u32 const hkey , bool *send_acpi_ev , bool *ignore_acpi_ev )
{
  bool known ;
  {
  known = 1;
  *send_acpi_ev = 1;
  *ignore_acpi_ev = 0;
  switch (hkey) {
  case 24624U:
  printk("\016thinkpad_acpi: EC reports that Thermal Table has changed\n");
  return (1);
  case 24593U:
  printk("\nthinkpad_acpi: THERMAL ALARM: battery is too hot!\n");
  goto ldv_35158;
  case 24594U:
  printk("\tthinkpad_acpi: THERMAL EMERGENCY: battery is extremely hot!\n");
  goto ldv_35158;
  case 24609U:
  printk("\nthinkpad_acpi: THERMAL ALARM: a sensor reports something is too hot!\n");
  goto ldv_35158;
  case 24610U:
  printk("\tthinkpad_acpi: THERMAL EMERGENCY: a sensor reports something is extremely hot!\n");
  goto ldv_35158;
  case 24640U: ;
  case 24576U: ;
  case 24581U: ;
  case 24672U:
  *send_acpi_ev = 0;
  *ignore_acpi_ev = 1;
  return (1);
  default:
  printk("\fthinkpad_acpi: unknown possible thermal alarm or keyboard event received\n");
  known = 0;
  }
  ldv_35158:
  thermal_dump_all_sensors();
  return (known);
}
}
static void hotkey_notify(struct ibm_struct *ibm , u32 event )
{
  u32 hkey ;
  bool send_acpi_ev ;
  bool ignore_acpi_ev ;
  bool known_ev ;
  char const *tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  if (event != 128U) {
    printk("\vthinkpad_acpi: unknown HKEY notification event %d\n", event);
    tmp = dev_name((struct device const *)(& ((ibm->acpi)->device)->dev));
    acpi_bus_generate_netlink_event((char const *)(& ((ibm->acpi)->device)->pnp.device_class),
                                    tmp, (int )((u8 )event), 0);
    return;
  } else {
  }
  ldv_35188:
  tmp___0 = acpi_evalf(hkey_handle, (int *)(& hkey), (char *)"MHKP", (char *)"d");
  if (tmp___0 == 0) {
    printk("\vthinkpad_acpi: failed to retrieve HKEY event\n");
    return;
  } else {
  }
  if (hkey == 0U) {
    return;
  } else {
  }
  send_acpi_ev = 1;
  ignore_acpi_ev = 0;
  switch (hkey >> 12) {
  case 1U:
  known_ev = hotkey_notify_hotkey(hkey, & send_acpi_ev, & ignore_acpi_ev);
  goto ldv_35176;
  case 2U:
  known_ev = hotkey_notify_wakeup(hkey, & send_acpi_ev, & ignore_acpi_ev);
  goto ldv_35176;
  case 3U: ;
  switch (hkey) {
  case 12291U:
  hotkey_autosleep_ack = 1;
  printk("\016thinkpad_acpi: bay ejected\n");
  hotkey_wakeup_hotunplug_complete_notify_change();
  known_ev = 1;
  goto ldv_35180;
  case 12294U:
  known_ev = 1;
  goto ldv_35180;
  default:
  known_ev = 0;
  }
  ldv_35180: ;
  goto ldv_35176;
  case 4U:
  known_ev = hotkey_notify_dockevent(hkey, & send_acpi_ev, & ignore_acpi_ev);
  goto ldv_35176;
  case 5U:
  known_ev = hotkey_notify_usrevent(hkey, & send_acpi_ev, & ignore_acpi_ev);
  goto ldv_35176;
  case 6U:
  known_ev = hotkey_notify_6xxx(hkey, & send_acpi_ev, & ignore_acpi_ev);
  goto ldv_35176;
  case 7U: ;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U && hkey == 28672U) {
    tpacpi_send_radiosw_update();
    send_acpi_ev = 0;
    known_ev = 1;
    goto ldv_35176;
  } else {
  }
  default:
  known_ev = 0;
  }
  ldv_35176: ;
  if (! known_ev) {
    printk("\rthinkpad_acpi: unhandled HKEY event 0x%04x\n", hkey);
    printk("\rthinkpad_acpi: please report the conditions when this event happened to %s\n",
           (char *)"ibm-acpi-devel@lists.sourceforge.net");
  } else {
  }
  if (! ignore_acpi_ev && (int )send_acpi_ev) {
    tmp___1 = dev_name((struct device const *)(& ((ibm->acpi)->device)->dev));
    acpi_bus_generate_netlink_event((char const *)(& ((ibm->acpi)->device)->pnp.device_class),
                                    tmp___1, (int )((u8 )event), (int )hkey);
  } else {
  }
  goto ldv_35188;
}
}
static void hotkey_suspend(void)
{
  int tmp ;
  {
  hotkey_wakeup_reason = 0;
  hotkey_autosleep_ack = 0;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    tmp = acpi_evalf(hkey_handle, & adaptive_keyboard_prev_mode, (char *)"GTRW", (char *)"dd",
                     0);
    if (tmp == 0) {
      printk("\vthinkpad_acpi: Cannot read adaptive keyboard mode.\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void hotkey_resume(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tpacpi_disable_brightness_delay();
  tmp = hotkey_status_set(1);
  if (tmp < 0) {
    printk("\vthinkpad_acpi: error while attempting to reset the event firmware interface\n");
  } else {
    tmp___0 = hotkey_mask_set(hotkey_acpi_mask);
    if (tmp___0 < 0) {
      printk("\vthinkpad_acpi: error while attempting to reset the event firmware interface\n");
    } else {
    }
  }
  tpacpi_send_radiosw_update();
  hotkey_tablet_mode_notify_change();
  hotkey_wakeup_reason_notify_change();
  hotkey_wakeup_hotunplug_complete_notify_change();
  hotkey_poll_setup_safe(0);
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    tmp___1 = acpi_evalf(hkey_handle, (int *)0, (char *)"STRW", (char *)"vd", adaptive_keyboard_prev_mode);
    if (tmp___1 == 0) {
      printk("\vthinkpad_acpi: Cannot set adaptive keyboard mode.\n");
    } else {
    }
  } else {
  }
  return;
}
}
static int hotkey_read(struct seq_file *m )
{
  int res ;
  int status ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    seq_printf(m, "status:\t\tnot supported\n");
    return (0);
  } else {
  }
  tmp = ldv_mutex_lock_killable_50(& hotkey_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  res = hotkey_status_get(& status);
  if (res == 0) {
    res = hotkey_mask_get();
  } else {
  }
  ldv_mutex_unlock_51(& hotkey_mutex);
  if (res != 0) {
    return (res);
  } else {
  }
  seq_printf(m, "status:\t\t%s\n", status & 1 ? (char *)"enabled" : (char *)"disabled");
  if (hotkey_all_mask != 0U) {
    seq_printf(m, "mask:\t\t0x%08x\n", hotkey_user_mask);
    seq_printf(m, "commands:\tenable, disable, reset, <mask>\n");
  } else {
    seq_printf(m, "mask:\t\tnot supported\n");
    seq_printf(m, "commands:\tenable, disable, reset\n");
  }
  return (0);
}
}
static void hotkey_enabledisable_warn(bool enable )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  tpacpi_log_usertask((char const * )"procfs hotkey enable/disable");
  __ret_warn_on = (unsigned int )tpacpi_lifecycle == 1U || ! enable;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c",
                      4052, "thinkpad_acpi: hotkey enable/disable functionality has been removed from the driver.  Hotkeys are always enabled.\n");
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 == 0L) {
    printk("\vthinkpad_acpi: Please remove the hotkey=enable module parameter, it is deprecated.  Hotkeys are always enabled.\n");
  } else {
  }
  return;
}
}
static int hotkey_write(char *buf )
{
  int res ;
  u32 mask ;
  char *cmd ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  size_t tmp___4 ;
  int tmp___5 ;
  size_t tmp___6 ;
  int tmp___7 ;
  struct task_struct *tmp___8 ;
  pid_t tmp___9 ;
  long tmp___10 ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (-19);
  } else {
  }
  tmp = ldv_mutex_lock_killable_52(& hotkey_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  mask = hotkey_user_mask;
  res = 0;
  goto ldv_35213;
  ldv_35212:
  tmp___6 = strlen("enable");
  tmp___7 = strncmp((char const *)cmd, "enable", tmp___6);
  if (tmp___7 == 0) {
    hotkey_enabledisable_warn(1);
  } else {
    tmp___4 = strlen("disable");
    tmp___5 = strncmp((char const *)cmd, "disable", tmp___4);
    if (tmp___5 == 0) {
      hotkey_enabledisable_warn(0);
      res = -1;
    } else {
      tmp___2 = strlen("reset");
      tmp___3 = strncmp((char const *)cmd, "reset", tmp___2);
      if (tmp___3 == 0) {
        mask = (hotkey_all_mask | hotkey_source_mask) & ~ hotkey_reserved_mask;
      } else {
        tmp___1 = sscanf((char const *)cmd, "0x%x", & mask);
        if (tmp___1 == 1) {
        } else {
          tmp___0 = sscanf((char const *)cmd, "%x", & mask);
          if (tmp___0 == 1) {
          } else {
            res = -22;
            goto errexit;
          }
        }
      }
    }
  }
  ldv_35213:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35212;
  } else {
  }
  if (res == 0) {
    tmp___10 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                                0L);
    if (tmp___10 != 0L) {
      tmp___8 = get_current();
      tmp___9 = task_tgid_vnr(tmp___8);
      printk("\017thinkpad_acpi: %s: PID %d: set mask to 0x%08x\n", (char *)"procfs hotkey",
             tmp___9, mask);
    } else {
    }
    res = hotkey_user_mask_set(mask);
  } else {
  }
  errexit:
  ldv_mutex_unlock_53(& hotkey_mutex);
  return (res);
}
}
static struct acpi_device_id const ibm_htk_device_ids[3U] = { {{'I', 'B', 'M', '0', '0', '6', '8', '\000'}, 0UL},
        {{'L', 'E', 'N', '0', '0', '6', '8', '\000'}, 0UL},
        {{'\000'}, 0UL}};
static struct tp_acpi_drv_struct ibm_hotkey_acpidriver = {(struct acpi_device_id const *)(& ibm_htk_device_ids), 0, & hotkey_notify, & hkey_handle,
    2U, 0};
static struct ibm_struct hotkey_driver_data =
     {(char *)"hotkey", & hotkey_read, & hotkey_write, & hotkey_exit, & hotkey_resume,
    & hotkey_suspend, 0, {0, 0}, & ibm_hotkey_acpidriver, {(unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0, (unsigned char)0,
                                                           (unsigned char)0}};
static int bluetooth_get_status(void)
{
  int status ;
  int tmp ;
  {
  if (dbg_bluetoothemul != 0) {
    return ((int )tpacpi_bluetooth_emulstate);
  } else {
  }
  tmp = acpi_evalf(hkey_handle, & status, (char *)"GBDC", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return ((status & 2) != 0);
}
}
static int bluetooth_set_status(enum tpacpi_rfkill_state state )
{
  int status ;
  int tmp ;
  {
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: will attempt to %s bluetooth\n", "bluetooth_set_status",
           (unsigned int )state == 1U ? (char *)"enable" : (char *)"disable");
  } else {
  }
  if (dbg_bluetoothemul != 0) {
    tpacpi_bluetooth_emulstate = (unsigned int )state == 1U;
    return (0);
  } else {
  }
  if ((unsigned int )state == 1U) {
    status = 6;
  } else {
    status = 0;
  }
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"SBDC", (char *)"vd", status);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static ssize_t bluetooth_enable_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  ssize_t tmp ;
  {
  tmp = tpacpi_rfk_sysfs_enable_show(0, attr, buf);
  return (tmp);
}
}
static ssize_t bluetooth_enable_store(struct device *dev , struct device_attribute *attr ,
                                      char const *buf , size_t count )
{
  ssize_t tmp ;
  {
  tmp = tpacpi_rfk_sysfs_enable_store(0, attr, buf, count);
  return (tmp);
}
}
static struct device_attribute dev_attr_bluetooth_enable = {{"bluetooth_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                              {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bluetooth_enable_show, & bluetooth_enable_store};
static struct attribute *bluetooth_attributes[2U] = { & dev_attr_bluetooth_enable.attr, (struct attribute *)0};
static struct attribute_group const bluetooth_attr_group = {0, 0, (struct attribute **)(& bluetooth_attributes), 0};
static struct tpacpi_rfk_ops const bluetooth_tprfk_ops = {& bluetooth_get_status, (int (*)(enum tpacpi_rfkill_state const ))(& bluetooth_set_status)};
static void bluetooth_shutdown(void)
{
  int tmp ;
  {
  tmp = acpi_evalf((void *)0, (int *)0, (char *)"\\BLTH", (char *)"vd", 5);
  if (tmp == 0) {
    printk("\rthinkpad_acpi: failed to save bluetooth state to NVRAM\n");
  } else
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: bluetooth state saved to NVRAM\n", "bluetooth_shutdown");
  } else {
  }
  return;
}
}
static void bluetooth_exit(void)
{
  {
  sysfs_remove_group(& tpacpi_pdev->dev.kobj, & bluetooth_attr_group);
  tpacpi_destroy_rfkill(0);
  bluetooth_shutdown();
  return;
}
}
static int bluetooth_init(struct ibm_init_struct *iibm )
{
  int res ;
  int status ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  status = 0;
  if ((dbg_level & 5U) != 0U) {
    printk("\017thinkpad_acpi: %s: initializing bluetooth subdriver\n", "bluetooth_init");
  } else {
  }
  drv_acpi_handle_init("hkey", & hkey_handle, *hkey_parent, (char **)(& hkey_paths),
                       3);
  if ((unsigned long )hkey_handle != (unsigned long )((acpi_handle )0)) {
    tmp = acpi_evalf(hkey_handle, & status, (char *)"GBDC", (char *)"qd");
    if (tmp != 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  tp_features.bluetooth = (unsigned char )tmp___0;
  if ((dbg_level & 5U) != 0U) {
    tmp___1 = str_supported((int )tp_features.bluetooth);
    printk("\017thinkpad_acpi: %s: bluetooth is %s, status 0x%02x\n", "bluetooth_init",
           tmp___1, status);
  } else {
  }
  if (dbg_bluetoothemul != 0) {
    tp_features.bluetooth = 1U;
    printk("\016thinkpad_acpi: bluetooth switch emulation enabled\n");
  } else
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U && (status & 1) == 0) {
    tp_features.bluetooth = 0U;
    if ((dbg_level & 5U) != 0U) {
      printk("\017thinkpad_acpi: %s: bluetooth hardware not installed\n", "bluetooth_init");
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (1);
  } else {
  }
  res = tpacpi_new_rfkill(0, & bluetooth_tprfk_ops, 2, "tpacpi_bluetooth_sw", 1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = sysfs_create_group(& tpacpi_pdev->dev.kobj, & bluetooth_attr_group);
  if (res != 0) {
    tpacpi_destroy_rfkill(0);
    return (res);
  } else {
  }
  return (0);
}
}
static int bluetooth_read(struct seq_file *m )
{
  int tmp ;
  {
  tmp = tpacpi_rfk_procfs_read(0, m);
  return (tmp);
}
}
static int bluetooth_write(char *buf )
{
  int tmp ;
  {
  tmp = tpacpi_rfk_procfs_write(0, buf);
  return (tmp);
}
}
static struct ibm_struct bluetooth_driver_data =
     {(char *)"bluetooth", & bluetooth_read, & bluetooth_write, & bluetooth_exit, 0,
    0, & bluetooth_shutdown, {0, 0}, 0, {(unsigned char)0, (unsigned char)0, (unsigned char)0,
                                         (unsigned char)0, (unsigned char)0}};
static int wan_get_status(void)
{
  int status ;
  int tmp ;
  {
  if (dbg_wwanemul != 0) {
    return ((int )tpacpi_wwan_emulstate);
  } else {
  }
  tmp = acpi_evalf(hkey_handle, & status, (char *)"GWAN", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return ((status & 2) != 0);
}
}
static int wan_set_status(enum tpacpi_rfkill_state state )
{
  int status ;
  int tmp ;
  {
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: will attempt to %s wwan\n", "wan_set_status", (unsigned int )state == 1U ? (char *)"enable" : (char *)"disable");
  } else {
  }
  if (dbg_wwanemul != 0) {
    tpacpi_wwan_emulstate = (unsigned int )state == 1U;
    return (0);
  } else {
  }
  if ((unsigned int )state == 1U) {
    status = 6;
  } else {
    status = 0;
  }
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"SWAN", (char *)"vd", status);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static ssize_t wan_enable_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  ssize_t tmp ;
  {
  tmp = tpacpi_rfk_sysfs_enable_show(1, attr, buf);
  return (tmp);
}
}
static ssize_t wan_enable_store(struct device *dev , struct device_attribute *attr ,
                                char const *buf , size_t count )
{
  ssize_t tmp ;
  {
  tmp = tpacpi_rfk_sysfs_enable_store(1, attr, buf, count);
  return (tmp);
}
}
static struct device_attribute dev_attr_wwan_enable = {{"wwan_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & wan_enable_show, & wan_enable_store};
static struct attribute *wan_attributes[2U] = { & dev_attr_wwan_enable.attr, (struct attribute *)0};
static struct attribute_group const wan_attr_group = {0, 0, (struct attribute **)(& wan_attributes), 0};
static struct tpacpi_rfk_ops const wan_tprfk_ops = {& wan_get_status, (int (*)(enum tpacpi_rfkill_state const ))(& wan_set_status)};
static void wan_shutdown(void)
{
  int tmp ;
  {
  tmp = acpi_evalf((void *)0, (int *)0, (char *)"\\WGSV", (char *)"vd", 4);
  if (tmp == 0) {
    printk("\rthinkpad_acpi: failed to save WWAN state to NVRAM\n");
  } else
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: WWAN state saved to NVRAM\n", "wan_shutdown");
  } else {
  }
  return;
}
}
static void wan_exit(void)
{
  {
  sysfs_remove_group(& tpacpi_pdev->dev.kobj, & wan_attr_group);
  tpacpi_destroy_rfkill(1);
  wan_shutdown();
  return;
}
}
static int wan_init(struct ibm_init_struct *iibm )
{
  int res ;
  int status ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  status = 0;
  if ((dbg_level & 5U) != 0U) {
    printk("\017thinkpad_acpi: %s: initializing wan subdriver\n", "wan_init");
  } else {
  }
  drv_acpi_handle_init("hkey", & hkey_handle, *hkey_parent, (char **)(& hkey_paths),
                       3);
  if ((unsigned long )hkey_handle != (unsigned long )((acpi_handle )0)) {
    tmp = acpi_evalf(hkey_handle, & status, (char *)"GWAN", (char *)"qd");
    if (tmp != 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  tp_features.wan = (unsigned char )tmp___0;
  if ((dbg_level & 5U) != 0U) {
    tmp___1 = str_supported((int )tp_features.wan);
    printk("\017thinkpad_acpi: %s: wan is %s, status 0x%02x\n", "wan_init", tmp___1,
           status);
  } else {
  }
  if (dbg_wwanemul != 0) {
    tp_features.wan = 1U;
    printk("\016thinkpad_acpi: wwan switch emulation enabled\n");
  } else
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U && (status & 1) == 0) {
    tp_features.wan = 0U;
    if ((dbg_level & 5U) != 0U) {
      printk("\017thinkpad_acpi: %s: wan hardware not installed\n", "wan_init");
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
    return (1);
  } else {
  }
  res = tpacpi_new_rfkill(1, & wan_tprfk_ops, 5, "tpacpi_wwan_sw", 1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = sysfs_create_group(& tpacpi_pdev->dev.kobj, & wan_attr_group);
  if (res != 0) {
    tpacpi_destroy_rfkill(1);
    return (res);
  } else {
  }
  return (0);
}
}
static int wan_read(struct seq_file *m )
{
  int tmp ;
  {
  tmp = tpacpi_rfk_procfs_read(1, m);
  return (tmp);
}
}
static int wan_write(char *buf )
{
  int tmp ;
  {
  tmp = tpacpi_rfk_procfs_write(1, buf);
  return (tmp);
}
}
static struct ibm_struct wan_driver_data =
     {(char *)"wan", & wan_read, & wan_write, & wan_exit, 0, 0, & wan_shutdown, {0,
                                                                               0},
    0, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}};
static int uwb_get_status(void)
{
  int status ;
  int tmp ;
  {
  if (dbg_uwbemul != 0) {
    return ((int )tpacpi_uwb_emulstate);
  } else {
  }
  tmp = acpi_evalf(hkey_handle, & status, (char *)"GUWB", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return ((status & 2) != 0);
}
}
static int uwb_set_status(enum tpacpi_rfkill_state state )
{
  int status ;
  int tmp ;
  {
  if ((dbg_level & 4U) != 0U) {
    printk("\017thinkpad_acpi: %s: will attempt to %s UWB\n", "uwb_set_status", (unsigned int )state == 1U ? (char *)"enable" : (char *)"disable");
  } else {
  }
  if (dbg_uwbemul != 0) {
    tpacpi_uwb_emulstate = (unsigned int )state == 1U;
    return (0);
  } else {
  }
  if ((unsigned int )state == 1U) {
    status = 2;
  } else {
    status = 0;
  }
  tmp = acpi_evalf(hkey_handle, (int *)0, (char *)"SUWB", (char *)"vd", status);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static struct tpacpi_rfk_ops const uwb_tprfk_ops = {& uwb_get_status, (int (*)(enum tpacpi_rfkill_state const ))(& uwb_set_status)};
static void uwb_exit(void)
{
  {
  tpacpi_destroy_rfkill(2);
  return;
}
}
static int uwb_init(struct ibm_init_struct *iibm )
{
  int res ;
  int status ;
  int tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  status = 0;
  if ((dbg_level & 5U) != 0U) {
    printk("\017thinkpad_acpi: %s: initializing uwb subdriver\n", "uwb_init");
  } else {
  }
  drv_acpi_handle_init("hkey", & hkey_handle, *hkey_parent, (char **)(& hkey_paths),
                       3);
  if ((unsigned long )hkey_handle != (unsigned long )((acpi_handle )0)) {
    tmp = acpi_evalf(hkey_handle, & status, (char *)"GUWB", (char *)"qd");
    if (tmp != 0) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  tp_features.uwb = (unsigned char )tmp___0;
  if ((dbg_level & 5U) != 0U) {
    tmp___1 = str_supported((int )tp_features.uwb);
    printk("\017thinkpad_acpi: %s: uwb is %s, status 0x%02x\n", "uwb_init", tmp___1,
           status);
  } else {
  }
  if (dbg_uwbemul != 0) {
    tp_features.uwb = 1U;
    printk("\016thinkpad_acpi: uwb switch emulation enabled\n");
  } else
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U && (status & 1) == 0) {
    tp_features.uwb = 0U;
    if ((int )dbg_level & 1) {
      printk("\017thinkpad_acpi: %s: uwb hardware not installed\n", "uwb_init");
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
    return (1);
  } else {
  }
  res = tpacpi_new_rfkill(2, & uwb_tprfk_ops, 3, "tpacpi_uwb_sw", 0);
  return (res);
}
}
static struct ibm_struct uwb_driver_data =
     {(char *)"uwb", 0, 0, & uwb_exit, 0, 0, 0, {0, 0}, 0, {(unsigned char)0, (unsigned char)0,
                                                          (unsigned char)0, (unsigned char)0,
                                                          1U}};
static enum video_access_mode video_supported ;
static int video_orig_autosw ;
static int video_autosw_get(void) ;
static int video_autosw_set(int enable ) ;
static acpi_handle vid_handle ;
static acpi_handle * const * const vid_parent = (acpi_handle * const * )(& root_handle);
static char *vid_paths[6U] = { (char *)"\\_SB.PCI.AGP.VGA", (char *)"\\_SB.PCI0.AGP0.VID0", (char *)"\\_SB.PCI0.VID0", (char *)"\\_SB.PCI0.VID",
        (char *)"\\_SB.PCI0.AGP.VGA", (char *)"\\_SB.PCI0.AGP.VID"};
static acpi_handle vid2_handle ;
static acpi_handle * const * const vid2_parent = (acpi_handle * const * )(& root_handle);
static char *vid2_paths[1U] = { (char *)"\\_SB.PCI0.AGPB.VID"};
static int video_init(struct ibm_init_struct *iibm )
{
  int ivga ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  char const *tmp___5 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing video subdriver\n", "video_init");
  } else {
  }
  drv_acpi_handle_init("vid", & vid_handle, *vid_parent, (char **)(& vid_paths), 6);
  tmp = tpacpi_is_ibm();
  if ((int )tmp) {
    drv_acpi_handle_init("vid2", & vid2_handle, *vid2_parent, (char **)(& vid2_paths),
                         1);
  } else {
  }
  if ((unsigned long )vid2_handle != (unsigned long )((acpi_handle )0)) {
    tmp___0 = acpi_evalf((void *)0, & ivga, (char *)"\\IVGA", (char *)"d");
    if (tmp___0 != 0) {
      if (ivga != 0) {
        vid_handle = vid2_handle;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )vid_handle == (unsigned long )((acpi_handle )0)) {
    video_supported = 0;
  } else {
    tmp___3 = tpacpi_is_ibm();
    if ((int )tmp___3) {
      tmp___4 = acpi_evalf(vid_handle, & video_orig_autosw, (char *)"SWIT", (char *)"qd");
      if (tmp___4 != 0) {
        video_supported = 1;
      } else {
        goto _L;
      }
    } else {
      _L:
      tmp___1 = tpacpi_is_ibm();
      if ((int )tmp___1) {
        tmp___2 = acpi_evalf(vid_handle, & video_orig_autosw, (char *)"^VADL", (char *)"qd");
        if (tmp___2 != 0) {
          video_supported = 2;
        } else {
          video_supported = 3;
        }
      } else {
        video_supported = 3;
      }
    }
  }
  if ((int )dbg_level & 1) {
    tmp___5 = str_supported((unsigned int )video_supported != 0U);
    printk("\017thinkpad_acpi: %s: video is %s, mode %d\n", "video_init", tmp___5,
           (unsigned int )video_supported);
  } else {
  }
  return ((unsigned int )video_supported == 0U);
}
}
static void video_exit(void)
{
  int tmp ;
  {
  if ((dbg_level & 2U) != 0U) {
    printk("\017thinkpad_acpi: %s: restoring original video autoswitch mode\n", "video_exit");
  } else {
  }
  tmp = video_autosw_set(video_orig_autosw);
  if (tmp != 0) {
    printk("\vthinkpad_acpi: error while trying to restore original video autoswitch mode\n");
  } else {
  }
  return;
}
}
static int video_outputsw_get(void)
{
  int status ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  status = 0;
  switch ((unsigned int )video_supported) {
  case 1U:
  tmp = acpi_evalf((void *)0, & i, (char *)"\\_SB.PHS", (char *)"dd", 135);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  status = i & 3;
  goto ldv_35418;
  case 2U:
  tmp___0 = acpi_evalf((void *)0, & i, (char *)"\\VCDL", (char *)"d");
  if (tmp___0 == 0) {
    return (-5);
  } else {
  }
  if (i != 0) {
    status = status | 1;
  } else {
  }
  tmp___1 = acpi_evalf((void *)0, & i, (char *)"\\VCDC", (char *)"d");
  if (tmp___1 == 0) {
    return (-5);
  } else {
  }
  if (i != 0) {
    status = status | 2;
  } else {
  }
  goto ldv_35418;
  case 3U:
  tmp___2 = acpi_evalf((void *)0, (int *)0, (char *)"\\VUPS", (char *)"vd", 1);
  if (tmp___2 == 0) {
    return (-5);
  } else {
    tmp___3 = acpi_evalf((void *)0, & i, (char *)"\\VCDC", (char *)"d");
    if (tmp___3 == 0) {
      return (-5);
    } else {
    }
  }
  if (i != 0) {
    status = status | 2;
  } else {
  }
  tmp___4 = acpi_evalf((void *)0, (int *)0, (char *)"\\VUPS", (char *)"vd", 0);
  if (tmp___4 == 0) {
    return (-5);
  } else {
    tmp___5 = acpi_evalf((void *)0, & i, (char *)"\\VCDL", (char *)"d");
    if (tmp___5 == 0) {
      return (-5);
    } else {
    }
  }
  if (i != 0) {
    status = status | 1;
  } else {
  }
  tmp___6 = acpi_evalf((void *)0, & i, (char *)"\\VCDD", (char *)"d");
  if (tmp___6 == 0) {
    return (-5);
  } else {
  }
  if (i != 0) {
    status = status | 8;
  } else {
  }
  goto ldv_35418;
  default: ;
  return (-38);
  }
  ldv_35418: ;
  return (status);
}
}
static int video_outputsw_set(int status )
{
  int autosw ;
  int res ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  res = 0;
  switch ((unsigned int )video_supported) {
  case 1U:
  res = acpi_evalf((void *)0, (int *)0, (char *)"\\_SB.PHS2", (char *)"vdd", 139,
                   status | 128);
  goto ldv_35428;
  case 2U:
  autosw = video_autosw_get();
  if (autosw < 0) {
    return (autosw);
  } else {
  }
  res = video_autosw_set(1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = acpi_evalf(vid_handle, (int *)0, (char *)"ASWT", (char *)"vdd", status * 256,
                   0);
  if (autosw == 0) {
    tmp = video_autosw_set(autosw);
    if (tmp != 0) {
      printk("\vthinkpad_acpi: video auto-switch left enabled due to error\n");
      return (-5);
    } else {
    }
  } else {
  }
  goto ldv_35428;
  case 3U:
  tmp___0 = acpi_evalf((void *)0, (int *)0, (char *)"\\VUPS", (char *)"vd", 128);
  if (tmp___0 != 0) {
    tmp___1 = acpi_evalf((void *)0, (int *)0, (char *)"\\VSDS", (char *)"vdd", status,
                         1);
    if (tmp___1 != 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  res = tmp___2;
  goto ldv_35428;
  default: ;
  return (-38);
  }
  ldv_35428: ;
  return (res != 0 ? 0 : -5);
}
}
static int video_autosw_get(void)
{
  int autosw ;
  int tmp ;
  int tmp___0 ;
  {
  autosw = 0;
  switch ((unsigned int )video_supported) {
  case 1U:
  tmp = acpi_evalf(vid_handle, & autosw, (char *)"SWIT", (char *)"d");
  if (tmp == 0) {
    return (-5);
  } else {
  }
  goto ldv_35437;
  case 2U: ;
  case 3U:
  tmp___0 = acpi_evalf(vid_handle, & autosw, (char *)"^VDEE", (char *)"d");
  if (tmp___0 == 0) {
    return (-5);
  } else {
  }
  goto ldv_35437;
  default: ;
  return (-38);
  }
  ldv_35437: ;
  return (autosw & 1);
}
}
static int video_autosw_set(int enable )
{
  int tmp ;
  {
  tmp = acpi_evalf(vid_handle, (int *)0, (char *)"_DOS", (char *)"vd", enable != 0);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int video_outputsw_cycle(void)
{
  int autosw ;
  int tmp ;
  int res ;
  int tmp___0 ;
  {
  tmp = video_autosw_get();
  autosw = tmp;
  if (autosw < 0) {
    return (autosw);
  } else {
  }
  switch ((unsigned int )video_supported) {
  case 1U:
  res = video_autosw_set(1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = acpi_evalf(ec_handle, (int *)0, (char *)"_Q16", (char *)"v");
  goto ldv_35450;
  case 2U: ;
  case 3U:
  res = video_autosw_set(1);
  if (res != 0) {
    return (res);
  } else {
  }
  res = acpi_evalf(vid_handle, (int *)0, (char *)"VSWT", (char *)"v");
  goto ldv_35450;
  default: ;
  return (-38);
  }
  ldv_35450: ;
  if (autosw == 0) {
    tmp___0 = video_autosw_set(autosw);
    if (tmp___0 != 0) {
      printk("\vthinkpad_acpi: video auto-switch left enabled due to error\n");
      return (-5);
    } else {
    }
  } else {
  }
  return (res != 0 ? 0 : -5);
}
}
static int video_expand_toggle(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  switch ((unsigned int )video_supported) {
  case 1U:
  tmp = acpi_evalf(ec_handle, (int *)0, (char *)"_Q17", (char *)"v");
  return (tmp != 0 ? 0 : -5);
  case 2U:
  tmp___0 = acpi_evalf(vid_handle, (int *)0, (char *)"VEXP", (char *)"v");
  return (tmp___0 != 0 ? 0 : -5);
  case 3U:
  tmp___1 = acpi_evalf((void *)0, (int *)0, (char *)"\\VEXP", (char *)"v");
  return (tmp___1 != 0 ? 0 : -5);
  default: ;
  return (-38);
  }
}
}
static int video_read(struct seq_file *m )
{
  int status ;
  int autosw ;
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )video_supported == 0U) {
    seq_printf(m, "status:\t\tnot supported\n");
    return (0);
  } else {
  }
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  status = video_outputsw_get();
  if (status < 0) {
    return (status);
  } else {
  }
  autosw = video_autosw_get();
  if (autosw < 0) {
    return (autosw);
  } else {
  }
  seq_printf(m, "status:\t\tsupported\n");
  seq_printf(m, "lcd:\t\t%s\n", status & 1 ? (char *)"enabled" : (char *)"disabled");
  seq_printf(m, "crt:\t\t%s\n", (status & 2) != 0 ? (char *)"enabled" : (char *)"disabled");
  if ((unsigned int )video_supported == 3U) {
    seq_printf(m, "dvi:\t\t%s\n", (status & 8) != 0 ? (char *)"enabled" : (char *)"disabled");
  } else {
  }
  seq_printf(m, "auto:\t\t%s\n", autosw & 1 ? (char *)"enabled" : (char *)"disabled");
  seq_printf(m, "commands:\tlcd_enable, lcd_disable\n");
  seq_printf(m, "commands:\tcrt_enable, crt_disable\n");
  if ((unsigned int )video_supported == 3U) {
    seq_printf(m, "commands:\tdvi_enable, dvi_disable\n");
  } else {
  }
  seq_printf(m, "commands:\tauto_enable, auto_disable\n");
  seq_printf(m, "commands:\tvideo_switch, expand_toggle\n");
  return (0);
}
}
static int video_write(char *buf )
{
  char *cmd ;
  int enable ;
  int disable ;
  int status ;
  int res ;
  bool tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  size_t tmp___3 ;
  int tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  size_t tmp___7 ;
  int tmp___8 ;
  size_t tmp___9 ;
  int tmp___10 ;
  size_t tmp___11 ;
  int tmp___12 ;
  size_t tmp___13 ;
  int tmp___14 ;
  size_t tmp___15 ;
  int tmp___16 ;
  size_t tmp___17 ;
  int tmp___18 ;
  size_t tmp___19 ;
  int tmp___20 ;
  {
  if ((unsigned int )video_supported == 0U) {
    return (-19);
  } else {
  }
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  enable = 0;
  disable = 0;
  goto ldv_35475;
  ldv_35474:
  tmp___19 = strlen("lcd_enable");
  tmp___20 = strncmp((char const *)cmd, "lcd_enable", tmp___19);
  if (tmp___20 == 0) {
    enable = enable | 1;
  } else {
    tmp___17 = strlen("lcd_disable");
    tmp___18 = strncmp((char const *)cmd, "lcd_disable", tmp___17);
    if (tmp___18 == 0) {
      disable = disable | 1;
    } else {
      tmp___15 = strlen("crt_enable");
      tmp___16 = strncmp((char const *)cmd, "crt_enable", tmp___15);
      if (tmp___16 == 0) {
        enable = enable | 2;
      } else {
        tmp___13 = strlen("crt_disable");
        tmp___14 = strncmp((char const *)cmd, "crt_disable", tmp___13);
        if (tmp___14 == 0) {
          disable = disable | 2;
        } else
        if ((unsigned int )video_supported == 3U) {
          tmp___11 = strlen("dvi_enable");
          tmp___12 = strncmp((char const *)cmd, "dvi_enable", tmp___11);
          if (tmp___12 == 0) {
            enable = enable | 8;
          } else {
            goto _L___0;
          }
        } else
        _L___0:
        if ((unsigned int )video_supported == 3U) {
          tmp___9 = strlen("dvi_disable");
          tmp___10 = strncmp((char const *)cmd, "dvi_disable", tmp___9);
          if (tmp___10 == 0) {
            disable = disable | 8;
          } else {
            goto _L;
          }
        } else {
          _L:
          tmp___7 = strlen("auto_enable");
          tmp___8 = strncmp((char const *)cmd, "auto_enable", tmp___7);
          if (tmp___8 == 0) {
            res = video_autosw_set(1);
            if (res != 0) {
              return (res);
            } else {
            }
          } else {
            tmp___5 = strlen("auto_disable");
            tmp___6 = strncmp((char const *)cmd, "auto_disable", tmp___5);
            if (tmp___6 == 0) {
              res = video_autosw_set(0);
              if (res != 0) {
                return (res);
              } else {
              }
            } else {
              tmp___3 = strlen("video_switch");
              tmp___4 = strncmp((char const *)cmd, "video_switch", tmp___3);
              if (tmp___4 == 0) {
                res = video_outputsw_cycle();
                if (res != 0) {
                  return (res);
                } else {
                }
              } else {
                tmp___1 = strlen("expand_toggle");
                tmp___2 = strncmp((char const *)cmd, "expand_toggle", tmp___1);
                if (tmp___2 == 0) {
                  res = video_expand_toggle();
                  if (res != 0) {
                    return (res);
                  } else {
                  }
                } else {
                  return (-22);
                }
              }
            }
          }
        }
      }
    }
  }
  ldv_35475:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35474;
  } else {
  }
  if (enable != 0 || disable != 0) {
    status = video_outputsw_get();
    if (status < 0) {
      return (status);
    } else {
    }
    res = video_outputsw_set((~ disable & status) | enable);
    if (res != 0) {
      return (res);
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct ibm_struct video_driver_data =
     {(char *)"video", & video_read, & video_write, & video_exit, 0, 0, 0, {0, 0}, 0,
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}};
static acpi_handle lght_handle ;
static acpi_handle * const * const lght_parent = (acpi_handle * const * )(& root_handle);
static char *lght_paths[1U] = { (char *)"\\LGHT"};
static acpi_handle ledb_handle ;
static acpi_handle * const * const ledb_parent = (acpi_handle * const * )(& ec_handle);
static char *ledb_paths[1U] = { (char *)"LEDB"};
static int light_get_status(void)
{
  int status ;
  int tmp ;
  {
  status = 0;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    tmp = acpi_evalf(ec_handle, & status, (char *)"KBLT", (char *)"d");
    if (tmp == 0) {
      return (-5);
    } else {
    }
    return (status != 0);
  } else {
  }
  return (-6);
}
}
static int light_set_status(int status )
{
  int rc ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    if ((unsigned long )cmos_handle != (unsigned long )((acpi_handle )0)) {
      rc = acpi_evalf(cmos_handle, (int *)0, (char *)0, (char *)"vd", status != 0 ? 12 : 13);
    } else {
      rc = acpi_evalf(lght_handle, (int *)0, (char *)0, (char *)"vd", status != 0);
    }
    return (rc != 0 ? 0 : -5);
  } else {
  }
  return (-6);
}
}
static void light_set_status_worker(struct work_struct *work )
{
  struct tpacpi_led_classdev *data ;
  struct work_struct const *__mptr ;
  long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  data = (struct tpacpi_led_classdev *)__mptr + 0xfffffffffffffd40UL;
  tmp = ldv__builtin_expect((unsigned int )tpacpi_lifecycle == 1U, 1L);
  if (tmp != 0L) {
    light_set_status((unsigned int )data->new_state != 0U);
  } else {
  }
  return;
}
}
static void light_sysfs_set(struct led_classdev *led_cdev , enum led_brightness brightness )
{
  struct tpacpi_led_classdev *data ;
  struct led_classdev const *__mptr ;
  {
  __mptr = (struct led_classdev const *)led_cdev;
  data = (struct tpacpi_led_classdev *)__mptr;
  data->new_state = (unsigned int )brightness != 0U;
  queue_work(tpacpi_wq, & data->work);
  return;
}
}
static enum led_brightness light_sysfs_get(struct led_classdev *led_cdev )
{
  int tmp ;
  {
  tmp = light_get_status();
  return (tmp == 1 ? 255 : 0);
}
}
static struct tpacpi_led_classdev tpacpi_led_thinklight = {{"tpacpi::thinklight", 0, 0, 0, & light_sysfs_set, 0, & light_sysfs_get, 0, 0,
     0, {0, 0}, 0, 0UL, 0UL, {{0, 0}, 0UL, 0, 0UL, 0U, 0, 0, 0, {(char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0,
                                                                 (char)0, (char)0},
                              {0, {0, 0}, 0, 0, 0UL}}, 0, 0, {{0L}, {0, 0}, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
     0, {0L, {0, 0}, {{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {{0}}, 0, {0, {0,
                                                                                0},
                                                                            0, 0,
                                                                            0UL}},
     0, {0, 0}, 0, (_Bool)0, {{0}, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                              {0, 0}, 0, 0, {0, {0, 0}, 0, 0, 0UL}}}, {{0L}, {0, 0},
                                                                       0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}},
    0, 0};
static int light_init(struct ibm_init_struct *iibm )
{
  int rc ;
  bool tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  int tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing light subdriver\n", "light_init");
  } else {
  }
  tmp = tpacpi_is_ibm();
  if ((int )tmp) {
    drv_acpi_handle_init("ledb", & ledb_handle, *ledb_parent, (char **)(& ledb_paths),
                         1);
    drv_acpi_handle_init("lght", & lght_handle, *lght_parent, (char **)(& lght_paths),
                         1);
  } else {
  }
  drv_acpi_handle_init("cmos", & cmos_handle, *cmos_parent, (char **)(& cmos_paths),
                       3);
  __init_work(& tpacpi_led_thinklight.work, 0);
  __constr_expr_0.counter = 137438953408L;
  tpacpi_led_thinklight.work.data = __constr_expr_0;
  lockdep_init_map(& tpacpi_led_thinklight.work.lockdep_map, "(&tpacpi_led_thinklight.work)",
                   & __key, 0);
  INIT_LIST_HEAD(& tpacpi_led_thinklight.work.entry);
  tpacpi_led_thinklight.work.func = & light_set_status_worker;
  tp_features.light = (unsigned char )(((unsigned long )cmos_handle != (unsigned long )((acpi_handle )0) || (unsigned long )lght_handle != (unsigned long )((acpi_handle )0)) && (unsigned long )ledb_handle == (unsigned long )((acpi_handle )0));
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U) {
    tmp___0 = acpi_evalf(ec_handle, (int *)0, (char *)"KBLT", (char *)"qv");
    tp_features.light_status = (unsigned char )tmp___0;
  } else {
  }
  if ((int )dbg_level & 1) {
    tmp___1 = str_supported((int )tp_features.light_status);
    tmp___2 = str_supported((int )tp_features.light);
    printk("\017thinkpad_acpi: %s: light is %s, light status is %s\n", "light_init",
           tmp___2, tmp___1);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (1);
  } else {
  }
  rc = led_classdev_register(& tpacpi_pdev->dev, & tpacpi_led_thinklight.led_classdev);
  if (rc < 0) {
    tp_features.light = 0U;
    tp_features.light_status = 0U;
  } else {
    rc = 0;
  }
  return (rc);
}
}
static void light_exit(void)
{
  {
  led_classdev_unregister(& tpacpi_led_thinklight.led_classdev);
  ldv_flush_workqueue_54(tpacpi_wq);
  return;
}
}
static int light_read(struct seq_file *m )
{
  int status ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    seq_printf(m, "status:\t\tnot supported\n");
  } else
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    seq_printf(m, "status:\t\tunknown\n");
    seq_printf(m, "commands:\ton, off\n");
  } else {
    status = light_get_status();
    if (status < 0) {
      return (status);
    } else {
    }
    seq_printf(m, "status:\t\t%s\n", status & 1 ? (char *)"on" : (char *)"off");
    seq_printf(m, "commands:\ton, off\n");
  }
  return (0);
}
}
static int light_write(char *buf )
{
  char *cmd ;
  int newstatus ;
  size_t tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  newstatus = 0;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) == 0U) {
    return (-19);
  } else {
  }
  goto ldv_35535;
  ldv_35534:
  tmp___1 = strlen("on");
  tmp___2 = strncmp((char const *)cmd, "on", tmp___1);
  if (tmp___2 == 0) {
    newstatus = 1;
  } else {
    tmp = strlen("off");
    tmp___0 = strncmp((char const *)cmd, "off", tmp);
    if (tmp___0 == 0) {
      newstatus = 0;
    } else {
      return (-22);
    }
  }
  ldv_35535:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35534;
  } else {
  }
  tmp___3 = light_set_status(newstatus);
  return (tmp___3);
}
}
static struct ibm_struct light_driver_data =
     {(char *)"light", & light_read, & light_write, & light_exit, 0, 0, 0, {0, 0}, 0,
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}};
static ssize_t cmos_command_store(struct device *dev , struct device_attribute *attr ,
                                  char const *buf , size_t count )
{
  unsigned long cmos_cmd ;
  int res ;
  int tmp ;
  {
  tmp = parse_strtoul(buf, 21UL, & cmos_cmd);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  res = issue_thinkpad_cmos_command((int )cmos_cmd);
  return ((ssize_t )(res != 0 ? (size_t )res : count));
}
}
static struct device_attribute dev_attr_cmos_command = {{"cmos_command", 128U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    0, & cmos_command_store};
static int cmos_init(struct ibm_init_struct *iibm )
{
  int res ;
  char const *tmp ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing cmos commands subdriver\n", "cmos_init");
  } else {
  }
  drv_acpi_handle_init("cmos", & cmos_handle, *cmos_parent, (char **)(& cmos_paths),
                       3);
  if ((int )dbg_level & 1) {
    tmp = str_supported((unsigned long )cmos_handle != (unsigned long )((acpi_handle )0));
    printk("\017thinkpad_acpi: %s: cmos commands are %s\n", "cmos_init", tmp);
  } else {
  }
  res = device_create_file(& tpacpi_pdev->dev, (struct device_attribute const *)(& dev_attr_cmos_command));
  if (res != 0) {
    return (res);
  } else {
  }
  return ((unsigned long )cmos_handle == (unsigned long )((acpi_handle )0));
}
}
static void cmos_exit(void)
{
  {
  device_remove_file(& tpacpi_pdev->dev, (struct device_attribute const *)(& dev_attr_cmos_command));
  return;
}
}
static int cmos_read(struct seq_file *m )
{
  {
  if ((unsigned long )cmos_handle == (unsigned long )((acpi_handle )0)) {
    seq_printf(m, "status:\t\tnot supported\n");
  } else {
    seq_printf(m, "status:\t\tsupported\n");
    seq_printf(m, "commands:\t<cmd> (<cmd> is 0-21)\n");
  }
  return (0);
}
}
static int cmos_write(char *buf )
{
  char *cmd ;
  int cmos_cmd ;
  int res ;
  int tmp ;
  {
  goto ldv_35567;
  ldv_35566:
  tmp = sscanf((char const *)cmd, "%u", & cmos_cmd);
  if ((tmp == 1 && cmos_cmd >= 0) && cmos_cmd <= 21) {
  } else {
    return (-22);
  }
  res = issue_thinkpad_cmos_command(cmos_cmd);
  if (res != 0) {
    return (res);
  } else {
  }
  ldv_35567:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35566;
  } else {
  }
  return (0);
}
}
static struct ibm_struct cmos_driver_data =
     {(char *)"cmos", & cmos_read, & cmos_write, & cmos_exit, 0, 0, 0, {0, 0}, 0, {(unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0}};
static enum led_access_mode led_supported ;
static acpi_handle led_handle ;
static struct tpacpi_led_classdev *tpacpi_leds ;
static enum led_status_t tpacpi_led_state_cache[16U] ;
static char const * const tpacpi_led_names[16U] =
  { "tpacpi::power", "tpacpi:orange:batt", "tpacpi:green:batt", "tpacpi::dock_active",
        "tpacpi::bay_active", "tpacpi::dock_batt", "tpacpi::unknown_led", "tpacpi::standby",
        "tpacpi::dock_status1", "tpacpi::dock_status2", "tpacpi::unknown_led2", "tpacpi::unknown_led3",
        "tpacpi::thinkvantage"};
__inline static bool tpacpi_is_led_restricted(unsigned int const led )
{
  {
  return (0);
}
}
static int led_get_status(unsigned int const led )
{
  int status ;
  enum led_status_t led_s ;
  int tmp ;
  {
  switch ((unsigned int )led_supported) {
  case 1U:
  tmp = acpi_evalf(ec_handle, & status, (char *)"GLED", (char *)"dd", 1 << (int )led);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  led_s = status != 0 ? (status == 1 ? 1 : 2) : 0;
  tpacpi_led_state_cache[led] = led_s;
  return ((int )led_s);
  default: ;
  return (-6);
  }
}
}
static int led_set_status(unsigned int const led , enum led_status_t const ledstatus )
{
  unsigned int led_sled_arg1[3U] ;
  unsigned int led_led_arg1[3U] ;
  int rc ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  {
  led_sled_arg1[0] = 0U;
  led_sled_arg1[1] = 1U;
  led_sled_arg1[2] = 3U;
  led_led_arg1[0] = 0U;
  led_led_arg1[1] = 128U;
  led_led_arg1[2] = 192U;
  rc = 0;
  switch ((unsigned int )led_supported) {
  case 1U:
  tmp = ldv__builtin_expect((unsigned int )led > 7U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  tmp___0 = tpacpi_is_led_restricted(led);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    return (-1);
  } else {
  }
  tmp___2 = acpi_evalf(led_handle, (int *)0, (char *)0, (char *)"vdd", 1 << (int )led,
                       led_sled_arg1[(unsigned int )ledstatus]);
  if (tmp___2 == 0) {
    rc = -5;
  } else {
  }
  goto ldv_35602;
  case 2U:
  tmp___3 = ldv__builtin_expect((unsigned int )led > 7U, 0L);
  if (tmp___3 != 0L) {
    return (-22);
  } else {
  }
  tmp___4 = tpacpi_is_led_restricted(led);
  tmp___5 = ldv__builtin_expect((long )tmp___4, 0L);
  if (tmp___5 != 0L) {
    return (-1);
  } else {
  }
  rc = ec_write(14, (int )((u8 )(1 << (int )led)));
  if (rc >= 0) {
    rc = ec_write(13, (int )((u8 )(((unsigned int )ledstatus == 2U) << (int )led)));
  } else {
  }
  if (rc >= 0) {
    rc = ec_write(12, (int )((u8 )(((unsigned int )ledstatus != 0U) << (int )led)));
  } else {
  }
  goto ldv_35602;
  case 3U:
  tmp___6 = ldv__builtin_expect((unsigned int )led > 15U, 0L);
  if (tmp___6 != 0L) {
    return (-22);
  } else {
  }
  tmp___7 = tpacpi_is_led_restricted(led);
  tmp___8 = ldv__builtin_expect((long )tmp___7, 0L);
  if (tmp___8 != 0L) {
    return (-1);
  } else {
  }
  tmp___9 = acpi_evalf(led_handle, (int *)0, (char *)0, (char *)"vdd", led, led_led_arg1[(unsigned int )ledstatus]);
  if (tmp___9 == 0) {
    rc = -5;
  } else {
  }
  goto ldv_35602;
  default:
  rc = -6;
  }
  ldv_35602: ;
  if (rc == 0) {
    tpacpi_led_state_cache[led] = ledstatus;
  } else {
  }
  return (rc);
}
}
static void led_set_status_worker(struct work_struct *work )
{
  struct tpacpi_led_classdev *data ;
  struct work_struct const *__mptr ;
  long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  data = (struct tpacpi_led_classdev *)__mptr + 0xfffffffffffffd40UL;
  tmp = ldv__builtin_expect((unsigned int )tpacpi_lifecycle == 1U, 1L);
  if (tmp != 0L) {
    led_set_status((unsigned int const )data->led, data->new_state);
  } else {
  }
  return;
}
}
static void led_sysfs_set(struct led_classdev *led_cdev , enum led_brightness brightness )
{
  struct tpacpi_led_classdev *data ;
  struct led_classdev const *__mptr ;
  {
  __mptr = (struct led_classdev const *)led_cdev;
  data = (struct tpacpi_led_classdev *)__mptr;
  if ((unsigned int )brightness == 0U) {
    data->new_state = 0;
  } else
  if ((unsigned int )tpacpi_led_state_cache[data->led] != 2U) {
    data->new_state = 1;
  } else {
    data->new_state = 2;
  }
  queue_work(tpacpi_wq, & data->work);
  return;
}
}
static int led_sysfs_blink_set(struct led_classdev *led_cdev , unsigned long *delay_on ,
                               unsigned long *delay_off )
{
  struct tpacpi_led_classdev *data ;
  struct led_classdev const *__mptr ;
  {
  __mptr = (struct led_classdev const *)led_cdev;
  data = (struct tpacpi_led_classdev *)__mptr;
  if (*delay_on == 0UL && *delay_off == 0UL) {
    *delay_on = 500UL;
    *delay_off = 500UL;
  } else
  if (*delay_on != 500UL || *delay_off != 500UL) {
    return (-22);
  } else {
  }
  data->new_state = 2;
  queue_work(tpacpi_wq, & data->work);
  return (0);
}
}
static enum led_brightness led_sysfs_get(struct led_classdev *led_cdev )
{
  int rc ;
  struct tpacpi_led_classdev *data ;
  struct led_classdev const *__mptr ;
  {
  __mptr = (struct led_classdev const *)led_cdev;
  data = (struct tpacpi_led_classdev *)__mptr;
  rc = led_get_status((unsigned int const )data->led);
  if (rc == 0 || rc < 0) {
    rc = 0;
  } else {
    rc = 255;
  }
  return ((enum led_brightness )rc);
}
}
static void led_exit(void)
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_35639;
  ldv_35638: ;
  if ((unsigned long )(tpacpi_leds + (unsigned long )i)->led_classdev.name != (unsigned long )((char const *)0)) {
    led_classdev_unregister(& (tpacpi_leds + (unsigned long )i)->led_classdev);
  } else {
  }
  i = i + 1U;
  ldv_35639: ;
  if (i <= 15U) {
    goto ldv_35638;
  } else {
  }
  ldv_flush_workqueue_55(tpacpi_wq);
  kfree((void const *)tpacpi_leds);
  return;
}
}
static int tpacpi_init_led(unsigned int led )
{
  int rc ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  (tpacpi_leds + (unsigned long )led)->led = (int )led;
  if ((unsigned long )tpacpi_led_names[led] == (unsigned long )((char const * )0)) {
    return (0);
  } else {
  }
  (tpacpi_leds + (unsigned long )led)->led_classdev.brightness_set = & led_sysfs_set;
  (tpacpi_leds + (unsigned long )led)->led_classdev.blink_set = & led_sysfs_blink_set;
  if ((unsigned int )led_supported == 1U) {
    (tpacpi_leds + (unsigned long )led)->led_classdev.brightness_get = & led_sysfs_get;
  } else {
  }
  (tpacpi_leds + (unsigned long )led)->led_classdev.name = tpacpi_led_names[led];
  __init_work(& (tpacpi_leds + (unsigned long )led)->work, 0);
  __constr_expr_0.counter = 137438953408L;
  (tpacpi_leds + (unsigned long )led)->work.data = __constr_expr_0;
  lockdep_init_map(& (tpacpi_leds + (unsigned long )led)->work.lockdep_map, "(&tpacpi_leds[led].work)",
                   & __key, 0);
  INIT_LIST_HEAD(& (tpacpi_leds + (unsigned long )led)->work.entry);
  (tpacpi_leds + (unsigned long )led)->work.func = & led_set_status_worker;
  rc = led_classdev_register(& tpacpi_pdev->dev, & (tpacpi_leds + (unsigned long )led)->led_classdev);
  if (rc < 0) {
    (tpacpi_leds + (unsigned long )led)->led_classdev.name = (char const *)0;
  } else {
  }
  return (rc);
}
}
static struct tpacpi_quirk const led_useful_qtable[23U] =
  { {4116U, 17713U, 65535U, 159UL},
        {4116U, 20017U, 65535U, 159UL},
        {4116U, 18225U, 65535U, 159UL},
        {4116U, 18737U, 65535U, 151UL},
        {4116U, 21041U, 65535U, 151UL},
        {4116U, 12343U, 65535U, 151UL},
        {4116U, 22833U, 65535U, 151UL},
        {4116U, 22321U, 65535U, 151UL},
        {4116U, 22065U, 65535U, 151UL},
        {4116U, 14391U, 65535U, 151UL},
        {4116U, 13879U, 65535U, 151UL},
        {4116U, 19249U, 65535U, 191UL},
        {4116U, 20785U, 65535U, 191UL},
        {4116U, 21809U, 65535U, 191UL},
        {4116U, 13367U, 65535U, 191UL},
        {4116U, 13623U, 65535U, 191UL},
        {4116U, 14647U, 65535U, 8087UL},
        {4116U, 14135U, 65535U, 8087UL},
        {4116U, 17975U, 65535U, 8087UL},
        {4116U, 16951U, 65535U, 8119UL},
        {6058U, 65535U, 65535U, 8191UL},
        {4116U, 65535U, 0U, 255UL},
        {4116U, 65535U, 65535U, 191UL}};
static enum led_access_mode led_init_detect_mode(void)
{
  acpi_status status ;
  bool tmp ;
  {
  tmp = tpacpi_is_ibm();
  if ((int )tmp) {
    status = acpi_get_handle(ec_handle, (char *)"SLED", & led_handle);
    if (status == 0U) {
      return (1);
    } else {
    }
    status = acpi_get_handle(ec_handle, (char *)"SYSL", & led_handle);
    if (status == 0U) {
      return (2);
    } else {
    }
  } else {
  }
  status = acpi_get_handle(ec_handle, (char *)"LED", & led_handle);
  if (status == 0U) {
    return (3);
  } else {
  }
  led_handle = (void *)0;
  return (0);
}
}
static int led_init(struct ibm_init_struct *iibm )
{
  unsigned int i ;
  int rc ;
  unsigned long useful_leds ;
  char const *tmp ;
  void *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing LED subdriver\n", "led_init");
  } else {
  }
  led_supported = led_init_detect_mode();
  if ((unsigned int )led_supported != 0U) {
    useful_leds = tpacpi_check_quirks((struct tpacpi_quirk const *)(& led_useful_qtable),
                                      23U);
    if (useful_leds == 0UL) {
      led_handle = (void *)0;
      led_supported = 0;
    } else {
    }
  } else {
  }
  if ((int )dbg_level & 1) {
    tmp = str_supported((int )led_supported);
    printk("\017thinkpad_acpi: %s: LED commands are %s, mode %d\n", "led_init", tmp,
           (unsigned int )led_supported);
  } else {
  }
  if ((unsigned int )led_supported == 0U) {
    return (1);
  } else {
  }
  tmp___0 = kzalloc(12672UL, 208U);
  tpacpi_leds = (struct tpacpi_led_classdev *)tmp___0;
  if ((unsigned long )tpacpi_leds == (unsigned long )((struct tpacpi_led_classdev *)0)) {
    printk("\vthinkpad_acpi: Out of memory for LED data\n");
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_35662;
  ldv_35661:
  (tpacpi_leds + (unsigned long )i)->led = -1;
  tmp___1 = tpacpi_is_led_restricted(i);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    tmp___3 = variable_test_bit((long )i, (unsigned long const volatile *)(& useful_leds));
    if (tmp___3 != 0) {
      rc = tpacpi_init_led(i);
      if (rc < 0) {
        led_exit();
        return (rc);
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1U;
  ldv_35662: ;
  if (i <= 15U) {
    goto ldv_35661;
  } else {
  }
  printk("\rthinkpad_acpi: warning: userspace override of important firmware LEDs is enabled\n");
  return (0);
}
}
static int led_read(struct seq_file *m )
{
  int i ;
  int status ;
  {
  if ((unsigned int )led_supported == 0U) {
    seq_printf(m, "status:\t\tnot supported\n");
    return (0);
  } else {
  }
  seq_printf(m, "status:\t\tsupported\n");
  if ((unsigned int )led_supported == 1U) {
    i = 0;
    goto ldv_35670;
    ldv_35669:
    status = led_get_status((unsigned int const )i);
    if (status < 0) {
      return (-5);
    } else {
    }
    seq_printf(m, "%d:\t\t%s\n", i, status != 0 ? (status == 1 ? (char *)"on" : (char *)"blinking") : (char *)"off");
    i = i + 1;
    ldv_35670: ;
    if (i <= 7) {
      goto ldv_35669;
    } else {
    }
  } else {
  }
  seq_printf(m, "commands:\t<led> on, <led> off, <led> blink (<led> is 0-15)\n");
  return (0);
}
}
static int led_write(char *buf )
{
  char *cmd ;
  int led ;
  int rc ;
  enum led_status_t s ;
  int tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  {
  if ((unsigned int )led_supported == 0U) {
    return (-19);
  } else {
  }
  goto ldv_35680;
  ldv_35679:
  tmp = sscanf((char const *)cmd, "%d", & led);
  if (tmp != 1) {
    return (-22);
  } else {
  }
  if ((led < 0 || led > 15) || (tpacpi_leds + (unsigned long )led)->led < 0) {
    return (-19);
  } else {
  }
  tmp___2 = strstr((char const *)cmd, "off");
  if ((unsigned long )tmp___2 != (unsigned long )((char *)0)) {
    s = 0;
  } else {
    tmp___1 = strstr((char const *)cmd, "on");
    if ((unsigned long )tmp___1 != (unsigned long )((char *)0)) {
      s = 1;
    } else {
      tmp___0 = strstr((char const *)cmd, "blink");
      if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
        s = 2;
      } else {
        return (-22);
      }
    }
  }
  rc = led_set_status((unsigned int const )led, s);
  if (rc < 0) {
    return (rc);
  } else {
  }
  ldv_35680:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35679;
  } else {
  }
  return (0);
}
}
static struct ibm_struct led_driver_data =
     {(char *)"led", & led_read, & led_write, & led_exit, 0, 0, 0, {0, 0}, 0, {(unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0,
                                                                             (unsigned char)0}};
static acpi_handle beep_handle ;
static acpi_handle * const * const beep_parent = (acpi_handle * const * )(& ec_handle);
static char *beep_paths[1U] = { (char *)"BEEP"};
static struct tpacpi_quirk const beep_quirk_table[2U] = { {4116U, 19785U, 65535U, 1UL},
        {4116U, 21833U, 65535U, 1UL}};
static int beep_init(struct ibm_init_struct *iibm )
{
  unsigned long quirks ;
  char const *tmp ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing beep subdriver\n", "beep_init");
  } else {
  }
  drv_acpi_handle_init("beep", & beep_handle, *beep_parent, (char **)(& beep_paths),
                       1);
  if ((int )dbg_level & 1) {
    tmp = str_supported((unsigned long )beep_handle != (unsigned long )((acpi_handle )0));
    printk("\017thinkpad_acpi: %s: beep is %s\n", "beep_init", tmp);
  } else {
  }
  quirks = tpacpi_check_quirks((struct tpacpi_quirk const *)(& beep_quirk_table),
                               2U);
  tp_features.beep_needs_two_args = (unsigned int )((unsigned char )quirks) & 1U;
  return ((unsigned long )beep_handle == (unsigned long )((acpi_handle )0));
}
}
static int beep_read(struct seq_file *m )
{
  {
  if ((unsigned long )beep_handle == (unsigned long )((acpi_handle )0)) {
    seq_printf(m, "status:\t\tnot supported\n");
  } else {
    seq_printf(m, "status:\t\tsupported\n");
    seq_printf(m, "commands:\t<cmd> (<cmd> is 0-17)\n");
  }
  return (0);
}
}
static int beep_write(char *buf )
{
  char *cmd ;
  int beep_cmd ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )beep_handle == (unsigned long )((acpi_handle )0)) {
    return (-19);
  } else {
  }
  goto ldv_35705;
  ldv_35704:
  tmp = sscanf((char const *)cmd, "%u", & beep_cmd);
  if ((tmp == 1 && beep_cmd >= 0) && beep_cmd <= 17) {
  } else {
    return (-22);
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    tmp___0 = acpi_evalf(beep_handle, (int *)0, (char *)0, (char *)"vdd", beep_cmd,
                         0);
    if (tmp___0 == 0) {
      return (-5);
    } else {
    }
  } else {
    tmp___1 = acpi_evalf(beep_handle, (int *)0, (char *)0, (char *)"vd", beep_cmd);
    if (tmp___1 == 0) {
      return (-5);
    } else {
    }
  }
  ldv_35705:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_35704;
  } else {
  }
  return (0);
}
}
static struct ibm_struct beep_driver_data =
     {(char *)"beep", & beep_read, & beep_write, 0, 0, 0, 0, {0, 0}, 0, {(unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0,
                                                                       (unsigned char)0}};
static enum thermal_access_mode thermal_read_mode ;
static int thermal_get_sensor(int idx , s32 *value )
{
  int t ;
  s8 tmp ;
  char tmpi[5U] ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  t = 120;
  switch ((unsigned int )thermal_read_mode) {
  case 4U: ;
  if (idx > 7 && idx <= 15) {
    t = 192;
    idx = idx + -8;
  } else {
  }
  case 3U: ;
  if (idx <= 7) {
    tmp___0 = acpi_ec_read(t + idx, (u8 *)(& tmp));
    if (tmp___0 == 0) {
      return (-5);
    } else {
    }
    *value = (int )tmp * 1000;
    return (0);
  } else {
  }
  goto ldv_35731;
  case 2U: ;
  if (idx <= 7) {
    snprintf((char *)(& tmpi), 5UL, "TMP%c", idx + 48);
    tmp___1 = acpi_evalf(ec_handle, (int *)0, (char *)"UPDT", (char *)"v");
    if (tmp___1 == 0) {
      return (-5);
    } else {
    }
    tmp___2 = acpi_evalf(ec_handle, & t, (char *)(& tmpi), (char *)"d");
    if (tmp___2 == 0) {
      return (-5);
    } else {
    }
    *value = t * 100 + -273200;
    return (0);
  } else {
  }
  goto ldv_35731;
  case 1U: ;
  if (idx <= 7) {
    snprintf((char *)(& tmpi), 5UL, "TMP%c", idx + 48);
    tmp___3 = acpi_evalf(ec_handle, & t, (char *)(& tmpi), (char *)"d");
    if (tmp___3 == 0) {
      return (-5);
    } else {
    }
    if (t > 127 || t < -127) {
      t = -128;
    } else {
    }
    *value = t * 1000;
    return (0);
  } else {
  }
  goto ldv_35731;
  case 0U: ;
  default: ;
  return (-38);
  }
  ldv_35731: ;
  return (-22);
}
}
static int thermal_get_sensors(struct ibm_thermal_sensors_struct *s )
{
  int res ;
  int i ;
  int n ;
  {
  n = 8;
  i = 0;
  if ((unsigned long )s == (unsigned long )((struct ibm_thermal_sensors_struct *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )thermal_read_mode == 4U) {
    n = 16;
  } else {
  }
  i = 0;
  goto ldv_35743;
  ldv_35742:
  res = thermal_get_sensor(i, (s32 *)(& s->temp) + (unsigned long )i);
  if (res != 0) {
    return (res);
  } else {
  }
  i = i + 1;
  ldv_35743: ;
  if (i < n) {
    goto ldv_35742;
  } else {
  }
  return (n);
}
}
static void thermal_dump_all_sensors(void)
{
  int n ;
  int i ;
  struct ibm_thermal_sensors_struct t ;
  {
  n = thermal_get_sensors(& t);
  if (n <= 0) {
    return;
  } else {
  }
  printk("\rthinkpad_acpi: temperatures (Celsius):");
  i = 0;
  goto ldv_35752;
  ldv_35751: ;
  if (t.temp[i] != -128000) {
    printk(" %d", t.temp[i] / 1000);
  } else {
    printk(" N/A");
  }
  i = i + 1;
  ldv_35752: ;
  if (i < n) {
    goto ldv_35751;
  } else {
  }
  printk("\n");
  return;
}
}
static ssize_t thermal_temp_input_show(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int idx ;
  s32 value ;
  int res ;
  int tmp ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  idx = sensor_attr->index;
  res = thermal_get_sensor(idx, & value);
  if (res != 0) {
    return ((ssize_t )res);
  } else {
  }
  if (value == -128000) {
    return (-6L);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%d\n", value);
  return ((ssize_t )tmp);
}
}
static struct sensor_device_attribute sensor_dev_attr_thermal_temp_input[16U] =
  { {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 0},
        {{{"temp2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 1},
        {{{"temp3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 2},
        {{{"temp4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 3},
        {{{"temp5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 4},
        {{{"temp6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 5},
        {{{"temp7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 6},
        {{{"temp8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 7},
        {{{"temp9_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 8},
        {{{"temp10_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 9},
        {{{"temp11_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 10},
        {{{"temp12_input",
        292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                             {(char)0}, {(char)0}, {(char)0}}}}, & thermal_temp_input_show,
       (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                    size_t ))0}, 11},
        {{{"temp13_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 12},
        {{{"temp14_input",
        292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                             {(char)0}, {(char)0}, {(char)0}}}}, & thermal_temp_input_show,
       (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                    size_t ))0}, 13},
        {{{"temp15_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & thermal_temp_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                               char const * , size_t ))0}, 14},
        {{{"temp16_input",
        292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                             {(char)0}, {(char)0}, {(char)0}}}}, & thermal_temp_input_show,
       (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                    size_t ))0}, 15}};
static struct attribute *thermal_temp_input_attr[17U] =
  { & sensor_dev_attr_thermal_temp_input[8].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[9].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[10].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[11].dev_attr.attr,
        & sensor_dev_attr_thermal_temp_input[12].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[13].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[14].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[15].dev_attr.attr,
        & sensor_dev_attr_thermal_temp_input[0].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[1].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[2].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[3].dev_attr.attr,
        & sensor_dev_attr_thermal_temp_input[4].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[5].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[6].dev_attr.attr, & sensor_dev_attr_thermal_temp_input[7].dev_attr.attr,
        (struct attribute *)0};
static struct attribute_group const thermal_temp_input16_group = {0, 0, (struct attribute **)(& thermal_temp_input_attr), 0};
static struct attribute_group const thermal_temp_input8_group = {0, 0, (struct attribute **)(& thermal_temp_input_attr) + 8UL, 0};
static int thermal_init(struct ibm_init_struct *iibm )
{
  u8 t ;
  u8 ta1 ;
  u8 ta2 ;
  int i ;
  int acpi_tmp7 ;
  int res ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing thermal subdriver\n", "thermal_init");
  } else {
  }
  acpi_tmp7 = acpi_evalf(ec_handle, (int *)0, (char *)"TMP7", (char *)"qv");
  if ((unsigned int )thinkpad_id.ec_model != 0U) {
    ta2 = 0U;
    ta1 = ta2;
    i = 0;
    goto ldv_35973;
    ldv_35972:
    tmp = acpi_ec_read(i + 120, & t);
    if (tmp != 0) {
      ta1 = (u8 )((int )ta1 | (int )t);
    } else {
      ta1 = 0U;
      goto ldv_35971;
    }
    tmp___0 = acpi_ec_read(i + 192, & t);
    if (tmp___0 != 0) {
      ta2 = (u8 )((int )ta2 | (int )t);
    } else {
      ta1 = 0U;
      goto ldv_35971;
    }
    i = i + 1;
    ldv_35973: ;
    if (i <= 7) {
      goto ldv_35972;
    } else {
    }
    ldv_35971: ;
    if ((unsigned int )ta1 == 0U) {
      if (acpi_tmp7 != 0) {
        printk("\vthinkpad_acpi: ThinkPad ACPI EC access misbehaving, falling back to ACPI TMPx access mode\n");
        thermal_read_mode = 1;
      } else {
        printk("\vthinkpad_acpi: ThinkPad ACPI EC access misbehaving, disabling thermal sensors access\n");
        thermal_read_mode = 0;
      }
    } else {
      thermal_read_mode = (unsigned int )ta2 != 0U ? 4 : 3;
    }
  } else
  if (acpi_tmp7 != 0) {
    tmp___1 = tpacpi_is_ibm();
    if ((int )tmp___1) {
      tmp___2 = acpi_evalf(ec_handle, (int *)0, (char *)"UPDT", (char *)"qv");
      if (tmp___2 != 0) {
        thermal_read_mode = 2;
      } else {
        thermal_read_mode = 1;
      }
    } else {
      thermal_read_mode = 1;
    }
  } else {
    thermal_read_mode = 0;
  }
  if ((int )dbg_level & 1) {
    tmp___3 = str_supported((unsigned int )thermal_read_mode != 0U);
    printk("\017thinkpad_acpi: %s: thermal is %s, mode %d\n", "thermal_init", tmp___3,
           (unsigned int )thermal_read_mode);
  } else {
  }
  switch ((unsigned int )thermal_read_mode) {
  case 4U:
  res = sysfs_create_group(& tpacpi_sensors_pdev->dev.kobj, & thermal_temp_input16_group);
  if (res != 0) {
    return (res);
  } else {
  }
  goto ldv_35975;
  case 3U: ;
  case 1U: ;
  case 2U:
  res = sysfs_create_group(& tpacpi_sensors_pdev->dev.kobj, & thermal_temp_input8_group);
  if (res != 0) {
    return (res);
  } else {
  }
  goto ldv_35975;
  case 0U: ;
  default: ;
  return (1);
  }
  ldv_35975: ;
  return (0);
}
}
static void thermal_exit(void)
{
  {
  switch ((unsigned int )thermal_read_mode) {
  case 4U:
  sysfs_remove_group(& tpacpi_sensors_pdev->dev.kobj, & thermal_temp_input16_group);
  goto ldv_35985;
  case 3U: ;
  case 1U: ;
  case 2U:
  sysfs_remove_group(& tpacpi_sensors_pdev->dev.kobj, & thermal_temp_input8_group);
  goto ldv_35985;
  case 0U: ;
  default: ;
  goto ldv_35985;
  }
  ldv_35985: ;
  return;
}
}
static int thermal_read(struct seq_file *m )
{
  int n ;
  int i ;
  struct ibm_thermal_sensors_struct t ;
  long tmp ;
  {
  n = thermal_get_sensors(& t);
  tmp = ldv__builtin_expect(n < 0, 0L);
  if (tmp != 0L) {
    return (n);
  } else {
  }
  seq_printf(m, "temperatures:\t");
  if (n > 0) {
    i = 0;
    goto ldv_35998;
    ldv_35997:
    seq_printf(m, "%d ", t.temp[i] / 1000);
    i = i + 1;
    ldv_35998: ;
    if (n + -1 > i) {
      goto ldv_35997;
    } else {
    }
    seq_printf(m, "%d\n", t.temp[i] / 1000);
  } else {
    seq_printf(m, "not supported\n");
  }
  return (0);
}
}
static struct ibm_struct thermal_driver_data =
     {(char *)"thermal", & thermal_read, 0, & thermal_exit, 0, 0, 0, {0, 0}, 0, {(unsigned char)0,
                                                                               (unsigned char)0,
                                                                               (unsigned char)0,
                                                                               (unsigned char)0,
                                                                               (unsigned char)0}};
static struct backlight_device *ibm_backlight_device ;
static enum tpacpi_brightness_access_mode brightness_mode = 4;
static unsigned int brightness_enable = 2U;
static struct mutex brightness_mutex ;
static unsigned int tpacpi_brightness_nvram_get(void)
{
  u8 lnvram ;
  unsigned char tmp ;
  {
  tmp = nvram_read_byte(94);
  lnvram = (unsigned int )tmp & 15U;
  lnvram = (int )((u8 )bright_maxlvl) & (int )lnvram;
  return ((unsigned int )lnvram);
}
}
static void tpacpi_brightness_checkpoint_nvram(void)
{
  u8 lec ;
  u8 b_nvram ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  lec = 0U;
  if ((unsigned int )brightness_mode != 3U) {
    return;
  } else {
  }
  if ((dbg_level & 32U) != 0U) {
    printk("\017thinkpad_acpi: %s: trying to checkpoint backlight level to NVRAM...\n",
           "tpacpi_brightness_checkpoint_nvram");
  } else {
  }
  tmp = ldv_mutex_lock_killable_56(& brightness_mutex);
  if (tmp < 0) {
    return;
  } else {
  }
  tmp___0 = acpi_ec_read(49, & lec);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    goto unlock;
  } else {
  }
  lec = (unsigned int )lec & 31U;
  b_nvram = nvram_read_byte(94);
  if ((int )lec != ((int )b_nvram & 15)) {
    b_nvram = (unsigned int )b_nvram & 240U;
    b_nvram = (u8 )((int )b_nvram | (int )lec);
    nvram_write_byte((int )b_nvram, 94);
    if ((dbg_level & 32U) != 0U) {
      printk("\017thinkpad_acpi: %s: updated NVRAM backlight level to %u (0x%02x)\n",
             "tpacpi_brightness_checkpoint_nvram", (unsigned int )lec, (unsigned int )b_nvram);
    } else {
    }
  } else
  if ((dbg_level & 32U) != 0U) {
    printk("\017thinkpad_acpi: %s: NVRAM backlight level already is %u (0x%02x)\n",
           "tpacpi_brightness_checkpoint_nvram", (unsigned int )lec, (unsigned int )b_nvram);
  } else {
  }
  unlock:
  ldv_mutex_unlock_57(& brightness_mutex);
  return;
}
}
static int tpacpi_brightness_get_raw(int *status )
{
  u8 lec ;
  unsigned int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  lec = 0U;
  switch ((unsigned int )brightness_mode) {
  case 2U:
  tmp = tpacpi_brightness_nvram_get();
  *status = (int )tmp;
  return (0);
  case 1U: ;
  case 3U:
  tmp___0 = acpi_ec_read(49, & lec);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    return (-5);
  } else {
  }
  *status = (int )lec;
  return (0);
  default: ;
  return (-6);
  }
}
}
static int tpacpi_brightness_set_ec(unsigned int value )
{
  u8 lec ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  lec = 0U;
  tmp = acpi_ec_read(49, & lec);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    return (-5);
  } else {
  }
  tmp___1 = acpi_ec_write(49, (int )(((unsigned int )lec & 224U) | ((unsigned int )((u8 )value) & 31U)));
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int tpacpi_brightness_set_ucmsstep(unsigned int value )
{
  int cmos_cmd ;
  int inc ;
  unsigned int current_value ;
  unsigned int i ;
  int tmp ;
  {
  current_value = tpacpi_brightness_nvram_get();
  if (value == current_value) {
    return (0);
  } else {
  }
  cmos_cmd = value > current_value ? 4 : 5;
  inc = value > current_value ? 1 : -1;
  i = current_value;
  goto ldv_36047;
  ldv_36046:
  tmp = issue_thinkpad_cmos_command(cmos_cmd);
  if (tmp != 0) {
    return (-5);
  } else {
  }
  i = i + (unsigned int )inc;
  ldv_36047: ;
  if (i != value) {
    goto ldv_36046;
  } else {
  }
  return (0);
}
}
static int brightness_set(unsigned int value )
{
  int res ;
  {
  if (value > bright_maxlvl) {
    return (-22);
  } else {
  }
  if ((dbg_level & 32U) != 0U) {
    printk("\017thinkpad_acpi: %s: set backlight level to %d\n", "brightness_set",
           value);
  } else {
  }
  res = ldv_mutex_lock_killable_58(& brightness_mutex);
  if (res < 0) {
    return (res);
  } else {
  }
  switch ((unsigned int )brightness_mode) {
  case 1U: ;
  case 3U:
  res = tpacpi_brightness_set_ec(value);
  goto ldv_36056;
  case 2U:
  res = tpacpi_brightness_set_ucmsstep(value);
  goto ldv_36056;
  default:
  res = -6;
  }
  ldv_36056:
  ldv_mutex_unlock_59(& brightness_mutex);
  return (res);
}
}
static int brightness_update_status(struct backlight_device *bd )
{
  unsigned int level ;
  int tmp ;
  {
  level = bd->props.fb_blank == 0 && bd->props.power == 0 ? (unsigned int )bd->props.brightness : 0U;
  if ((dbg_level & 32U) != 0U) {
    printk("\017thinkpad_acpi: %s: backlight: attempt to set level to %d\n", "brightness_update_status",
           level);
  } else {
  }
  tmp = brightness_set(level);
  return (tmp);
}
}
static int brightness_get(struct backlight_device *bd )
{
  int status ;
  int res ;
  {
  res = ldv_mutex_lock_killable_60(& brightness_mutex);
  if (res < 0) {
    return (0);
  } else {
  }
  res = tpacpi_brightness_get_raw(& status);
  ldv_mutex_unlock_61(& brightness_mutex);
  if (res < 0) {
    return (0);
  } else {
  }
  return (status & 31);
}
}
static void tpacpi_brightness_notify_change(void)
{
  {
  backlight_force_update(ibm_backlight_device, 0);
  return;
}
}
static struct backlight_ops const ibm_backlight_data = {0U, & brightness_update_status, & brightness_get, 0};
static int tpacpi_query_bcl_levels(acpi_handle handle )
{
  struct acpi_buffer buffer ;
  union acpi_object *obj ;
  struct acpi_device *device ;
  struct acpi_device *child ;
  int rc ;
  int tmp ;
  struct list_head const *__mptr ;
  acpi_status status ;
  acpi_status tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  tmp = acpi_bus_get_device(handle, & device);
  if (tmp != 0) {
    return (0);
  } else {
  }
  rc = 0;
  __mptr = (struct list_head const *)device->children.next;
  child = (struct acpi_device *)__mptr + 0xffffffffffffffc8UL;
  goto ldv_36089;
  ldv_36088:
  tmp___0 = acpi_evaluate_object(child->handle, (char *)"_BCL", (struct acpi_object_list *)0,
                                 & buffer);
  status = tmp___0;
  if (status != 0U) {
    goto ldv_36086;
  } else {
  }
  obj = (union acpi_object *)buffer.pointer;
  if ((unsigned long )obj == (unsigned long )((union acpi_object *)0) || obj->type != 4U) {
    printk("\vthinkpad_acpi: Unknown _BCL data, please report this to %s\n", (char *)"ibm-acpi-devel@lists.sourceforge.net");
    rc = 0;
  } else {
    rc = (int )obj->package.count;
  }
  goto ldv_36087;
  ldv_36086:
  __mptr___0 = (struct list_head const *)child->node.next;
  child = (struct acpi_device *)__mptr___0 + 0xffffffffffffffc8UL;
  ldv_36089: ;
  if ((unsigned long )(& child->node) != (unsigned long )(& device->children)) {
    goto ldv_36088;
  } else {
  }
  ldv_36087:
  kfree((void const *)buffer.pointer);
  return (rc);
}
}
static unsigned int tpacpi_check_std_acpi_brightness_support(void)
{
  acpi_handle video_device ;
  int bcl_levels ;
  {
  bcl_levels = 0;
  tpacpi_acpi_handle_locate("video", (char const *)0, & video_device);
  if ((unsigned long )video_device != (unsigned long )((acpi_handle )0)) {
    bcl_levels = tpacpi_query_bcl_levels(video_device);
  } else {
  }
  tp_features.bright_acpimode = bcl_levels > 0;
  return (bcl_levels > 2 ? (unsigned int )(bcl_levels + -2) : 0U);
}
}
static struct tpacpi_quirk const brightness_quirk_table[11U] =
  { {4116U, 22833U, 65535U, 2UL},
        {4116U, 21041U, 65535U, 2UL},
        {4116U, 20785U, 65535U, 32770UL},
        {4116U, 13879U, 65535U, 2UL},
        {4116U, 14391U, 65535U, 32770UL},
        {4116U, 21809U, 65535U, 1UL},
        {4116U, 22065U, 65535U, 32770UL},
        {4116U, 22321U, 65535U, 32770UL},
        {4116U, 12343U, 65535U, 1UL},
        {4116U, 13367U, 65535U, 1UL},
        {4116U, 13623U, 65535U, 1UL}};
static void tpacpi_detect_brightness_capabilities(void)
{
  unsigned int b ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: detecting firmware brightness interface capabilities\n",
           "tpacpi_detect_brightness_capabilities");
  } else {
  }
  b = tpacpi_check_std_acpi_brightness_support();
  switch (b) {
  case 16U:
  bright_maxlvl = 15U;
  printk("\016thinkpad_acpi: detected a 16-level brightness capable ThinkPad\n");
  goto ldv_36102;
  case 8U: ;
  case 0U:
  bright_maxlvl = 7U;
  printk("\016thinkpad_acpi: detected a 8-level brightness capable ThinkPad\n");
  goto ldv_36102;
  default:
  printk("\vthinkpad_acpi: Unsupported brightness interface, please contact %s\n",
         (char *)"ibm-acpi-devel@lists.sourceforge.net");
  tp_features.bright_unkfw = 1U;
  bright_maxlvl = b - 1U;
  }
  ldv_36102: ;
  return;
}
}
static int brightness_init(struct ibm_init_struct *iibm )
{
  struct backlight_properties props ;
  int b ;
  unsigned long quirks ;
  struct lock_class_key __key ;
  enum acpi_backlight_type tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int rc ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing brightness subdriver\n", "brightness_init");
  } else {
  }
  __mutex_init(& brightness_mutex, "&brightness_mutex", & __key);
  quirks = tpacpi_check_quirks((struct tpacpi_quirk const *)(& brightness_quirk_table),
                               11U);
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    return (1);
  } else {
  }
  if (brightness_enable == 0U) {
    if ((dbg_level & 33U) != 0U) {
      printk("\017thinkpad_acpi: %s: brightness support disabled by module parameter\n",
             "brightness_init");
    } else {
    }
    return (1);
  } else {
  }
  tmp = acpi_video_get_backlight_type();
  if ((int )tmp != 2) {
    if (brightness_enable > 1U) {
      printk("\016thinkpad_acpi: Standard ACPI backlight interface available, not loading native one\n");
      return (1);
    } else
    if (brightness_enable == 1U) {
      printk("\fthinkpad_acpi: Cannot enable backlight brightness support, ACPI is already handling it.  Refer to the acpi_backlight kernel parameter.\n");
      return (1);
    } else {
    }
  } else
  if ((unsigned int )*((unsigned char *)(& tp_features) + 0UL) != 0U && brightness_enable > 1U) {
    printk("\rthinkpad_acpi: Standard ACPI backlight interface not available, thinkpad_acpi native brightness control enabled\n");
  } else {
  }
  if ((unsigned int )brightness_mode > 4U) {
    return (-22);
  } else {
  }
  if ((unsigned int )brightness_mode == 0U || (unsigned int )brightness_mode == 4U) {
    if ((quirks & 2UL) != 0UL) {
      brightness_mode = 3;
    } else {
      brightness_mode = 2;
    }
    if ((dbg_level & 32U) != 0U) {
      printk("\017thinkpad_acpi: %s: driver auto-selected brightness_mode=%d\n", "brightness_init",
             (unsigned int )brightness_mode);
    } else {
    }
  } else {
  }
  tmp___0 = tpacpi_is_ibm();
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 && ((unsigned int )brightness_mode == 3U || (unsigned int )brightness_mode == 1U)) {
    return (-22);
  } else {
  }
  tmp___2 = tpacpi_brightness_get_raw(& b);
  if (tmp___2 < 0) {
    return (1);
  } else {
  }
  memset((void *)(& props), 0, 24UL);
  props.type = 2;
  props.max_brightness = (int )bright_maxlvl;
  props.brightness = b & 31;
  ibm_backlight_device = backlight_device_register("thinkpad_screen", (struct device *)0,
                                                   (void *)0, & ibm_backlight_data,
                                                   (struct backlight_properties const *)(& props));
  tmp___4 = IS_ERR((void const *)ibm_backlight_device);
  if ((int )tmp___4) {
    tmp___3 = PTR_ERR((void const *)ibm_backlight_device);
    rc = (int )tmp___3;
    ibm_backlight_device = (struct backlight_device *)0;
    printk("\vthinkpad_acpi: Could not register backlight device\n");
    return (rc);
  } else {
  }
  if ((dbg_level & 33U) != 0U) {
    printk("\017thinkpad_acpi: %s: brightness is supported\n", "brightness_init");
  } else {
  }
  if ((quirks & 32768UL) != 0UL) {
    printk("\rthinkpad_acpi: brightness: will use unverified default: brightness_mode=%d\n",
           (unsigned int )brightness_mode);
    printk("\rthinkpad_acpi: brightness: please report to %s whether it works well or not on your ThinkPad\n",
           (char *)"ibm-acpi-devel@lists.sourceforge.net");
  } else {
  }
  backlight_update_status(ibm_backlight_device);
  if ((dbg_level & 33U) != 0U) {
    printk("\017thinkpad_acpi: %s: brightness: registering brightness hotkeys as change notification\n",
           "brightness_init");
  } else {
  }
  tpacpi_hotkey_driver_mask_set(hotkey_driver_mask | 98304U);
  return (0);
}
}
static void brightness_suspend(void)
{
  {
  tpacpi_brightness_checkpoint_nvram();
  return;
}
}
static void brightness_shutdown(void)
{
  {
  tpacpi_brightness_checkpoint_nvram();
  return;
}
}
static void brightness_exit(void)
{
  {
  if ((unsigned long )ibm_backlight_device != (unsigned long )((struct backlight_device *)0)) {
    if ((dbg_level & 34U) != 0U) {
      printk("\017thinkpad_acpi: %s: calling backlight_device_unregister()\n", "brightness_exit");
    } else {
    }
    backlight_device_unregister(ibm_backlight_device);
  } else {
  }
  tpacpi_brightness_checkpoint_nvram();
  return;
}
}
static int brightness_read(struct seq_file *m )
{
  int level ;
  {
  level = brightness_get((struct backlight_device *)0);
  if (level < 0) {
    seq_printf(m, "level:\t\tunreadable\n");
  } else {
    seq_printf(m, "level:\t\t%d\n", level);
    seq_printf(m, "commands:\tup, down\n");
    seq_printf(m, "commands:\tlevel <level> (<level> is 0-%d)\n", bright_maxlvl);
  }
  return (0);
}
}
static int brightness_write(char *buf )
{
  int level ;
  int rc ;
  char *cmd ;
  int tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  pid_t tmp___5 ;
  long tmp___6 ;
  {
  level = brightness_get((struct backlight_device *)0);
  if (level < 0) {
    return (level);
  } else {
  }
  goto ldv_36138;
  ldv_36137:
  tmp___2 = strlen("up");
  tmp___3 = strncmp((char const *)cmd, "up", tmp___2);
  if (tmp___3 == 0) {
    if ((unsigned int )level < bright_maxlvl) {
      level = level + 1;
    } else {
    }
  } else {
    tmp___0 = strlen("down");
    tmp___1 = strncmp((char const *)cmd, "down", tmp___0);
    if (tmp___1 == 0) {
      if (level > 0) {
        level = level - 1;
      } else {
      }
    } else {
      tmp = sscanf((char const *)cmd, "level %d", & level);
      if ((tmp == 1 && level >= 0) && (unsigned int )level <= bright_maxlvl) {
      } else {
        return (-22);
      }
    }
  }
  ldv_36138:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_36137;
  } else {
  }
  tmp___6 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___6 != 0L) {
    tmp___4 = get_current();
    tmp___5 = task_tgid_vnr(tmp___4);
    printk("\017thinkpad_acpi: %s: PID %d: set level to %d\n", (char *)"procfs brightness",
           tmp___5, level);
  } else {
  }
  rc = brightness_set((unsigned int )level);
  if (rc == 0 && (unsigned long )ibm_backlight_device != (unsigned long )((struct backlight_device *)0)) {
    backlight_force_update(ibm_backlight_device, 1);
  } else {
  }
  return (rc != -4 ? rc : -512);
}
}
static struct ibm_struct brightness_driver_data =
     {(char *)"brightness", & brightness_read, & brightness_write, & brightness_exit,
    0, & brightness_suspend, & brightness_shutdown, {0, 0}, 0, {(unsigned char)0,
                                                                (unsigned char)0,
                                                                (unsigned char)0,
                                                                (unsigned char)0,
                                                                (unsigned char)0}};
static int alsa_index = -536870912;
static char *alsa_id = (char *)"ThinkPadEC";
static bool alsa_enable = 1;
static struct snd_card *alsa_card ;
static enum tpacpi_volume_access_mode volume_mode = 4;
static enum tpacpi_volume_capabilities volume_capabilities ;
static bool volume_control_allowed ;
static bool software_mute_requested = 1;
static bool software_mute_active ;
static int software_mute_orig_mode ;
static struct mutex volume_mutex ;
static void tpacpi_volume_checkpoint_nvram(void)
{
  u8 lec ;
  u8 b_nvram ;
  u8 ec_mask ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  lec = 0U;
  if ((unsigned int )volume_mode != 3U) {
    return;
  } else {
  }
  if (! volume_control_allowed) {
    return;
  } else {
  }
  if ((int )software_mute_active) {
    return;
  } else {
  }
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: trying to checkpoint mixer state to NVRAM...\n",
           "tpacpi_volume_checkpoint_nvram");
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    ec_mask = 64U;
  } else {
    ec_mask = 79U;
  }
  tmp = ldv_mutex_lock_killable_62(& volume_mutex);
  if (tmp < 0) {
    return;
  } else {
  }
  tmp___0 = acpi_ec_read(48, & lec);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    goto unlock;
  } else {
  }
  lec = (u8 )((int )lec & (int )ec_mask);
  b_nvram = nvram_read_byte(96);
  if (((int )b_nvram & (int )ec_mask) != (int )lec) {
    b_nvram = (u8 )(~ ((int )((signed char )ec_mask)) & (int )((signed char )b_nvram));
    b_nvram = (u8 )((int )b_nvram | (int )lec);
    nvram_write_byte((int )b_nvram, 96);
    if ((dbg_level & 64U) != 0U) {
      printk("\017thinkpad_acpi: %s: updated NVRAM mixer status to 0x%02x (0x%02x)\n",
             "tpacpi_volume_checkpoint_nvram", (unsigned int )lec, (unsigned int )b_nvram);
    } else {
    }
  } else
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: NVRAM mixer status already is 0x%02x (0x%02x)\n",
           "tpacpi_volume_checkpoint_nvram", (unsigned int )lec, (unsigned int )b_nvram);
  } else {
  }
  unlock:
  ldv_mutex_unlock_63(& volume_mutex);
  return;
}
}
static int volume_get_status_ec(u8 *status )
{
  u8 s ;
  int tmp ;
  {
  tmp = acpi_ec_read(48, & s);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  *status = s;
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: status 0x%02x\n", "volume_get_status_ec", (int )s);
  } else {
  }
  return (0);
}
}
static int volume_get_status(u8 *status )
{
  int tmp ;
  {
  tmp = volume_get_status_ec(status);
  return (tmp);
}
}
static int volume_set_status_ec(u8 const status )
{
  int tmp ;
  {
  tmp = acpi_ec_write(48, (int )status);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: set EC mixer to 0x%02x\n", "volume_set_status_ec",
           (int )status);
  } else {
  }
  msleep(1U);
  return (0);
}
}
static int volume_set_status(u8 const status )
{
  int tmp ;
  {
  tmp = volume_set_status_ec((int )status);
  return (tmp);
}
}
static int __volume_set_mute_ec(bool const mute )
{
  int rc ;
  u8 s ;
  u8 n ;
  int tmp ;
  {
  tmp = ldv_mutex_lock_killable_64(& volume_mutex);
  if (tmp < 0) {
    return (-4);
  } else {
  }
  rc = volume_get_status_ec(& s);
  if (rc != 0) {
    goto unlock;
  } else {
  }
  n = (int )mute ? (u8 )((unsigned int )s | 64U) : (unsigned int )s & 191U;
  if ((int )n != (int )s) {
    rc = volume_set_status_ec((int )n);
    if (rc == 0) {
      rc = 1;
    } else {
    }
  } else {
  }
  unlock:
  ldv_mutex_unlock_65(& volume_mutex);
  return (rc);
}
}
static int volume_alsa_set_mute(bool const mute )
{
  int tmp ;
  {
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: ALSA: trying to %smute\n", "volume_alsa_set_mute",
           (int )mute ? (char *)"" : (char *)"un");
  } else {
  }
  tmp = __volume_set_mute_ec((int )mute);
  return (tmp);
}
}
static int volume_set_mute(bool const mute )
{
  int rc ;
  {
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: trying to %smute\n", "volume_set_mute", (int )mute ? (char *)"" : (char *)"un");
  } else {
  }
  rc = __volume_set_mute_ec((int )mute);
  return (0 < rc ? 0 : rc);
}
}
static int __volume_set_volume_ec(u8 const vol )
{
  int rc ;
  u8 s ;
  u8 n ;
  int tmp ;
  {
  if ((unsigned int )((unsigned char )vol) > 14U) {
    return (-22);
  } else {
  }
  tmp = ldv_mutex_lock_killable_66(& volume_mutex);
  if (tmp < 0) {
    return (-4);
  } else {
  }
  rc = volume_get_status_ec(& s);
  if (rc != 0) {
    goto unlock;
  } else {
  }
  n = (u8 )(((int )((signed char )s) & -16) | (int )((signed char )vol));
  if ((int )n != (int )s) {
    rc = volume_set_status_ec((int )n);
    if (rc == 0) {
      rc = 1;
    } else {
    }
  } else {
  }
  unlock:
  ldv_mutex_unlock_67(& volume_mutex);
  return (rc);
}
}
static int volume_set_software_mute(bool startup )
{
  int result ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = tpacpi_is_lenovo();
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-19);
  } else {
  }
  if ((int )startup) {
    tmp___1 = acpi_evalf(ec_handle, & software_mute_orig_mode, (char *)"HAUM", (char *)"qd");
    if (tmp___1 == 0) {
      return (-5);
    } else {
    }
    if ((dbg_level & 65U) != 0U) {
      printk("\017thinkpad_acpi: %s: Initial HAUM setting was %d\n", "volume_set_software_mute",
             software_mute_orig_mode);
    } else {
    }
  } else {
  }
  tmp___2 = acpi_evalf(ec_handle, & result, (char *)"SAUM", (char *)"qdd", 2);
  if (tmp___2 == 0) {
    return (-5);
  } else {
  }
  if (result != 2) {
    printk("\fthinkpad_acpi: Unexpected SAUM result %d\n", result);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    result = volume_set_mute(0);
  } else {
    result = volume_set_status(14);
  }
  if (result != 0) {
    printk("\fthinkpad_acpi: Failed to unmute the HW mute switch\n");
  } else {
  }
  return (0);
}
}
static void volume_exit_software_mute(void)
{
  int r ;
  int tmp ;
  {
  tmp = acpi_evalf(ec_handle, & r, (char *)"SAUM", (char *)"qdd", software_mute_orig_mode);
  if (tmp == 0 || r != software_mute_orig_mode) {
    printk("\fthinkpad_acpi: Failed to restore mute mode\n");
  } else {
  }
  return;
}
}
static int volume_alsa_set_volume(u8 const vol )
{
  int tmp ;
  {
  if ((dbg_level & 64U) != 0U) {
    printk("\017thinkpad_acpi: %s: ALSA: trying to set volume level to %hu\n", "volume_alsa_set_volume",
           (int )vol);
  } else {
  }
  tmp = __volume_set_volume_ec((int )vol);
  return (tmp);
}
}
static void volume_alsa_notify_change(void)
{
  struct tpacpi_alsa_data *d ;
  {
  if ((unsigned long )alsa_card != (unsigned long )((struct snd_card *)0) && (unsigned long )alsa_card->private_data != (unsigned long )((void *)0)) {
    d = (struct tpacpi_alsa_data *)alsa_card->private_data;
    if ((unsigned long )d->ctl_mute_id != (unsigned long )((struct snd_ctl_elem_id *)0)) {
      snd_ctl_notify(alsa_card, 1U, d->ctl_mute_id);
    } else {
    }
    if ((unsigned long )d->ctl_vol_id != (unsigned long )((struct snd_ctl_elem_id *)0)) {
      snd_ctl_notify(alsa_card, 1U, d->ctl_vol_id);
    } else {
    }
  } else {
  }
  return;
}
}
static int volume_alsa_vol_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *uinfo )
{
  {
  uinfo->type = 2;
  uinfo->count = 1U;
  uinfo->value.integer.min = 0L;
  uinfo->value.integer.max = 14L;
  return (0);
}
}
static int volume_alsa_vol_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  u8 s ;
  int rc ;
  {
  rc = volume_get_status(& s);
  if (rc < 0) {
    return (rc);
  } else {
  }
  ucontrol->value.integer.value[0] = (long )s & 15L;
  return (0);
}
}
static int volume_alsa_vol_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct task_struct *tmp ;
  pid_t tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___1 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___1 != 0L) {
    tmp = get_current();
    tmp___0 = task_tgid_vnr(tmp);
    printk("\017thinkpad_acpi: %s: PID %d: set volume to %ld\n", (char *)"ALSA", tmp___0,
           ucontrol->value.integer.value[0]);
  } else {
  }
  tmp___2 = volume_alsa_set_volume((int )((u8 const )ucontrol->value.integer.value[0]));
  return (tmp___2);
}
}
static int volume_alsa_mute_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  u8 s ;
  int rc ;
  {
  rc = volume_get_status(& s);
  if (rc < 0) {
    return (rc);
  } else {
  }
  ucontrol->value.integer.value[0] = ((int )s & 64) == 0;
  return (0);
}
}
static int volume_alsa_mute_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *ucontrol )
{
  struct task_struct *tmp ;
  pid_t tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  tmp___1 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___1 != 0L) {
    tmp = get_current();
    tmp___0 = task_tgid_vnr(tmp);
    printk("\017thinkpad_acpi: %s: PID %d: %smute\n", (char *)"ALSA", tmp___0, ucontrol->value.integer.value[0] != 0L ? (char *)"un" : (char *)"");
  } else {
  }
  tmp___2 = volume_alsa_set_mute(ucontrol->value.integer.value[0] == 0L);
  return (tmp___2);
}
}
static struct snd_kcontrol_new volume_alsa_control_vol =
     {2, 0U, 0U, (unsigned char const *)"Console Playback Volume", 0U, 1U, 0U, & volume_alsa_vol_info,
    & volume_alsa_vol_get, 0, {0}, 0UL};
static struct snd_kcontrol_new volume_alsa_control_mute =
     {2, 0U, 0U, (unsigned char const *)"Console Playback Switch", 0U, 1U, 0U, & snd_ctl_boolean_mono_info,
    & volume_alsa_mute_get, 0, {0}, 0UL};
static void volume_suspend(void)
{
  {
  tpacpi_volume_checkpoint_nvram();
  return;
}
}
static void volume_resume(void)
{
  int tmp ;
  {
  if ((int )software_mute_active) {
    tmp = volume_set_software_mute(0);
    if (tmp < 0) {
      printk("\fthinkpad_acpi: Failed to restore software mute\n");
    } else {
    }
  } else {
    volume_alsa_notify_change();
  }
  return;
}
}
static void volume_shutdown(void)
{
  {
  tpacpi_volume_checkpoint_nvram();
  return;
}
}
static void volume_exit(void)
{
  {
  if ((unsigned long )alsa_card != (unsigned long )((struct snd_card *)0)) {
    snd_card_free(alsa_card);
    alsa_card = (struct snd_card *)0;
  } else {
  }
  tpacpi_volume_checkpoint_nvram();
  if ((int )software_mute_active) {
    volume_exit_software_mute();
  } else {
  }
  return;
}
}
static int volume_create_alsa_mixer(void)
{
  struct snd_card *card ;
  struct tpacpi_alsa_data *data ;
  struct snd_kcontrol *ctl_vol ;
  struct snd_kcontrol *ctl_mute ;
  int rc ;
  long tmp ;
  {
  rc = snd_card_new(& tpacpi_pdev->dev, alsa_index, (char const *)alsa_id, & __this_module,
                    24, & card);
  if (rc < 0 || (unsigned long )card == (unsigned long )((struct snd_card *)0)) {
    printk("\vthinkpad_acpi: Failed to create ALSA card structures: %d\n", rc);
    return (1);
  } else {
  }
  tmp = ldv__builtin_expect((unsigned long )card->private_data == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (7134), "i" (12UL));
    ldv_36286: ;
    goto ldv_36286;
  } else {
  }
  data = (struct tpacpi_alsa_data *)card->private_data;
  data->card = card;
  strlcpy((char *)(& card->driver), "ThinkPad EC", 16UL);
  strlcpy((char *)(& card->shortname), "ThinkPad Console Audio Control", 32UL);
  snprintf((char *)(& card->mixername), 80UL, "ThinkPad EC %s", (unsigned long )thinkpad_id.ec_version_str != (unsigned long )((char *)0) ? thinkpad_id.ec_version_str : (char *)"(unknown)");
  snprintf((char *)(& card->longname), 80UL, "%s at EC reg 0x%02x, fw %s", (char *)(& card->shortname),
           48, (unsigned long )thinkpad_id.ec_version_str != (unsigned long )((char *)0) ? thinkpad_id.ec_version_str : (char *)"unknown");
  if ((int )volume_control_allowed) {
    volume_alsa_control_vol.put = & volume_alsa_vol_put;
    volume_alsa_control_vol.access = 3U;
    volume_alsa_control_mute.put = & volume_alsa_mute_put;
    volume_alsa_control_mute.access = 3U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
    ctl_vol = snd_ctl_new1((struct snd_kcontrol_new const *)(& volume_alsa_control_vol),
                           (void *)0);
    rc = snd_ctl_add(card, ctl_vol);
    if (rc < 0) {
      printk("\vthinkpad_acpi: Failed to create ALSA volume control: %d\n", rc);
      goto err_exit;
    } else {
    }
    data->ctl_vol_id = & ctl_vol->id;
  } else {
  }
  ctl_mute = snd_ctl_new1((struct snd_kcontrol_new const *)(& volume_alsa_control_mute),
                          (void *)0);
  rc = snd_ctl_add(card, ctl_mute);
  if (rc < 0) {
    printk("\vthinkpad_acpi: Failed to create ALSA mute control: %d\n", rc);
    goto err_exit;
  } else {
  }
  data->ctl_mute_id = & ctl_mute->id;
  rc = snd_card_register(card);
  if (rc < 0) {
    printk("\vthinkpad_acpi: Failed to register ALSA card: %d\n", rc);
    goto err_exit;
  } else {
  }
  alsa_card = card;
  return (0);
  err_exit:
  snd_card_free(card);
  return (1);
}
}
static struct tpacpi_quirk const volume_quirk_table[9U] =
  { {4116U, 65535U, 65535U, 2UL},
        {6058U, 65535U, 17207U, 2UL},
        {6058U, 65535U, 17719U, 2UL},
        {6058U, 65535U, 14647U, 2UL},
        {6058U, 65535U, 16951U, 2UL},
        {6058U, 65535U, 18999U, 2UL},
        {6058U, 65535U, 14135U, 2UL},
        {6058U, 65535U, 17975U, 2UL},
        {6058U, 65535U, 65535U, 1UL}};
static int volume_init(struct ibm_init_struct *iibm )
{
  unsigned long quirks ;
  int rc ;
  struct lock_class_key __key ;
  char const *tmp ;
  int tmp___0 ;
  {
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: initializing volume subdriver\n", "volume_init");
  } else {
  }
  __mutex_init(& volume_mutex, "&volume_mutex", & __key);
  if ((unsigned int )volume_mode > 4U) {
    return (-22);
  } else {
  }
  if ((unsigned int )volume_mode == 2U) {
    printk("\vthinkpad_acpi: UCMS step volume mode not implemented, please contact %s\n",
           (char *)"ibm-acpi-devel@lists.sourceforge.net");
    return (1);
  } else {
  }
  if ((unsigned int )volume_capabilities > 2U) {
    return (-22);
  } else {
  }
  if (! alsa_enable) {
    if ((dbg_level & 65U) != 0U) {
      printk("\017thinkpad_acpi: %s: ALSA mixer disabled by parameter, not loading volume subdriver...\n",
             "volume_init");
    } else {
    }
    return (1);
  } else {
  }
  quirks = tpacpi_check_quirks((struct tpacpi_quirk const *)(& volume_quirk_table),
                               9U);
  switch ((unsigned int )volume_capabilities) {
  case 0U: ;
  if ((int )quirks & 1) {
    tp_features.mixer_no_level_control = 1U;
  } else
  if ((quirks & 2UL) != 0UL) {
    tp_features.mixer_no_level_control = 0U;
  } else {
    return (1);
  }
  goto ldv_36299;
  case 1U:
  tp_features.mixer_no_level_control = 0U;
  goto ldv_36299;
  case 2U:
  tp_features.mixer_no_level_control = 1U;
  goto ldv_36299;
  default: ;
  return (1);
  }
  ldv_36299: ;
  if ((unsigned int )volume_capabilities != 0U) {
    if ((dbg_level & 65U) != 0U) {
      printk("\017thinkpad_acpi: %s: using user-supplied volume_capabilities=%d\n",
             "volume_init", (unsigned int )volume_capabilities);
    } else {
    }
  } else {
  }
  if ((unsigned int )volume_mode == 0U || (unsigned int )volume_mode == 4U) {
    volume_mode = 3;
    if ((dbg_level & 65U) != 0U) {
      printk("\017thinkpad_acpi: %s: driver auto-selected volume_mode=%d\n", "volume_init",
             (unsigned int )volume_mode);
    } else {
    }
  } else
  if ((dbg_level & 65U) != 0U) {
    printk("\017thinkpad_acpi: %s: using user-supplied volume_mode=%d\n", "volume_init",
           (unsigned int )volume_mode);
  } else {
  }
  if ((dbg_level & 65U) != 0U) {
    tmp = str_supported((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U);
    printk("\017thinkpad_acpi: %s: mute is supported, volume control is %s\n", "volume_init",
           tmp);
  } else {
  }
  if ((int )software_mute_requested) {
    tmp___0 = volume_set_software_mute(1);
    if (tmp___0 == 0) {
      software_mute_active = 1;
    } else {
      goto _L;
    }
  } else {
    _L:
    rc = volume_create_alsa_mixer();
    if (rc != 0) {
      printk("\vthinkpad_acpi: Could not create the ALSA mixer interface\n");
      return (rc);
    } else {
    }
    printk("\016thinkpad_acpi: Console audio control enabled, mode: %s\n", (int )volume_control_allowed ? (char *)"override (read/write)" : (char *)"monitor (read only)");
  }
  if ((dbg_level & 65U) != 0U) {
    printk("\017thinkpad_acpi: %s: registering volume hotkeys as change notification\n",
           "volume_init");
  } else {
  }
  tpacpi_hotkey_driver_mask_set(hotkey_driver_mask | 7340032U);
  return (0);
}
}
static int volume_read(struct seq_file *m )
{
  u8 status ;
  int tmp ;
  {
  tmp = volume_get_status(& status);
  if (tmp < 0) {
    seq_printf(m, "level:\t\tunreadable\n");
  } else {
    if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
      seq_printf(m, "level:\t\tunsupported\n");
    } else {
      seq_printf(m, "level:\t\t%d\n", (int )status & 15);
    }
    seq_printf(m, "mute:\t\t%s\n", ((int )status & 64) != 0 ? (char *)"on" : (char *)"off");
    if ((int )volume_control_allowed) {
      seq_printf(m, "commands:\tunmute, mute\n");
      if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
        seq_printf(m, "commands:\tup, down\n");
        seq_printf(m, "commands:\tlevel <level> (<level> is 0-%d)\n", 14);
      } else {
      }
    } else {
    }
  }
  return (0);
}
}
static int volume_write(char *buf )
{
  u8 s ;
  u8 new_level ;
  u8 new_mute ;
  int l ;
  char *cmd ;
  int rc ;
  long tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  int tmp___2 ;
  size_t tmp___3 ;
  int tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  size_t tmp___7 ;
  int tmp___8 ;
  struct task_struct *tmp___9 ;
  pid_t tmp___10 ;
  long tmp___11 ;
  struct task_struct *tmp___12 ;
  pid_t tmp___13 ;
  long tmp___14 ;
  {
  if (! volume_control_allowed && (unsigned int )tpacpi_lifecycle != 0U) {
    tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)(& tp_warned) + 0UL) == 0U,
                           0L);
    if (tmp != 0L) {
      tp_warned.volume_ctrl_forbidden = 1U;
      printk("\rthinkpad_acpi: Console audio control in monitor mode, changes are not allowed\n");
      printk("\rthinkpad_acpi: Use the volume_control=1 module parameter to enable volume control\n");
    } else {
    }
    return (-1);
  } else {
  }
  rc = volume_get_status(& s);
  if (rc < 0) {
    return (rc);
  } else {
  }
  new_level = (unsigned int )s & 15U;
  new_mute = (unsigned int )s & 64U;
  goto ldv_36316;
  ldv_36317: ;
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
    tmp___3 = strlen("up");
    tmp___4 = strncmp((char const *)cmd, "up", tmp___3);
    if (tmp___4 == 0) {
      if ((unsigned int )new_mute != 0U) {
        new_mute = 0U;
      } else
      if ((unsigned int )new_level <= 13U) {
        new_level = (u8 )((int )new_level + 1);
      } else {
      }
      goto ldv_36316;
    } else {
      tmp___1 = strlen("down");
      tmp___2 = strncmp((char const *)cmd, "down", tmp___1);
      if (tmp___2 == 0) {
        if ((unsigned int )new_mute != 0U) {
          new_mute = 0U;
        } else
        if ((unsigned int )new_level != 0U) {
          new_level = (u8 )((int )new_level - 1);
        } else {
        }
        goto ldv_36316;
      } else {
        tmp___0 = sscanf((char const *)cmd, "level %u", & l);
        if ((tmp___0 == 1 && l >= 0) && l <= 14) {
          new_level = (u8 )l;
          goto ldv_36316;
        } else {
        }
      }
    }
  } else {
  }
  tmp___7 = strlen("mute");
  tmp___8 = strncmp((char const *)cmd, "mute", tmp___7);
  if (tmp___8 == 0) {
    new_mute = 64U;
  } else {
    tmp___5 = strlen("unmute");
    tmp___6 = strncmp((char const *)cmd, "unmute", tmp___5);
    if (tmp___6 == 0) {
      new_mute = 0U;
    } else {
      return (-22);
    }
  }
  ldv_36316:
  cmd = next_cmd(& buf);
  if ((unsigned long )cmd != (unsigned long )((char *)0)) {
    goto ldv_36317;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    tmp___11 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                                0L);
    if (tmp___11 != 0L) {
      tmp___9 = get_current();
      tmp___10 = task_tgid_vnr(tmp___9);
      printk("\017thinkpad_acpi: %s: PID %d: %smute\n", (char *)"procfs volume", tmp___10,
             (unsigned int )new_mute != 0U ? (char *)"" : (char *)"un");
    } else {
    }
    rc = volume_set_mute((unsigned int )new_mute != 0U);
  } else {
    tmp___14 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                                0L);
    if (tmp___14 != 0L) {
      tmp___12 = get_current();
      tmp___13 = task_tgid_vnr(tmp___12);
      printk("\017thinkpad_acpi: %s: PID %d: %smute and set level to %d\n", (char *)"procfs volume",
             tmp___13, (unsigned int )new_mute != 0U ? (char *)"" : (char *)"un",
             (int )new_level);
    } else {
    }
    rc = volume_set_status((int )new_mute | (int )new_level);
  }
  volume_alsa_notify_change();
  return (rc != -4 ? rc : -512);
}
}
static struct ibm_struct volume_driver_data =
     {(char *)"volume", & volume_read, & volume_write, & volume_exit, & volume_resume,
    & volume_suspend, & volume_shutdown, {0, 0}, 0, {(unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0}};
static bool fan_control_allowed ;
static enum fan_status_access_mode fan_status_access_mode ;
static enum fan_control_access_mode fan_control_access_mode ;
static enum fan_control_commands fan_control_commands ;
static u8 fan_control_initial_status ;
static u8 fan_control_desired_level ;
static u8 fan_control_resume_level ;
static int fan_watchdog_maxinterval ;
static struct mutex fan_mutex ;
static void fan_watchdog_fire(struct work_struct *ignored ) ;
static struct delayed_work fan_watchdog_task = {{{137438953424L}, {& fan_watchdog_task.work.entry, & fan_watchdog_task.work.entry},
     & fan_watchdog_fire, {(struct lock_class_key *)(& fan_watchdog_task.work), {0,
                                                                                 0},
                           "(fan_watchdog_task).work", 0, 0UL}}, {{(struct hlist_node *)1953723489,
                                                                   0}, 0UL, & delayed_work_timer_fn,
                                                                  (unsigned long )(& fan_watchdog_task),
                                                                  2097152U, -1, 0,
                                                                  0, {(char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0},
                                                                  {(struct lock_class_key *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c:7628",
                                                                   {0, 0}, "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c:7628",
                                                                   0, 0UL}}, 0, 0};
static acpi_handle fans_handle ;
static acpi_handle * const * const fans_parent = (acpi_handle * const * )(& ec_handle);
static char *fans_paths[1U] = { (char *)"FANS"};
static acpi_handle gfan_handle ;
static acpi_handle * const * const gfan_parent = (acpi_handle * const * )(& ec_handle);
static char *gfan_paths[2U] = { (char *)"GFAN", (char *)"\\FSPD"};
static acpi_handle sfan_handle ;
static acpi_handle * const * const sfan_parent = (acpi_handle * const * )(& ec_handle);
static char *sfan_paths[2U] = { (char *)"SFAN", (char *)"JFNS"};
static void fan_quirk1_setup(void)
{
  {
  if ((unsigned int )fan_control_initial_status == 7U) {
    printk("\rthinkpad_acpi: fan_init: initial fan status is unknown, assuming it is in auto mode\n");
    tp_features.fan_ctrl_status_undef = 1U;
  } else {
  }
  return;
}
}
static void fan_quirk1_handle(u8 *fan_status )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U,
                         0L);
  if (tmp != 0L) {
    if ((int )*fan_status != (int )fan_control_initial_status) {
      tp_features.fan_ctrl_status_undef = 0U;
    } else {
      *fan_status = 128U;
    }
  } else {
  }
  return;
}
}
static bool fan_select_fan1(void)
{
  u8 val ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    tmp = ec_read(49, & val);
    if (tmp < 0) {
      return (0);
    } else {
    }
    val = (unsigned int )val & 254U;
    tmp___0 = ec_write(49, (int )val);
    if (tmp___0 < 0) {
      return (0);
    } else {
    }
  } else {
  }
  return (1);
}
}
static bool fan_select_fan2(void)
{
  u8 val ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) == 0U) {
    return (0);
  } else {
  }
  tmp = ec_read(49, & val);
  if (tmp < 0) {
    return (0);
  } else {
  }
  val = (u8 )((unsigned int )val | 1U);
  tmp___0 = ec_write(49, (int )val);
  if (tmp___0 < 0) {
    return (0);
  } else {
  }
  return (1);
}
}
static void fan_update_desired_level(u8 status )
{
  {
  if (((int )status & 192) == 0) {
    if ((unsigned int )status > 7U) {
      fan_control_desired_level = 7U;
    } else {
      fan_control_desired_level = status;
    }
  } else {
  }
  return;
}
}
static int fan_get_status(u8 *status )
{
  u8 s ;
  int res ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  switch ((unsigned int )fan_status_access_mode) {
  case 1U:
  tmp = acpi_evalf(gfan_handle, & res, (char *)0, (char *)"d");
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    return (-5);
  } else {
  }
  tmp___1 = ldv__builtin_expect((unsigned long )status != (unsigned long )((u8 *)0U),
                             1L);
  if (tmp___1 != 0L) {
    *status = (unsigned int )((u8 )res) & 7U;
  } else {
  }
  goto ldv_36384;
  case 2U:
  tmp___2 = acpi_ec_read(47, & s);
  tmp___3 = ldv__builtin_expect(tmp___2 == 0, 0L);
  if (tmp___3 != 0L) {
    return (-5);
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned long )status != (unsigned long )((u8 *)0U),
                             1L);
  if (tmp___4 != 0L) {
    *status = s;
    fan_quirk1_handle(status);
  } else {
  }
  goto ldv_36384;
  default: ;
  return (-6);
  }
  ldv_36384: ;
  return (0);
}
}
static int fan_get_status_safe(u8 *status )
{
  int rc ;
  u8 s ;
  int tmp ;
  {
  tmp = ldv_mutex_lock_killable_68(& fan_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  rc = fan_get_status(& s);
  if (rc == 0) {
    fan_update_desired_level((int )s);
  } else {
  }
  ldv_mutex_unlock_69(& fan_mutex);
  if ((unsigned long )status != (unsigned long )((u8 *)0U)) {
    *status = s;
  } else {
  }
  return (rc);
}
}
static int fan_get_speed(unsigned int *speed )
{
  u8 hi ;
  u8 lo ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  switch ((unsigned int )fan_status_access_mode) {
  case 2U:
  tmp = fan_select_fan1();
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    return (-5);
  } else {
  }
  tmp___2 = acpi_ec_read(132, & lo);
  if (tmp___2 == 0) {
    tmp___4 = 1;
  } else {
    tmp___3 = acpi_ec_read(133, & hi);
    if (tmp___3 == 0) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  }
  tmp___5 = ldv__builtin_expect((long )tmp___4, 0L);
  if (tmp___5 != 0L) {
    return (-5);
  } else {
  }
  tmp___6 = ldv__builtin_expect((unsigned long )speed != (unsigned long )((unsigned int *)0U),
                             1L);
  if (tmp___6 != 0L) {
    *speed = (unsigned int )(((int )hi << 8) | (int )lo);
  } else {
  }
  goto ldv_36398;
  default: ;
  return (-6);
  }
  ldv_36398: ;
  return (0);
}
}
static int fan2_get_speed(unsigned int *speed )
{
  u8 hi ;
  u8 lo ;
  bool rc ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  switch ((unsigned int )fan_status_access_mode) {
  case 2U:
  tmp = fan_select_fan2();
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    return (-5);
  } else {
  }
  tmp___2 = acpi_ec_read(132, & lo);
  if (tmp___2 == 0) {
    tmp___4 = 1;
  } else {
    tmp___3 = acpi_ec_read(133, & hi);
    if (tmp___3 == 0) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  }
  rc = (bool )tmp___4;
  fan_select_fan1();
  if ((int )rc) {
    return (-5);
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned long )speed != (unsigned long )((unsigned int *)0U),
                             1L);
  if (tmp___5 != 0L) {
    *speed = (unsigned int )(((int )hi << 8) | (int )lo);
  } else {
  }
  goto ldv_36407;
  default: ;
  return (-6);
  }
  ldv_36407: ;
  return (0);
}
}
static int fan_set_level(int level )
{
  int tmp ;
  int tmp___0 ;
  {
  if (! fan_control_allowed) {
    return (-1);
  } else {
  }
  switch ((unsigned int )fan_control_access_mode) {
  case 1U: ;
  if (level >= 0 && level <= 7) {
    tmp = acpi_evalf(sfan_handle, (int *)0, (char *)0, (char *)"vd", level);
    if (tmp == 0) {
      return (-5);
    } else {
    }
  } else {
    return (-22);
  }
  goto ldv_36413;
  case 3U: ;
  case 2U: ;
  if (((level & 128) == 0 && (level & 64) == 0) && (level < 0 || level > 7)) {
    return (-22);
  } else {
  }
  if ((level & 64) != 0) {
    level = level | 7;
  } else
  if ((level & 128) != 0) {
    level = level | 4;
  } else {
  }
  tmp___0 = acpi_ec_write(47, (int )((u8 )level));
  if (tmp___0 == 0) {
    return (-5);
  } else {
    tp_features.fan_ctrl_status_undef = 0U;
  }
  goto ldv_36413;
  default: ;
  return (-6);
  }
  ldv_36413: ;
  if ((dbg_level & 16U) != 0U) {
    printk("\017thinkpad_acpi: %s: fan control: set fan control register to 0x%02x\n",
           "fan_set_level", level);
  } else {
  }
  return (0);
}
}
static int fan_set_level_safe(int level )
{
  int rc ;
  int tmp ;
  {
  if (! fan_control_allowed) {
    return (-1);
  } else {
  }
  tmp = ldv_mutex_lock_killable_70(& fan_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  if (level == 256) {
    level = (int )fan_control_desired_level;
  } else {
  }
  rc = fan_set_level(level);
  if (rc == 0) {
    fan_update_desired_level((int )((u8 )level));
  } else {
  }
  ldv_mutex_unlock_71(& fan_mutex);
  return (rc);
}
}
static int fan_set_enable(void)
{
  u8 s ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (! fan_control_allowed) {
    return (-1);
  } else {
  }
  tmp = ldv_mutex_lock_killable_72(& fan_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  switch ((unsigned int )fan_control_access_mode) {
  case 3U: ;
  case 2U:
  rc = fan_get_status(& s);
  if (rc < 0) {
    goto ldv_36429;
  } else {
  }
  if ((unsigned int )s != 7U) {
    s = (unsigned int )s & 7U;
    s = (u8 )((unsigned int )s | 132U);
  } else {
  }
  tmp___0 = acpi_ec_write(47, (int )s);
  if (tmp___0 == 0) {
    rc = -5;
  } else {
    tp_features.fan_ctrl_status_undef = 0U;
    rc = 0;
  }
  goto ldv_36429;
  case 1U:
  rc = fan_get_status(& s);
  if (rc < 0) {
    goto ldv_36429;
  } else {
  }
  s = (unsigned int )s & 7U;
  s = (u8 )((unsigned int )s | 4U);
  tmp___1 = acpi_evalf(sfan_handle, (int *)0, (char *)0, (char *)"vd", (int )s);
  if (tmp___1 == 0) {
    rc = -5;
  } else {
    rc = 0;
  }
  goto ldv_36429;
  default:
  rc = -6;
  }
  ldv_36429:
  ldv_mutex_unlock_73(& fan_mutex);
  if (rc == 0) {
    if ((dbg_level & 16U) != 0U) {
      printk("\017thinkpad_acpi: %s: fan control: set fan control register to 0x%02x\n",
             "fan_set_enable", (int )s);
    } else {
    }
  } else {
  }
  return (rc);
}
}
static int fan_set_disable(void)
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if (! fan_control_allowed) {
    return (-1);
  } else {
  }
  tmp = ldv_mutex_lock_killable_74(& fan_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  rc = 0;
  switch ((unsigned int )fan_control_access_mode) {
  case 3U: ;
  case 2U:
  tmp___0 = acpi_ec_write(47, 0);
  if (tmp___0 == 0) {
    rc = -5;
  } else {
    fan_control_desired_level = 0U;
    tp_features.fan_ctrl_status_undef = 0U;
  }
  goto ldv_36439;
  case 1U:
  tmp___1 = acpi_evalf(sfan_handle, (int *)0, (char *)0, (char *)"vd", 0);
  if (tmp___1 == 0) {
    rc = -5;
  } else {
    fan_control_desired_level = 0U;
  }
  goto ldv_36439;
  default:
  rc = -6;
  }
  ldv_36439: ;
  if (rc == 0) {
    if ((dbg_level & 16U) != 0U) {
      printk("\017thinkpad_acpi: %s: fan control: set fan control register to 0\n",
             "fan_set_disable");
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_75(& fan_mutex);
  return (rc);
}
}
static int fan_set_speed(int speed )
{
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  if (! fan_control_allowed) {
    return (-1);
  } else {
  }
  tmp = ldv_mutex_lock_killable_76(& fan_mutex);
  if (tmp != 0) {
    return (-512);
  } else {
  }
  rc = 0;
  switch ((unsigned int )fan_control_access_mode) {
  case 3U: ;
  if (speed >= 0 && speed <= 65535) {
    tmp___0 = acpi_evalf(fans_handle, (int *)0, (char *)0, (char *)"vddd", speed,
                         speed, speed);
    if (tmp___0 == 0) {
      rc = -5;
    } else {
    }
  } else {
    rc = -22;
  }
  goto ldv_36448;
  default:
  rc = -6;
  }
  ldv_36448:
  ldv_mutex_unlock_77(& fan_mutex);
  return (rc);
}
}
static void fan_watchdog_reset(void)
{
  unsigned long tmp ;
  {
  if ((unsigned int )fan_control_access_mode == 0U) {
    return;
  } else {
  }
  if (fan_watchdog_maxinterval > 0 && (unsigned int )tpacpi_lifecycle != 2U) {
    tmp = msecs_to_jiffies((unsigned int const )(fan_watchdog_maxinterval * 1000));
    mod_delayed_work(tpacpi_wq, & fan_watchdog_task, tmp);
  } else {
    ldv_cancel_delayed_work_78(& fan_watchdog_task);
  }
  return;
}
}
static void fan_watchdog_fire(struct work_struct *ignored )
{
  int rc ;
  {
  if ((unsigned int )tpacpi_lifecycle != 1U) {
    return;
  } else {
  }
  printk("\rthinkpad_acpi: fan watchdog: enabling fan\n");
  rc = fan_set_enable();
  if (rc < 0) {
    printk("\vthinkpad_acpi: fan watchdog: error %d while enabling fan, will try again later...\n",
           - rc);
    fan_watchdog_reset();
  } else {
  }
  return;
}
}
static ssize_t fan_pwm1_enable_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  int res ;
  int mode ;
  u8 status ;
  int tmp ;
  {
  res = fan_get_status_safe(& status);
  if (res != 0) {
    return ((ssize_t )res);
  } else {
  }
  if (((int )status & 64) != 0) {
    mode = 0;
  } else
  if ((int )((signed char )status) < 0) {
    mode = 2;
  } else {
    mode = 1;
  }
  tmp = snprintf(buf, 4096UL, "%d\n", mode);
  return ((ssize_t )tmp);
}
}
static ssize_t fan_pwm1_enable_store(struct device *dev , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  unsigned long t ;
  int res ;
  int level ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  {
  tmp = parse_strtoul(buf, 2UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___2 != 0L) {
    tmp___0 = get_current();
    tmp___1 = task_tgid_vnr(tmp___0);
    printk("\017thinkpad_acpi: %s: PID %d: set fan mode to %lu\n", (char *)"hwmon pwm1_enable",
           tmp___1, t);
  } else {
  }
  switch (t) {
  case 0UL:
  level = 64;
  goto ldv_36475;
  case 1UL:
  level = 256;
  goto ldv_36475;
  case 2UL:
  level = 128;
  goto ldv_36475;
  case 3UL: ;
  return (-38L);
  default: ;
  return (-22L);
  }
  ldv_36475:
  res = fan_set_level_safe(level);
  if (res == -6) {
    return (-22L);
  } else
  if (res < 0) {
    return ((ssize_t )res);
  } else {
  }
  fan_watchdog_reset();
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_pwm1_enable = {{"pwm1_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & fan_pwm1_enable_show, & fan_pwm1_enable_store};
static ssize_t fan_pwm1_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  int res ;
  u8 status ;
  int tmp ;
  {
  res = fan_get_status_safe(& status);
  if (res != 0) {
    return ((ssize_t )res);
  } else {
  }
  if (((int )status & 192) != 0) {
    status = fan_control_desired_level;
  } else {
  }
  if ((unsigned int )status > 7U) {
    status = 7U;
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%u\n", ((int )status * 255) / 7);
  return ((ssize_t )tmp);
}
}
static ssize_t fan_pwm1_store(struct device *dev , struct device_attribute *attr ,
                              char const *buf , size_t count )
{
  unsigned long s ;
  int rc ;
  u8 status ;
  u8 newlevel ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  tmp = parse_strtoul(buf, 255UL, & s);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___2 != 0L) {
    tmp___0 = get_current();
    tmp___1 = task_tgid_vnr(tmp___0);
    printk("\017thinkpad_acpi: %s: PID %d: set fan speed to %lu\n", (char *)"hwmon pwm1",
           tmp___1, s);
  } else {
  }
  newlevel = (unsigned int )((u8 )(s >> 5)) & 7U;
  tmp___3 = ldv_mutex_lock_killable_79(& fan_mutex);
  if (tmp___3 != 0) {
    return (-512L);
  } else {
  }
  rc = fan_get_status(& status);
  if (rc == 0 && ((int )status & 192) == 0) {
    rc = fan_set_level((int )newlevel);
    if (rc == -6) {
      rc = -22;
    } else
    if (rc == 0) {
      fan_update_desired_level((int )newlevel);
      fan_watchdog_reset();
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_80(& fan_mutex);
  return ((ssize_t )(rc != 0 ? (size_t )rc : count));
}
}
static struct device_attribute dev_attr_pwm1 = {{"pwm1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & fan_pwm1_show,
    & fan_pwm1_store};
static ssize_t fan_fan1_input_show(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  int res ;
  unsigned int speed ;
  int tmp ;
  {
  res = fan_get_speed(& speed);
  if (res < 0) {
    return ((ssize_t )res);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%u\n", speed);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_fan1_input = {{"fan1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & fan_fan1_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0};
static ssize_t fan_fan2_input_show(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  int res ;
  unsigned int speed ;
  int tmp ;
  {
  res = fan2_get_speed(& speed);
  if (res < 0) {
    return ((ssize_t )res);
  } else {
  }
  tmp = snprintf(buf, 4096UL, "%u\n", speed);
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_fan2_input = {{"fan2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & fan_fan2_input_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0};
static ssize_t fan_fan_watchdog_show(struct device_driver *drv , char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%u\n", fan_watchdog_maxinterval);
  return ((ssize_t )tmp);
}
}
static ssize_t fan_fan_watchdog_store(struct device_driver *drv , char const *buf ,
                                      size_t count )
{
  unsigned long t ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  {
  tmp = parse_strtoul(buf, 120UL, & t);
  if (tmp != 0) {
    return (-22L);
  } else {
  }
  if (! fan_control_allowed) {
    return (-1L);
  } else {
  }
  fan_watchdog_maxinterval = (int )t;
  fan_watchdog_reset();
  tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                             0L);
  if (tmp___2 != 0L) {
    tmp___0 = get_current();
    tmp___1 = task_tgid_vnr(tmp___0);
    printk("\017thinkpad_acpi: %s: PID %d: set to %lu\n", (char *)"fan_watchdog",
           tmp___1, t);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_fan_watchdog = {{"fan_watchdog", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & fan_fan_watchdog_show, & fan_fan_watchdog_store};
static struct attribute *fan_attributes[5U] = { & dev_attr_pwm1_enable.attr, & dev_attr_pwm1.attr, & dev_attr_fan1_input.attr, (struct attribute *)0,
        (struct attribute *)0};
static struct attribute_group const fan_attr_group = {0, 0, (struct attribute **)(& fan_attributes), 0};
static struct tpacpi_quirk const fan_quirk_table[5U] = { {4116U, 65535U, 22833U, 1UL},
        {4116U, 65535U, 14391U, 1UL},
        {4116U, 65535U, 13879U, 1UL},
        {4116U, 65535U, 12343U, 1UL},
        {6058U, 65535U, 19767U, 2UL}};
static int fan_init(struct ibm_init_struct *iibm )
{
  int rc ;
  unsigned long quirks ;
  struct lock_class_key __key ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  char const *tmp___2 ;
  {
  if ((dbg_level & 17U) != 0U) {
    printk("\017thinkpad_acpi: %s: initializing fan subdriver\n", "fan_init");
  } else {
  }
  __mutex_init(& fan_mutex, "&fan_mutex", & __key);
  fan_status_access_mode = 0;
  fan_control_access_mode = 0;
  fan_control_commands = 0;
  fan_watchdog_maxinterval = 0;
  tp_features.fan_ctrl_status_undef = 0U;
  tp_features.second_fan = 0U;
  fan_control_desired_level = 7U;
  tmp = tpacpi_is_ibm();
  if ((int )tmp) {
    drv_acpi_handle_init("fans", & fans_handle, *fans_parent, (char **)(& fans_paths),
                         1);
    drv_acpi_handle_init("gfan", & gfan_handle, *gfan_parent, (char **)(& gfan_paths),
                         2);
    drv_acpi_handle_init("sfan", & sfan_handle, *sfan_parent, (char **)(& sfan_paths),
                         2);
  } else {
  }
  quirks = tpacpi_check_quirks((struct tpacpi_quirk const *)(& fan_quirk_table),
                               5U);
  if ((unsigned long )gfan_handle != (unsigned long )((acpi_handle )0)) {
    fan_status_access_mode = 1;
  } else {
    tmp___0 = acpi_ec_read(47, & fan_control_initial_status);
    tmp___1 = ldv__builtin_expect(tmp___0 != 0, 1L);
    if (tmp___1 != 0L) {
      fan_status_access_mode = 2;
      if ((int )quirks & 1) {
        fan_quirk1_setup();
      } else {
      }
      if ((quirks & 2UL) != 0UL) {
        tp_features.second_fan = 1U;
        if ((dbg_level & 17U) != 0U) {
          printk("\017thinkpad_acpi: %s: secondary fan support enabled\n", "fan_init");
        } else {
        }
      } else {
      }
    } else {
      printk("\vthinkpad_acpi: ThinkPad ACPI EC access misbehaving, fan status and control unavailable\n");
      return (1);
    }
  }
  if ((unsigned long )sfan_handle != (unsigned long )((acpi_handle )0)) {
    fan_control_access_mode = 1;
    fan_control_commands = (enum fan_control_commands )((unsigned int )fan_control_commands | 6U);
  } else
  if ((unsigned long )gfan_handle == (unsigned long )((acpi_handle )0)) {
    if ((unsigned long )fans_handle != (unsigned long )((acpi_handle )0)) {
      fan_control_access_mode = 3;
      fan_control_commands = (enum fan_control_commands )((unsigned int )fan_control_commands | 7U);
    } else {
      fan_control_access_mode = 2;
      fan_control_commands = (enum fan_control_commands )((unsigned int )fan_control_commands | 6U);
    }
  } else {
  }
  if ((dbg_level & 17U) != 0U) {
    tmp___2 = str_supported((unsigned int )fan_status_access_mode != 0U || (unsigned int )fan_control_access_mode != 0U);
    printk("\017thinkpad_acpi: %s: fan is %s, modes %d, %d\n", "fan_init", tmp___2,
           (unsigned int )fan_status_access_mode, (unsigned int )fan_control_access_mode);
  } else {
  }
  if (! fan_control_allowed) {
    fan_control_access_mode = 0;
    fan_control_commands = 0;
    if ((dbg_level & 17U) != 0U) {
      printk("\017thinkpad_acpi: %s: fan control features disabled by parameter\n",
             "fan_init");
    } else {
    }
  } else {
  }
  if ((unsigned int )fan_status_access_mode != 0U) {
    fan_get_status_safe((u8 *)0U);
  } else {
  }
  if ((unsigned int )fan_status_access_mode != 0U || (unsigned int )fan_control_access_mode != 0U) {
    if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
      fan_attributes[3UL] = & dev_attr_fan2_input.attr;
    } else {
    }
    rc = sysfs_create_group(& tpacpi_sensors_pdev->dev.kobj, & fan_attr_group);
    if (rc < 0) {
      return (rc);
    } else {
    }
    rc = driver_create_file(& tpacpi_hwmon_pdriver.driver, (struct driver_attribute const *)(& driver_attr_fan_watchdog));
    if (rc < 0) {
      sysfs_remove_group(& tpacpi_sensors_pdev->dev.kobj, & fan_attr_group);
      return (rc);
    } else {
    }
    return (0);
  } else {
    return (1);
  }
}
}
static void fan_exit(void)
{
  {
  if ((dbg_level & 18U) != 0U) {
    printk("\017thinkpad_acpi: %s: cancelling any pending fan watchdog tasks\n", "fan_exit");
  } else {
  }
  sysfs_remove_group(& tpacpi_sensors_pdev->dev.kobj, & fan_attr_group);
  driver_remove_file(& tpacpi_hwmon_pdriver.driver, (struct driver_attribute const *)(& driver_attr_fan_watchdog));
  ldv_cancel_delayed_work_81(& fan_watchdog_task);
  ldv_flush_workqueue_82(tpacpi_wq);
  return;
}
}
static void fan_suspend(void)
{
  int rc ;
  {
  if (! fan_control_allowed) {
    return;
  } else {
  }
  fan_control_resume_level = 0U;
  rc = fan_get_status_safe(& fan_control_resume_level);
  if (rc < 0) {
    printk("\rthinkpad_acpi: failed to read fan level for later restore during resume: %d\n",
           rc);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
    fan_control_resume_level = 0U;
  } else {
  }
  return;
}
}
static void fan_resume(void)
{
  u8 current_level ;
  bool do_set ;
  int rc ;
  int tmp ;
  {
  current_level = 7U;
  do_set = 0;
  tp_features.fan_ctrl_status_undef = 0U;
  if (! fan_control_allowed || (unsigned int )fan_control_resume_level == 0U) {
    return;
  } else {
    tmp = fan_get_status_safe(& current_level);
    if (tmp < 0) {
      return;
    } else {
    }
  }
  switch ((unsigned int )fan_control_access_mode) {
  case 1U:
  do_set = (int )fan_control_resume_level > (int )current_level;
  goto ldv_36621;
  case 3U: ;
  case 2U: ;
  if ((unsigned int )fan_control_resume_level != 7U && ((int )fan_control_resume_level & 64) == 0) {
    return;
  } else {
    do_set = (bool )(((int )current_level & 64) == 0 && (int )current_level != (int )fan_control_resume_level);
  }
  goto ldv_36621;
  default: ;
  return;
  }
  ldv_36621: ;
  if ((int )do_set) {
    printk("\rthinkpad_acpi: restoring fan level to 0x%02x\n", (int )fan_control_resume_level);
    rc = fan_set_level_safe((int )fan_control_resume_level);
    if (rc < 0) {
      printk("\rthinkpad_acpi: failed to restore fan level: %d\n", rc);
    } else {
    }
  } else {
  }
  return;
}
}
static int fan_read(struct seq_file *m )
{
  int rc ;
  u8 status ;
  unsigned int speed ;
  {
  speed = 0U;
  switch ((unsigned int )fan_status_access_mode) {
  case 1U:
  rc = fan_get_status_safe(& status);
  if (rc < 0) {
    return (rc);
  } else {
  }
  seq_printf(m, "status:\t\t%s\nlevel:\t\t%d\n", (unsigned int )status != 0U ? (char *)"enabled" : (char *)"disabled",
             (int )status);
  goto ldv_36632;
  case 2U:
  rc = fan_get_status_safe(& status);
  if (rc < 0) {
    return (rc);
  } else {
  }
  seq_printf(m, "status:\t\t%s\n", (unsigned int )status != 0U ? (char *)"enabled" : (char *)"disabled");
  rc = fan_get_speed(& speed);
  if (rc < 0) {
    return (rc);
  } else {
  }
  seq_printf(m, "speed:\t\t%d\n", speed);
  if (((int )status & 64) != 0) {
    seq_printf(m, "level:\t\tdisengaged\n");
  } else
  if ((int )((signed char )status) < 0) {
    seq_printf(m, "level:\t\tauto\n");
  } else {
    seq_printf(m, "level:\t\t%d\n", (int )status);
  }
  goto ldv_36632;
  case 0U: ;
  default:
  seq_printf(m, "status:\t\tnot supported\n");
  }
  ldv_36632: ;
  if (((unsigned int )fan_control_commands & 2U) != 0U) {
    seq_printf(m, "commands:\tlevel <level>");
    switch ((unsigned int )fan_control_access_mode) {
    case 1U:
    seq_printf(m, " (<level> is 0-7)\n");
    goto ldv_36637;
    default:
    seq_printf(m, " (<level> is 0-7, auto, disengaged, full-speed)\n");
    goto ldv_36637;
    }
    ldv_36637: ;
  } else {
  }
  if (((unsigned int )fan_control_commands & 4U) != 0U) {
    seq_printf(m, "commands:\tenable, disable\ncommands:\twatchdog <timeout> (<timeout> is 0 (off), 1-120 (seconds))\n");
  } else {
  }
  if ((int )fan_control_commands & 1) {
    seq_printf(m, "commands:\tspeed <speed> (<speed> is 0-65535)\n");
  } else {
  }
  return (0);
}
}
static int fan_write_cmd_level(char const *cmd , int *rc )
{
  int level ;
  int tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  size_t tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  struct task_struct *tmp___7 ;
  pid_t tmp___8 ;
  long tmp___9 ;
  {
  tmp___5 = strlen("level auto");
  tmp___6 = strncmp(cmd, "level auto", tmp___5);
  if (tmp___6 == 0) {
    level = 128;
  } else {
    tmp___0 = strlen("level disengaged");
    tmp___1 = strncmp(cmd, "level disengaged", tmp___0);
    if (tmp___1 == 0) {
      tmp___4 = 1;
    } else {
      tmp___2 = strlen("level full-speed");
      tmp___3 = strncmp(cmd, "level full-speed", tmp___2);
      if (tmp___3 == 0) {
        tmp___4 = 1;
      } else {
        tmp___4 = 0;
      }
    }
    if (tmp___4) {
      level = 64;
    } else {
      tmp = sscanf(cmd, "level %d", & level);
      if (tmp != 1) {
        return (0);
      } else {
      }
    }
  }
  *rc = fan_set_level_safe(level);
  if (*rc == -6) {
    printk("\vthinkpad_acpi: level command accepted for unsupported access mode %d\n",
           (unsigned int )fan_control_access_mode);
  } else
  if (*rc == 0) {
    tmp___9 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___9 != 0L) {
      tmp___7 = get_current();
      tmp___8 = task_tgid_vnr(tmp___7);
      printk("\017thinkpad_acpi: %s: PID %d: set level to %d\n", (char *)"procfs fan",
             tmp___8, level);
    } else {
    }
  } else {
  }
  return (1);
}
}
static int fan_write_cmd_enable(char const *cmd , int *rc )
{
  size_t tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  pid_t tmp___2 ;
  long tmp___3 ;
  {
  tmp = strlen("enable");
  tmp___0 = strncmp(cmd, "enable", tmp);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  *rc = fan_set_enable();
  if (*rc == -6) {
    printk("\vthinkpad_acpi: enable command accepted for unsupported access mode %d\n",
           (unsigned int )fan_control_access_mode);
  } else
  if (*rc == 0) {
    tmp___3 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      tmp___2 = task_tgid_vnr(tmp___1);
      printk("\017thinkpad_acpi: %s: PID %d: enable\n", (char *)"procfs fan", tmp___2);
    } else {
    }
  } else {
  }
  return (1);
}
}
static int fan_write_cmd_disable(char const *cmd , int *rc )
{
  size_t tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  pid_t tmp___2 ;
  long tmp___3 ;
  {
  tmp = strlen("disable");
  tmp___0 = strncmp(cmd, "disable", tmp);
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  *rc = fan_set_disable();
  if (*rc == -6) {
    printk("\vthinkpad_acpi: disable command accepted for unsupported access mode %d\n",
           (unsigned int )fan_control_access_mode);
  } else
  if (*rc == 0) {
    tmp___3 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___3 != 0L) {
      tmp___1 = get_current();
      tmp___2 = task_tgid_vnr(tmp___1);
      printk("\017thinkpad_acpi: %s: PID %d: disable\n", (char *)"procfs fan", tmp___2);
    } else {
    }
  } else {
  }
  return (1);
}
}
static int fan_write_cmd_speed(char const *cmd , int *rc )
{
  int speed ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  {
  tmp = sscanf(cmd, "speed %d", & speed);
  if (tmp != 1) {
    return (0);
  } else {
  }
  *rc = fan_set_speed(speed);
  if (*rc == -6) {
    printk("\vthinkpad_acpi: speed command accepted for unsupported access mode %d\n",
           (unsigned int )fan_control_access_mode);
  } else
  if (*rc == 0) {
    tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___2 != 0L) {
      tmp___0 = get_current();
      tmp___1 = task_tgid_vnr(tmp___0);
      printk("\017thinkpad_acpi: %s: PID %d: set speed to %d\n", (char *)"procfs fan",
             tmp___1, speed);
    } else {
    }
  } else {
  }
  return (1);
}
}
static int fan_write_cmd_watchdog(char const *cmd , int *rc )
{
  int interval ;
  int tmp ;
  struct task_struct *tmp___0 ;
  pid_t tmp___1 ;
  long tmp___2 ;
  {
  tmp = sscanf(cmd, "watchdog %d", & interval);
  if (tmp != 1) {
    return (0);
  } else {
  }
  if (interval < 0 || interval > 120) {
    *rc = -22;
  } else {
    fan_watchdog_maxinterval = interval;
    tmp___2 = ldv__builtin_expect((long )((dbg_level & 32768U) != 0U && (unsigned int )tpacpi_lifecycle == 1U),
                               0L);
    if (tmp___2 != 0L) {
      tmp___0 = get_current();
      tmp___1 = task_tgid_vnr(tmp___0);
      printk("\017thinkpad_acpi: %s: PID %d: set watchdog timer to %d\n", (char *)"procfs fan",
             tmp___1, interval);
    } else {
    }
  }
  return (1);
}
}
static int fan_write(char *buf )
{
  char *cmd ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  rc = 0;
  goto ldv_36668;
  ldv_36667: ;
  if (((unsigned int )fan_control_commands & 2U) == 0U) {
    goto _L___2;
  } else {
    tmp = fan_write_cmd_level((char const *)cmd, & rc);
    if (tmp == 0) {
      _L___2:
      if (((unsigned int )fan_control_commands & 4U) == 0U) {
        goto _L___1;
      } else {
        tmp___0 = fan_write_cmd_enable((char const *)cmd, & rc);
        if (tmp___0 == 0) {
          tmp___1 = fan_write_cmd_disable((char const *)cmd, & rc);
          if (tmp___1 == 0) {
            tmp___2 = fan_write_cmd_watchdog((char const *)cmd, & rc);
            if (tmp___2 == 0) {
              _L___1:
              if (((unsigned int )fan_control_commands & 1U) == 0U) {
                rc = -22;
              } else {
                tmp___3 = fan_write_cmd_speed((char const *)cmd, & rc);
                if (tmp___3 == 0) {
                  rc = -22;
                } else {
                  goto _L___0;
                }
              }
            } else {
              goto _L___0;
            }
          } else {
            goto _L___0;
          }
        } else {
          goto _L___0;
        }
      }
    } else
    _L___0:
    if (rc == 0) {
      fan_watchdog_reset();
    } else {
    }
  }
  ldv_36668: ;
  if (rc == 0) {
    cmd = next_cmd(& buf);
    if ((unsigned long )cmd != (unsigned long )((char *)0)) {
      goto ldv_36667;
    } else {
      goto ldv_36669;
    }
  } else {
  }
  ldv_36669: ;
  return (rc);
}
}
static struct ibm_struct fan_driver_data =
     {(char *)"fan", & fan_read, & fan_write, & fan_exit, & fan_resume, & fan_suspend,
    0, {0, 0}, 0, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                   (unsigned char)0}};
static struct tp_led_table led_tables[2U] = { {(char *)"SSMS", 1, 0, 0},
        {(char *)"MMTS", 2, 0, 0}};
static int mute_led_on_off(struct tp_led_table *t , bool state )
{
  acpi_handle temp ;
  int output ;
  acpi_status tmp ;
  int tmp___0 ;
  {
  tmp = acpi_get_handle(hkey_handle, t->name, & temp);
  if (tmp != 0U) {
    printk("\fthinkpad_acpi: Thinkpad ACPI has no %s interface.\n", t->name);
    return (-5);
  } else {
  }
  tmp___0 = acpi_evalf(hkey_handle, & output, t->name, (char *)"dd", (int )state ? t->on_value : t->off_value);
  if (tmp___0 == 0) {
    return (-5);
  } else {
  }
  t->state = (int )state;
  return ((int )state);
}
}
int tpacpi_led_set(int whichled , bool on )
{
  struct tp_led_table *t ;
  int tmp ;
  {
  if (whichled < 0 || whichled > 1) {
    return (-22);
  } else {
  }
  t = (struct tp_led_table *)(& led_tables) + (unsigned long )whichled;
  if (t->state < 0 || t->state == (int )on) {
    return (t->state);
  } else {
  }
  tmp = mute_led_on_off(t, (int )on);
  return (tmp);
}
}
static char const __kstrtab_tpacpi_led_set[15U] =
  { 't', 'p', 'a', 'c',
        'p', 'i', '_', 'l',
        'e', 'd', '_', 's',
        'e', 't', '\000'};
struct kernel_symbol const __ksymtab_tpacpi_led_set ;
struct kernel_symbol const __ksymtab_tpacpi_led_set = {(unsigned long )(& tpacpi_led_set), (char const *)(& __kstrtab_tpacpi_led_set)};
static int mute_led_init(struct ibm_init_struct *iibm )
{
  acpi_handle temp ;
  int i ;
  struct tp_led_table *t ;
  acpi_status tmp ;
  {
  i = 0;
  goto ldv_36703;
  ldv_36702:
  t = (struct tp_led_table *)(& led_tables) + (unsigned long )i;
  tmp = acpi_get_handle(hkey_handle, t->name, & temp);
  if (tmp == 0U) {
    mute_led_on_off(t, 0);
  } else {
    t->state = -19;
  }
  i = i + 1;
  ldv_36703: ;
  if (i <= 1) {
    goto ldv_36702;
  } else {
  }
  return (0);
}
}
static void mute_led_exit(void)
{
  int i ;
  {
  i = 0;
  goto ldv_36710;
  ldv_36709:
  tpacpi_led_set(i, 0);
  i = i + 1;
  ldv_36710: ;
  if (i <= 1) {
    goto ldv_36709;
  } else {
  }
  return;
}
}
static void mute_led_resume(void)
{
  int i ;
  struct tp_led_table *t ;
  {
  i = 0;
  goto ldv_36718;
  ldv_36717:
  t = (struct tp_led_table *)(& led_tables) + (unsigned long )i;
  if (t->state >= 0) {
    mute_led_on_off(t, t->state != 0);
  } else {
  }
  i = i + 1;
  ldv_36718: ;
  if (i <= 1) {
    goto ldv_36717;
  } else {
  }
  return;
}
}
static struct ibm_struct mute_led_driver_data =
     {(char *)"mute_led", 0, 0, & mute_led_exit, & mute_led_resume, 0, 0, {0, 0}, 0,
    {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0}};
static void tpacpi_driver_event(unsigned int const hkey_event )
{
  {
  if ((unsigned long )ibm_backlight_device != (unsigned long )((struct backlight_device *)0)) {
    switch (hkey_event) {
    case 4112U: ;
    case 4113U:
    tpacpi_brightness_notify_change();
    }
  } else {
  }
  if ((unsigned long )alsa_card != (unsigned long )((struct snd_card *)0)) {
    switch (hkey_event) {
    case 4117U: ;
    case 4118U: ;
    case 4119U:
    volume_alsa_notify_change();
    }
  } else {
  }
  return;
}
}
static void hotkey_driver_event(unsigned int const scancode )
{
  {
  tpacpi_driver_event((unsigned int )scancode + 4097U);
  return;
}
}
static ssize_t thinkpad_acpi_pdev_name_show(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  int tmp ;
  {
  tmp = snprintf(buf, 4096UL, "%s\n", (char *)"thinkpad");
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_name = {{"name", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & thinkpad_acpi_pdev_name_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct proc_dir_entry *proc_dir ;
static bool force_load ;
static char const *str_supported(int is_supported )
{
  char text_unsupported[14U] ;
  {
  text_unsupported[0] = 'n';
  text_unsupported[1] = 'o';
  text_unsupported[2] = 't';
  text_unsupported[3] = ' ';
  text_unsupported[4] = 's';
  text_unsupported[5] = 'u';
  text_unsupported[6] = 'p';
  text_unsupported[7] = 'p';
  text_unsupported[8] = 'o';
  text_unsupported[9] = 'r';
  text_unsupported[10] = 't';
  text_unsupported[11] = 'e';
  text_unsupported[12] = 'd';
  text_unsupported[13] = '\000';
  return (is_supported != 0 ? (char const *)(& text_unsupported) + 4U : (char const *)(& text_unsupported));
}
}
static void ibm_exit(struct ibm_struct *ibm )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((dbg_level & 2U) != 0U) {
    printk("\017thinkpad_acpi: %s: removing %s\n", "ibm_exit", ibm->name);
  } else {
  }
  list_del_init(& ibm->all_drivers);
  if ((unsigned int )*((unsigned char *)ibm + 80UL) != 0U) {
    if ((dbg_level & 2U) != 0U) {
      printk("\017thinkpad_acpi: %s: %s: acpi_remove_notify_handler\n", "ibm_exit",
             ibm->name);
    } else {
    }
    tmp = ldv__builtin_expect((unsigned long )ibm->acpi == (unsigned long )((struct tp_acpi_drv_struct *)0),
                           0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                           "i" (8886), "i" (12UL));
      ldv_36760: ;
      goto ldv_36760;
    } else {
    }
    acpi_remove_notify_handler(*((ibm->acpi)->handle), (ibm->acpi)->type, & dispatch_acpi_notify);
    ibm->flags.acpi_notify_installed = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ibm + 80UL) != 0U) {
    if ((dbg_level & 2U) != 0U) {
      printk("\017thinkpad_acpi: %s: %s: remove_proc_entry\n", "ibm_exit", ibm->name);
    } else {
    }
    remove_proc_entry((char const *)ibm->name, proc_dir);
    ibm->flags.proc_created = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ibm + 80UL) != 0U) {
    if ((dbg_level & 2U) != 0U) {
      printk("\017thinkpad_acpi: %s: %s: acpi_bus_unregister_driver\n", "ibm_exit",
             ibm->name);
    } else {
    }
    tmp___0 = ldv__builtin_expect((unsigned long )ibm->acpi == (unsigned long )((struct tp_acpi_drv_struct *)0),
                               0L);
    if (tmp___0 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                           "i" (8903), "i" (12UL));
      ldv_36761: ;
      goto ldv_36761;
    } else {
    }
    acpi_bus_unregister_driver((ibm->acpi)->driver);
    kfree((void const *)(ibm->acpi)->driver);
    (ibm->acpi)->driver = (struct acpi_driver *)0;
    ibm->flags.acpi_driver_registered = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ibm + 80UL) != 0U && (unsigned long )ibm->exit != (unsigned long )((void (*)(void))0)) {
    (*(ibm->exit))();
    ibm->flags.init_called = 0U;
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: finished removing %s\n", "ibm_exit", ibm->name);
  } else {
  }
  return;
}
}
static int ibm_init(struct ibm_init_struct *iibm )
{
  int ret ;
  struct ibm_struct *ibm ;
  struct proc_dir_entry *entry ;
  long tmp ;
  umode_t mode ;
  {
  ibm = iibm->data;
  tmp = ldv__builtin_expect((unsigned long )ibm == (unsigned long )((struct ibm_struct *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (8924), "i" (12UL));
    ldv_36768: ;
    goto ldv_36768;
  } else {
  }
  INIT_LIST_HEAD(& ibm->all_drivers);
  if ((unsigned int )*((unsigned char *)ibm + 80UL) != 0U && experimental == 0) {
    return (0);
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: probing for %s\n", "ibm_init", ibm->name);
  } else {
  }
  if ((unsigned long )iibm->init != (unsigned long )((int (*)(struct ibm_init_struct * ))0)) {
    ret = (*(iibm->init))(iibm);
    if (ret > 0) {
      return (0);
    } else {
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
    ibm->flags.init_called = 1U;
  } else {
  }
  if ((unsigned long )ibm->acpi != (unsigned long )((struct tp_acpi_drv_struct *)0)) {
    if ((unsigned long )(ibm->acpi)->hid != (unsigned long )((struct acpi_device_id const *)0)) {
      ret = register_tpacpi_subdriver(ibm);
      if (ret != 0) {
        goto err_out;
      } else {
      }
    } else {
    }
    if ((unsigned long )(ibm->acpi)->notify != (unsigned long )((void (*)(struct ibm_struct * ,
                                                                          u32 ))0)) {
      ret = setup_acpi_notify(ibm);
      if (ret == -19) {
        printk("\rthinkpad_acpi: disabling subdriver %s\n", ibm->name);
        ret = 0;
        goto err_out;
      } else {
      }
      if (ret < 0) {
        goto err_out;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: %s installed\n", "ibm_init", ibm->name);
  } else {
  }
  if ((unsigned long )ibm->read != (unsigned long )((int (*)(struct seq_file * ))0)) {
    mode = iibm->base_procfs_mode;
    if ((unsigned int )mode == 0U) {
      mode = 292U;
    } else {
    }
    if ((unsigned long )ibm->write != (unsigned long )((int (*)(char * ))0)) {
      mode = (umode_t )((unsigned int )mode | 128U);
    } else {
    }
    entry = proc_create_data((char const *)ibm->name, (int )mode, proc_dir, & dispatch_proc_fops,
                             (void *)ibm);
    if ((unsigned long )entry == (unsigned long )((struct proc_dir_entry *)0)) {
      printk("\vthinkpad_acpi: unable to create proc entry %s\n", ibm->name);
      ret = -19;
      goto err_out;
    } else {
    }
    ibm->flags.proc_created = 1U;
  } else {
  }
  list_add_tail(& ibm->all_drivers, & tpacpi_all_drivers);
  return (0);
  err_out: ;
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: %s: at error exit path with result %d\n", "ibm_init",
           ibm->name, ret);
  } else {
  }
  ibm_exit(ibm);
  return (0 < ret ? 0 : ret);
}
}
static bool tpacpi_is_fw_digit(char const c )
{
  {
  return ((bool )(((int )((signed char )c) > 47 && (int )((signed char )c) <= 57) || ((int )((signed char )c) > 64 && (int )((signed char )c) <= 90)));
}
}
static bool tpacpi_is_valid_fw_id(char const * const s , char const t )
{
  size_t tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  size_t tmp___4 ;
  bool tmp___5 ;
  bool tmp___6 ;
  bool tmp___7 ;
  bool tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  {
  if ((unsigned long )s != (unsigned long )((char const * )0)) {
    tmp = strlen(s);
    if (tmp > 7UL) {
      tmp___0 = tpacpi_is_fw_digit((int )*s);
      if ((int )tmp___0) {
        tmp___1 = tpacpi_is_fw_digit((int )*(s + 1UL));
        if ((int )tmp___1) {
          if ((int )((signed char )*(s + 2UL)) == (int )((signed char )t)) {
            if ((int )((signed char )*(s + 3UL)) == 84 || (int )((signed char )*(s + 3UL)) == 78) {
              tmp___2 = tpacpi_is_fw_digit((int )*(s + 4UL));
              if ((int )tmp___2) {
                tmp___3 = tpacpi_is_fw_digit((int )*(s + 5UL));
                if ((int )tmp___3) {
                  return (1);
                } else {
                }
              } else {
              }
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )s != (unsigned long )((char const * )0)) {
    tmp___4 = strlen(s);
    if (tmp___4 > 7UL) {
      tmp___5 = tpacpi_is_fw_digit((int )*s);
      if ((int )tmp___5) {
        tmp___6 = tpacpi_is_fw_digit((int )*(s + 1UL));
        if ((int )tmp___6) {
          tmp___7 = tpacpi_is_fw_digit((int )*(s + 2UL));
          if ((int )tmp___7) {
            if ((int )((signed char )*(s + 3UL)) == (int )((signed char )t)) {
              if ((int )((signed char )*(s + 4UL)) == 84 || (int )((signed char )*(s + 4UL)) == 78) {
                tmp___8 = tpacpi_is_fw_digit((int )*(s + 5UL));
                if ((int )tmp___8) {
                  tmp___9 = tpacpi_is_fw_digit((int )*(s + 6UL));
                  if ((int )tmp___9) {
                    tmp___10 = 1;
                  } else {
                    tmp___10 = 0;
                  }
                } else {
                  tmp___10 = 0;
                }
              } else {
                tmp___10 = 0;
              }
            } else {
              tmp___10 = 0;
            }
          } else {
            tmp___10 = 0;
          }
        } else {
          tmp___10 = 0;
        }
      } else {
        tmp___10 = 0;
      }
    } else {
      tmp___10 = 0;
    }
  } else {
    tmp___10 = 0;
  }
  return ((bool )tmp___10);
}
}
static int get_thinkpad_model_data(struct thinkpad_id_data *tp )
{
  struct dmi_device const *dev ;
  char ec_fw_string[18U] ;
  char const *s ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  __kernel_size_t tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  dev = (struct dmi_device const *)0;
  if ((unsigned long )tp == (unsigned long )((struct thinkpad_id_data *)0)) {
    return (-22);
  } else {
  }
  memset((void *)tp, 0, 48UL);
  tmp___0 = dmi_name_in_vendors("IBM");
  if (tmp___0 != 0) {
    tp->vendor = 4116U;
  } else {
    tmp = dmi_name_in_vendors("LENOVO");
    if (tmp != 0) {
      tp->vendor = 6058U;
    } else {
      return (0);
    }
  }
  s = dmi_get_system_info(2);
  tp->bios_version_str = kstrdup(s, 208U);
  if ((unsigned long )s != (unsigned long )((char const *)0) && (unsigned long )tp->bios_version_str == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = tpacpi_is_valid_fw_id((char const * )tp->bios_version_str,
                                  69);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    tmp___3 = tpacpi_is_valid_fw_id((char const * )tp->bios_version_str,
                                    67);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      return (0);
    } else {
    }
  } else {
  }
  tp->bios_model = (u16 )((int )((short )*(tp->bios_version_str)) | (int )((short )((int )*(tp->bios_version_str + 1UL) << 8)));
  tp->bios_release = (u16 )((int )((short )((int )*(tp->bios_version_str + 4UL) << 8)) | (int )((short )*(tp->bios_version_str + 5UL)));
  goto ldv_36787;
  ldv_36786:
  tmp___7 = sscanf(dev->name, "IBM ThinkPad Embedded Controller -[%17c", (char *)(& ec_fw_string));
  if (tmp___7 == 1) {
    ec_fw_string[17UL] = 0;
    tmp___5 = strcspn((char const *)(& ec_fw_string), " ]");
    ec_fw_string[tmp___5] = 0;
    tp->ec_version_str = kstrdup((char const *)(& ec_fw_string), 208U);
    if ((unsigned long )tp->ec_version_str == (unsigned long )((char *)0)) {
      return (-12);
    } else {
    }
    tmp___6 = tpacpi_is_valid_fw_id((char const * )(& ec_fw_string),
                                    72);
    if ((int )tmp___6) {
      tp->ec_model = (u16 )((int )((short )ec_fw_string[0]) | (int )((short )((int )ec_fw_string[1] << 8)));
      tp->ec_release = (u16 )((int )((short )((int )ec_fw_string[4] << 8)) | (int )((short )ec_fw_string[5]));
    } else {
      printk("\rthinkpad_acpi: ThinkPad firmware release %s doesn\'t match the known patterns\n",
             (char *)(& ec_fw_string));
      printk("\rthinkpad_acpi: please report this to %s\n", (char *)"ibm-acpi-devel@lists.sourceforge.net");
    }
    goto ldv_36785;
  } else {
  }
  ldv_36787:
  dev = dmi_find_device(-2, (char const *)0, dev);
  if ((unsigned long )dev != (unsigned long )((struct dmi_device const *)0)) {
    goto ldv_36786;
  } else {
  }
  ldv_36785:
  s = dmi_get_system_info(6);
  if ((unsigned long )s != (unsigned long )((char const *)0)) {
    tmp___9 = strncasecmp(s, "ThinkPad", 8UL);
    if (tmp___9 == 0) {
      goto _L___0;
    } else {
      tmp___10 = strncasecmp(s, "Lenovo", 6UL);
      if (tmp___10 == 0) {
        _L___0:
        tp->model_str = kstrdup(s, 208U);
        if ((unsigned long )tp->model_str == (unsigned long )((char *)0)) {
          return (-12);
        } else {
        }
      } else {
        goto _L;
      }
    }
  } else {
    _L:
    s = dmi_get_system_info(1);
    if ((unsigned long )s != (unsigned long )((char const *)0)) {
      tmp___8 = strncasecmp(s, "Lenovo", 6UL);
      if (tmp___8 == 0) {
        tp->model_str = kstrdup(s, 208U);
        if ((unsigned long )tp->model_str == (unsigned long )((char *)0)) {
          return (-12);
        } else {
        }
      } else {
      }
    } else {
    }
  }
  s = dmi_get_system_info(5);
  tp->nummodel_str = kstrdup(s, 208U);
  if ((unsigned long )s != (unsigned long )((char const *)0) && (unsigned long )tp->nummodel_str == (unsigned long )((char *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int probe_for_thinkpad(void)
{
  int is_thinkpad ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  if (acpi_disabled != 0) {
    return (-19);
  } else {
  }
  tmp = tpacpi_is_ibm();
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = tpacpi_is_lenovo();
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (-19);
    } else {
    }
  } else {
  }
  if ((unsigned long )thinkpad_id.model_str != (unsigned long )((char *)0) || (unsigned int )thinkpad_id.ec_model != 0U) {
    tmp___4 = 1;
  } else {
    tmp___3 = tpacpi_is_fw_known();
    if ((int )tmp___3) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  }
  is_thinkpad = tmp___4;
  tpacpi_acpi_handle_locate("ec", "PNP0C09", & ec_handle);
  if ((unsigned long )ec_handle == (unsigned long )((acpi_handle )0)) {
    if (is_thinkpad != 0) {
      printk("\vthinkpad_acpi: Not yet supported ThinkPad detected!\n");
    } else {
    }
    return (-19);
  } else {
  }
  if (is_thinkpad == 0 && ! force_load) {
    return (-19);
  } else {
  }
  return (0);
}
}
static void thinkpad_acpi_init_banner(void)
{
  long tmp ;
  {
  printk("\016thinkpad_acpi: %s v%s\n", (char *)"ThinkPad ACPI Extras", (char *)"0.25");
  printk("\016thinkpad_acpi: %s\n", (char *)"http://ibm-acpi.sf.net/");
  printk("\016thinkpad_acpi: ThinkPad BIOS %s, EC %s\n", (unsigned long )thinkpad_id.bios_version_str != (unsigned long )((char *)0) ? thinkpad_id.bios_version_str : (char *)"unknown",
         (unsigned long )thinkpad_id.ec_version_str != (unsigned long )((char *)0) ? thinkpad_id.ec_version_str : (char *)"unknown");
  tmp = ldv__builtin_expect(thinkpad_id.vendor == 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c"),
                         "i" (9168), "i" (12UL));
    ldv_36795: ;
    goto ldv_36795;
  } else {
  }
  if ((unsigned long )thinkpad_id.model_str != (unsigned long )((char *)0)) {
    printk("\016thinkpad_acpi: %s %s, model %s\n", thinkpad_id.vendor != 4116U ? (thinkpad_id.vendor == 6058U ? (char *)"Lenovo" : (char *)"Unknown vendor") : (char *)"IBM",
           thinkpad_id.model_str, (unsigned long )thinkpad_id.nummodel_str != (unsigned long )((char *)0) ? thinkpad_id.nummodel_str : (char *)"unknown");
  } else {
  }
  return;
}
}
static struct ibm_init_struct ibms_init[15U] =
  { {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, 0, (unsigned short)0, & thinkpad_acpi_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & hotkey_init, (unsigned short)0, & hotkey_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & bluetooth_init, (unsigned short)0, & bluetooth_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & wan_init, (unsigned short)0, & wan_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & uwb_init, (unsigned short)0, & uwb_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & video_init, 256U, & video_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & light_init, (unsigned short)0, & light_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & cmos_init, (unsigned short)0, & cmos_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & led_init, (unsigned short)0, & led_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & beep_init, (unsigned short)0, & beep_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & thermal_init, (unsigned short)0, & thermal_driver_data},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0}, & brightness_init, (unsigned short)0,
      & brightness_driver_data},
        {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, & volume_init, (unsigned short)0,
      & volume_driver_data},
        {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, & fan_init, (unsigned short)0,
      & fan_driver_data},
        {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, & mute_led_init, (unsigned short)0,
      & mute_led_driver_data}};
static int set_ibm_param(char const *val , struct kernel_param *kp )
{
  unsigned int i ;
  struct ibm_struct *ibm ;
  int __ret_warn_on ;
  long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  {
  if (((unsigned long )kp == (unsigned long )((struct kernel_param *)0) || (unsigned long )kp->name == (unsigned long )((char const *)0)) || (unsigned long )val == (unsigned long )((char const *)0)) {
    return (-22);
  } else {
  }
  i = 0U;
  goto ldv_36809;
  ldv_36808:
  ibm = ibms_init[i].data;
  __ret_warn_on = (unsigned long )ibm == (unsigned long )((struct ibm_struct *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6529/dscv_tempdir/dscv/ri/32_7a/drivers/platform/x86/thinkpad_acpi.c",
                       9258);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )ibm == (unsigned long )((struct ibm_struct *)0) || (unsigned long )ibm->name == (unsigned long )((char *)0)) {
    goto ldv_36807;
  } else {
  }
  tmp___1 = strcmp((char const *)ibm->name, kp->name);
  if (tmp___1 == 0 && (unsigned long )ibm->write != (unsigned long )((int (*)(char * ))0)) {
    tmp___0 = strlen(val);
    if (tmp___0 > 30UL) {
      return (-28);
    } else {
    }
    strcpy((char *)(& ibms_init[i].param), val);
    strcat((char *)(& ibms_init[i].param), ",");
    return (0);
  } else {
  }
  ldv_36807:
  i = i + 1U;
  ldv_36809: ;
  if (i <= 14U) {
    goto ldv_36808;
  } else {
  }
  return (-22);
}
}
static void thinkpad_acpi_module_exit(void)
{
  struct ibm_struct *ibm ;
  struct ibm_struct *itmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tpacpi_lifecycle = 2;
  __mptr = (struct list_head const *)tpacpi_all_drivers.prev;
  ibm = (struct ibm_struct *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)ibm->all_drivers.prev;
  itmp = (struct ibm_struct *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_37382;
  ldv_37381:
  ibm_exit(ibm);
  ibm = itmp;
  __mptr___1 = (struct list_head const *)itmp->all_drivers.prev;
  itmp = (struct ibm_struct *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_37382: ;
  if ((unsigned long )(& ibm->all_drivers) != (unsigned long )(& tpacpi_all_drivers)) {
    goto ldv_37381;
  } else {
  }
  if ((int )dbg_level & 1) {
    printk("\017thinkpad_acpi: %s: finished subdriver exit path...\n", "thinkpad_acpi_module_exit");
  } else {
  }
  if ((unsigned long )tpacpi_inputdev != (unsigned long )((struct input_dev *)0)) {
    if ((unsigned int )*((unsigned char *)(& tp_features) + 1UL) != 0U) {
      input_unregister_device(tpacpi_inputdev);
    } else {
      input_free_device(tpacpi_inputdev);
    }
    kfree((void const *)hotkey_keycode_map);
  } else {
  }
  if ((unsigned long )tpacpi_hwmon != (unsigned long )((struct device *)0)) {
    hwmon_device_unregister(tpacpi_hwmon);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    device_remove_file(& tpacpi_sensors_pdev->dev, (struct device_attribute const *)(& dev_attr_name));
  } else {
  }
  if ((unsigned long )tpacpi_sensors_pdev != (unsigned long )((struct platform_device *)0)) {
    platform_device_unregister(tpacpi_sensors_pdev);
  } else {
  }
  if ((unsigned long )tpacpi_pdev != (unsigned long )((struct platform_device *)0)) {
    platform_device_unregister(tpacpi_pdev);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    tpacpi_remove_driver_attributes(& tpacpi_hwmon_pdriver.driver);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    tpacpi_remove_driver_attributes(& tpacpi_pdriver.driver);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    ldv_platform_driver_unregister_83(& tpacpi_hwmon_pdriver);
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& tp_features) + 2UL) != 0U) {
    ldv_platform_driver_unregister_84(& tpacpi_pdriver);
  } else {
  }
  if ((unsigned long )proc_dir != (unsigned long )((struct proc_dir_entry *)0)) {
    remove_proc_entry("ibm", acpi_root_dir);
  } else {
  }
  if ((unsigned long )tpacpi_wq != (unsigned long )((struct workqueue_struct *)0)) {
    ldv_destroy_workqueue_85(tpacpi_wq);
  } else {
  }
  kfree((void const *)thinkpad_id.bios_version_str);
  kfree((void const *)thinkpad_id.ec_version_str);
  kfree((void const *)thinkpad_id.model_str);
  kfree((void const *)thinkpad_id.nummodel_str);
  return;
}
}
static int thinkpad_acpi_module_init(void)
{
  int ret ;
  int i ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  struct lock_class_key __key___0 ;
  {
  tpacpi_lifecycle = 0;
  ret = get_thinkpad_model_data(& thinkpad_id);
  if (ret != 0) {
    printk("\vthinkpad_acpi: unable to get DMI data: %d\n", ret);
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  ret = probe_for_thinkpad();
  if (ret != 0) {
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  thinkpad_acpi_init_banner();
  tpacpi_check_outdated_fw();
  drv_acpi_handle_init("ecrd", & ecrd_handle, *ecrd_parent, (char **)(& ecrd_paths),
                       1);
  drv_acpi_handle_init("ecwr", & ecwr_handle, *ecwr_parent, (char **)(& ecwr_paths),
                       1);
  __lock_name = "\"%s\"\"ktpacpid\"";
  tmp = __alloc_workqueue_key("%s", 131082U, 1, & __key, __lock_name, (char *)"ktpacpid");
  tpacpi_wq = tmp;
  if ((unsigned long )tpacpi_wq == (unsigned long )((struct workqueue_struct *)0)) {
    thinkpad_acpi_module_exit();
    return (-12);
  } else {
  }
  proc_dir = proc_mkdir("ibm", acpi_root_dir);
  if ((unsigned long )proc_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\vthinkpad_acpi: unable to create proc dir ibm\n");
    thinkpad_acpi_module_exit();
    return (-19);
  } else {
  }
  ret = ldv___platform_driver_register_86(& tpacpi_pdriver, & __this_module);
  if (ret != 0) {
    printk("\vthinkpad_acpi: unable to register main platform driver\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  tp_features.platform_drv_registered = 1U;
  ret = ldv___platform_driver_register_87(& tpacpi_hwmon_pdriver, & __this_module);
  if (ret != 0) {
    printk("\vthinkpad_acpi: unable to register hwmon platform driver\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  tp_features.sensors_pdrv_registered = 1U;
  ret = tpacpi_create_driver_attributes(& tpacpi_pdriver.driver);
  if (ret == 0) {
    tp_features.platform_drv_attrs_registered = 1U;
    ret = tpacpi_create_driver_attributes(& tpacpi_hwmon_pdriver.driver);
  } else {
  }
  if (ret != 0) {
    printk("\vthinkpad_acpi: unable to create sysfs driver attributes\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  tp_features.sensors_pdrv_attrs_registered = 1U;
  tpacpi_pdev = platform_device_register_simple("thinkpad_acpi", -1, (struct resource const *)0,
                                                0U);
  tmp___1 = IS_ERR((void const *)tpacpi_pdev);
  if ((int )tmp___1) {
    tmp___0 = PTR_ERR((void const *)tpacpi_pdev);
    ret = (int )tmp___0;
    tpacpi_pdev = (struct platform_device *)0;
    printk("\vthinkpad_acpi: unable to register platform device\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  tpacpi_sensors_pdev = platform_device_register_simple("thinkpad_hwmon", -1, (struct resource const *)0,
                                                        0U);
  tmp___3 = IS_ERR((void const *)tpacpi_sensors_pdev);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)tpacpi_sensors_pdev);
    ret = (int )tmp___2;
    tpacpi_sensors_pdev = (struct platform_device *)0;
    printk("\vthinkpad_acpi: unable to register hwmon platform device\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  ret = device_create_file(& tpacpi_sensors_pdev->dev, (struct device_attribute const *)(& dev_attr_name));
  if (ret != 0) {
    printk("\vthinkpad_acpi: unable to create sysfs hwmon device attributes\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  tp_features.sensors_pdev_attrs_registered = 1U;
  tpacpi_hwmon = hwmon_device_register(& tpacpi_sensors_pdev->dev);
  tmp___5 = IS_ERR((void const *)tpacpi_hwmon);
  if ((int )tmp___5) {
    tmp___4 = PTR_ERR((void const *)tpacpi_hwmon);
    ret = (int )tmp___4;
    tpacpi_hwmon = (struct device *)0;
    printk("\vthinkpad_acpi: unable to register hwmon device\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  __mutex_init(& tpacpi_inputdev_send_mutex, "&tpacpi_inputdev_send_mutex", & __key___0);
  tpacpi_inputdev = input_allocate_device();
  if ((unsigned long )tpacpi_inputdev == (unsigned long )((struct input_dev *)0)) {
    thinkpad_acpi_module_exit();
    return (-12);
  } else {
    tpacpi_inputdev->name = "ThinkPad Extra Buttons";
    tpacpi_inputdev->phys = "thinkpad_acpi/input0";
    tpacpi_inputdev->id.bustype = 25U;
    tpacpi_inputdev->id.vendor = (__u16 )thinkpad_id.vendor;
    tpacpi_inputdev->id.product = 20564U;
    tpacpi_inputdev->id.version = 16641U;
    tpacpi_inputdev->dev.parent = & tpacpi_pdev->dev;
  }
  tpacpi_detect_brightness_capabilities();
  i = 0;
  goto ldv_37401;
  ldv_37400:
  ret = ibm_init((struct ibm_init_struct *)(& ibms_init) + (unsigned long )i);
  if (ret >= 0 && (int )((signed char )*((char *)(& ibms_init[i].param))) != 0) {
    ret = (*((ibms_init[i].data)->write))((char *)(& ibms_init[i].param));
  } else {
  }
  if (ret < 0) {
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_37401: ;
  if ((unsigned int )i <= 14U) {
    goto ldv_37400;
  } else {
  }
  tpacpi_lifecycle = 1;
  ret = input_register_device(tpacpi_inputdev);
  if (ret < 0) {
    printk("\vthinkpad_acpi: unable to register input device\n");
    thinkpad_acpi_module_exit();
    return (ret);
  } else {
    tp_features.input_device_registered = 1U;
  }
  return (0);
}
}
struct acpi_device_id const __mod_acpi__ibm_htk_device_ids_device_table[3U] ;
int ldv_retval_20 ;
extern int ldv_prepare_69(void) ;
extern int ldv_thaw_noirq_69(void) ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_thaw_early_69(void) ;
extern int ldv_probe_68(void) ;
extern int ldv_freeze_noirq_69(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_23 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_poweroff_late_69(void) ;
int ldv_retval_22 ;
int ldv_retval_15 ;
extern int ldv_probe_29(void) ;
extern int ldv_poweroff_noirq_69(void) ;
int ldv_retval_16 ;
extern int ldv_resume_noirq_69(void) ;
extern int ldv_release_59(void) ;
int ldv_retval_24 ;
extern int ldv_freeze_late_69(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_8 ;
extern int ldv_suspend_68(void) ;
extern int ldv_complete_69(void) ;
extern int ldv_restore_noirq_69(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_release_29(void) ;
extern int ldv_suspend_late_69(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_resume_early_69(void) ;
int ldv_retval_12 ;
extern int ldv_probe_59(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_suspend_noirq_69(void) ;
int ldv_retval_21 ;
extern int ldv_remove_68(void) ;
int ldv_retval_13 ;
int ldv_retval_10 ;
int ldv_retval_9 ;
extern int ldv_restore_early_69(void) ;
int ldv_retval_4 ;
extern int ldv_resume_68(void) ;
int ldv_retval_3 ;
void ldv_file_operations_70(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  dispatch_proc_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  dispatch_proc_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void ldv_initialize_driver_attribute_63(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_wlsw_emulstate_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_52(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_hotkey_source_mask_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_hotkey_source_mask_group1 = (struct device *)tmp___0;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    light_set_status_worker(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    light_set_status_worker(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    light_set_status_worker(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    light_set_status_worker(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_snd_kcontrol_new_24(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(144UL);
  volume_alsa_control_mute_group0 = (struct snd_kcontrol *)tmp;
  return;
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_platform_probe_68(int (*probe)(struct platform_device * ) )
{
  int err ;
  {
  err = (*probe)(tpacpi_pdriver_group1);
  if (err == 0) {
    probed_68 = 1;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_21(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_pwm1_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_pwm1_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_driver_attribute_17(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_fan_watchdog_group0 = (struct device_driver *)tmp;
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    fan_watchdog_fire(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    fan_watchdog_fire(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    fan_watchdog_fire(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    fan_watchdog_fire(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void ldv_initialize_device_attribute_43(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_bluetooth_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_bluetooth_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_driver_attribute_61(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_wwan_emulstate_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_51(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_hotkey_poll_freq_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_hotkey_poll_freq_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_backlight_ops_27(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1848UL);
  ibm_backlight_data_group0 = (struct backlight_device *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_60(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_uwb_emulstate_group0 = (struct device_driver *)tmp;
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    led_set_status_worker(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_37571;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    led_set_status_worker(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_37571;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    led_set_status_worker(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_37571;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    led_set_status_worker(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_37571;
  default:
  ldv_stop();
  }
  ldv_37571: ;
  return;
}
}
void ldv_initialize_device_attribute_58(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_hotkey_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_hotkey_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_20(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_pwm1_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_pwm1_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_snd_kcontrol_new_25(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(144UL);
  volume_alsa_control_vol_group0 = (struct snd_kcontrol *)tmp;
  return;
}
}
void ldv_initialize_driver_attribute_62(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_bluetooth_emulstate_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_platform_driver_init_68(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1472UL);
  tpacpi_pdriver_group1 = (struct platform_device *)tmp;
  return;
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_57(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_hotkey_mask_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_hotkey_mask_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_driver_attribute_65(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(120UL);
  driver_attr_debug_level_group0 = (struct device_driver *)tmp;
  return;
}
}
void ldv_initialize_tpacpi_led_classdev_34(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(704UL);
  tpacpi_led_thinklight_group0 = (struct led_classdev *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_46(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_adaptive_kbd_mode_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_adaptive_kbd_mode_group1 = (struct device *)tmp___0;
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    fan_watchdog_fire(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_37622;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    fan_watchdog_fire(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_37622;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    fan_watchdog_fire(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_37622;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    fan_watchdog_fire(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_37622;
  default:
  ldv_stop();
  }
  ldv_37622: ;
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    light_set_status_worker(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_37633;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    light_set_status_worker(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_37633;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    light_set_status_worker(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_37633;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    light_set_status_worker(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_37633;
  default:
  ldv_stop();
  }
  ldv_37633: ;
  return;
}
}
void ldv_initialize_device_attribute_40(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_wwan_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_wwan_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    led_set_status_worker(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    led_set_status_worker(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    led_set_status_worker(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    led_set_status_worker(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_dev_pm_ops_69(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  tpacpi_pm_group1 = (struct device *)tmp;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct seq_file *ldvarg0 ;
  void *tmp___0 ;
  char *ldvarg4 ;
  void *tmp___1 ;
  struct device *ldvarg3 ;
  void *tmp___2 ;
  struct device_attribute *ldvarg5 ;
  void *tmp___3 ;
  size_t ldvarg2 ;
  char *ldvarg8 ;
  void *tmp___4 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___5 ;
  char *ldvarg11 ;
  void *tmp___6 ;
  size_t ldvarg10 ;
  char *ldvarg9 ;
  void *tmp___7 ;
  struct kernel_param *ldvarg13 ;
  void *tmp___8 ;
  char *ldvarg12 ;
  void *tmp___9 ;
  struct seq_file *ldvarg14 ;
  void *tmp___10 ;
  char *ldvarg15 ;
  void *tmp___11 ;
  struct device_attribute *ldvarg18 ;
  void *tmp___12 ;
  char *ldvarg17 ;
  void *tmp___13 ;
  struct device *ldvarg16 ;
  void *tmp___14 ;
  char *ldvarg20 ;
  void *tmp___15 ;
  struct seq_file *ldvarg19 ;
  void *tmp___16 ;
  struct seq_file *ldvarg21 ;
  void *tmp___17 ;
  char *ldvarg22 ;
  void *tmp___18 ;
  char *ldvarg24 ;
  void *tmp___19 ;
  struct device_attribute *ldvarg25 ;
  void *tmp___20 ;
  struct device *ldvarg23 ;
  void *tmp___21 ;
  size_t ldvarg27 ;
  char *ldvarg26 ;
  void *tmp___22 ;
  char *ldvarg28 ;
  void *tmp___23 ;
  char *ldvarg31 ;
  void *tmp___24 ;
  char *ldvarg29 ;
  void *tmp___25 ;
  size_t ldvarg30 ;
  char *ldvarg32 ;
  void *tmp___26 ;
  char *ldvarg34 ;
  void *tmp___27 ;
  size_t ldvarg33 ;
  char *ldvarg35 ;
  void *tmp___28 ;
  struct kernel_param *ldvarg36 ;
  void *tmp___29 ;
  struct seq_file *ldvarg37 ;
  void *tmp___30 ;
  char *ldvarg38 ;
  void *tmp___31 ;
  struct seq_file *ldvarg39 ;
  void *tmp___32 ;
  char *ldvarg40 ;
  void *tmp___33 ;
  char *ldvarg41 ;
  void *tmp___34 ;
  struct kernel_param *ldvarg42 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg45 ;
  void *tmp___36 ;
  struct device *ldvarg43 ;
  void *tmp___37 ;
  char *ldvarg44 ;
  void *tmp___38 ;
  char *ldvarg48 ;
  void *tmp___39 ;
  size_t ldvarg47 ;
  char *ldvarg46 ;
  void *tmp___40 ;
  struct seq_file *ldvarg49 ;
  void *tmp___41 ;
  char *ldvarg50 ;
  void *tmp___42 ;
  struct device *ldvarg51 ;
  void *tmp___43 ;
  struct device_attribute *ldvarg53 ;
  void *tmp___44 ;
  char *ldvarg52 ;
  void *tmp___45 ;
  enum tpacpi_rfkill_state ldvarg54 ;
  struct device_driver *ldvarg55 ;
  void *tmp___46 ;
  char *ldvarg56 ;
  void *tmp___47 ;
  char *ldvarg57 ;
  void *tmp___48 ;
  size_t ldvarg58 ;
  char *ldvarg59 ;
  void *tmp___49 ;
  char *ldvarg61 ;
  void *tmp___50 ;
  struct seq_file *ldvarg60 ;
  void *tmp___51 ;
  struct kernel_param *ldvarg63 ;
  void *tmp___52 ;
  char *ldvarg62 ;
  void *tmp___53 ;
  size_t ldvarg65 ;
  char *ldvarg66 ;
  void *tmp___54 ;
  char *ldvarg64 ;
  void *tmp___55 ;
  char *ldvarg67 ;
  void *tmp___56 ;
  size_t ldvarg68 ;
  char *ldvarg69 ;
  void *tmp___57 ;
  struct device *ldvarg70 ;
  void *tmp___58 ;
  char *ldvarg71 ;
  void *tmp___59 ;
  struct device_attribute *ldvarg72 ;
  void *tmp___60 ;
  struct device_driver *ldvarg73 ;
  void *tmp___61 ;
  char *ldvarg74 ;
  void *tmp___62 ;
  u32 ldvarg76 ;
  struct ibm_struct *ldvarg75 ;
  void *tmp___63 ;
  struct device *ldvarg77 ;
  void *tmp___64 ;
  struct device_attribute *ldvarg79 ;
  void *tmp___65 ;
  char *ldvarg78 ;
  void *tmp___66 ;
  size_t ldvarg81 ;
  char *ldvarg80 ;
  void *tmp___67 ;
  char *ldvarg82 ;
  void *tmp___68 ;
  struct device_attribute *ldvarg85 ;
  void *tmp___69 ;
  char *ldvarg84 ;
  void *tmp___70 ;
  struct device *ldvarg83 ;
  void *tmp___71 ;
  bool ldvarg87 ;
  void *ldvarg86 ;
  void *tmp___72 ;
  char *ldvarg95 ;
  void *tmp___73 ;
  size_t ldvarg94 ;
  size_t ldvarg91 ;
  int ldvarg88 ;
  loff_t *ldvarg90 ;
  void *tmp___74 ;
  loff_t *ldvarg93 ;
  void *tmp___75 ;
  loff_t ldvarg89 ;
  char *ldvarg92 ;
  void *tmp___76 ;
  char *ldvarg98 ;
  void *tmp___77 ;
  size_t ldvarg97 ;
  char *ldvarg96 ;
  void *tmp___78 ;
  char *ldvarg100 ;
  void *tmp___79 ;
  struct seq_file *ldvarg99 ;
  void *tmp___80 ;
  struct snd_ctl_elem_value *ldvarg102 ;
  void *tmp___81 ;
  struct snd_ctl_elem_info *ldvarg101 ;
  void *tmp___82 ;
  struct seq_file *ldvarg103 ;
  void *tmp___83 ;
  char *ldvarg104 ;
  void *tmp___84 ;
  char *ldvarg106 ;
  void *tmp___85 ;
  size_t ldvarg105 ;
  char *ldvarg108 ;
  void *tmp___86 ;
  struct device *ldvarg107 ;
  void *tmp___87 ;
  struct device_attribute *ldvarg109 ;
  void *tmp___88 ;
  struct seq_file *ldvarg110 ;
  void *tmp___89 ;
  struct device *ldvarg111 ;
  void *tmp___90 ;
  char *ldvarg112 ;
  void *tmp___91 ;
  struct device_attribute *ldvarg113 ;
  void *tmp___92 ;
  struct snd_ctl_elem_info *ldvarg114 ;
  void *tmp___93 ;
  struct snd_ctl_elem_value *ldvarg115 ;
  void *tmp___94 ;
  struct device *ldvarg116 ;
  void *tmp___95 ;
  char *ldvarg117 ;
  void *tmp___96 ;
  struct device_attribute *ldvarg118 ;
  void *tmp___97 ;
  struct work_struct *ldvarg120 ;
  void *tmp___98 ;
  unsigned long ldvarg119 ;
  enum tpacpi_rfkill_state ldvarg121 ;
  size_t ldvarg123 ;
  char *ldvarg124 ;
  void *tmp___99 ;
  char *ldvarg122 ;
  void *tmp___100 ;
  struct seq_file *ldvarg125 ;
  void *tmp___101 ;
  char *ldvarg126 ;
  void *tmp___102 ;
  char *ldvarg127 ;
  void *tmp___103 ;
  struct kernel_param *ldvarg128 ;
  void *tmp___104 ;
  char *ldvarg129 ;
  void *tmp___105 ;
  struct kernel_param *ldvarg130 ;
  void *tmp___106 ;
  char *ldvarg131 ;
  void *tmp___107 ;
  struct kernel_param *ldvarg132 ;
  void *tmp___108 ;
  size_t ldvarg134 ;
  char *ldvarg135 ;
  void *tmp___109 ;
  char *ldvarg133 ;
  void *tmp___110 ;
  struct device *ldvarg136 ;
  void *tmp___111 ;
  struct device_attribute *ldvarg138 ;
  void *tmp___112 ;
  char *ldvarg137 ;
  void *tmp___113 ;
  struct kernel_param *ldvarg140 ;
  void *tmp___114 ;
  char *ldvarg139 ;
  void *tmp___115 ;
  char *ldvarg142 ;
  void *tmp___116 ;
  struct seq_file *ldvarg141 ;
  void *tmp___117 ;
  char *ldvarg143 ;
  void *tmp___118 ;
  struct kernel_param *ldvarg144 ;
  void *tmp___119 ;
  enum led_brightness ldvarg145 ;
  enum tpacpi_rfkill_state ldvarg146 ;
  char *ldvarg147 ;
  void *tmp___120 ;
  char *ldvarg149 ;
  void *tmp___121 ;
  size_t ldvarg148 ;
  char *ldvarg150 ;
  void *tmp___122 ;
  struct kernel_param *ldvarg151 ;
  void *tmp___123 ;
  int tmp___124 ;
  int tmp___125 ;
  int tmp___126 ;
  int tmp___127 ;
  int tmp___128 ;
  int tmp___129 ;
  int tmp___130 ;
  int tmp___131 ;
  int tmp___132 ;
  int tmp___133 ;
  int tmp___134 ;
  int tmp___135 ;
  int tmp___136 ;
  int tmp___137 ;
  int tmp___138 ;
  int tmp___139 ;
  int tmp___140 ;
  int tmp___141 ;
  int tmp___142 ;
  int tmp___143 ;
  int tmp___144 ;
  int tmp___145 ;
  int tmp___146 ;
  int tmp___147 ;
  int tmp___148 ;
  int tmp___149 ;
  int tmp___150 ;
  int tmp___151 ;
  int tmp___152 ;
  int tmp___153 ;
  int tmp___154 ;
  int tmp___155 ;
  int tmp___156 ;
  int tmp___157 ;
  int tmp___158 ;
  int tmp___159 ;
  int tmp___160 ;
  int tmp___161 ;
  int tmp___162 ;
  int tmp___163 ;
  int tmp___164 ;
  int tmp___165 ;
  int tmp___166 ;
  int tmp___167 ;
  int tmp___168 ;
  int tmp___169 ;
  int tmp___170 ;
  int tmp___171 ;
  int tmp___172 ;
  int tmp___173 ;
  int tmp___174 ;
  int tmp___175 ;
  int tmp___176 ;
  int tmp___177 ;
  int tmp___178 ;
  int tmp___179 ;
  int tmp___180 ;
  int tmp___181 ;
  int tmp___182 ;
  int tmp___183 ;
  int tmp___184 ;
  int tmp___185 ;
  int tmp___186 ;
  int tmp___187 ;
  int tmp___188 ;
  int tmp___189 ;
  int tmp___190 ;
  int tmp___191 ;
  int tmp___192 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(256UL);
  ldvarg0 = (struct seq_file *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg4 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1416UL);
  ldvarg3 = (struct device *)tmp___2;
  tmp___3 = ldv_init_zalloc(48UL);
  ldvarg5 = (struct device_attribute *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg11 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(40UL);
  ldvarg13 = (struct kernel_param *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg12 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(256UL);
  ldvarg14 = (struct seq_file *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(48UL);
  ldvarg18 = (struct device_attribute *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg17 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(1416UL);
  ldvarg16 = (struct device *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___15;
  tmp___16 = ldv_init_zalloc(256UL);
  ldvarg19 = (struct seq_file *)tmp___16;
  tmp___17 = ldv_init_zalloc(256UL);
  ldvarg21 = (struct seq_file *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg22 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg24 = (char *)tmp___19;
  tmp___20 = ldv_init_zalloc(48UL);
  ldvarg25 = (struct device_attribute *)tmp___20;
  tmp___21 = ldv_init_zalloc(1416UL);
  ldvarg23 = (struct device *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg26 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg28 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg31 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg29 = (char *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg32 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg35 = (char *)tmp___28;
  tmp___29 = ldv_init_zalloc(40UL);
  ldvarg36 = (struct kernel_param *)tmp___29;
  tmp___30 = ldv_init_zalloc(256UL);
  ldvarg37 = (struct seq_file *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg38 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(256UL);
  ldvarg39 = (struct seq_file *)tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg40 = (char *)tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___34;
  tmp___35 = ldv_init_zalloc(40UL);
  ldvarg42 = (struct kernel_param *)tmp___35;
  tmp___36 = ldv_init_zalloc(48UL);
  ldvarg45 = (struct device_attribute *)tmp___36;
  tmp___37 = ldv_init_zalloc(1416UL);
  ldvarg43 = (struct device *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg44 = (char *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg46 = (char *)tmp___40;
  tmp___41 = ldv_init_zalloc(256UL);
  ldvarg49 = (struct seq_file *)tmp___41;
  tmp___42 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___42;
  tmp___43 = ldv_init_zalloc(1416UL);
  ldvarg51 = (struct device *)tmp___43;
  tmp___44 = ldv_init_zalloc(48UL);
  ldvarg53 = (struct device_attribute *)tmp___44;
  tmp___45 = ldv_init_zalloc(1UL);
  ldvarg52 = (char *)tmp___45;
  tmp___46 = ldv_init_zalloc(120UL);
  ldvarg55 = (struct device_driver *)tmp___46;
  tmp___47 = ldv_init_zalloc(1UL);
  ldvarg56 = (char *)tmp___47;
  tmp___48 = ldv_init_zalloc(1UL);
  ldvarg57 = (char *)tmp___48;
  tmp___49 = ldv_init_zalloc(1UL);
  ldvarg59 = (char *)tmp___49;
  tmp___50 = ldv_init_zalloc(1UL);
  ldvarg61 = (char *)tmp___50;
  tmp___51 = ldv_init_zalloc(256UL);
  ldvarg60 = (struct seq_file *)tmp___51;
  tmp___52 = ldv_init_zalloc(40UL);
  ldvarg63 = (struct kernel_param *)tmp___52;
  tmp___53 = ldv_init_zalloc(1UL);
  ldvarg62 = (char *)tmp___53;
  tmp___54 = ldv_init_zalloc(1UL);
  ldvarg66 = (char *)tmp___54;
  tmp___55 = ldv_init_zalloc(1UL);
  ldvarg64 = (char *)tmp___55;
  tmp___56 = ldv_init_zalloc(1UL);
  ldvarg67 = (char *)tmp___56;
  tmp___57 = ldv_init_zalloc(1UL);
  ldvarg69 = (char *)tmp___57;
  tmp___58 = ldv_init_zalloc(1416UL);
  ldvarg70 = (struct device *)tmp___58;
  tmp___59 = ldv_init_zalloc(1UL);
  ldvarg71 = (char *)tmp___59;
  tmp___60 = ldv_init_zalloc(48UL);
  ldvarg72 = (struct device_attribute *)tmp___60;
  tmp___61 = ldv_init_zalloc(120UL);
  ldvarg73 = (struct device_driver *)tmp___61;
  tmp___62 = ldv_init_zalloc(1UL);
  ldvarg74 = (char *)tmp___62;
  tmp___63 = ldv_init_zalloc(88UL);
  ldvarg75 = (struct ibm_struct *)tmp___63;
  tmp___64 = ldv_init_zalloc(1416UL);
  ldvarg77 = (struct device *)tmp___64;
  tmp___65 = ldv_init_zalloc(48UL);
  ldvarg79 = (struct device_attribute *)tmp___65;
  tmp___66 = ldv_init_zalloc(1UL);
  ldvarg78 = (char *)tmp___66;
  tmp___67 = ldv_init_zalloc(1UL);
  ldvarg80 = (char *)tmp___67;
  tmp___68 = ldv_init_zalloc(1UL);
  ldvarg82 = (char *)tmp___68;
  tmp___69 = ldv_init_zalloc(48UL);
  ldvarg85 = (struct device_attribute *)tmp___69;
  tmp___70 = ldv_init_zalloc(1UL);
  ldvarg84 = (char *)tmp___70;
  tmp___71 = ldv_init_zalloc(1416UL);
  ldvarg83 = (struct device *)tmp___71;
  tmp___72 = ldv_init_zalloc(1UL);
  ldvarg86 = tmp___72;
  tmp___73 = ldv_init_zalloc(1UL);
  ldvarg95 = (char *)tmp___73;
  tmp___74 = ldv_init_zalloc(8UL);
  ldvarg90 = (loff_t *)tmp___74;
  tmp___75 = ldv_init_zalloc(8UL);
  ldvarg93 = (loff_t *)tmp___75;
  tmp___76 = ldv_init_zalloc(1UL);
  ldvarg92 = (char *)tmp___76;
  tmp___77 = ldv_init_zalloc(1UL);
  ldvarg98 = (char *)tmp___77;
  tmp___78 = ldv_init_zalloc(1UL);
  ldvarg96 = (char *)tmp___78;
  tmp___79 = ldv_init_zalloc(1UL);
  ldvarg100 = (char *)tmp___79;
  tmp___80 = ldv_init_zalloc(256UL);
  ldvarg99 = (struct seq_file *)tmp___80;
  tmp___81 = ldv_init_zalloc(1224UL);
  ldvarg102 = (struct snd_ctl_elem_value *)tmp___81;
  tmp___82 = ldv_init_zalloc(272UL);
  ldvarg101 = (struct snd_ctl_elem_info *)tmp___82;
  tmp___83 = ldv_init_zalloc(256UL);
  ldvarg103 = (struct seq_file *)tmp___83;
  tmp___84 = ldv_init_zalloc(1UL);
  ldvarg104 = (char *)tmp___84;
  tmp___85 = ldv_init_zalloc(1UL);
  ldvarg106 = (char *)tmp___85;
  tmp___86 = ldv_init_zalloc(1UL);
  ldvarg108 = (char *)tmp___86;
  tmp___87 = ldv_init_zalloc(1416UL);
  ldvarg107 = (struct device *)tmp___87;
  tmp___88 = ldv_init_zalloc(48UL);
  ldvarg109 = (struct device_attribute *)tmp___88;
  tmp___89 = ldv_init_zalloc(256UL);
  ldvarg110 = (struct seq_file *)tmp___89;
  tmp___90 = ldv_init_zalloc(1416UL);
  ldvarg111 = (struct device *)tmp___90;
  tmp___91 = ldv_init_zalloc(1UL);
  ldvarg112 = (char *)tmp___91;
  tmp___92 = ldv_init_zalloc(48UL);
  ldvarg113 = (struct device_attribute *)tmp___92;
  tmp___93 = ldv_init_zalloc(272UL);
  ldvarg114 = (struct snd_ctl_elem_info *)tmp___93;
  tmp___94 = ldv_init_zalloc(1224UL);
  ldvarg115 = (struct snd_ctl_elem_value *)tmp___94;
  tmp___95 = ldv_init_zalloc(1416UL);
  ldvarg116 = (struct device *)tmp___95;
  tmp___96 = ldv_init_zalloc(1UL);
  ldvarg117 = (char *)tmp___96;
  tmp___97 = ldv_init_zalloc(48UL);
  ldvarg118 = (struct device_attribute *)tmp___97;
  tmp___98 = ldv_init_zalloc(80UL);
  ldvarg120 = (struct work_struct *)tmp___98;
  tmp___99 = ldv_init_zalloc(1UL);
  ldvarg124 = (char *)tmp___99;
  tmp___100 = ldv_init_zalloc(1UL);
  ldvarg122 = (char *)tmp___100;
  tmp___101 = ldv_init_zalloc(256UL);
  ldvarg125 = (struct seq_file *)tmp___101;
  tmp___102 = ldv_init_zalloc(1UL);
  ldvarg126 = (char *)tmp___102;
  tmp___103 = ldv_init_zalloc(1UL);
  ldvarg127 = (char *)tmp___103;
  tmp___104 = ldv_init_zalloc(40UL);
  ldvarg128 = (struct kernel_param *)tmp___104;
  tmp___105 = ldv_init_zalloc(1UL);
  ldvarg129 = (char *)tmp___105;
  tmp___106 = ldv_init_zalloc(40UL);
  ldvarg130 = (struct kernel_param *)tmp___106;
  tmp___107 = ldv_init_zalloc(1UL);
  ldvarg131 = (char *)tmp___107;
  tmp___108 = ldv_init_zalloc(40UL);
  ldvarg132 = (struct kernel_param *)tmp___108;
  tmp___109 = ldv_init_zalloc(1UL);
  ldvarg135 = (char *)tmp___109;
  tmp___110 = ldv_init_zalloc(1UL);
  ldvarg133 = (char *)tmp___110;
  tmp___111 = ldv_init_zalloc(1416UL);
  ldvarg136 = (struct device *)tmp___111;
  tmp___112 = ldv_init_zalloc(48UL);
  ldvarg138 = (struct device_attribute *)tmp___112;
  tmp___113 = ldv_init_zalloc(1UL);
  ldvarg137 = (char *)tmp___113;
  tmp___114 = ldv_init_zalloc(40UL);
  ldvarg140 = (struct kernel_param *)tmp___114;
  tmp___115 = ldv_init_zalloc(1UL);
  ldvarg139 = (char *)tmp___115;
  tmp___116 = ldv_init_zalloc(1UL);
  ldvarg142 = (char *)tmp___116;
  tmp___117 = ldv_init_zalloc(256UL);
  ldvarg141 = (struct seq_file *)tmp___117;
  tmp___118 = ldv_init_zalloc(1UL);
  ldvarg143 = (char *)tmp___118;
  tmp___119 = ldv_init_zalloc(40UL);
  ldvarg144 = (struct kernel_param *)tmp___119;
  tmp___120 = ldv_init_zalloc(1UL);
  ldvarg147 = (char *)tmp___120;
  tmp___121 = ldv_init_zalloc(1UL);
  ldvarg149 = (char *)tmp___121;
  tmp___122 = ldv_init_zalloc(1UL);
  ldvarg150 = (char *)tmp___122;
  tmp___123 = ldv_init_zalloc(40UL);
  ldvarg151 = (struct kernel_param *)tmp___123;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg2), 0, 8UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg27), 0, 8UL);
  ldv_memset((void *)(& ldvarg30), 0, 8UL);
  ldv_memset((void *)(& ldvarg33), 0, 8UL);
  ldv_memset((void *)(& ldvarg47), 0, 8UL);
  ldv_memset((void *)(& ldvarg54), 0, 4UL);
  ldv_memset((void *)(& ldvarg58), 0, 8UL);
  ldv_memset((void *)(& ldvarg65), 0, 8UL);
  ldv_memset((void *)(& ldvarg68), 0, 8UL);
  ldv_memset((void *)(& ldvarg76), 0, 4UL);
  ldv_memset((void *)(& ldvarg81), 0, 8UL);
  ldv_memset((void *)(& ldvarg87), 0, 1UL);
  ldv_memset((void *)(& ldvarg94), 0, 8UL);
  ldv_memset((void *)(& ldvarg91), 0, 8UL);
  ldv_memset((void *)(& ldvarg88), 0, 4UL);
  ldv_memset((void *)(& ldvarg89), 0, 8UL);
  ldv_memset((void *)(& ldvarg97), 0, 8UL);
  ldv_memset((void *)(& ldvarg105), 0, 8UL);
  ldv_memset((void *)(& ldvarg119), 0, 8UL);
  ldv_memset((void *)(& ldvarg121), 0, 4UL);
  ldv_memset((void *)(& ldvarg123), 0, 8UL);
  ldv_memset((void *)(& ldvarg134), 0, 8UL);
  ldv_memset((void *)(& ldvarg145), 0, 4UL);
  ldv_memset((void *)(& ldvarg146), 0, 4UL);
  ldv_memset((void *)(& ldvarg148), 0, 8UL);
  ldv_state_variable_33 = 0;
  ldv_state_variable_32 = 0;
  ldv_state_variable_63 = 0;
  ldv_state_variable_21 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_26 = 0;
  ldv_state_variable_18 = 0;
  ldv_state_variable_16 = 0;
  ldv_state_variable_44 = 0;
  ldv_state_variable_55 = 0;
  ldv_state_variable_27 = 0;
  ldv_state_variable_57 = 0;
  ldv_state_variable_61 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_31 = 0;
  ldv_state_variable_35 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_48 = 0;
  ldv_state_variable_65 = 0;
  ldv_state_variable_29 = 0;
  ldv_state_variable_50 = 0;
  ldv_state_variable_39 = 0;
  ldv_state_variable_64 = 0;
  ldv_state_variable_58 = 0;
  ldv_state_variable_41 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_52 = 0;
  ldv_state_variable_60 = 0;
  ldv_state_variable_56 = 0;
  ldv_state_variable_66 = 0;
  ldv_state_variable_45 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_62 = 0;
  ldv_state_variable_54 = 0;
  ldv_state_variable_67 = 0;
  ldv_state_variable_70 = 0;
  ldv_state_variable_68 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_17 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_30 = 0;
  ldv_state_variable_25 = 0;
  ldv_state_variable_28 = 0;
  ldv_state_variable_40 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_69 = 0;
  ldv_state_variable_59 = 0;
  ldv_state_variable_49 = 0;
  ldv_state_variable_24 = 0;
  ldv_state_variable_53 = 0;
  ldv_state_variable_22 = 0;
  ldv_state_variable_42 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_46 = 0;
  ldv_state_variable_23 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_36 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_51 = 0;
  ldv_state_variable_47 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_38 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_34 = 0;
  ldv_state_variable_37 = 0;
  ldv_state_variable_43 = 0;
  ldv_state_variable_5 = 0;
  ldv_38312:
  tmp___124 = __VERIFIER_nondet_int();
  switch (tmp___124) {
  case 0: ;
  if (ldv_state_variable_33 != 0) {
    tmp___125 = __VERIFIER_nondet_int();
    switch (tmp___125) {
    case 0: ;
    if (ldv_state_variable_33 == 1) {
      light_write(ldvarg1);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_37947;
    case 1: ;
    if (ldv_state_variable_33 == 1) {
      light_exit();
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_37947;
    case 2: ;
    if (ldv_state_variable_33 == 1) {
      light_read(ldvarg0);
      ldv_state_variable_33 = 1;
    } else {
    }
    goto ldv_37947;
    default:
    ldv_stop();
    }
    ldv_37947: ;
  } else {
  }
  goto ldv_37951;
  case 1: ;
  if (ldv_state_variable_32 != 0) {
    tmp___126 = __VERIFIER_nondet_int();
    switch (tmp___126) {
    case 0: ;
    if (ldv_state_variable_32 == 1) {
      cmos_command_store(ldvarg3, ldvarg5, (char const *)ldvarg4, ldvarg2);
      ldv_state_variable_32 = 1;
    } else {
    }
    goto ldv_37954;
    default:
    ldv_stop();
    }
    ldv_37954: ;
  } else {
  }
  goto ldv_37951;
  case 2: ;
  if (ldv_state_variable_63 != 0) {
    tmp___127 = __VERIFIER_nondet_int();
    switch (tmp___127) {
    case 0: ;
    if (ldv_state_variable_63 == 1) {
      tpacpi_driver_wlsw_emulstate_store(driver_attr_wlsw_emulstate_group0, (char const *)ldvarg8,
                                         ldvarg7);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_37958;
    case 1: ;
    if (ldv_state_variable_63 == 1) {
      tpacpi_driver_wlsw_emulstate_show(driver_attr_wlsw_emulstate_group0, ldvarg6);
      ldv_state_variable_63 = 1;
    } else {
    }
    goto ldv_37958;
    default:
    ldv_stop();
    }
    ldv_37958: ;
  } else {
  }
  goto ldv_37951;
  case 3: ;
  if (ldv_state_variable_21 != 0) {
    tmp___128 = __VERIFIER_nondet_int();
    switch (tmp___128) {
    case 0: ;
    if (ldv_state_variable_21 == 1) {
      fan_pwm1_enable_store(dev_attr_pwm1_enable_group1, dev_attr_pwm1_enable_group0,
                            (char const *)ldvarg11, ldvarg10);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_37963;
    case 1: ;
    if (ldv_state_variable_21 == 1) {
      fan_pwm1_enable_show(dev_attr_pwm1_enable_group1, dev_attr_pwm1_enable_group0,
                           ldvarg9);
      ldv_state_variable_21 = 1;
    } else {
    }
    goto ldv_37963;
    default:
    ldv_stop();
    }
    ldv_37963: ;
  } else {
  }
  goto ldv_37951;
  case 4: ;
  if (ldv_state_variable_7 != 0) {
    tmp___129 = __VERIFIER_nondet_int();
    switch (tmp___129) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      set_ibm_param((char const *)ldvarg12, ldvarg13);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37968;
    default:
    ldv_stop();
    }
    ldv_37968: ;
  } else {
  }
  goto ldv_37951;
  case 5: ;
  if (ldv_state_variable_26 != 0) {
    tmp___130 = __VERIFIER_nondet_int();
    switch (tmp___130) {
    case 0: ;
    if (ldv_state_variable_26 == 1) {
      brightness_write(ldvarg15);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_37972;
    case 1: ;
    if (ldv_state_variable_26 == 1) {
      brightness_exit();
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_37972;
    case 2: ;
    if (ldv_state_variable_26 == 1) {
      brightness_read(ldvarg14);
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_37972;
    case 3: ;
    if (ldv_state_variable_26 == 1) {
      brightness_shutdown();
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_37972;
    case 4: ;
    if (ldv_state_variable_26 == 1) {
      brightness_suspend();
      ldv_state_variable_26 = 1;
    } else {
    }
    goto ldv_37972;
    default:
    ldv_stop();
    }
    ldv_37972: ;
  } else {
  }
  goto ldv_37951;
  case 6: ;
  if (ldv_state_variable_18 != 0) {
    tmp___131 = __VERIFIER_nondet_int();
    switch (tmp___131) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      fan_fan2_input_show(ldvarg16, ldvarg18, ldvarg17);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_37980;
    default:
    ldv_stop();
    }
    ldv_37980: ;
  } else {
  }
  goto ldv_37951;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    tmp___132 = __VERIFIER_nondet_int();
    switch (tmp___132) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      fan_write(ldvarg20);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_37984;
    case 1: ;
    if (ldv_state_variable_16 == 1) {
      fan_exit();
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_37984;
    case 2: ;
    if (ldv_state_variable_16 == 1) {
      fan_read(ldvarg19);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_37984;
    case 3: ;
    if (ldv_state_variable_16 == 1) {
      fan_suspend();
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_37984;
    case 4: ;
    if (ldv_state_variable_16 == 1) {
      fan_resume();
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_37984;
    default:
    ldv_stop();
    }
    ldv_37984: ;
  } else {
  }
  goto ldv_37951;
  case 8: ;
  if (ldv_state_variable_44 != 0) {
    tmp___133 = __VERIFIER_nondet_int();
    switch (tmp___133) {
    case 0: ;
    if (ldv_state_variable_44 == 1) {
      hotkey_write(ldvarg22);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_37992;
    case 1: ;
    if (ldv_state_variable_44 == 1) {
      hotkey_exit();
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_37992;
    case 2: ;
    if (ldv_state_variable_44 == 1) {
      hotkey_read(ldvarg21);
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_37992;
    case 3: ;
    if (ldv_state_variable_44 == 1) {
      hotkey_suspend();
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_37992;
    case 4: ;
    if (ldv_state_variable_44 == 1) {
      hotkey_resume();
      ldv_state_variable_44 = 1;
    } else {
    }
    goto ldv_37992;
    default:
    ldv_stop();
    }
    ldv_37992: ;
  } else {
  }
  goto ldv_37951;
  case 9: ;
  if (ldv_state_variable_55 != 0) {
    tmp___134 = __VERIFIER_nondet_int();
    switch (tmp___134) {
    case 0: ;
    if (ldv_state_variable_55 == 1) {
      hotkey_bios_mask_show(ldvarg23, ldvarg25, ldvarg24);
      ldv_state_variable_55 = 1;
    } else {
    }
    goto ldv_38000;
    default:
    ldv_stop();
    }
    ldv_38000: ;
  } else {
  }
  goto ldv_37951;
  case 10: ;
  if (ldv_state_variable_27 != 0) {
    tmp___135 = __VERIFIER_nondet_int();
    switch (tmp___135) {
    case 0: ;
    if (ldv_state_variable_27 == 1) {
      brightness_get(ibm_backlight_data_group0);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_38004;
    case 1: ;
    if (ldv_state_variable_27 == 1) {
      brightness_update_status(ibm_backlight_data_group0);
      ldv_state_variable_27 = 1;
    } else {
    }
    goto ldv_38004;
    default:
    ldv_stop();
    }
    ldv_38004: ;
  } else {
  }
  goto ldv_37951;
  case 11: ;
  if (ldv_state_variable_57 != 0) {
    tmp___136 = __VERIFIER_nondet_int();
    switch (tmp___136) {
    case 0: ;
    if (ldv_state_variable_57 == 1) {
      hotkey_mask_store(dev_attr_hotkey_mask_group1, dev_attr_hotkey_mask_group0,
                        (char const *)ldvarg28, ldvarg27);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_38009;
    case 1: ;
    if (ldv_state_variable_57 == 1) {
      hotkey_mask_show(dev_attr_hotkey_mask_group1, dev_attr_hotkey_mask_group0, ldvarg26);
      ldv_state_variable_57 = 1;
    } else {
    }
    goto ldv_38009;
    default:
    ldv_stop();
    }
    ldv_38009: ;
  } else {
  }
  goto ldv_37951;
  case 12: ;
  if (ldv_state_variable_61 != 0) {
    tmp___137 = __VERIFIER_nondet_int();
    switch (tmp___137) {
    case 0: ;
    if (ldv_state_variable_61 == 1) {
      tpacpi_driver_wwan_emulstate_store(driver_attr_wwan_emulstate_group0, (char const *)ldvarg31,
                                         ldvarg30);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_38014;
    case 1: ;
    if (ldv_state_variable_61 == 1) {
      tpacpi_driver_wwan_emulstate_show(driver_attr_wwan_emulstate_group0, ldvarg29);
      ldv_state_variable_61 = 1;
    } else {
    }
    goto ldv_38014;
    default:
    ldv_stop();
    }
    ldv_38014: ;
  } else {
  }
  goto ldv_37951;
  case 13: ;
  if (ldv_state_variable_20 != 0) {
    tmp___138 = __VERIFIER_nondet_int();
    switch (tmp___138) {
    case 0: ;
    if (ldv_state_variable_20 == 1) {
      fan_pwm1_store(dev_attr_pwm1_group1, dev_attr_pwm1_group0, (char const *)ldvarg34,
                     ldvarg33);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_38019;
    case 1: ;
    if (ldv_state_variable_20 == 1) {
      fan_pwm1_show(dev_attr_pwm1_group1, dev_attr_pwm1_group0, ldvarg32);
      ldv_state_variable_20 = 1;
    } else {
    }
    goto ldv_38019;
    default:
    ldv_stop();
    }
    ldv_38019: ;
  } else {
  }
  goto ldv_37951;
  case 14: ;
  if (ldv_state_variable_10 != 0) {
    tmp___139 = __VERIFIER_nondet_int();
    switch (tmp___139) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      set_ibm_param((char const *)ldvarg35, ldvarg36);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_38024;
    default:
    ldv_stop();
    }
    ldv_38024: ;
  } else {
  }
  goto ldv_37951;
  case 15: ;
  if (ldv_state_variable_31 != 0) {
    tmp___140 = __VERIFIER_nondet_int();
    switch (tmp___140) {
    case 0: ;
    if (ldv_state_variable_31 == 1) {
      cmos_write(ldvarg38);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_38028;
    case 1: ;
    if (ldv_state_variable_31 == 1) {
      cmos_exit();
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_38028;
    case 2: ;
    if (ldv_state_variable_31 == 1) {
      cmos_read(ldvarg37);
      ldv_state_variable_31 = 1;
    } else {
    }
    goto ldv_38028;
    default:
    ldv_stop();
    }
    ldv_38028: ;
  } else {
  }
  goto ldv_37951;
  case 16: ;
  if (ldv_state_variable_35 != 0) {
    tmp___141 = __VERIFIER_nondet_int();
    switch (tmp___141) {
    case 0: ;
    if (ldv_state_variable_35 == 1) {
      video_write(ldvarg40);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_38034;
    case 1: ;
    if (ldv_state_variable_35 == 1) {
      video_exit();
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_38034;
    case 2: ;
    if (ldv_state_variable_35 == 1) {
      video_read(ldvarg39);
      ldv_state_variable_35 = 1;
    } else {
    }
    goto ldv_38034;
    default:
    ldv_stop();
    }
    ldv_38034: ;
  } else {
  }
  goto ldv_37951;
  case 17: ;
  if (ldv_state_variable_11 != 0) {
    tmp___142 = __VERIFIER_nondet_int();
    switch (tmp___142) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      set_ibm_param((char const *)ldvarg41, ldvarg42);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_38040;
    default:
    ldv_stop();
    }
    ldv_38040: ;
  } else {
  }
  goto ldv_37951;
  case 18: ;
  if (ldv_state_variable_48 != 0) {
    tmp___143 = __VERIFIER_nondet_int();
    switch (tmp___143) {
    case 0: ;
    if (ldv_state_variable_48 == 1) {
      hotkey_wakeup_reason_show(ldvarg43, ldvarg45, ldvarg44);
      ldv_state_variable_48 = 1;
    } else {
    }
    goto ldv_38044;
    default:
    ldv_stop();
    }
    ldv_38044: ;
  } else {
  }
  goto ldv_37951;
  case 19: ;
  if (ldv_state_variable_65 != 0) {
    tmp___144 = __VERIFIER_nondet_int();
    switch (tmp___144) {
    case 0: ;
    if (ldv_state_variable_65 == 1) {
      tpacpi_driver_debug_store(driver_attr_debug_level_group0, (char const *)ldvarg48,
                                ldvarg47);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_38048;
    case 1: ;
    if (ldv_state_variable_65 == 1) {
      tpacpi_driver_debug_show(driver_attr_debug_level_group0, ldvarg46);
      ldv_state_variable_65 = 1;
    } else {
    }
    goto ldv_38048;
    default:
    ldv_stop();
    }
    ldv_38048: ;
  } else {
  }
  goto ldv_37951;
  case 20: ;
  if (ldv_state_variable_29 != 0) {
    tmp___145 = __VERIFIER_nondet_int();
    switch (tmp___145) {
    case 0: ;
    if (ldv_state_variable_29 == 2) {
      beep_write(ldvarg50);
      ldv_state_variable_29 = 2;
    } else {
    }
    goto ldv_38053;
    case 1: ;
    if (ldv_state_variable_29 == 2) {
      beep_read(ldvarg49);
      ldv_state_variable_29 = 2;
    } else {
    }
    goto ldv_38053;
    case 2: ;
    if (ldv_state_variable_29 == 2) {
      ldv_release_29();
      ldv_state_variable_29 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38053;
    case 3: ;
    if (ldv_state_variable_29 == 1) {
      ldv_probe_29();
      ldv_state_variable_29 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_38053;
    default:
    ldv_stop();
    }
    ldv_38053: ;
  } else {
  }
  goto ldv_37951;
  case 21: ;
  if (ldv_state_variable_50 != 0) {
    tmp___146 = __VERIFIER_nondet_int();
    switch (tmp___146) {
    case 0: ;
    if (ldv_state_variable_50 == 1) {
      hotkey_radio_sw_show(ldvarg51, ldvarg53, ldvarg52);
      ldv_state_variable_50 = 1;
    } else {
    }
    goto ldv_38060;
    default:
    ldv_stop();
    }
    ldv_38060: ;
  } else {
  }
  goto ldv_37951;
  case 22: ;
  if (ldv_state_variable_39 != 0) {
    tmp___147 = __VERIFIER_nondet_int();
    switch (tmp___147) {
    case 0: ;
    if (ldv_state_variable_39 == 1) {
      wan_set_status(ldvarg54);
      ldv_state_variable_39 = 1;
    } else {
    }
    goto ldv_38064;
    case 1: ;
    if (ldv_state_variable_39 == 1) {
      wan_get_status();
      ldv_state_variable_39 = 1;
    } else {
    }
    goto ldv_38064;
    default:
    ldv_stop();
    }
    ldv_38064: ;
  } else {
  }
  goto ldv_37951;
  case 23: ;
  if (ldv_state_variable_64 != 0) {
    tmp___148 = __VERIFIER_nondet_int();
    switch (tmp___148) {
    case 0: ;
    if (ldv_state_variable_64 == 1) {
      tpacpi_driver_version_show(ldvarg55, ldvarg56);
      ldv_state_variable_64 = 1;
    } else {
    }
    goto ldv_38069;
    default:
    ldv_stop();
    }
    ldv_38069: ;
  } else {
  }
  goto ldv_37951;
  case 24: ;
  if (ldv_state_variable_58 != 0) {
    tmp___149 = __VERIFIER_nondet_int();
    switch (tmp___149) {
    case 0: ;
    if (ldv_state_variable_58 == 1) {
      hotkey_enable_store(dev_attr_hotkey_enable_group1, dev_attr_hotkey_enable_group0,
                          (char const *)ldvarg59, ldvarg58);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_38073;
    case 1: ;
    if (ldv_state_variable_58 == 1) {
      hotkey_enable_show(dev_attr_hotkey_enable_group1, dev_attr_hotkey_enable_group0,
                         ldvarg57);
      ldv_state_variable_58 = 1;
    } else {
    }
    goto ldv_38073;
    default:
    ldv_stop();
    }
    ldv_38073: ;
  } else {
  }
  goto ldv_37951;
  case 25: ;
  if (ldv_state_variable_41 != 0) {
    tmp___150 = __VERIFIER_nondet_int();
    switch (tmp___150) {
    case 0: ;
    if (ldv_state_variable_41 == 1) {
      bluetooth_write(ldvarg61);
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_38078;
    case 1: ;
    if (ldv_state_variable_41 == 1) {
      bluetooth_exit();
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_38078;
    case 2: ;
    if (ldv_state_variable_41 == 1) {
      bluetooth_read(ldvarg60);
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_38078;
    case 3: ;
    if (ldv_state_variable_41 == 1) {
      bluetooth_shutdown();
      ldv_state_variable_41 = 1;
    } else {
    }
    goto ldv_38078;
    default:
    ldv_stop();
    }
    ldv_38078: ;
  } else {
  }
  goto ldv_37951;
  case 26: ;
  if (ldv_state_variable_12 != 0) {
    tmp___151 = __VERIFIER_nondet_int();
    switch (tmp___151) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      set_ibm_param((char const *)ldvarg62, ldvarg63);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_38085;
    default:
    ldv_stop();
    }
    ldv_38085: ;
  } else {
  }
  goto ldv_37951;
  case 27: ;
  if (ldv_state_variable_15 != 0) {
    tmp___152 = __VERIFIER_nondet_int();
    switch (tmp___152) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      mute_led_exit();
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_38089;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      mute_led_resume();
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_38089;
    default:
    ldv_stop();
    }
    ldv_38089: ;
  } else {
  }
  goto ldv_37951;
  case 28: ;
  if (ldv_state_variable_52 != 0) {
    tmp___153 = __VERIFIER_nondet_int();
    switch (tmp___153) {
    case 0: ;
    if (ldv_state_variable_52 == 1) {
      hotkey_source_mask_store(dev_attr_hotkey_source_mask_group1, dev_attr_hotkey_source_mask_group0,
                               (char const *)ldvarg66, ldvarg65);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_38094;
    case 1: ;
    if (ldv_state_variable_52 == 1) {
      hotkey_source_mask_show(dev_attr_hotkey_source_mask_group1, dev_attr_hotkey_source_mask_group0,
                              ldvarg64);
      ldv_state_variable_52 = 1;
    } else {
    }
    goto ldv_38094;
    default:
    ldv_stop();
    }
    ldv_38094: ;
  } else {
  }
  goto ldv_37951;
  case 29: ;
  if (ldv_state_variable_60 != 0) {
    tmp___154 = __VERIFIER_nondet_int();
    switch (tmp___154) {
    case 0: ;
    if (ldv_state_variable_60 == 1) {
      tpacpi_driver_uwb_emulstate_store(driver_attr_uwb_emulstate_group0, (char const *)ldvarg69,
                                        ldvarg68);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_38099;
    case 1: ;
    if (ldv_state_variable_60 == 1) {
      tpacpi_driver_uwb_emulstate_show(driver_attr_uwb_emulstate_group0, ldvarg67);
      ldv_state_variable_60 = 1;
    } else {
    }
    goto ldv_38099;
    default:
    ldv_stop();
    }
    ldv_38099: ;
  } else {
  }
  goto ldv_37951;
  case 30: ;
  if (ldv_state_variable_56 != 0) {
    tmp___155 = __VERIFIER_nondet_int();
    switch (tmp___155) {
    case 0: ;
    if (ldv_state_variable_56 == 1) {
      hotkey_bios_enabled_show(ldvarg70, ldvarg72, ldvarg71);
      ldv_state_variable_56 = 1;
    } else {
    }
    goto ldv_38104;
    default:
    ldv_stop();
    }
    ldv_38104: ;
  } else {
  }
  goto ldv_37951;
  case 31: ;
  if (ldv_state_variable_66 != 0) {
    tmp___156 = __VERIFIER_nondet_int();
    switch (tmp___156) {
    case 0: ;
    if (ldv_state_variable_66 == 1) {
      tpacpi_driver_interface_version_show(ldvarg73, ldvarg74);
      ldv_state_variable_66 = 1;
    } else {
    }
    goto ldv_38108;
    default:
    ldv_stop();
    }
    ldv_38108: ;
  } else {
  }
  goto ldv_37951;
  case 32: ;
  if (ldv_state_variable_45 != 0) {
    tmp___157 = __VERIFIER_nondet_int();
    switch (tmp___157) {
    case 0: ;
    if (ldv_state_variable_45 == 1) {
      hotkey_notify(ldvarg75, ldvarg76);
      ldv_state_variable_45 = 1;
    } else {
    }
    goto ldv_38112;
    default:
    ldv_stop();
    }
    ldv_38112: ;
  } else {
  }
  goto ldv_37951;
  case 33: ;
  if (ldv_state_variable_19 != 0) {
    tmp___158 = __VERIFIER_nondet_int();
    switch (tmp___158) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      fan_fan1_input_show(ldvarg77, ldvarg79, ldvarg78);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_38116;
    default:
    ldv_stop();
    }
    ldv_38116: ;
  } else {
  }
  goto ldv_37951;
  case 34: ;
  if (ldv_state_variable_62 != 0) {
    tmp___159 = __VERIFIER_nondet_int();
    switch (tmp___159) {
    case 0: ;
    if (ldv_state_variable_62 == 1) {
      tpacpi_driver_bluetooth_emulstate_store(driver_attr_bluetooth_emulstate_group0,
                                              (char const *)ldvarg82, ldvarg81);
      ldv_state_variable_62 = 1;
    } else {
    }
    goto ldv_38120;
    case 1: ;
    if (ldv_state_variable_62 == 1) {
      tpacpi_driver_bluetooth_emulstate_show(driver_attr_bluetooth_emulstate_group0,
                                             ldvarg80);
      ldv_state_variable_62 = 1;
    } else {
    }
    goto ldv_38120;
    default:
    ldv_stop();
    }
    ldv_38120: ;
  } else {
  }
  goto ldv_37951;
  case 35: ;
  if (ldv_state_variable_54 != 0) {
    tmp___160 = __VERIFIER_nondet_int();
    switch (tmp___160) {
    case 0: ;
    if (ldv_state_variable_54 == 1) {
      hotkey_all_mask_show(ldvarg83, ldvarg85, ldvarg84);
      ldv_state_variable_54 = 1;
    } else {
    }
    goto ldv_38125;
    default:
    ldv_stop();
    }
    ldv_38125: ;
  } else {
  }
  goto ldv_37951;
  case 36: ;
  if (ldv_state_variable_67 != 0) {
    tmp___161 = __VERIFIER_nondet_int();
    switch (tmp___161) {
    case 0: ;
    if (ldv_state_variable_67 == 1) {
      tpacpi_rfk_hook_set_block(ldvarg86, (int )ldvarg87);
      ldv_state_variable_67 = 1;
    } else {
    }
    goto ldv_38129;
    default:
    ldv_stop();
    }
    ldv_38129: ;
  } else {
  }
  goto ldv_37951;
  case 37: ;
  if (ldv_state_variable_70 != 0) {
    tmp___162 = __VERIFIER_nondet_int();
    switch (tmp___162) {
    case 0: ;
    if (ldv_state_variable_70 == 1) {
      dispatch_proc_write(dispatch_proc_fops_group2, (char const *)ldvarg95, ldvarg94,
                          ldvarg93);
      ldv_state_variable_70 = 1;
    } else {
    }
    if (ldv_state_variable_70 == 2) {
      dispatch_proc_write(dispatch_proc_fops_group2, (char const *)ldvarg95, ldvarg94,
                          ldvarg93);
      ldv_state_variable_70 = 2;
    } else {
    }
    goto ldv_38133;
    case 1: ;
    if (ldv_state_variable_70 == 2) {
      single_release(dispatch_proc_fops_group1, dispatch_proc_fops_group2);
      ldv_state_variable_70 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38133;
    case 2: ;
    if (ldv_state_variable_70 == 2) {
      seq_read(dispatch_proc_fops_group2, ldvarg92, ldvarg91, ldvarg90);
      ldv_state_variable_70 = 2;
    } else {
    }
    goto ldv_38133;
    case 3: ;
    if (ldv_state_variable_70 == 2) {
      seq_lseek(dispatch_proc_fops_group2, ldvarg89, ldvarg88);
      ldv_state_variable_70 = 2;
    } else {
    }
    goto ldv_38133;
    case 4: ;
    if (ldv_state_variable_70 == 1) {
      ldv_retval_0 = dispatch_proc_open(dispatch_proc_fops_group1, dispatch_proc_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_70 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38133;
    default:
    ldv_stop();
    }
    ldv_38133: ;
  } else {
  }
  goto ldv_37951;
  case 38: ;
  if (ldv_state_variable_68 != 0) {
    tmp___163 = __VERIFIER_nondet_int();
    switch (tmp___163) {
    case 0: ;
    if (ldv_state_variable_68 == 2) {
      tpacpi_shutdown_handler(tpacpi_pdriver_group1);
      ldv_state_variable_68 = 3;
    } else {
    }
    goto ldv_38141;
    case 1: ;
    if (ldv_state_variable_68 == 4) {
      ldv_retval_4 = ldv_resume_68();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_68 = 2;
      } else {
      }
    } else {
    }
    goto ldv_38141;
    case 2: ;
    if (ldv_state_variable_68 == 3) {
      ldv_retval_3 = ldv_suspend_68();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_68 = 4;
      } else {
      }
    } else {
    }
    goto ldv_38141;
    case 3: ;
    if (ldv_state_variable_68 == 1 && probed_68 == 1) {
      ldv_retval_2 = ldv_remove_68();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_68 = 1;
        ref_cnt = ref_cnt - 1;
        probed_68 = 0;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_68 == 2 && probed_68 == 1) {
      ldv_retval_2 = ldv_remove_68();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_68 = 1;
        ref_cnt = ref_cnt - 1;
        probed_68 = 0;
      } else {
      }
    } else {
    }
    goto ldv_38141;
    case 4: ;
    if (ldv_state_variable_68 == 1) {
      ldv_retval_1 = ldv_probe_68();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_68 = 2;
        ref_cnt = ref_cnt + 1;
        probed_68 = 1;
      } else {
      }
    } else {
    }
    goto ldv_38141;
    default:
    ldv_stop();
    }
    ldv_38141: ;
  } else {
  }
  goto ldv_37951;
  case 39: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_37951;
  case 40: ;
  if (ldv_state_variable_17 != 0) {
    tmp___164 = __VERIFIER_nondet_int();
    switch (tmp___164) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      fan_fan_watchdog_store(driver_attr_fan_watchdog_group0, (char const *)ldvarg98,
                             ldvarg97);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_38150;
    case 1: ;
    if (ldv_state_variable_17 == 1) {
      fan_fan_watchdog_show(driver_attr_fan_watchdog_group0, ldvarg96);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_38150;
    default:
    ldv_stop();
    }
    ldv_38150: ;
  } else {
  }
  goto ldv_37951;
  case 41: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_37951;
  case 42: ;
  if (ldv_state_variable_30 != 0) {
    tmp___165 = __VERIFIER_nondet_int();
    switch (tmp___165) {
    case 0: ;
    if (ldv_state_variable_30 == 1) {
      led_write(ldvarg100);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_38156;
    case 1: ;
    if (ldv_state_variable_30 == 1) {
      led_exit();
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_38156;
    case 2: ;
    if (ldv_state_variable_30 == 1) {
      led_read(ldvarg99);
      ldv_state_variable_30 = 1;
    } else {
    }
    goto ldv_38156;
    default:
    ldv_stop();
    }
    ldv_38156: ;
  } else {
  }
  goto ldv_37951;
  case 43: ;
  if (ldv_state_variable_25 != 0) {
    tmp___166 = __VERIFIER_nondet_int();
    switch (tmp___166) {
    case 0: ;
    if (ldv_state_variable_25 == 1) {
      volume_alsa_vol_get(volume_alsa_control_vol_group0, ldvarg102);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_38162;
    case 1: ;
    if (ldv_state_variable_25 == 1) {
      volume_alsa_vol_info(volume_alsa_control_vol_group0, ldvarg101);
      ldv_state_variable_25 = 1;
    } else {
    }
    goto ldv_38162;
    default:
    ldv_stop();
    }
    ldv_38162: ;
  } else {
  }
  goto ldv_37951;
  case 44: ;
  if (ldv_state_variable_28 != 0) {
    tmp___167 = __VERIFIER_nondet_int();
    switch (tmp___167) {
    case 0: ;
    if (ldv_state_variable_28 == 1) {
      thermal_exit();
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_38167;
    case 1: ;
    if (ldv_state_variable_28 == 1) {
      thermal_read(ldvarg103);
      ldv_state_variable_28 = 1;
    } else {
    }
    goto ldv_38167;
    default:
    ldv_stop();
    }
    ldv_38167: ;
  } else {
  }
  goto ldv_37951;
  case 45: ;
  if (ldv_state_variable_40 != 0) {
    tmp___168 = __VERIFIER_nondet_int();
    switch (tmp___168) {
    case 0: ;
    if (ldv_state_variable_40 == 1) {
      wan_enable_store(dev_attr_wwan_enable_group1, dev_attr_wwan_enable_group0, (char const *)ldvarg106,
                       ldvarg105);
      ldv_state_variable_40 = 1;
    } else {
    }
    goto ldv_38172;
    case 1: ;
    if (ldv_state_variable_40 == 1) {
      wan_enable_show(dev_attr_wwan_enable_group1, dev_attr_wwan_enable_group0, ldvarg104);
      ldv_state_variable_40 = 1;
    } else {
    }
    goto ldv_38172;
    default:
    ldv_stop();
    }
    ldv_38172: ;
  } else {
  }
  goto ldv_37951;
  case 46: ;
  if (ldv_state_variable_14 != 0) {
    tmp___169 = __VERIFIER_nondet_int();
    switch (tmp___169) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      thinkpad_acpi_pdev_name_show(ldvarg107, ldvarg109, ldvarg108);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_38177;
    default:
    ldv_stop();
    }
    ldv_38177: ;
  } else {
  }
  goto ldv_37951;
  case 47: ;
  if (ldv_state_variable_69 != 0) {
    tmp___170 = __VERIFIER_nondet_int();
    switch (tmp___170) {
    case 0: ;
    if (ldv_state_variable_69 == 12) {
      ldv_retval_23 = tpacpi_resume_handler(tpacpi_pm_group1);
      if (ldv_retval_23 == 0) {
        ldv_state_variable_69 = 15;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 1: ;
    if (ldv_state_variable_69 == 13) {
      ldv_retval_22 = tpacpi_resume_handler(tpacpi_pm_group1);
      if (ldv_retval_22 == 0) {
        ldv_state_variable_69 = 15;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 2: ;
    if (ldv_state_variable_69 == 2) {
      ldv_retval_21 = tpacpi_suspend_handler(tpacpi_pm_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_69 = 3;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 3: ;
    if (ldv_state_variable_69 == 2) {
      ldv_retval_20 = tpacpi_suspend_handler(tpacpi_pm_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_69 = 4;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 4: ;
    if (ldv_state_variable_69 == 2) {
      ldv_retval_19 = tpacpi_suspend_handler(tpacpi_pm_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_69 = 5;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 5: ;
    if (ldv_state_variable_69 == 14) {
      ldv_retval_18 = tpacpi_resume_handler(tpacpi_pm_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_69 = 15;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 6: ;
    if (ldv_state_variable_69 == 5) {
      ldv_retval_17 = ldv_suspend_late_69();
      if (ldv_retval_17 == 0) {
        ldv_state_variable_69 = 10;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 7: ;
    if (ldv_state_variable_69 == 7) {
      ldv_retval_16 = ldv_restore_early_69();
      if (ldv_retval_16 == 0) {
        ldv_state_variable_69 = 12;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 8: ;
    if (ldv_state_variable_69 == 10) {
      ldv_retval_15 = ldv_resume_early_69();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_69 = 14;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 9: ;
    if (ldv_state_variable_69 == 9) {
      ldv_retval_14 = ldv_thaw_early_69();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_69 = 13;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 10: ;
    if (ldv_state_variable_69 == 11) {
      ldv_retval_13 = ldv_resume_noirq_69();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_69 = 14;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 11: ;
    if (ldv_state_variable_69 == 4) {
      ldv_retval_12 = ldv_freeze_noirq_69();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_69 = 8;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 12: ;
    if (ldv_state_variable_69 == 1) {
      ldv_retval_11 = ldv_prepare_69();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_69 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 13: ;
    if (ldv_state_variable_69 == 4) {
      ldv_retval_10 = ldv_freeze_late_69();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_69 = 9;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 14: ;
    if (ldv_state_variable_69 == 8) {
      ldv_retval_9 = ldv_thaw_noirq_69();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_69 = 13;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 15: ;
    if (ldv_state_variable_69 == 3) {
      ldv_retval_8 = ldv_poweroff_noirq_69();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_69 = 6;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 16: ;
    if (ldv_state_variable_69 == 3) {
      ldv_retval_7 = ldv_poweroff_late_69();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_69 = 7;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 17: ;
    if (ldv_state_variable_69 == 6) {
      ldv_retval_6 = ldv_restore_noirq_69();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_69 = 12;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 18: ;
    if (ldv_state_variable_69 == 5) {
      ldv_retval_5 = ldv_suspend_noirq_69();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_69 = 11;
      } else {
      }
    } else {
    }
    goto ldv_38181;
    case 19: ;
    if (ldv_state_variable_69 == 15) {
      ldv_complete_69();
      ldv_state_variable_69 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38181;
    default:
    ldv_stop();
    }
    ldv_38181: ;
  } else {
  }
  goto ldv_37951;
  case 48: ;
  if (ldv_state_variable_59 != 0) {
    tmp___171 = __VERIFIER_nondet_int();
    switch (tmp___171) {
    case 0: ;
    if (ldv_state_variable_59 == 2) {
      thinkpad_acpi_driver_read(ldvarg110);
      ldv_state_variable_59 = 2;
    } else {
    }
    goto ldv_38204;
    case 1: ;
    if (ldv_state_variable_59 == 2) {
      ldv_release_59();
      ldv_state_variable_59 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38204;
    case 2: ;
    if (ldv_state_variable_59 == 1) {
      ldv_probe_59();
      ldv_state_variable_59 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_38204;
    default:
    ldv_stop();
    }
    ldv_38204: ;
  } else {
  }
  goto ldv_37951;
  case 49: ;
  if (ldv_state_variable_49 != 0) {
    tmp___172 = __VERIFIER_nondet_int();
    switch (tmp___172) {
    case 0: ;
    if (ldv_state_variable_49 == 1) {
      hotkey_tablet_mode_show(ldvarg111, ldvarg113, ldvarg112);
      ldv_state_variable_49 = 1;
    } else {
    }
    goto ldv_38210;
    default:
    ldv_stop();
    }
    ldv_38210: ;
  } else {
  }
  goto ldv_37951;
  case 50: ;
  if (ldv_state_variable_24 != 0) {
    tmp___173 = __VERIFIER_nondet_int();
    switch (tmp___173) {
    case 0: ;
    if (ldv_state_variable_24 == 1) {
      volume_alsa_mute_get(volume_alsa_control_mute_group0, ldvarg115);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_38214;
    case 1: ;
    if (ldv_state_variable_24 == 1) {
      snd_ctl_boolean_mono_info(volume_alsa_control_mute_group0, ldvarg114);
      ldv_state_variable_24 = 1;
    } else {
    }
    goto ldv_38214;
    default:
    ldv_stop();
    }
    ldv_38214: ;
  } else {
  }
  goto ldv_37951;
  case 51: ;
  if (ldv_state_variable_53 != 0) {
    tmp___174 = __VERIFIER_nondet_int();
    switch (tmp___174) {
    case 0: ;
    if (ldv_state_variable_53 == 1) {
      hotkey_recommended_mask_show(ldvarg116, ldvarg118, ldvarg117);
      ldv_state_variable_53 = 1;
    } else {
    }
    goto ldv_38219;
    default:
    ldv_stop();
    }
    ldv_38219: ;
  } else {
  }
  goto ldv_37951;
  case 52: ;
  if (ldv_state_variable_22 != 0) {
    tmp___175 = __VERIFIER_nondet_int();
    switch (tmp___175) {
    case 0: ;
    if (ldv_state_variable_22 == 1) {
      fan_watchdog_fire(ldvarg120);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_38223;
    case 1: ;
    if (ldv_state_variable_22 == 1) {
      delayed_work_timer_fn(ldvarg119);
      ldv_state_variable_22 = 1;
    } else {
    }
    goto ldv_38223;
    default:
    ldv_stop();
    }
    ldv_38223: ;
  } else {
  }
  goto ldv_37951;
  case 53: ;
  if (ldv_state_variable_42 != 0) {
    tmp___176 = __VERIFIER_nondet_int();
    switch (tmp___176) {
    case 0: ;
    if (ldv_state_variable_42 == 1) {
      bluetooth_set_status(ldvarg121);
      ldv_state_variable_42 = 1;
    } else {
    }
    goto ldv_38228;
    case 1: ;
    if (ldv_state_variable_42 == 1) {
      bluetooth_get_status();
      ldv_state_variable_42 = 1;
    } else {
    }
    goto ldv_38228;
    default:
    ldv_stop();
    }
    ldv_38228: ;
  } else {
  }
  goto ldv_37951;
  case 54: ;
  if (ldv_state_variable_0 != 0) {
    tmp___177 = __VERIFIER_nondet_int();
    switch (tmp___177) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      thinkpad_acpi_module_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_38234;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_24 = thinkpad_acpi_module_init();
      if (ldv_retval_24 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_43 = 1;
        ldv_initialize_device_attribute_43();
        ldv_state_variable_37 = 1;
        ldv_state_variable_34 = 1;
        ldv_initialize_tpacpi_led_classdev_34();
        ldv_state_variable_4 = 1;
        ldv_state_variable_38 = 1;
        ldv_state_variable_8 = 1;
        ldv_state_variable_47 = 1;
        ldv_state_variable_51 = 1;
        ldv_initialize_device_attribute_51();
        ldv_state_variable_9 = 1;
        ldv_state_variable_36 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_state_variable_23 = 1;
        ldv_state_variable_46 = 1;
        ldv_initialize_device_attribute_46();
        ldv_state_variable_42 = 1;
        ldv_state_variable_22 = 1;
        ldv_state_variable_53 = 1;
        ldv_state_variable_24 = 1;
        ldv_initialize_snd_kcontrol_new_24();
        ldv_state_variable_49 = 1;
        ldv_state_variable_59 = 1;
        ldv_state_variable_69 = 1;
        ldv_dev_pm_ops_69();
        ldv_state_variable_14 = 1;
        ldv_state_variable_40 = 1;
        ldv_initialize_device_attribute_40();
        ldv_state_variable_28 = 1;
        ldv_state_variable_25 = 1;
        ldv_initialize_snd_kcontrol_new_25();
        ldv_state_variable_30 = 1;
        ldv_state_variable_17 = 1;
        ldv_initialize_driver_attribute_17();
        ldv_state_variable_70 = 1;
        ldv_file_operations_70();
        ldv_state_variable_67 = 1;
        ldv_state_variable_54 = 1;
        ldv_state_variable_62 = 1;
        ldv_initialize_driver_attribute_62();
        ldv_state_variable_19 = 1;
        ldv_state_variable_45 = 1;
        ldv_state_variable_66 = 1;
        ldv_state_variable_56 = 1;
        ldv_state_variable_60 = 1;
        ldv_initialize_driver_attribute_60();
        ldv_state_variable_52 = 1;
        ldv_initialize_device_attribute_52();
        ldv_state_variable_15 = 1;
        ldv_state_variable_12 = 1;
        ldv_state_variable_41 = 1;
        ldv_state_variable_58 = 1;
        ldv_initialize_device_attribute_58();
        ldv_state_variable_64 = 1;
        ldv_state_variable_39 = 1;
        ldv_state_variable_50 = 1;
        ldv_state_variable_29 = 1;
        ldv_state_variable_65 = 1;
        ldv_initialize_driver_attribute_65();
        ldv_state_variable_48 = 1;
        ldv_state_variable_11 = 1;
        ldv_state_variable_35 = 1;
        ldv_state_variable_31 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_20 = 1;
        ldv_initialize_device_attribute_20();
        ldv_state_variable_61 = 1;
        ldv_initialize_driver_attribute_61();
        ldv_state_variable_57 = 1;
        ldv_initialize_device_attribute_57();
        ldv_state_variable_27 = 1;
        ldv_initialize_backlight_ops_27();
        ldv_state_variable_55 = 1;
        ldv_state_variable_44 = 1;
        ldv_state_variable_16 = 1;
        ldv_state_variable_18 = 1;
        ldv_state_variable_26 = 1;
        ldv_state_variable_7 = 1;
        ldv_state_variable_21 = 1;
        ldv_initialize_device_attribute_21();
        ldv_state_variable_63 = 1;
        ldv_initialize_driver_attribute_63();
        ldv_state_variable_32 = 1;
        ldv_state_variable_33 = 1;
      } else {
      }
      if (ldv_retval_24 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_38234;
    default:
    ldv_stop();
    }
    ldv_38234: ;
  } else {
  }
  goto ldv_37951;
  case 55: ;
  if (ldv_state_variable_46 != 0) {
    tmp___178 = __VERIFIER_nondet_int();
    switch (tmp___178) {
    case 0: ;
    if (ldv_state_variable_46 == 1) {
      adaptive_kbd_mode_store(dev_attr_adaptive_kbd_mode_group1, dev_attr_adaptive_kbd_mode_group0,
                              (char const *)ldvarg124, ldvarg123);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_38239;
    case 1: ;
    if (ldv_state_variable_46 == 1) {
      adaptive_kbd_mode_show(dev_attr_adaptive_kbd_mode_group1, dev_attr_adaptive_kbd_mode_group0,
                             ldvarg122);
      ldv_state_variable_46 = 1;
    } else {
    }
    goto ldv_38239;
    default:
    ldv_stop();
    }
    ldv_38239: ;
  } else {
  }
  goto ldv_37951;
  case 56: ;
  if (ldv_state_variable_23 != 0) {
    tmp___179 = __VERIFIER_nondet_int();
    switch (tmp___179) {
    case 0: ;
    if (ldv_state_variable_23 == 1) {
      volume_write(ldvarg126);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    case 1: ;
    if (ldv_state_variable_23 == 1) {
      volume_exit();
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    case 2: ;
    if (ldv_state_variable_23 == 1) {
      volume_read(ldvarg125);
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    case 3: ;
    if (ldv_state_variable_23 == 1) {
      volume_shutdown();
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    case 4: ;
    if (ldv_state_variable_23 == 1) {
      volume_suspend();
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    case 5: ;
    if (ldv_state_variable_23 == 1) {
      volume_resume();
      ldv_state_variable_23 = 1;
    } else {
    }
    goto ldv_38244;
    default:
    ldv_stop();
    }
    ldv_38244: ;
  } else {
  }
  goto ldv_37951;
  case 57: ;
  if (ldv_state_variable_13 != 0) {
    tmp___180 = __VERIFIER_nondet_int();
    switch (tmp___180) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      set_ibm_param((char const *)ldvarg127, ldvarg128);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_38253;
    default:
    ldv_stop();
    }
    ldv_38253: ;
  } else {
  }
  goto ldv_37951;
  case 58: ;
  if (ldv_state_variable_6 != 0) {
    tmp___181 = __VERIFIER_nondet_int();
    switch (tmp___181) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      set_ibm_param((char const *)ldvarg129, ldvarg130);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_38257;
    default:
    ldv_stop();
    }
    ldv_38257: ;
  } else {
  }
  goto ldv_37951;
  case 59: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_37951;
  case 60: ;
  if (ldv_state_variable_36 != 0) {
    tmp___182 = __VERIFIER_nondet_int();
    switch (tmp___182) {
    case 0: ;
    if (ldv_state_variable_36 == 1) {
      uwb_exit();
      ldv_state_variable_36 = 1;
    } else {
    }
    goto ldv_38262;
    default:
    ldv_stop();
    }
    ldv_38262: ;
  } else {
  }
  goto ldv_37951;
  case 61: ;
  if (ldv_state_variable_9 != 0) {
    tmp___183 = __VERIFIER_nondet_int();
    switch (tmp___183) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      set_ibm_param((char const *)ldvarg131, ldvarg132);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_38266;
    default:
    ldv_stop();
    }
    ldv_38266: ;
  } else {
  }
  goto ldv_37951;
  case 62: ;
  if (ldv_state_variable_51 != 0) {
    tmp___184 = __VERIFIER_nondet_int();
    switch (tmp___184) {
    case 0: ;
    if (ldv_state_variable_51 == 1) {
      hotkey_poll_freq_store(dev_attr_hotkey_poll_freq_group1, dev_attr_hotkey_poll_freq_group0,
                             (char const *)ldvarg135, ldvarg134);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_38270;
    case 1: ;
    if (ldv_state_variable_51 == 1) {
      hotkey_poll_freq_show(dev_attr_hotkey_poll_freq_group1, dev_attr_hotkey_poll_freq_group0,
                            ldvarg133);
      ldv_state_variable_51 = 1;
    } else {
    }
    goto ldv_38270;
    default:
    ldv_stop();
    }
    ldv_38270: ;
  } else {
  }
  goto ldv_37951;
  case 63: ;
  if (ldv_state_variable_47 != 0) {
    tmp___185 = __VERIFIER_nondet_int();
    switch (tmp___185) {
    case 0: ;
    if (ldv_state_variable_47 == 1) {
      hotkey_wakeup_hotunplug_complete_show(ldvarg136, ldvarg138, ldvarg137);
      ldv_state_variable_47 = 1;
    } else {
    }
    goto ldv_38275;
    default:
    ldv_stop();
    }
    ldv_38275: ;
  } else {
  }
  goto ldv_37951;
  case 64: ;
  if (ldv_state_variable_8 != 0) {
    tmp___186 = __VERIFIER_nondet_int();
    switch (tmp___186) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      set_ibm_param((char const *)ldvarg139, ldvarg140);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_38279;
    default:
    ldv_stop();
    }
    ldv_38279: ;
  } else {
  }
  goto ldv_37951;
  case 65: ;
  if (ldv_state_variable_38 != 0) {
    tmp___187 = __VERIFIER_nondet_int();
    switch (tmp___187) {
    case 0: ;
    if (ldv_state_variable_38 == 1) {
      wan_write(ldvarg142);
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_38283;
    case 1: ;
    if (ldv_state_variable_38 == 1) {
      wan_exit();
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_38283;
    case 2: ;
    if (ldv_state_variable_38 == 1) {
      wan_read(ldvarg141);
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_38283;
    case 3: ;
    if (ldv_state_variable_38 == 1) {
      wan_shutdown();
      ldv_state_variable_38 = 1;
    } else {
    }
    goto ldv_38283;
    default:
    ldv_stop();
    }
    ldv_38283: ;
  } else {
  }
  goto ldv_37951;
  case 66: ;
  if (ldv_state_variable_4 != 0) {
    tmp___188 = __VERIFIER_nondet_int();
    switch (tmp___188) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      set_ibm_param((char const *)ldvarg143, ldvarg144);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_38290;
    default:
    ldv_stop();
    }
    ldv_38290: ;
  } else {
  }
  goto ldv_37951;
  case 67: ;
  if (ldv_state_variable_34 != 0) {
    tmp___189 = __VERIFIER_nondet_int();
    switch (tmp___189) {
    case 0: ;
    if (ldv_state_variable_34 == 1) {
      light_sysfs_set(tpacpi_led_thinklight_group0, ldvarg145);
      ldv_state_variable_34 = 1;
    } else {
    }
    goto ldv_38294;
    case 1: ;
    if (ldv_state_variable_34 == 1) {
      light_sysfs_get(tpacpi_led_thinklight_group0);
      ldv_state_variable_34 = 1;
    } else {
    }
    goto ldv_38294;
    default:
    ldv_stop();
    }
    ldv_38294: ;
  } else {
  }
  goto ldv_37951;
  case 68: ;
  if (ldv_state_variable_37 != 0) {
    tmp___190 = __VERIFIER_nondet_int();
    switch (tmp___190) {
    case 0: ;
    if (ldv_state_variable_37 == 1) {
      uwb_set_status(ldvarg146);
      ldv_state_variable_37 = 1;
    } else {
    }
    goto ldv_38299;
    case 1: ;
    if (ldv_state_variable_37 == 1) {
      uwb_get_status();
      ldv_state_variable_37 = 1;
    } else {
    }
    goto ldv_38299;
    default:
    ldv_stop();
    }
    ldv_38299: ;
  } else {
  }
  goto ldv_37951;
  case 69: ;
  if (ldv_state_variable_43 != 0) {
    tmp___191 = __VERIFIER_nondet_int();
    switch (tmp___191) {
    case 0: ;
    if (ldv_state_variable_43 == 1) {
      bluetooth_enable_store(dev_attr_bluetooth_enable_group1, dev_attr_bluetooth_enable_group0,
                             (char const *)ldvarg149, ldvarg148);
      ldv_state_variable_43 = 1;
    } else {
    }
    goto ldv_38304;
    case 1: ;
    if (ldv_state_variable_43 == 1) {
      bluetooth_enable_show(dev_attr_bluetooth_enable_group1, dev_attr_bluetooth_enable_group0,
                            ldvarg147);
      ldv_state_variable_43 = 1;
    } else {
    }
    goto ldv_38304;
    default:
    ldv_stop();
    }
    ldv_38304: ;
  } else {
  }
  goto ldv_37951;
  case 70: ;
  if (ldv_state_variable_5 != 0) {
    tmp___192 = __VERIFIER_nondet_int();
    switch (tmp___192) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      set_ibm_param((char const *)ldvarg150, ldvarg151);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_38309;
    default:
    ldv_stop();
    }
    ldv_38309: ;
  } else {
  }
  goto ldv_37951;
  default:
  ldv_stop();
  }
  ldv_37951: ;
  goto ldv_38312;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_15(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_fb_info(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_power_lock_of_snd_card(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_power_lock_of_snd_card(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_36(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_hotkey_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_38(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_hotkey_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_thread_data_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_42(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_hotkey_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_hotkey_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tpacpi_inputdev_send_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_50(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_hotkey_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_52(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_hotkey_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_hotkey_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_flush_workqueue_54(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_flush_workqueue_55(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
int ldv_mutex_lock_killable_56(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_brightness_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_brightness_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_58(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_brightness_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_brightness_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_60(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_brightness_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_brightness_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_62(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_volume_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_volume_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_64(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___13 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_volume_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_volume_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_66(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_volume_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_volume_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_68(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_70(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___16 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_72(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___17 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_74(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___18 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_killable_76(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___19 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_78(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___20 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv_mutex_lock_killable_79(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___21 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_killable(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_killable_fan_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_fan_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_81(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___22 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_2(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_82(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_platform_driver_unregister_83(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_68 = 0;
  return;
}
}
void ldv_platform_driver_unregister_84(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_68 = 0;
  return;
}
}
void ldv_destroy_workqueue_85(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
int ldv___platform_driver_register_86(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___23 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_68 = 1;
  ldv_platform_driver_init_68();
  return (ldv_func_res);
}
}
int ldv___platform_driver_register_87(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___24 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_68 = 1;
  ldv_platform_driver_init_68();
  return (ldv_func_res);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  {reach_error();}
}
}
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
static int ldv_mutex_brightness_mutex = 1;
int ldv_mutex_lock_interruptible_brightness_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_brightness_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_brightness_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_brightness_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_brightness_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_brightness_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_brightness_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_brightness_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_brightness_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_brightness_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_brightness_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_brightness_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_brightness_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_brightness_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_brightness_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_brightness_mutex(void)
{
  {
  ldv_mutex_lock_brightness_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_brightness_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_brightness_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_brightness_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_brightness_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_brightness_mutex(void)
{
  {
  ldv_mutex_unlock_brightness_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_fan_mutex = 1;
int ldv_mutex_lock_interruptible_fan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_fan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_fan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_fan_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_fan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_fan_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_fan_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_fan_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_fan_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_fan_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_fan_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_fan_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_fan_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_fan_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_fan_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_fan_mutex(void)
{
  {
  ldv_mutex_lock_fan_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_fan_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_fan_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_fan_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_fan_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_fan_mutex(void)
{
  {
  ldv_mutex_unlock_fan_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_hotkey_mutex = 1;
int ldv_mutex_lock_interruptible_hotkey_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_hotkey_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_hotkey_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_hotkey_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_hotkey_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_hotkey_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_hotkey_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_hotkey_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_hotkey_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_hotkey_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_hotkey_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_hotkey_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_hotkey_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_hotkey_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_hotkey_mutex(void)
{
  {
  ldv_mutex_lock_hotkey_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_hotkey_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_hotkey_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_hotkey_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_hotkey_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_hotkey_mutex(void)
{
  {
  ldv_mutex_unlock_hotkey_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_hotkey_thread_data_mutex = 1;
int ldv_mutex_lock_interruptible_hotkey_thread_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_hotkey_thread_data_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_hotkey_thread_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_hotkey_thread_data_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_hotkey_thread_data_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_hotkey_thread_data_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_hotkey_thread_data_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_hotkey_thread_data_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_hotkey_thread_data_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_hotkey_thread_data_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_hotkey_thread_data_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_hotkey_thread_data_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_hotkey_thread_data_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_hotkey_thread_data_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_hotkey_thread_data_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_hotkey_thread_data_mutex(void)
{
  {
  ldv_mutex_lock_hotkey_thread_data_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_hotkey_thread_data_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_hotkey_thread_data_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_hotkey_thread_data_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_hotkey_thread_data_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_hotkey_thread_data_mutex(void)
{
  {
  ldv_mutex_unlock_hotkey_thread_data_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_i_mutex_of_inode = 1;
int ldv_mutex_lock_interruptible_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 1;
  return;
}
}
void ldv_usb_lock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_i_mutex_of_inode(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_i_mutex_of_inode((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_i_mutex_of_inode(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_unlock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock_of_fb_info = 1;
int ldv_mutex_lock_interruptible_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_fb_info(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_fb_info = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_fb_info(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock_of_fb_info = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_fb_info(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_fb_info = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_fb_info(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_fb_info == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_fb_info(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_fb_info != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock_of_fb_info = 1;
  return;
}
}
void ldv_usb_lock_device_lock_of_fb_info(void)
{
  {
  ldv_mutex_lock_lock_of_fb_info((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock_of_fb_info(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock_of_fb_info((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock_of_fb_info(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock_of_fb_info((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock_of_fb_info(void)
{
  {
  ldv_mutex_unlock_lock_of_fb_info((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
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
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
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
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
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
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_power_lock_of_snd_card = 1;
int ldv_mutex_lock_interruptible_power_lock_of_snd_card(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_power_lock_of_snd_card = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_power_lock_of_snd_card(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_power_lock_of_snd_card = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_power_lock_of_snd_card(struct mutex *lock )
{
  {
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_power_lock_of_snd_card = 2;
  return;
}
}
int ldv_mutex_trylock_power_lock_of_snd_card(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_power_lock_of_snd_card = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_power_lock_of_snd_card(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_power_lock_of_snd_card = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_power_lock_of_snd_card(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_power_lock_of_snd_card == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_power_lock_of_snd_card(struct mutex *lock )
{
  {
  if (ldv_mutex_power_lock_of_snd_card != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_power_lock_of_snd_card = 1;
  return;
}
}
void ldv_usb_lock_device_power_lock_of_snd_card(void)
{
  {
  ldv_mutex_lock_power_lock_of_snd_card((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_power_lock_of_snd_card(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_power_lock_of_snd_card((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_power_lock_of_snd_card(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_power_lock_of_snd_card((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_power_lock_of_snd_card(void)
{
  {
  ldv_mutex_unlock_power_lock_of_snd_card((struct mutex *)0);
  return;
}
}
static int ldv_mutex_tpacpi_inputdev_send_mutex = 1;
int ldv_mutex_lock_interruptible_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_tpacpi_inputdev_send_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_tpacpi_inputdev_send_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_tpacpi_inputdev_send_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_tpacpi_inputdev_send_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tpacpi_inputdev_send_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tpacpi_inputdev_send_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_tpacpi_inputdev_send_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_tpacpi_inputdev_send_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_tpacpi_inputdev_send_mutex(void)
{
  {
  ldv_mutex_lock_tpacpi_inputdev_send_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_tpacpi_inputdev_send_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_tpacpi_inputdev_send_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_tpacpi_inputdev_send_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_tpacpi_inputdev_send_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_tpacpi_inputdev_send_mutex(void)
{
  {
  ldv_mutex_unlock_tpacpi_inputdev_send_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_update_lock_of_backlight_device = 1;
int ldv_mutex_lock_interruptible_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_backlight_device = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_backlight_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_backlight_device(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_backlight_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_backlight_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_backlight_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_update_lock_of_backlight_device(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_backlight_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_update_lock_of_backlight_device = 1;
  return;
}
}
void ldv_usb_lock_device_update_lock_of_backlight_device(void)
{
  {
  ldv_mutex_lock_update_lock_of_backlight_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_update_lock_of_backlight_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_update_lock_of_backlight_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_update_lock_of_backlight_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_update_lock_of_backlight_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_update_lock_of_backlight_device(void)
{
  {
  ldv_mutex_unlock_update_lock_of_backlight_device((struct mutex *)0);
  return;
}
}
static int ldv_mutex_volume_mutex = 1;
int ldv_mutex_lock_interruptible_volume_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_volume_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_volume_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_volume_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_volume_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_volume_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_volume_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_volume_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_volume_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_volume_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_volume_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_volume_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_volume_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_volume_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_volume_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_volume_mutex(void)
{
  {
  ldv_mutex_lock_volume_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_volume_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_volume_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_volume_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_volume_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_volume_mutex(void)
{
  {
  ldv_mutex_unlock_volume_mutex((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_brightness_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_fan_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_hotkey_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_hotkey_thread_data_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock_of_fb_info != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_power_lock_of_snd_card != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_tpacpi_inputdev_send_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_update_lock_of_backlight_device != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_volume_mutex != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void *PDE_DATA(const struct inode *arg0) {
  return ldv_malloc(0UL);
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __copy_from_user_overflow() {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int acpi_bus_generate_netlink_event(const char *arg0, const char *arg1, u8 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_bus_get_device(acpi_handle arg0, struct acpi_device **arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_bus_register_driver(struct acpi_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void acpi_bus_unregister_driver(struct acpi_driver *arg0) {
  return;
}
const char *acpi_device_hid(struct acpi_device *arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_object(acpi_handle arg0, acpi_string arg1, struct acpi_object_list *arg2, struct acpi_buffer *arg3) {
  return __VERIFIER_nondet_uint();
}
const char *acpi_format_exception(acpi_status arg0) {
  return ldv_malloc(sizeof(char));
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_get_devices(const char *arg0, acpi_status (*arg1)(acpi_handle , u32 , void *, void **), void *arg2, void **arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_get_handle(acpi_handle arg0, acpi_string arg1, acpi_handle **arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_install_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *), void *arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_remove_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *)) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
enum acpi_backlight_type acpi_video_get_backlight_type() {
  return __VERIFIER_nondet_int();
}
struct backlight_device *backlight_device_register(const char *arg0, struct device *arg1, void *arg2, const struct backlight_ops *arg3, const struct backlight_properties *arg4) {
  return ldv_malloc(sizeof(struct backlight_device));
}
void backlight_device_unregister(struct backlight_device *arg0) {
  return;
}
void backlight_force_update(struct backlight_device *arg0, enum backlight_update_reason arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void delayed_work_timer_fn(unsigned long arg0) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
const struct dmi_device *dmi_find_device(int arg0, const char *arg1, const struct dmi_device *arg2) {
  return ldv_malloc(sizeof(struct dmi_device));
}
const char *dmi_get_system_info(int arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int dmi_name_in_vendors(const char *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int driver_create_file(struct device_driver *arg0, const struct driver_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void driver_remove_file(struct device_driver *arg0, const struct driver_attribute *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ec_read(u8 arg0, u8 *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ec_write(u8 arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
struct device *hwmon_device_register(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
void input_free_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_set_capability(struct input_dev *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void input_unregister_device(struct input_dev *arg0) {
  return;
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
bool __VERIFIER_nondet_bool(void);
bool kthread_freezable_should_stop(bool *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv__builtin_va_arg(__builtin_va_list arg0, unsigned long arg1, void *arg2) {
  return;
}
void ldv__builtin_va_end(__builtin_va_list *arg0) {
  return;
}
void ldv__builtin_va_start(__builtin_va_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_69() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_29() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_59() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_68() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_29() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_59() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_remove_68() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_68() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_68() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_69() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int led_classdev_register(struct device *arg0, struct led_classdev *arg1) {
  return __VERIFIER_nondet_int();
}
void led_classdev_unregister(struct led_classdev *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool mod_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_killable(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
unsigned char __VERIFIER_nondet_uchar(void);
unsigned char nvram_read_byte(int arg0) {
  return __VERIFIER_nondet_uchar();
}
void nvram_write_byte(unsigned char arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
pid_t pid_vnr(struct pid *arg0) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_register_full(const struct platform_device_info *arg0) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return ldv_malloc(0UL);
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
struct rfkill *rfkill_alloc(const char *arg0, struct device *arg1, const enum rfkill_type arg2, const struct rfkill_ops *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
void rfkill_destroy(struct rfkill *arg0) {
  return;
}
void rfkill_init_sw_state(struct rfkill *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int rfkill_register(struct rfkill *arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rfkill_set_hw_state(struct rfkill *arg0, bool arg1) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rfkill_set_sw_state(struct rfkill *arg0, bool arg1) {
  return __VERIFIER_nondet_bool();
}
void rfkill_unregister(struct rfkill *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
char *skip_spaces(const char *arg0) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int snd_card_free(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_new(struct device *arg0, int arg1, const char *arg2, struct module *arg3, int arg4, struct snd_card **arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_register(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ctl_add(struct snd_card *arg0, struct snd_kcontrol *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ctl_boolean_mono_info(struct snd_kcontrol *arg0, struct snd_ctl_elem_info *arg1) {
  return __VERIFIER_nondet_int();
}
struct snd_kcontrol *snd_ctl_new1(const struct snd_kcontrol_new *arg0, void *arg1) {
  return ldv_malloc(sizeof(struct snd_kcontrol));
}
void snd_ctl_notify(struct snd_card *arg0, unsigned int arg1, struct snd_ctl_elem_id *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int strncasecmp(const char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_notify(struct kobject *arg0, const char *arg1, const char *arg2) {
  return;
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
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
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}