extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "205_9a_array_unsafes_linux-3.16-rc1.tar.xz-205_9a-drivers--net--ethernet--intel--igbvf--igbvf.ko-entry_point.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __u16 __be16;
typedef __u32 __wsum;
typedef _Bool bool;
typedef __kernel_size_t size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct net_device;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct sock;
struct sk_buff;
typedef s32 dma_cookie_t;
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
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_24862_179 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_24863_178 {
   u64 v64 ;
   struct __anonstruct_ldv_24862_179 ldv_24862 ;
};
struct skb_mstamp {
   union __anonunion_ldv_24863_178 ldv_24863 ;
};
union __anonunion_ldv_24882_180 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_24898_182 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_24899_181 {
   __wsum csum ;
   struct __anonstruct_ldv_24898_182 ldv_24898 ;
};
union __anonunion_ldv_24938_183 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_24944_184 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_24882_180 ldv_24882 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_24899_181 ldv_24899 ;
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
   union __anonunion_ldv_24938_183 ldv_24938 ;
   __u32 secmark ;
   union __anonunion_ldv_24944_184 ldv_24944 ;
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
struct e1000_hw;
enum e1000_mac_type {
    e1000_undefined = 0,
    e1000_vfadapt = 1,
    e1000_vfadapt_i350 = 2,
    e1000_num_macs = 3
} ;
struct e1000_mac_operations {
   s32 (*init_params)(struct e1000_hw * ) ;
   s32 (*check_for_link)(struct e1000_hw * ) ;
   void (*clear_vfta)(struct e1000_hw * ) ;
   s32 (*get_bus_info)(struct e1000_hw * ) ;
   s32 (*get_link_up_info)(struct e1000_hw * , u16 * , u16 * ) ;
   void (*update_mc_addr_list)(struct e1000_hw * , u8 * , u32 , u32 , u32 ) ;
   s32 (*reset_hw)(struct e1000_hw * ) ;
   s32 (*init_hw)(struct e1000_hw * ) ;
   s32 (*setup_link)(struct e1000_hw * ) ;
   void (*write_vfta)(struct e1000_hw * , u32 , u32 ) ;
   void (*mta_set)(struct e1000_hw * , u32 ) ;
   void (*rar_set)(struct e1000_hw * , u8 * , u32 ) ;
   s32 (*read_mac_addr)(struct e1000_hw * ) ;
   s32 (*set_vfta)(struct e1000_hw * , u16 , bool ) ;
};
struct e1000_mac_info {
   struct e1000_mac_operations ops ;
   u8 addr[6U] ;
   u8 perm_addr[6U] ;
   enum e1000_mac_type type ;
   u16 mta_reg_count ;
   u16 rar_entry_count ;
   bool get_link_status ;
};
struct e1000_mbx_operations {
   s32 (*init_params)(struct e1000_hw * ) ;
   s32 (*read)(struct e1000_hw * , u32 * , u16 ) ;
   s32 (*write)(struct e1000_hw * , u32 * , u16 ) ;
   s32 (*read_posted)(struct e1000_hw * , u32 * , u16 ) ;
   s32 (*write_posted)(struct e1000_hw * , u32 * , u16 ) ;
   s32 (*check_for_msg)(struct e1000_hw * ) ;
   s32 (*check_for_ack)(struct e1000_hw * ) ;
   s32 (*check_for_rst)(struct e1000_hw * ) ;
};
struct e1000_mbx_stats {
   u32 msgs_tx ;
   u32 msgs_rx ;
   u32 acks ;
   u32 reqs ;
   u32 rsts ;
};
struct e1000_mbx_info {
   struct e1000_mbx_operations ops ;
   struct e1000_mbx_stats stats ;
   u32 timeout ;
   u32 usec_delay ;
   u16 size ;
};
struct e1000_dev_spec_vf {
   u32 vf_number ;
   u32 v2p_mailbox ;
};
union __anonunion_dev_spec_201 {
   struct e1000_dev_spec_vf vf ;
};
struct e1000_hw {
   void *back ;
   u8 *hw_addr ;
   u8 *flash_address ;
   unsigned long io_base ;
   struct e1000_mac_info mac ;
   struct e1000_mbx_info mbx ;
   union __anonunion_dev_spec_201 dev_spec ;
   u16 device_id ;
   u16 subsystem_vendor_id ;
   u16 subsystem_device_id ;
   u16 vendor_id ;
   u8 revision_id ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef int __s32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef long __kernel_long_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __be32;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
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
struct __anonstruct_ldv_1016_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1031_10 {
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
union __anonunion_ldv_1032_8 {
   struct __anonstruct_ldv_1016_9 ldv_1016 ;
   struct __anonstruct_ldv_1031_10 ldv_1031 ;
};
struct desc_struct {
   union __anonunion_ldv_1032_8 ldv_1032 ;
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
union __anonunion_ldv_1452_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1452_15 ldv_1452 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct device;
struct file_operations;
struct completion;
struct pid;
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
union __anonunion_ldv_2969_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2969_20 ldv_2969 ;
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
struct __anonstruct_ldv_5280_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5286_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5287_24 {
   struct __anonstruct_ldv_5280_25 ldv_5280 ;
   struct __anonstruct_ldv_5286_26 ldv_5286 ;
};
union __anonunion_ldv_5296_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5287_24 ldv_5287 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5296_27 ldv_5296 ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6337_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6338_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6337_31 ldv_6337 ;
};
struct spinlock {
   union __anonunion_ldv_6338_30 ldv_6338 ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct optimistic_spin_queue;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
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
struct inode;
struct notifier_block;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
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
struct __anonstruct_nodemask_t_98 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_98 nodemask_t;
struct pci_bus;
struct __anonstruct_mm_context_t_99 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_99 mm_context_t;
struct bio_vec;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct __anonstruct_ldv_12049_131 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_12053_132 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_12054_130 {
   struct __anonstruct_ldv_12049_131 ldv_12049 ;
   struct __anonstruct_ldv_12053_132 ldv_12053 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_12054_130 ldv_12054 ;
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
union __anonunion_ldv_12163_133 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_12169_135 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_12179_139 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_12181_138 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12179_139 ldv_12179 ;
   int units ;
};
struct __anonstruct_ldv_12183_137 {
   union __anonunion_ldv_12181_138 ldv_12181 ;
   atomic_t _count ;
};
union __anonunion_ldv_12185_136 {
   unsigned long counters ;
   struct __anonstruct_ldv_12183_137 ldv_12183 ;
   unsigned int active ;
};
struct __anonstruct_ldv_12186_134 {
   union __anonunion_ldv_12169_135 ldv_12169 ;
   union __anonunion_ldv_12185_136 ldv_12185 ;
};
struct __anonstruct_ldv_12193_141 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_12198_140 {
   struct list_head lru ;
   struct __anonstruct_ldv_12193_141 ldv_12193 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_12204_142 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_12163_133 ldv_12163 ;
   struct __anonstruct_ldv_12186_134 ldv_12186 ;
   union __anonunion_ldv_12198_140 ldv_12198 ;
   union __anonunion_ldv_12204_142 ldv_12204 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_144 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_143 {
   struct __anonstruct_linear_144 linear ;
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
   union __anonunion_shared_143 shared ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_12534_145 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_12534_145 ldv_12534 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct kiocb;
struct ctl_table;
struct mem_cgroup;
union __anonunion_ldv_13917_146 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_13917_146 ldv_13917 ;
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
union __anonunion_ldv_14061_147 {
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
   union __anonunion_ldv_14061_147 ldv_14061 ;
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
struct user_namespace;
struct __anonstruct_kuid_t_148 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_148 kuid_t;
struct __anonstruct_kgid_t_149 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_149 kgid_t;
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
struct __anonstruct_ldv_14953_151 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_14959_152 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_14960_150 {
   struct __anonstruct_ldv_14953_151 ldv_14953 ;
   struct __anonstruct_ldv_14959_152 ldv_14959 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14960_150 ldv_14960 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
typedef u64 netdev_features_t;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_155 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_155 sigset_t;
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
struct __anonstruct__kill_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_158 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_161 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_162 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_163 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_156 {
   int _pad[28U] ;
   struct __anonstruct__kill_157 _kill ;
   struct __anonstruct__timer_158 _timer ;
   struct __anonstruct__rt_159 _rt ;
   struct __anonstruct__sigchld_160 _sigchld ;
   struct __anonstruct__sigfault_161 _sigfault ;
   struct __anonstruct__sigpoll_162 _sigpoll ;
   struct __anonstruct__sigsys_163 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_156 _sifields ;
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
struct __anonstruct_ldv_22930_167 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_22932_166 {
   struct __anonstruct_ldv_22930_167 ldv_22930 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_22932_166 ldv_22932 ;
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
union __anonunion_ldv_23076_168 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_23084_169 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_23097_171 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_23098_170 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_23097_171 ldv_23097 ;
};
union __anonunion_type_data_172 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_23113_173 {
   union __anonunion_payload_174 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_23076_168 ldv_23076 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_23084_169 ldv_23084 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_23098_170 ldv_23098 ;
   union __anonunion_type_data_172 type_data ;
   union __anonunion_ldv_23113_173 ldv_23113 ;
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
struct files_struct;
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
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct dst_entry;
struct ethtool_coalesce;
struct ethtool_eeprom;
struct ethtool_wolinfo;
struct ethtool_cmd;
struct ethtool_ringparam;
struct ethtool_pauseparam;
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
union __anonunion_data_185 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_185 data ;
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
struct __anonstruct_sync_serial_settings_186 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_186 sync_serial_settings;
struct __anonstruct_te1_settings_187 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_187 te1_settings;
struct __anonstruct_raw_hdlc_proto_188 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_188 raw_hdlc_proto;
struct __anonstruct_fr_proto_189 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_189 fr_proto;
struct __anonstruct_fr_proto_pvc_190 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_190 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_191 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_191 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_192 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_192 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_193 {
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
   union __anonunion_ifs_ifsu_193 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_194 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_195 {
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
   union __anonunion_ifr_ifrn_194 ifr_ifrn ;
   union __anonunion_ifr_ifru_195 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_26854_198 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_26855_197 {
   struct __anonstruct_ldv_26854_198 ldv_26854 ;
};
struct lockref {
   union __anonunion_ldv_26855_197 ldv_26855 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_26878_200 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_26880_199 {
   struct __anonstruct_ldv_26878_200 ldv_26878 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_26880_199 ldv_26880 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_201 {
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
   union __anonunion_d_u_201 d_u ;
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
struct __anonstruct_ldv_27241_203 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_27243_202 {
   struct __anonstruct_ldv_27241_203 ldv_27241 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_27243_202 ldv_27243 ;
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
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
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
struct __anonstruct_kprojid_t_204 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_204 kprojid_t;
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
union __anonunion_ldv_27768_205 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_27768_205 ldv_27768 ;
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
union __anonunion_ldv_28182_208 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_28202_209 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_28219_210 {
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
   union __anonunion_ldv_28182_208 ldv_28182 ;
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
   union __anonunion_ldv_28202_209 ldv_28202 ;
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
   union __anonunion_ldv_28219_210 ldv_28219 ;
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
union __anonunion_f_u_211 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_211 f_u ;
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
struct __anonstruct_afs_213 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_212 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_213 afs ;
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
   union __anonunion_fl_u_212 fl_u ;
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
struct proc_dir_entry;
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
struct __anonstruct_adj_list_241 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_242 {
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
union __anonunion_ldv_39325_243 {
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
   struct __anonstruct_adj_list_241 adj_list ;
   struct __anonstruct_all_adj_list_242 all_adj_list ;
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
   union __anonunion_ldv_39325_243 ldv_39325 ;
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
struct pci_driver;
union __anonunion_ldv_41151_247 {
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
   union __anonunion_ldv_41151_247 ldv_41151 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct __anonstruct_read_252 {
   u64 pkt_addr ;
   u64 hdr_addr ;
};
struct __anonstruct_hs_rss_256 {
   u16 pkt_info ;
   u16 hdr_info ;
};
union __anonunion_lo_dword_255 {
   u32 data ;
   struct __anonstruct_hs_rss_256 hs_rss ;
};
struct __anonstruct_csum_ip_258 {
   u16 ip_id ;
   u16 csum ;
};
union __anonunion_hi_dword_257 {
   u32 rss ;
   struct __anonstruct_csum_ip_258 csum_ip ;
};
struct __anonstruct_lower_254 {
   union __anonunion_lo_dword_255 lo_dword ;
   union __anonunion_hi_dword_257 hi_dword ;
};
struct __anonstruct_upper_259 {
   u32 status_error ;
   u16 length ;
   u16 vlan ;
};
struct __anonstruct_wb_253 {
   struct __anonstruct_lower_254 lower ;
   struct __anonstruct_upper_259 upper ;
};
union e1000_adv_rx_desc {
   struct __anonstruct_read_252 read ;
   struct __anonstruct_wb_253 wb ;
};
struct __anonstruct_read_260 {
   u64 buffer_addr ;
   u32 cmd_type_len ;
   u32 olinfo_status ;
};
struct __anonstruct_wb_261 {
   u64 rsvd ;
   u32 nxtseq_seed ;
   u32 status ;
};
union e1000_adv_tx_desc {
   struct __anonstruct_read_260 read ;
   struct __anonstruct_wb_261 wb ;
};
struct e1000_adv_tx_context_desc {
   u32 vlan_macip_lens ;
   u32 seqnum_seed ;
   u32 type_tucmd_mlhl ;
   u32 mss_l4len_idx ;
};
struct e1000_vf_stats {
   u64 base_gprc ;
   u64 base_gptc ;
   u64 base_gorc ;
   u64 base_gotc ;
   u64 base_mprc ;
   u64 base_gotlbc ;
   u64 base_gptlbc ;
   u64 base_gorlbc ;
   u64 base_gprlbc ;
   u32 last_gprc ;
   u32 last_gptc ;
   u32 last_gorc ;
   u32 last_gotc ;
   u32 last_mprc ;
   u32 last_gotlbc ;
   u32 last_gptlbc ;
   u32 last_gorlbc ;
   u32 last_gprlbc ;
   u64 gprc ;
   u64 gptc ;
   u64 gorc ;
   u64 gotc ;
   u64 mprc ;
   u64 gotlbc ;
   u64 gptlbc ;
   u64 gorlbc ;
   u64 gprlbc ;
};
struct igbvf_info;
struct igbvf_adapter;
enum latency_range {
    lowest_latency = 0,
    low_latency = 1,
    bulk_latency = 2,
    latency_invalid = 255
} ;
struct igbvf_queue_stats {
   u64 packets ;
   u64 bytes ;
};
struct __anonstruct_ldv_43411_264 {
   unsigned long time_stamp ;
   union e1000_adv_tx_desc *next_to_watch ;
   u16 length ;
   u16 mapped_as_page ;
};
struct __anonstruct_ldv_43416_265 {
   struct page *page ;
   u64 page_dma ;
   unsigned int page_offset ;
};
union __anonunion_ldv_43417_263 {
   struct __anonstruct_ldv_43411_264 ldv_43411 ;
   struct __anonstruct_ldv_43416_265 ldv_43416 ;
};
struct igbvf_buffer {
   dma_addr_t dma ;
   struct sk_buff *skb ;
   union __anonunion_ldv_43417_263 ldv_43417 ;
};
union igbvf_desc {
   union e1000_adv_rx_desc rx_desc ;
   union e1000_adv_tx_desc tx_desc ;
   struct e1000_adv_tx_context_desc tx_context_desc ;
};
struct igbvf_ring {
   struct igbvf_adapter *adapter ;
   union igbvf_desc *desc ;
   dma_addr_t dma ;
   unsigned int size ;
   unsigned int count ;
   u16 next_to_use ;
   u16 next_to_clean ;
   u16 head ;
   u16 tail ;
   struct igbvf_buffer *buffer_info ;
   struct napi_struct napi ;
   char name[21U] ;
   u32 eims_value ;
   u32 itr_val ;
   enum latency_range itr_range ;
   u16 itr_register ;
   int set_itr ;
   struct sk_buff *rx_skb_top ;
   struct igbvf_queue_stats stats ;
};
struct igbvf_adapter {
   struct timer_list watchdog_timer ;
   struct timer_list blink_timer ;
   struct work_struct reset_task ;
   struct work_struct watchdog_task ;
   struct igbvf_info const *ei ;
   unsigned long active_vlans[64U] ;
   u32 bd_number ;
   u32 rx_buffer_len ;
   u32 polling_interval ;
   u16 mng_vlan_id ;
   u16 link_speed ;
   u16 link_duplex ;
   spinlock_t tx_queue_lock ;
   unsigned long state ;
   u32 requested_itr ;
   u32 current_itr ;
   struct igbvf_ring *tx_ring ;
   unsigned int restart_queue ;
   u32 txd_cmd ;
   u32 tx_int_delay ;
   u32 tx_abs_int_delay ;
   unsigned int total_tx_bytes ;
   unsigned int total_tx_packets ;
   unsigned int total_rx_bytes ;
   unsigned int total_rx_packets ;
   u32 tx_timeout_count ;
   u32 tx_fifo_head ;
   u32 tx_head_addr ;
   u32 tx_fifo_size ;
   u32 tx_dma_failed ;
   struct igbvf_ring *rx_ring ;
   u32 rx_int_delay ;
   u32 rx_abs_int_delay ;
   u64 hw_csum_err ;
   u64 hw_csum_good ;
   u64 rx_hdr_split ;
   u32 alloc_rx_buff_failed ;
   u32 rx_dma_failed ;
   unsigned int rx_ps_hdr_size ;
   u32 max_frame_size ;
   u32 min_frame_size ;
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct net_device_stats net_stats ;
   spinlock_t stats_lock ;
   struct e1000_hw hw ;
   struct e1000_vf_stats stats ;
   u64 zero_base ;
   struct igbvf_ring test_tx_ring ;
   struct igbvf_ring test_rx_ring ;
   u32 test_icr ;
   u32 msg_enable ;
   struct msix_entry *msix_entries ;
   int int_mode ;
   u32 eims_enable_mask ;
   u32 eims_other ;
   u32 int_counter0 ;
   u32 int_counter1 ;
   u32 eeprom_wol ;
   u32 wol ;
   u32 pba ;
   bool fc_autoneg ;
   unsigned long led_status ;
   unsigned int flags ;
   unsigned long last_reset ;
};
struct igbvf_info {
   enum e1000_mac_type mac ;
   unsigned int flags ;
   u32 pba ;
   void (*init_ops)(struct e1000_hw * ) ;
   s32 (*get_variants)(struct igbvf_adapter * ) ;
};
struct igbvf_stats {
   char stat_string[32U] ;
   int sizeof_stat ;
   int stat_offset ;
   int base_stat_offset ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
typedef short s16;
typedef __u16 __sum16;
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
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
enum hrtimer_restart;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_13290 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_13290 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_177 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_177 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
struct rtable;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_26813_189 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_26813_189 ldv_26813 ;
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
union __anonunion_in6_u_241 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_241 in6_u ;
};
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_253 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_253 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sock_filter_int {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion_ldv_44400_254 {
   struct sock_filter insns[0U] ;
   struct sock_filter_int insnsi[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned char jited : 1 ;
   unsigned int len : 31 ;
   struct sock_fprog_kern *orig_prog ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter_int const * ) ;
   union __anonunion_ldv_44400_254 ldv_44400 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion_ldv_45893_259 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion_ldv_45893_259 ldv_45893 ;
};
struct __anonstruct_socket_lock_t_260 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_260 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_46128_262 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_46129_261 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_46128_262 ldv_46128 ;
};
union __anonunion_ldv_46133_263 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_46139_265 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_46140_264 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_46139_265 ldv_46139 ;
};
union __anonunion_ldv_46149_266 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_46158_267 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_46129_261 ldv_46129 ;
   union __anonunion_ldv_46133_263 ldv_46133 ;
   union __anonunion_ldv_46140_264 ldv_46140 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_46149_266 ldv_46149 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_46158_267 ldv_46158 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_268 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_268 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_269 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_269 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6 ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion_ldv_49662_281 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion_ldv_49662_281 ldv_49662 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion_ldv_49677_282 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct_ldv_49681_284 {
   atomic_t rid ;
};
union __anonunion_ldv_49684_283 {
   struct __anonstruct_ldv_49681_284 ldv_49681 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion_ldv_49677_282 ldv_49677 ;
   union __anonunion_ldv_49684_283 ldv_49684 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
struct __anonstruct____missing_field_name_257 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_256 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_257 __annonCompField63 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_259 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff___0 {
   struct sk_buff___0 *next ;
   struct sk_buff___0 *prev ;
   union __anonunion_ldv_24882_180 __annonCompField62 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48] __attribute__((__aligned__(8))) ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_256 __annonCompField64 ;
   __u32 priority ;
   __u8 ignore_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff___0 *skb ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_hash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   __u8 encap_hdr_csum : 1 ;
   __u8 csum_valid : 1 ;
   __u8 csum_complete_sw : 1 ;
   union __anonunion____missing_field_name_258 __annonCompField65 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_259 __annonCompField66 ;
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
typedef void *Element;
typedef Element Set;
long ldv__builtin_expect(long exp , long c ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 ) ;
extern void ldv_skb_free(struct sk_buff___0 * ) ;
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
int ldv_irq_3_1 = 0;
int ldv_irq_2_0 = 0;
int ldv_irq_3_2 = 0;
int ldv_irq_2_2 = 0;
int ldv_irq_3_0 = 0;
int ldv_irq_2_1 = 0;
int ldv_irq_1_3 = 0;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_irq_2_3 = 0;
int ldv_irq_3_3 = 0;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
s32 e1000_init_mbx_params_vf(struct e1000_hw *hw ) ;
void e1000_rlpml_set_vf(struct e1000_hw *hw , u16 max_size ) ;
void e1000_init_function_pointers_vf(struct e1000_hw *hw ) ;
static s32 e1000_check_for_link_vf(struct e1000_hw *hw ) ;
static s32 e1000_get_link_up_info_vf(struct e1000_hw *hw , u16 *speed , u16 *duplex ) ;
static s32 e1000_init_hw_vf(struct e1000_hw *hw ) ;
static s32 e1000_reset_hw_vf(struct e1000_hw *hw ) ;
static void e1000_update_mc_addr_list_vf(struct e1000_hw *hw , u8 *mc_addr_list ,
                                         u32 mc_addr_count , u32 rar_used_count ,
                                         u32 rar_count ) ;
static void e1000_rar_set_vf(struct e1000_hw *hw , u8 *addr , u32 index ) ;
static s32 e1000_read_mac_addr_vf(struct e1000_hw *hw ) ;
static s32 e1000_set_vfta_vf(struct e1000_hw *hw , u16 vid , bool set ) ;
static s32 e1000_init_mac_params_vf(struct e1000_hw *hw )
{
  struct e1000_mac_info *mac ;
  {
  mac = & hw->mac;
  mac->mta_reg_count = 128U;
  mac->rar_entry_count = 1U;
  mac->ops.reset_hw = & e1000_reset_hw_vf;
  mac->ops.init_hw = & e1000_init_hw_vf;
  mac->ops.check_for_link = & e1000_check_for_link_vf;
  mac->ops.get_link_up_info = & e1000_get_link_up_info_vf;
  mac->ops.update_mc_addr_list = & e1000_update_mc_addr_list_vf;
  mac->ops.rar_set = & e1000_rar_set_vf;
  mac->ops.read_mac_addr = & e1000_read_mac_addr_vf;
  mac->ops.set_vfta = & e1000_set_vfta_vf;
  return (0);
}
}
void e1000_init_function_pointers_vf(struct e1000_hw *hw )
{
  {
  hw->mac.ops.init_params = & e1000_init_mac_params_vf;
  hw->mbx.ops.init_params = & e1000_init_mbx_params_vf;
  return;
}
}
static s32 e1000_get_link_up_info_vf(struct e1000_hw *hw , u16 *speed , u16 *duplex )
{
  s32 status ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)hw->hw_addr + 8U);
  status = (s32 )tmp;
  if ((status & 128) != 0) {
    *speed = 1000U;
  } else
  if ((status & 64) != 0) {
    *speed = 100U;
  } else {
    *speed = 10U;
  }
  if (status & 1) {
    *duplex = 2U;
  } else {
    *duplex = 1U;
  }
  return (0);
}
}
static s32 e1000_reset_hw_vf(struct e1000_hw *hw )
{
  struct e1000_mbx_info *mbx ;
  u32 timeout ;
  u32 ret_val ;
  u32 msgbuf[3U] ;
  u8 *addr ;
  u32 ctrl ;
  s32 tmp ;
  s32 tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  mbx = & hw->mbx;
  timeout = 200U;
  ret_val = 4294967291U;
  addr = (u8 *)(& msgbuf) + 1U;
  ctrl = readl((void const volatile *)hw->hw_addr);
  writel(ctrl | 67108864U, (void volatile *)hw->hw_addr);
  goto ldv_29951;
  ldv_29950:
  timeout = timeout - 1U;
  __const_udelay(21475UL);
  ldv_29951:
  tmp = (*(mbx->ops.check_for_rst))(hw);
  if (tmp == 0 && timeout != 0U) {
    goto ldv_29950;
  } else {
  }
  if (timeout != 0U) {
    mbx->timeout = 2000U;
    msgbuf[0] = 1U;
    (*(mbx->ops.write_posted))(hw, (u32 *)(& msgbuf), 1);
    msleep(10U);
    tmp___0 = (*(mbx->ops.read_posted))(hw, (u32 *)(& msgbuf), 3);
    ret_val = (u32 )tmp___0;
    if (ret_val == 0U) {
      if (msgbuf[0] == 2147483649U) {
        __len = 6UL;
        if (__len > 63UL) {
          __ret = memcpy((void *)(& hw->mac.perm_addr), (void const *)addr, __len);
        } else {
          __ret = memcpy((void *)(& hw->mac.perm_addr), (void const *)addr,
                                   __len);
        }
      } else {
        ret_val = 4294967291U;
      }
    } else {
    }
  } else {
  }
  return ((s32 )ret_val);
}
}
static s32 e1000_init_hw_vf(struct e1000_hw *hw )
{
  {
  e1000_rar_set_vf(hw, (u8 *)(& hw->mac.addr), 0U);
  return (0);
}
}
static u32 e1000_hash_mc_addr_vf(struct e1000_hw *hw , u8 *mc_addr )
{
  u32 hash_value ;
  u32 hash_mask ;
  u8 bit_shift ;
  {
  bit_shift = 0U;
  hash_mask = (u32 )((int )hw->mac.mta_reg_count * 32 + -1);
  goto ldv_29967;
  ldv_29966:
  bit_shift = (u8 )((int )bit_shift + 1);
  ldv_29967: ;
  if (hash_mask >> (int )bit_shift != 255U) {
    goto ldv_29966;
  } else {
  }
  hash_value = (u32 )(((int )*(mc_addr + 4UL) >> (8 - (int )bit_shift)) | ((int )*(mc_addr + 5UL) << (int )bit_shift)) & hash_mask;
  return (hash_value);
}
}
static void e1000_update_mc_addr_list_vf(struct e1000_hw *hw , u8 *mc_addr_list ,
                                         u32 mc_addr_count , u32 rar_used_count ,
                                         u32 rar_count )
{
  struct e1000_mbx_info *mbx ;
  u32 msgbuf[16U] ;
  u16 *hash_list ;
  u32 hash_value ;
  u32 cnt ;
  u32 i ;
  {
  mbx = & hw->mbx;
  hash_list = (u16 *)(& msgbuf) + 1U;
  cnt = 30U < mc_addr_count ? 30U : mc_addr_count;
  msgbuf[0] = 3U;
  msgbuf[0] = msgbuf[0] | (cnt << 16);
  i = 0U;
  goto ldv_29983;
  ldv_29982:
  hash_value = e1000_hash_mc_addr_vf(hw, mc_addr_list);
  *(hash_list + (unsigned long )i) = (u16 )hash_value;
  mc_addr_list = mc_addr_list + 6UL;
  i = i + 1U;
  ldv_29983: ;
  if (i < cnt) {
    goto ldv_29982;
  } else {
  }
  (*(mbx->ops.write_posted))(hw, (u32 *)(& msgbuf), 16);
  return;
}
}
static s32 e1000_set_vfta_vf(struct e1000_hw *hw , u16 vid , bool set )
{
  struct e1000_mbx_info *mbx ;
  u32 msgbuf[2U] ;
  s32 err ;
  {
  mbx = & hw->mbx;
  msgbuf[0] = 4U;
  msgbuf[1] = (u32 )vid;
  if ((int )set) {
    msgbuf[0] = msgbuf[0] | 65536U;
  } else {
  }
  (*(mbx->ops.write_posted))(hw, (u32 *)(& msgbuf), 2);
  err = (*(mbx->ops.read_posted))(hw, (u32 *)(& msgbuf), 2);
  msgbuf[0] = msgbuf[0] & 3758096383U;
  if (err == 0 && msgbuf[0] == 1073741828U) {
    err = -5;
  } else {
  }
  return (err);
}
}
void e1000_rlpml_set_vf(struct e1000_hw *hw , u16 max_size )
{
  struct e1000_mbx_info *mbx ;
  u32 msgbuf[2U] ;
  {
  mbx = & hw->mbx;
  msgbuf[0] = 5U;
  msgbuf[1] = (u32 )max_size;
  (*(mbx->ops.write_posted))(hw, (u32 *)(& msgbuf), 2);
  return;
}
}
static void e1000_rar_set_vf(struct e1000_hw *hw , u8 *addr , u32 index )
{
  struct e1000_mbx_info *mbx ;
  u32 msgbuf[3U] ;
  u8 *msg_addr ;
  s32 ret_val ;
  size_t __len ;
  void *__ret ;
  {
  mbx = & hw->mbx;
  msg_addr = (u8 *)(& msgbuf) + 1U;
  memset((void *)(& msgbuf), 0, 12UL);
  msgbuf[0] = 2U;
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)msg_addr, (void const *)addr, __len);
  } else {
    __ret = memcpy((void *)msg_addr, (void const *)addr, __len);
  }
  ret_val = (*(mbx->ops.write_posted))(hw, (u32 *)(& msgbuf), 3);
  if (ret_val == 0) {
    ret_val = (*(mbx->ops.read_posted))(hw, (u32 *)(& msgbuf), 3);
  } else {
  }
  msgbuf[0] = msgbuf[0] & 3758096383U;
  if (ret_val == 0 && msgbuf[0] == 1073741826U) {
    e1000_read_mac_addr_vf(hw);
  } else {
  }
  return;
}
}
static s32 e1000_read_mac_addr_vf(struct e1000_hw *hw )
{
  size_t __len ;
  void *__ret ;
  {
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& hw->mac.addr), (void const *)(& hw->mac.perm_addr),
                     __len);
  } else {
    __ret = memcpy((void *)(& hw->mac.addr), (void const *)(& hw->mac.perm_addr),
                             __len);
  }
  return (0);
}
}
static s32 e1000_check_for_link_vf(struct e1000_hw *hw )
{
  struct e1000_mbx_info *mbx ;
  struct e1000_mac_info *mac ;
  s32 ret_val ;
  u32 in_msg ;
  s32 tmp ;
  unsigned int tmp___0 ;
  s32 tmp___1 ;
  {
  mbx = & hw->mbx;
  mac = & hw->mac;
  ret_val = 0;
  in_msg = 0U;
  tmp = (*(mbx->ops.check_for_rst))(hw);
  if (tmp == 0 || mbx->timeout == 0U) {
    mac->get_link_status = 1;
  } else {
  }
  if (! mac->get_link_status) {
    goto out;
  } else {
  }
  tmp___0 = readl((void const volatile *)hw->hw_addr + 8U);
  if ((tmp___0 & 2U) == 0U) {
    goto out;
  } else {
  }
  tmp___1 = (*(mbx->ops.read))(hw, & in_msg, 1);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  if ((in_msg & 536870912U) == 0U) {
    if ((in_msg & 1073741824U) != 0U) {
      ret_val = -5;
    } else {
    }
    goto out;
  } else {
  }
  if (mbx->timeout == 0U) {
    ret_val = -5;
    goto out;
  } else {
  }
  mac->get_link_status = 0;
  out: ;
  return (ret_val);
}
}
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_16(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_17(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_18(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_15(struct sk_buff *ldv_func_arg1 ) ;
extern void __udelay(unsigned long ) ;
static s32 e1000_poll_for_msg(struct e1000_hw *hw )
{
  struct e1000_mbx_info *mbx ;
  int countdown ;
  s32 tmp ;
  {
  mbx = & hw->mbx;
  countdown = (int )mbx->timeout;
  if ((unsigned long )mbx->ops.check_for_msg == (unsigned long )((s32 (*)(struct e1000_hw * ))0)) {
    goto out;
  } else {
  }
  goto ldv_29909;
  ldv_29908:
  countdown = countdown - 1;
  __udelay((unsigned long )mbx->usec_delay);
  ldv_29909: ;
  if (countdown != 0) {
    tmp = (*(mbx->ops.check_for_msg))(hw);
    if (tmp != 0) {
      goto ldv_29908;
    } else {
      goto ldv_29910;
    }
  } else {
  }
  ldv_29910: ;
  if (countdown == 0) {
    mbx->timeout = 0U;
  } else {
  }
  out: ;
  return (countdown != 0 ? 0 : -15);
}
}
static s32 e1000_poll_for_ack(struct e1000_hw *hw )
{
  struct e1000_mbx_info *mbx ;
  int countdown ;
  s32 tmp ;
  {
  mbx = & hw->mbx;
  countdown = (int )mbx->timeout;
  if ((unsigned long )mbx->ops.check_for_ack == (unsigned long )((s32 (*)(struct e1000_hw * ))0)) {
    goto out;
  } else {
  }
  goto ldv_29918;
  ldv_29917:
  countdown = countdown - 1;
  __udelay((unsigned long )mbx->usec_delay);
  ldv_29918: ;
  if (countdown != 0) {
    tmp = (*(mbx->ops.check_for_ack))(hw);
    if (tmp != 0) {
      goto ldv_29917;
    } else {
      goto ldv_29919;
    }
  } else {
  }
  ldv_29919: ;
  if (countdown == 0) {
    mbx->timeout = 0U;
  } else {
  }
  out: ;
  return (countdown != 0 ? 0 : -15);
}
}
static s32 e1000_read_posted_mbx(struct e1000_hw *hw , u32 *msg , u16 size )
{
  struct e1000_mbx_info *mbx ;
  s32 ret_val ;
  {
  mbx = & hw->mbx;
  ret_val = -15;
  if ((unsigned long )mbx->ops.read == (unsigned long )((s32 (*)(struct e1000_hw * ,
                                                                 u32 * , u16 ))0)) {
    goto out;
  } else {
  }
  ret_val = e1000_poll_for_msg(hw);
  if (ret_val == 0) {
    ret_val = (*(mbx->ops.read))(hw, msg, (int )size);
  } else {
  }
  out: ;
  return (ret_val);
}
}
static s32 e1000_write_posted_mbx(struct e1000_hw *hw , u32 *msg , u16 size )
{
  struct e1000_mbx_info *mbx ;
  s32 ret_val ;
  {
  mbx = & hw->mbx;
  ret_val = -15;
  if ((unsigned long )mbx->ops.write == (unsigned long )((s32 (*)(struct e1000_hw * ,
                                                                  u32 * , u16 ))0) || mbx->timeout == 0U) {
    goto out;
  } else {
  }
  ret_val = (*(mbx->ops.write))(hw, msg, (int )size);
  if (ret_val == 0) {
    ret_val = e1000_poll_for_ack(hw);
  } else {
  }
  out: ;
  return (ret_val);
}
}
static u32 e1000_read_v2p_mailbox(struct e1000_hw *hw )
{
  u32 v2p_mailbox ;
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)hw->hw_addr + 3136U);
  v2p_mailbox = tmp;
  v2p_mailbox = hw->dev_spec.vf.v2p_mailbox | v2p_mailbox;
  hw->dev_spec.vf.v2p_mailbox = hw->dev_spec.vf.v2p_mailbox | (v2p_mailbox & 176U);
  return (v2p_mailbox);
}
}
static s32 e1000_check_for_bit_vf(struct e1000_hw *hw , u32 mask )
{
  u32 v2p_mailbox ;
  u32 tmp ;
  s32 ret_val ;
  {
  tmp = e1000_read_v2p_mailbox(hw);
  v2p_mailbox = tmp;
  ret_val = -15;
  if ((v2p_mailbox & mask) != 0U) {
    ret_val = 0;
  } else {
  }
  hw->dev_spec.vf.v2p_mailbox = hw->dev_spec.vf.v2p_mailbox & ~ mask;
  return (ret_val);
}
}
static s32 e1000_check_for_msg_vf(struct e1000_hw *hw )
{
  s32 ret_val ;
  s32 tmp ;
  {
  ret_val = -15;
  tmp = e1000_check_for_bit_vf(hw, 16U);
  if (tmp == 0) {
    ret_val = 0;
    hw->mbx.stats.reqs = hw->mbx.stats.reqs + 1U;
  } else {
  }
  return (ret_val);
}
}
static s32 e1000_check_for_ack_vf(struct e1000_hw *hw )
{
  s32 ret_val ;
  s32 tmp ;
  {
  ret_val = -15;
  tmp = e1000_check_for_bit_vf(hw, 32U);
  if (tmp == 0) {
    ret_val = 0;
    hw->mbx.stats.acks = hw->mbx.stats.acks + 1U;
  } else {
  }
  return (ret_val);
}
}
static s32 e1000_check_for_rst_vf(struct e1000_hw *hw )
{
  s32 ret_val ;
  s32 tmp ;
  {
  ret_val = -15;
  tmp = e1000_check_for_bit_vf(hw, 192U);
  if (tmp == 0) {
    ret_val = 0;
    hw->mbx.stats.rsts = hw->mbx.stats.rsts + 1U;
  } else {
  }
  return (ret_val);
}
}
static s32 e1000_obtain_mbx_lock_vf(struct e1000_hw *hw )
{
  s32 ret_val ;
  u32 tmp ;
  {
  ret_val = -15;
  writel(4U, (void volatile *)hw->hw_addr + 3136U);
  tmp = e1000_read_v2p_mailbox(hw);
  if ((tmp & 4U) != 0U) {
    ret_val = 0;
  } else {
  }
  return (ret_val);
}
}
static s32 e1000_write_mbx_vf(struct e1000_hw *hw , u32 *msg , u16 size )
{
  s32 err ;
  u16 i ;
  {
  err = e1000_obtain_mbx_lock_vf(hw);
  if (err != 0) {
    goto out_no_write;
  } else {
  }
  e1000_check_for_ack_vf(hw);
  e1000_check_for_msg_vf(hw);
  i = 0U;
  goto ldv_29971;
  ldv_29970:
  writel(*(msg + (unsigned long )i), (void volatile *)(hw->hw_addr + ((unsigned long )((int )i << 2) + 2048UL)));
  i = (u16 )((int )i + 1);
  ldv_29971: ;
  if ((int )i < (int )size) {
    goto ldv_29970;
  } else {
  }
  hw->mbx.stats.msgs_tx = hw->mbx.stats.msgs_tx + 1U;
  writel(1U, (void volatile *)hw->hw_addr + 3136U);
  out_no_write: ;
  return (err);
}
}
static s32 e1000_read_mbx_vf(struct e1000_hw *hw , u32 *msg , u16 size )
{
  s32 err ;
  u16 i ;
  {
  err = e1000_obtain_mbx_lock_vf(hw);
  if (err != 0) {
    goto out_no_read;
  } else {
  }
  i = 0U;
  goto ldv_29982;
  ldv_29981:
  *(msg + (unsigned long )i) = readl((void const volatile *)(hw->hw_addr + ((unsigned long )((int )i << 2) + 2048UL)));
  i = (u16 )((int )i + 1);
  ldv_29982: ;
  if ((int )i < (int )size) {
    goto ldv_29981;
  } else {
  }
  writel(2U, (void volatile *)hw->hw_addr + 3136U);
  hw->mbx.stats.msgs_rx = hw->mbx.stats.msgs_rx + 1U;
  out_no_read: ;
  return (err);
}
}
s32 e1000_init_mbx_params_vf(struct e1000_hw *hw )
{
  struct e1000_mbx_info *mbx ;
  {
  mbx = & hw->mbx;
  mbx->timeout = 0U;
  mbx->usec_delay = 500U;
  mbx->size = 16U;
  mbx->ops.read = & e1000_read_mbx_vf;
  mbx->ops.write = & e1000_write_mbx_vf;
  mbx->ops.read_posted = & e1000_read_posted_mbx;
  mbx->ops.write_posted = & e1000_write_posted_mbx;
  mbx->ops.check_for_msg = & e1000_check_for_msg_vf;
  mbx->ops.check_for_ack = & e1000_check_for_ack_vf;
  mbx->ops.check_for_rst = & e1000_check_for_rst_vf;
  mbx->stats.msgs_tx = 0U;
  mbx->stats.msgs_rx = 0U;
  mbx->stats.reqs = 0U;
  mbx->stats.acks = 0U;
  mbx->stats.rsts = 0U;
  return (0);
}
}
void ldv_consume_skb_15(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_16(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_17(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_18(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
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
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
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
void ldv_kfree_skb_26(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_27(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_28(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_31(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_25(struct sk_buff *ldv_func_arg1 ) ;
extern u32 __VERIFIER_nondet_u32(void) ;
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
struct ethtool_coalesce *igbvf_ethtool_ops_group2 ;
struct ethtool_eeprom *igbvf_ethtool_ops_group5 ;
struct ethtool_wolinfo *igbvf_ethtool_ops_group1 ;
struct ethtool_cmd *igbvf_ethtool_ops_group0 ;
int ldv_state_variable_10 ;
struct ethtool_ringparam *igbvf_ethtool_ops_group4 ;
struct ethtool_pauseparam *igbvf_ethtool_ops_group3 ;
struct net_device *igbvf_ethtool_ops_group6 ;
void ldv_initialize_ethtool_ops_10(void) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
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
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
char igbvf_driver_name[6U] ;
char const igbvf_driver_version[8U] ;
void igbvf_set_ethtool_ops(struct net_device *netdev ) ;
int igbvf_up(struct igbvf_adapter *adapter ) ;
void igbvf_down(struct igbvf_adapter *adapter ) ;
void igbvf_reinit_locked(struct igbvf_adapter *adapter ) ;
int igbvf_setup_rx_resources(struct igbvf_adapter *adapter , struct igbvf_ring *rx_ring ) ;
int igbvf_setup_tx_resources(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring ) ;
void igbvf_free_rx_resources(struct igbvf_ring *rx_ring ) ;
void igbvf_free_tx_resources(struct igbvf_ring *tx_ring ) ;
void igbvf_update_stats(struct igbvf_adapter *adapter ) ;
static struct igbvf_stats const igbvf_gstrings_stats[13U] =
  { {{'r', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 1888, 1776},
        {{'t', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 1896, 1784},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 1904, 1792},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 1912, 1800},
        {{'m', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '\000'}, 8, 1920, 1808},
        {{'l', 'b', 'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 1944, 1832},
        {{'l', 'b', 'r', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 1952,
      1840},
        {{'t', 'x', '_', 'r', 'e', 's', 't', 'a', 'r', 't', '_', 'q', 'u', 'e', 'u',
       'e', '\000'}, 4, 1096, 1960},
        {{'r', 'x', '_', 'l', 'o', 'n', 'g', '_', 'b', 'y', 't', 'e', '_', 'c', 'o',
       'u', 'n', 't', '\000'}, 8, 1904, 1792},
        {{'r', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'g', 'o', 'o', 'd', '\000'}, 8, 1176, 1960},
        {{'r', 'x', '_', 'c', 's', 'u', 'm', '_', 'o', 'f', 'f', 'l', 'o', 'a', 'd',
       '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8, 1168, 1960},
        {{'r', 'x', '_', 'h', 'e', 'a', 'd', 'e', 'r', '_', 's', 'p', 'l', 'i', 't',
       '\000'}, 8, 1184, 1960},
        {{'a', 'l', 'l', 'o', 'c', '_', 'r', 'x', '_', 'b', 'u', 'f', 'f', '_', 'f',
       'a', 'i', 'l', 'e', 'd', '\000'}, 4, 1192, 1960}};
static char const igbvf_gstrings_test[1U][32U] = { { 'L', 'i', 'n', 'k',
            ' ', 't', 'e', 's',
            't', ' ', ' ', ' ',
            '(', 'o', 'n', '/',
            'o', 'f', 'f', 'l',
            'i', 'n', 'e', ')',
            '\000'}};
static int igbvf_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  u32 status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  ecmd->supported = 32U;
  ecmd->advertising = 32U;
  ecmd->port = 255U;
  ecmd->transceiver = 2U;
  status = readl((void const volatile *)hw->hw_addr + 8U);
  if ((status & 2U) != 0U) {
    if ((status & 128U) != 0U) {
      ethtool_cmd_speed_set(ecmd, 1000U);
    } else
    if ((status & 64U) != 0U) {
      ethtool_cmd_speed_set(ecmd, 100U);
    } else {
      ethtool_cmd_speed_set(ecmd, 10U);
    }
    if ((int )status & 1) {
      ecmd->duplex = 1U;
    } else {
      ecmd->duplex = 0U;
    }
  } else {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
  }
  ecmd->autoneg = 0U;
  return (0);
}
}
static int igbvf_set_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  {
  return (-95);
}
}
static void igbvf_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  {
  return;
}
}
static int igbvf_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  {
  return (-95);
}
}
static u32 igbvf_get_msglevel(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  return (adapter->msg_enable);
}
}
static void igbvf_set_msglevel(struct net_device *netdev , u32 data )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  adapter->msg_enable = data;
  return;
}
}
static int igbvf_get_regs_len(struct net_device *netdev )
{
  {
  return (32);
}
}
static void igbvf_get_regs(struct net_device *netdev , struct ethtool_regs *regs ,
                           void *p )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  u32 *regs_buff ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  regs_buff = (u32 *)p;
  memset(p, 0, 32UL);
  regs->version = (__u32 )((((int )(adapter->pdev)->revision << 16) | 16777216) | (int )(adapter->pdev)->device);
  *regs_buff = readl((void const volatile *)hw->hw_addr);
  *(regs_buff + 1UL) = readl((void const volatile *)hw->hw_addr + 8U);
  *(regs_buff + 2UL) = readl((void const volatile *)hw->hw_addr + 10248U);
  *(regs_buff + 3UL) = readl((void const volatile *)hw->hw_addr + 10256U);
  *(regs_buff + 4UL) = readl((void const volatile *)hw->hw_addr + 10264U);
  *(regs_buff + 5UL) = readl((void const volatile *)hw->hw_addr + 14344U);
  *(regs_buff + 6UL) = readl((void const volatile *)hw->hw_addr + 14352U);
  *(regs_buff + 7UL) = readl((void const volatile *)hw->hw_addr + 14360U);
  return;
}
}
static int igbvf_get_eeprom_len(struct net_device *netdev )
{
  {
  return (0);
}
}
static int igbvf_get_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                            u8 *bytes )
{
  {
  return (-95);
}
}
static int igbvf_set_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                            u8 *bytes )
{
  {
  return (-95);
}
}
static void igbvf_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), (char const *)(& igbvf_driver_name), 32UL);
  strlcpy((char *)(& drvinfo->version), (char const *)(& igbvf_driver_version),
          32UL);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  tmp___1 = igbvf_get_regs_len(netdev);
  drvinfo->regdump_len = (__u32 )tmp___1;
  tmp___2 = igbvf_get_eeprom_len(netdev);
  drvinfo->eedump_len = (__u32 )tmp___2;
  return;
}
}
static void igbvf_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct igbvf_ring *tx_ring ;
  struct igbvf_ring *rx_ring ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tx_ring = adapter->tx_ring;
  rx_ring = adapter->rx_ring;
  ring->rx_max_pending = 4096U;
  ring->tx_max_pending = 4096U;
  ring->rx_pending = rx_ring->count;
  ring->tx_pending = tx_ring->count;
  return;
}
}
static int igbvf_set_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct igbvf_ring *temp_ring ;
  int err ;
  u32 new_rx_count ;
  u32 new_tx_count ;
  __u32 _max1 ;
  unsigned int _max2 ;
  u32 _min1 ;
  unsigned int _min2 ;
  __u32 _max1___0 ;
  unsigned int _max2___0 ;
  u32 _min1___0 ;
  unsigned int _min2___0 ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  err = 0;
  if (ring->rx_mini_pending != 0U || ring->rx_jumbo_pending != 0U) {
    return (-22);
  } else {
  }
  _max1 = ring->rx_pending;
  _max2 = 80U;
  new_rx_count = _max1 > _max2 ? _max1 : _max2;
  _min1 = new_rx_count;
  _min2 = 4096U;
  new_rx_count = _min1 < _min2 ? _min1 : _min2;
  new_rx_count = (new_rx_count + 7U) & 4294967288U;
  _max1___0 = ring->tx_pending;
  _max2___0 = 80U;
  new_tx_count = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  _min1___0 = new_tx_count;
  _min2___0 = 4096U;
  new_tx_count = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  new_tx_count = (new_tx_count + 7U) & 4294967288U;
  if ((adapter->tx_ring)->count == new_tx_count && (adapter->rx_ring)->count == new_rx_count) {
    return (0);
  } else {
  }
  goto ldv_43636;
  ldv_43635:
  msleep(1U);
  ldv_43636:
  tmp___0 = test_and_set_bit(1L, (unsigned long volatile *)(& adapter->state));
  if (tmp___0 != 0) {
    goto ldv_43635;
  } else {
  }
  tmp___1 = netif_running((struct net_device const *)adapter->netdev);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    (adapter->tx_ring)->count = new_tx_count;
    (adapter->rx_ring)->count = new_rx_count;
    goto clear_reset;
  } else {
  }
  tmp___3 = vmalloc(304UL);
  temp_ring = (struct igbvf_ring *)tmp___3;
  if ((unsigned long )temp_ring == (unsigned long )((struct igbvf_ring *)0)) {
    err = -12;
    goto clear_reset;
  } else {
  }
  igbvf_down(adapter);
  if ((adapter->tx_ring)->count != new_tx_count) {
    __len = 304UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)temp_ring, (void const *)adapter->tx_ring, __len);
    } else {
      __ret = memcpy((void *)temp_ring, (void const *)adapter->tx_ring,
                               __len);
    }
    temp_ring->count = new_tx_count;
    err = igbvf_setup_tx_resources(adapter, temp_ring);
    if (err != 0) {
      goto err_setup;
    } else {
    }
    igbvf_free_tx_resources(adapter->tx_ring);
    __len___0 = 304UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)adapter->tx_ring, (void const *)temp_ring, __len___0);
    } else {
      __ret___0 = memcpy((void *)adapter->tx_ring, (void const *)temp_ring,
                                   __len___0);
    }
  } else {
  }
  if ((adapter->rx_ring)->count != new_rx_count) {
    __len___1 = 304UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy((void *)temp_ring, (void const *)adapter->rx_ring, __len___1);
    } else {
      __ret___1 = memcpy((void *)temp_ring, (void const *)adapter->rx_ring,
                                   __len___1);
    }
    temp_ring->count = new_rx_count;
    err = igbvf_setup_rx_resources(adapter, temp_ring);
    if (err != 0) {
      goto err_setup;
    } else {
    }
    igbvf_free_rx_resources(adapter->rx_ring);
    __len___2 = 304UL;
    if (__len___2 > 63UL) {
      __ret___2 = memcpy((void *)adapter->rx_ring, (void const *)temp_ring, __len___2);
    } else {
      __ret___2 = memcpy((void *)adapter->rx_ring, (void const *)temp_ring,
                                   __len___2);
    }
  } else {
  }
  err_setup:
  igbvf_up(adapter);
  vfree((void const *)temp_ring);
  clear_reset:
  clear_bit(1L, (unsigned long volatile *)(& adapter->state));
  return (err);
}
}
static int igbvf_link_test(struct igbvf_adapter *adapter , u64 *data )
{
  struct e1000_hw *hw ;
  unsigned int tmp ;
  {
  hw = & adapter->hw;
  *data = 0ULL;
  (*(hw->mac.ops.check_for_link))(hw);
  tmp = readl((void const volatile *)hw->hw_addr + 8U);
  if ((tmp & 2U) == 0U) {
    *data = 1ULL;
  } else {
  }
  return ((int )*data);
}
}
static void igbvf_diag_test(struct net_device *netdev , struct ethtool_test *eth_test ,
                            u64 *data )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  set_bit(0L, (unsigned long volatile *)(& adapter->state));
  tmp___0 = igbvf_link_test(adapter, data);
  if (tmp___0 != 0) {
    eth_test->flags = eth_test->flags | 2U;
  } else {
  }
  clear_bit(0L, (unsigned long volatile *)(& adapter->state));
  msleep_interruptible(4000U);
  return;
}
}
static void igbvf_get_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  {
  wol->supported = 0U;
  wol->wolopts = 0U;
  return;
}
}
static int igbvf_set_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  {
  return (-95);
}
}
static int igbvf_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *ec )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  if (adapter->requested_itr <= 3U) {
    ec->rx_coalesce_usecs = adapter->requested_itr;
  } else {
    ec->rx_coalesce_usecs = adapter->current_itr >> 2;
  }
  return (0);
}
}
static int igbvf_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *ec )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  if (ec->rx_coalesce_usecs > 9U && ec->rx_coalesce_usecs <= 10000U) {
    adapter->current_itr = ec->rx_coalesce_usecs << 2;
    adapter->requested_itr = 1000000000U / (adapter->current_itr * 256U);
  } else
  if (ec->rx_coalesce_usecs == 3U || ec->rx_coalesce_usecs == 2U) {
    adapter->current_itr = 488U;
    adapter->requested_itr = ec->rx_coalesce_usecs;
  } else
  if (ec->rx_coalesce_usecs == 0U) {
    adapter->current_itr = 4U;
    adapter->requested_itr = 1000000000U / (adapter->current_itr * 256U);
  } else {
    return (-22);
  }
  writel(adapter->current_itr, (void volatile *)hw->hw_addr + (unsigned long )(adapter->rx_ring)->itr_register);
  return (0);
}
}
static int igbvf_nway_reset(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    igbvf_reinit_locked(adapter);
  } else {
  }
  return (0);
}
}
static void igbvf_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                    u64 *data )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  int i ;
  char *p ;
  char *b ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  igbvf_update_stats(adapter);
  i = 0;
  goto ldv_43698;
  ldv_43697:
  p = (char *)adapter + (unsigned long )igbvf_gstrings_stats[i].stat_offset;
  b = (char *)adapter + (unsigned long )igbvf_gstrings_stats[i].base_stat_offset;
  *(data + (unsigned long )i) = igbvf_gstrings_stats[i].sizeof_stat == 8 ? *((u64 *)p) - *((u64 *)b) : (u64 )(*((u32 *)p) - *((u32 *)b));
  i = i + 1;
  ldv_43698: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_43697;
  } else {
  }
  return;
}
}
static int igbvf_get_sset_count(struct net_device *dev , int stringset )
{
  {
  switch (stringset) {
  case 0: ;
  return (1);
  case 1: ;
  return (13);
  default: ;
  return (-22);
  }
}
}
static void igbvf_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  u8 *p ;
  int i ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  p = data;
  switch (stringset) {
  case 0U:
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& igbvf_gstrings_test), __len);
  } else {
    __ret = memcpy((void *)data, (void const *)(& igbvf_gstrings_test),
                             __len);
  }
  goto ldv_43722;
  case 1U:
  i = 0;
  goto ldv_43730;
  ldv_43729:
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)p, (void const *)(& igbvf_gstrings_stats[i].stat_string),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)p, (void const *)(& igbvf_gstrings_stats[i].stat_string),
                                 __len___0);
  }
  p = p + 32UL;
  i = i + 1;
  ldv_43730: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_43729;
  } else {
  }
  goto ldv_43722;
  }
  ldv_43722: ;
  return;
}
}
static struct ethtool_ops const igbvf_ethtool_ops =
     {& igbvf_get_settings, & igbvf_set_settings, & igbvf_get_drvinfo, & igbvf_get_regs_len,
    & igbvf_get_regs, & igbvf_get_wol, & igbvf_set_wol, & igbvf_get_msglevel, & igbvf_set_msglevel,
    & igbvf_nway_reset, & ethtool_op_get_link, & igbvf_get_eeprom_len, & igbvf_get_eeprom,
    & igbvf_set_eeprom, & igbvf_get_coalesce, & igbvf_set_coalesce, & igbvf_get_ringparam,
    & igbvf_set_ringparam, & igbvf_get_pauseparam, & igbvf_set_pauseparam, & igbvf_diag_test,
    & igbvf_get_strings, 0, & igbvf_get_ethtool_stats, 0, 0, 0, 0, & igbvf_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void igbvf_set_ethtool_ops(struct net_device *netdev )
{
  {
  netdev->ethtool_ops = & igbvf_ethtool_ops;
  return;
}
}
void ldv_initialize_ethtool_ops_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  {
  tmp = ldv_zalloc(20UL);
  igbvf_ethtool_ops_group1 = (struct ethtool_wolinfo *)tmp;
  tmp___0 = ldv_zalloc(44UL);
  igbvf_ethtool_ops_group0 = (struct ethtool_cmd *)tmp___0;
  tmp___1 = ldv_zalloc(92UL);
  igbvf_ethtool_ops_group2 = (struct ethtool_coalesce *)tmp___1;
  tmp___2 = ldv_zalloc(36UL);
  igbvf_ethtool_ops_group4 = (struct ethtool_ringparam *)tmp___2;
  tmp___3 = ldv_zalloc(16UL);
  igbvf_ethtool_ops_group5 = (struct ethtool_eeprom *)tmp___3;
  tmp___4 = ldv_zalloc(16UL);
  igbvf_ethtool_ops_group3 = (struct ethtool_pauseparam *)tmp___4;
  tmp___5 = ldv_zalloc(3264UL);
  igbvf_ethtool_ops_group6 = (struct net_device *)tmp___5;
  return;
}
}
void ldv_main_exported_10(void)
{
  u32 ldvarg19 ;
  u32 tmp ;
  struct ethtool_regs *ldvarg22 ;
  void *tmp___0 ;
  u8 *ldvarg13 ;
  void *tmp___1 ;
  u64 *ldvarg17 ;
  void *tmp___2 ;
  u8 *ldvarg14 ;
  void *tmp___3 ;
  struct ethtool_drvinfo *ldvarg25 ;
  void *tmp___4 ;
  void *ldvarg21 ;
  void *tmp___5 ;
  u32 ldvarg15 ;
  u32 tmp___6 ;
  u8 *ldvarg16 ;
  void *tmp___7 ;
  u64 *ldvarg23 ;
  void *tmp___8 ;
  int ldvarg20 ;
  int tmp___9 ;
  struct ethtool_test *ldvarg18 ;
  void *tmp___10 ;
  struct ethtool_stats *ldvarg24 ;
  void *tmp___11 ;
  int tmp___12 ;
  {
  tmp = __VERIFIER_nondet_u32();
  ldvarg19 = tmp;
  tmp___0 = ldv_zalloc(12UL);
  ldvarg22 = (struct ethtool_regs *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg13 = (u8 *)tmp___1;
  tmp___2 = ldv_zalloc(8UL);
  ldvarg17 = (u64 *)tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg14 = (u8 *)tmp___3;
  tmp___4 = ldv_zalloc(196UL);
  ldvarg25 = (struct ethtool_drvinfo *)tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg21 = tmp___5;
  tmp___6 = __VERIFIER_nondet_u32();
  ldvarg15 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg16 = (u8 *)tmp___7;
  tmp___8 = ldv_zalloc(8UL);
  ldvarg23 = (u64 *)tmp___8;
  tmp___9 = __VERIFIER_nondet_int();
  ldvarg20 = tmp___9;
  tmp___10 = ldv_zalloc(16UL);
  ldvarg18 = (struct ethtool_test *)tmp___10;
  tmp___11 = ldv_zalloc(8UL);
  ldvarg24 = (struct ethtool_stats *)tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_drvinfo(igbvf_ethtool_ops_group6, ldvarg25);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_pauseparam(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group3);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_ethtool_stats(igbvf_ethtool_ops_group6, ldvarg24, ldvarg23);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 3: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_coalesce(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group2);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 4: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_ringparam(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group4);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 5: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_regs(igbvf_ethtool_ops_group6, ldvarg22, ldvarg21);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 6: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_pauseparam(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group3);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 7: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_sset_count(igbvf_ethtool_ops_group6, ldvarg20);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 8: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_settings(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 9: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_coalesce(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group2);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 10: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_wol(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group1);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 11: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_msglevel(igbvf_ethtool_ops_group6, ldvarg19);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 12: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_eeprom_len(igbvf_ethtool_ops_group6);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 13: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_settings(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group0);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 14: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_diag_test(igbvf_ethtool_ops_group6, ldvarg18, ldvarg17);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 15: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_eeprom(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group5, ldvarg16);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 16: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_strings(igbvf_ethtool_ops_group6, ldvarg15, ldvarg14);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 17: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_nway_reset(igbvf_ethtool_ops_group6);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 18: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_wol(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group1);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 19: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_eeprom(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group5, ldvarg13);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 20: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_msglevel(igbvf_ethtool_ops_group6);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 21: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_get_regs_len(igbvf_ethtool_ops_group6);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 22: ;
  if (ldv_state_variable_10 == 1) {
    igbvf_set_ringparam(igbvf_ethtool_ops_group6, igbvf_ethtool_ops_group4);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  case 23: ;
  if (ldv_state_variable_10 == 1) {
    ethtool_op_get_link(igbvf_ethtool_ops_group6);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_43756;
  default:
  ldv_stop();
  }
  ldv_43756: ;
  return;
}
}
void ldv_consume_skb_25(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_26(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_27(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_28(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_31(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void __builtin_prefetch(void const * , ...) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
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
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
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
extern unsigned long __phys_addr(unsigned long ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
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
    ldv_4822: ;
    goto ldv_4822;
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6338.rlock);
}
}
extern void dump_page(struct page * , char const * ) ;
extern unsigned long volatile jiffies ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_45(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_50(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_52(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_53(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_51(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_56(struct timer_list *ldv_func_arg1 ) ;
extern unsigned long round_jiffies(unsigned long ) ;
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
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern void *vzalloc(unsigned long ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void get_random_bytes(void * , int ) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
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
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return ((void *)0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
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
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  return (tmp___0);
}
}
extern __sum16 csum_ipv6_magic(struct in6_addr const * , struct in6_addr const * ,
                               __u32 , unsigned short , __wsum ) ;
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
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
__inline static struct page *compound_head_by_tail(struct page *tail )
{
  struct page *head ;
  int tmp ;
  long tmp___0 ;
  {
  head = tail->ldv_12204.first_page;
  __asm__ volatile ("": : : "memory");
  tmp = PageTail((struct page const *)tail);
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  if (tmp___0 != 0L) {
    return (head);
  } else {
  }
  return (tail);
}
}
__inline static struct page *compound_head(struct page *page )
{
  struct page *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = PageTail((struct page const *)page);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    tmp = compound_head_by_tail(page);
    return (tmp);
  } else {
  }
  return (page);
}
}
__inline static int page_count(struct page *page )
{
  struct page *tmp ;
  int tmp___0 ;
  {
  tmp = compound_head(page);
  tmp___0 = atomic_read((atomic_t const *)(& tmp->ldv_12186.ldv_12185.ldv_12183._count));
  return (tmp___0);
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
  tmp___3 = atomic_read((atomic_t const *)(& page->ldv_12186.ldv_12185.ldv_12183._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    dump_page(page, "VM_BUG_ON_PAGE(atomic_read(&page->_count) <= 0)");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (509), "i" (12UL));
    ldv_18006: ;
    goto ldv_18006;
  } else {
  }
  atomic_inc(& page->ldv_12186.ldv_12185.ldv_12183._count);
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
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
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_20778: ;
    goto ldv_20778;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
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
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_20787: ;
    goto ldv_20787;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    ldv_20821: ;
    goto ldv_20821;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    ldv_20829: ;
    goto ldv_20829;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
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
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
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
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
void ldv_kfree_skb_37(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_38(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_39(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_42(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_44(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_36(struct sk_buff *ldv_func_arg1 ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void __skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                          int off , int size )
{
  skb_frag_t *frag ;
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )i;
  frag->page.p = page;
  frag->page_offset = (__u32 )off;
  skb_frag_size_set(frag, (unsigned int )size);
  page = compound_head(page);
  if ((int )page->ldv_12186.ldv_12169.pfmemalloc && (unsigned long )page->ldv_12163.mapping == (unsigned long )((struct address_space *)0)) {
    skb->pfmemalloc = 1U;
  } else {
  }
  return;
}
}
__inline static void skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                        int off , int size )
{
  unsigned char *tmp ;
  {
  __skb_fill_page_desc(skb, i, page, off, size);
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp)->nr_frags = (unsigned int )((unsigned char )i) + 1U;
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  return (tmp___0);
}
}
__inline static int __skb_cow(struct sk_buff *skb , unsigned int headroom , int cloned )
{
  int delta ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___1 ;
  {
  delta = 0;
  tmp___0 = skb_headroom((struct sk_buff const *)skb);
  if (tmp___0 < headroom) {
    tmp = skb_headroom((struct sk_buff const *)skb);
    delta = (int )(headroom - tmp);
  } else {
  }
  if (delta != 0 || cloned != 0) {
    _max1 = 32;
    _max2 = 64;
    _max1___0 = 32;
    _max2___0 = 64;
    tmp___1 = pskb_expand_head(skb, (((_max1 > _max2 ? _max1 : _max2) + -1) + delta) & - (_max1___0 > _max2___0 ? _max1___0 : _max2___0),
                               0, 32U);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
__inline static int skb_cow_head(struct sk_buff *skb , unsigned int headroom )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = skb_header_cloned((struct sk_buff const *)skb);
  tmp___0 = __skb_cow(skb, headroom, tmp);
  return (tmp___0);
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static bool skb_is_gso_v6(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return (((int )((struct skb_shared_info *)tmp)->gso_type & 16) != 0);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern u16 __VERIFIER_nondet_u16(void) ;
int ldv_state_variable_8 ;
struct ethtool_coalesce *igbvf_ethtool_ops_group2 ;
int ldv_timer_4_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct ethtool_eeprom *igbvf_ethtool_ops_group5 ;
int ldv_timer_4_3 ;
void *ldv_irq_data_2_3 ;
struct ethtool_wolinfo *igbvf_ethtool_ops_group1 ;
int ldv_state_variable_9 ;
int ldv_irq_line_2_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_irq_line_3_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
struct ethtool_cmd *igbvf_ethtool_ops_group0 ;
int ldv_irq_line_2_3 ;
void *ldv_irq_data_2_1 ;
void *ldv_irq_data_3_3 ;
struct pci_dev *igbvf_driver_group0 ;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_timer_4_2 ;
int ldv_irq_line_3_2 ;
int ldv_state_variable_10 ;
struct timer_list *ldv_timer_list_4_0 ;
struct ethtool_ringparam *igbvf_ethtool_ops_group4 ;
void *ldv_irq_data_3_1 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
void *ldv_irq_data_3_0 ;
struct pci_dev *igbvf_err_handler_group0 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct net_device *igbvf_netdev_ops_group1 ;
struct timer_list *ldv_timer_list_4_3 ;
struct ethtool_pauseparam *igbvf_ethtool_ops_group3 ;
struct timer_list *ldv_timer_list_4_2 ;
int ldv_irq_line_3_1 ;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
void *ldv_irq_data_3_2 ;
int ldv_timer_4_1 ;
struct net_device *igbvf_ethtool_ops_group6 ;
struct timer_list *ldv_timer_list_4_1 ;
int ldv_state_variable_4 ;
int ldv_irq_line_3_3 ;
int ldv_irq_3(int state , int line , void *data ) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void ldv_initialize_pci_driver_5(void) ;
void ldv_net_device_ops_7(void) ;
void activate_suitable_irq_3(int line , void *data ) ;
void activate_suitable_irq_2(int line , void *data ) ;
void activate_pending_timer_4(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void timer_init_4(void) ;
void choose_interrupt_1(void) ;
void choose_timer_4(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void disable_suitable_irq_3(int line , void *data ) ;
void disable_suitable_timer_4(struct timer_list *timer ) ;
int reg_check_3(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_pci_error_handlers_6(void) ;
int reg_timer_4(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void choose_interrupt_3(void) ;
void ldv_timer_4(int state , struct timer_list *timer ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void activate_suitable_timer_4(struct timer_list *timer , unsigned long data ) ;
__inline static int pci_channel_offline(struct pci_dev *pdev )
{
  {
  return (pdev->error_state != 1U);
}
}
extern int pci_enable_device_mem(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
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
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_47(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_48(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
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
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  __might_sleep("include/linux/netdevice.h", 476, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  goto ldv_42080;
  ldv_42079:
  msleep(1U);
  ldv_42080:
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_42079;
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
    ldv_42085: ;
    goto ldv_42085;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_55(struct net_device *dev ) ;
void ldv_free_netdev_58(struct net_device *dev ) ;
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
    printk("\016igbvf: netif_stop_queue() cannot be called before register_netdev()\n");
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
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if (debug_value < 0 || (unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_54(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_57(struct net_device *dev ) ;
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static void eth_random_addr(u8 *addr )
{
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  return;
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
char igbvf_driver_name[6U] = { 'i', 'g', 'b', 'v',
        'f', '\000'};
char const igbvf_driver_version[8U] =
  { '2', '.', '0', '.',
        '2', '-', 'k', '\000'};
static char const igbvf_driver_string[49U] =
  { 'I', 'n', 't', 'e',
        'l', '(', 'R', ')',
        ' ', 'G', 'i', 'g',
        'a', 'b', 'i', 't',
        ' ', 'V', 'i', 'r',
        't', 'u', 'a', 'l',
        ' ', 'F', 'u', 'n',
        'c', 't', 'i', 'o',
        'n', ' ', 'N', 'e',
        't', 'w', 'o', 'r',
        'k', ' ', 'D', 'r',
        'i', 'v', 'e', 'r',
        '\000'};
static char const igbvf_copyright[45U] =
  { 'C', 'o', 'p', 'y',
        'r', 'i', 'g', 'h',
        't', ' ', '(', 'c',
        ')', ' ', '2', '0',
        '0', '9', ' ', '-',
        ' ', '2', '0', '1',
        '2', ' ', 'I', 'n',
        't', 'e', 'l', ' ',
        'C', 'o', 'r', 'p',
        'o', 'r', 'a', 't',
        'i', 'o', 'n', '.',
        '\000'};
static int debug = -1;
static int igbvf_poll(struct napi_struct *napi , int budget ) ;
static void igbvf_reset(struct igbvf_adapter *adapter ) ;
static void igbvf_set_interrupt_capability(struct igbvf_adapter *adapter ) ;
static void igbvf_reset_interrupt_capability(struct igbvf_adapter *adapter ) ;
static struct igbvf_info igbvf_vf_info = {1, 0U, 10U, & e1000_init_function_pointers_vf, 0};
static struct igbvf_info igbvf_i350_vf_info = {2, 0U, 10U, & e1000_init_function_pointers_vf, 0};
static struct igbvf_info const *igbvf_info_tbl[2U] = { (struct igbvf_info const *)(& igbvf_vf_info), (struct igbvf_info const *)(& igbvf_i350_vf_info)};
static int igbvf_desc_unused(struct igbvf_ring *ring )
{
  {
  if ((int )ring->next_to_clean > (int )ring->next_to_use) {
    return (((int )ring->next_to_clean - (int )ring->next_to_use) + -1);
  } else {
  }
  return ((int )(((ring->count + (unsigned int )ring->next_to_clean) - (unsigned int )ring->next_to_use) - 1U));
}
}
static void igbvf_receive_skb(struct igbvf_adapter *adapter , struct net_device *netdev ,
                              struct sk_buff *skb , u32 status , u16 vlan )
{
  u16 vid ;
  __u16 tmp ;
  int tmp___0 ;
  {
  if ((status & 8U) != 0U) {
    if ((adapter->flags & 2U) != 0U && (status & 262144U) != 0U) {
      tmp = __fswab16((int )vlan);
      vid = (unsigned int )tmp & 4095U;
    } else {
      vid = (unsigned int )vlan & 4095U;
    }
    tmp___0 = variable_test_bit((long )vid, (unsigned long const volatile *)(& adapter->active_vlans));
    if (tmp___0 != 0) {
      __vlan_hwaccel_put_tag(skb, 129, (int )vid);
    } else {
    }
  } else {
  }
  napi_gro_receive(& (adapter->rx_ring)->napi, skb);
  return;
}
}
__inline static void igbvf_rx_checksum_adv(struct igbvf_adapter *adapter , u32 status_err ,
                                           struct sk_buff *skb )
{
  {
  skb_checksum_none_assert((struct sk_buff const *)skb);
  if ((status_err & 4U) != 0U || (int )adapter->flags & 1) {
    return;
  } else {
  }
  if ((status_err & 1610612736U) != 0U) {
    adapter->hw_csum_err = adapter->hw_csum_err + 1ULL;
    return;
  } else {
  }
  if ((status_err & 48U) != 0U) {
    skb->ip_summed = 1U;
  } else {
  }
  adapter->hw_csum_good = adapter->hw_csum_good + 1ULL;
  return;
}
}
static void igbvf_alloc_rx_buffers(struct igbvf_ring *rx_ring , int cleaned_count )
{
  struct igbvf_adapter *adapter ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  union e1000_adv_rx_desc *rx_desc ;
  struct igbvf_buffer *buffer_info ;
  struct sk_buff *skb ;
  unsigned int i ;
  int bufsz ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  adapter = rx_ring->adapter;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  i = (unsigned int )rx_ring->next_to_use;
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  if (adapter->rx_ps_hdr_size != 0U) {
    bufsz = (int )adapter->rx_ps_hdr_size;
  } else {
    bufsz = (int )adapter->rx_buffer_len;
  }
  goto ldv_51285;
  ldv_51284:
  rx_desc = & (rx_ring->desc + (unsigned long )i)->rx_desc;
  if (adapter->rx_ps_hdr_size != 0U && buffer_info->ldv_43417.ldv_43416.page_dma == 0ULL) {
    if ((unsigned long )buffer_info->ldv_43417.ldv_43416.page == (unsigned long )((struct page *)0)) {
      buffer_info->ldv_43417.ldv_43416.page = alloc_pages(32U, 0U);
      if ((unsigned long )buffer_info->ldv_43417.ldv_43416.page == (unsigned long )((struct page *)0)) {
        adapter->alloc_rx_buff_failed = adapter->alloc_rx_buff_failed + 1U;
        goto no_buffers;
      } else {
      }
      buffer_info->ldv_43417.ldv_43416.page_offset = 0U;
    } else {
      buffer_info->ldv_43417.ldv_43416.page_offset = buffer_info->ldv_43417.ldv_43416.page_offset ^ 2048U;
    }
    buffer_info->ldv_43417.ldv_43416.page_dma = dma_map_page(& pdev->dev, buffer_info->ldv_43417.ldv_43416.page,
                                                             (size_t )buffer_info->ldv_43417.ldv_43416.page_offset,
                                                             2048UL, 2);
    tmp = dma_mapping_error(& pdev->dev, buffer_info->ldv_43417.ldv_43416.page_dma);
    if (tmp != 0) {
      __free_pages(buffer_info->ldv_43417.ldv_43416.page, 0U);
      buffer_info->ldv_43417.ldv_43416.page = (struct page *)0;
      dev_err((struct device const *)(& pdev->dev), "RX DMA map failed\n");
      goto ldv_51283;
    } else {
    }
  } else {
  }
  if ((unsigned long )buffer_info->skb == (unsigned long )((struct sk_buff *)0)) {
    skb = netdev_alloc_skb_ip_align(netdev, (unsigned int )bufsz);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      adapter->alloc_rx_buff_failed = adapter->alloc_rx_buff_failed + 1U;
      goto no_buffers;
    } else {
    }
    buffer_info->skb = skb;
    buffer_info->dma = dma_map_single_attrs(& pdev->dev, (void *)skb->data, (size_t )bufsz,
                                            2, (struct dma_attrs *)0);
    tmp___0 = dma_mapping_error(& pdev->dev, buffer_info->dma);
    if (tmp___0 != 0) {
      ldv_skb_free(buffer_info->skb);
      buffer_info->skb = (struct sk_buff *)0;
      dev_err((struct device const *)(& pdev->dev), "RX DMA map failed\n");
      goto no_buffers;
    } else {
    }
  } else {
  }
  if (adapter->rx_ps_hdr_size != 0U) {
    rx_desc->read.pkt_addr = buffer_info->ldv_43417.ldv_43416.page_dma;
    rx_desc->read.hdr_addr = buffer_info->dma;
  } else {
    rx_desc->read.pkt_addr = buffer_info->dma;
    rx_desc->read.hdr_addr = 0ULL;
  }
  i = i + 1U;
  if (rx_ring->count == i) {
    i = 0U;
  } else {
  }
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  ldv_51285:
  tmp___1 = cleaned_count;
  cleaned_count = cleaned_count - 1;
  if (tmp___1 != 0) {
    goto ldv_51284;
  } else {
  }
  ldv_51283: ;
  no_buffers: ;
  if ((unsigned int )rx_ring->next_to_use != i) {
    rx_ring->next_to_use = (u16 )i;
    if (i == 0U) {
      i = rx_ring->count - 1U;
    } else {
      i = i - 1U;
    }
    __asm__ volatile ("sfence": : : "memory");
    writel(i, (void volatile *)adapter->hw.hw_addr + (unsigned long )rx_ring->tail);
  } else {
  }
  return;
}
}
static bool igbvf_clean_rx_irq(struct igbvf_adapter *adapter , int *work_done , int work_to_do )
{
  struct igbvf_ring *rx_ring ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  union e1000_adv_rx_desc *rx_desc ;
  union e1000_adv_rx_desc *next_rxd ;
  struct igbvf_buffer *buffer_info ;
  struct igbvf_buffer *next_buffer ;
  struct sk_buff *skb ;
  bool cleaned ;
  int cleaned_count ;
  unsigned int total_bytes ;
  unsigned int total_packets ;
  unsigned int i ;
  u32 length ;
  u32 hlen ;
  u32 staterr ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  rx_ring = adapter->rx_ring;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  cleaned = 0;
  cleaned_count = 0;
  total_bytes = 0U;
  total_packets = 0U;
  i = (unsigned int )rx_ring->next_to_clean;
  rx_desc = & (rx_ring->desc + (unsigned long )i)->rx_desc;
  staterr = rx_desc->wb.upper.status_error;
  goto ldv_51311;
  ldv_51310: ;
  if (*work_done >= work_to_do) {
    goto ldv_51307;
  } else {
  }
  *work_done = *work_done + 1;
  __asm__ volatile ("lfence": : : "memory");
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  hlen = (u32 )(((int )rx_desc->wb.lower.lo_dword.hs_rss.hdr_info & 32736) >> 5);
  if (adapter->rx_ps_hdr_size < hlen) {
    hlen = adapter->rx_ps_hdr_size;
  } else {
  }
  length = (u32 )rx_desc->wb.upper.length;
  cleaned = 1;
  cleaned_count = cleaned_count + 1;
  skb = buffer_info->skb;
  __builtin_prefetch((void const *)skb->data);
  buffer_info->skb = (struct sk_buff *)0;
  if (adapter->rx_ps_hdr_size == 0U) {
    dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )adapter->rx_buffer_len,
                           2, (struct dma_attrs *)0);
    buffer_info->dma = 0ULL;
    skb_put(skb, length);
    goto send_up;
  } else {
  }
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp)->nr_frags == 0U) {
    dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )adapter->rx_ps_hdr_size,
                           2, (struct dma_attrs *)0);
    skb_put(skb, hlen);
  } else {
  }
  if (length != 0U) {
    dma_unmap_page(& pdev->dev, buffer_info->ldv_43417.ldv_43416.page_dma, 2048UL,
                   2);
    buffer_info->ldv_43417.ldv_43416.page_dma = 0ULL;
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    skb_fill_page_desc(skb, (int )((struct skb_shared_info *)tmp___0)->nr_frags, buffer_info->ldv_43417.ldv_43416.page,
                       (int )buffer_info->ldv_43417.ldv_43416.page_offset, (int )length);
    if (adapter->rx_buffer_len > 2048U) {
      buffer_info->ldv_43417.ldv_43416.page = (struct page *)0;
    } else {
      tmp___1 = page_count(buffer_info->ldv_43417.ldv_43416.page);
      if (tmp___1 != 1) {
        buffer_info->ldv_43417.ldv_43416.page = (struct page *)0;
      } else {
        get_page(buffer_info->ldv_43417.ldv_43416.page);
      }
    }
    skb->len = skb->len + length;
    skb->data_len = skb->data_len + length;
    skb->truesize = skb->truesize + 2048U;
  } else {
  }
  send_up:
  i = i + 1U;
  if (rx_ring->count == i) {
    i = 0U;
  } else {
  }
  next_rxd = & (rx_ring->desc + (unsigned long )i)->rx_desc;
  __builtin_prefetch((void const *)next_rxd);
  next_buffer = rx_ring->buffer_info + (unsigned long )i;
  if ((staterr & 2U) == 0U) {
    buffer_info->skb = next_buffer->skb;
    buffer_info->dma = next_buffer->dma;
    next_buffer->skb = skb;
    next_buffer->dma = 0ULL;
    goto next_desc;
  } else {
  }
  if ((staterr & 2533359616U) != 0U) {
    dev_kfree_skb_irq(skb);
    goto next_desc;
  } else {
  }
  total_bytes = skb->len + total_bytes;
  total_packets = total_packets + 1U;
  igbvf_rx_checksum_adv(adapter, staterr, skb);
  skb->protocol = eth_type_trans(skb, netdev);
  igbvf_receive_skb(adapter, netdev, skb, staterr, (int )rx_desc->wb.upper.vlan);
  next_desc:
  rx_desc->wb.upper.status_error = 0U;
  if (cleaned_count > 15) {
    igbvf_alloc_rx_buffers(rx_ring, cleaned_count);
    cleaned_count = 0;
  } else {
  }
  rx_desc = next_rxd;
  buffer_info = next_buffer;
  staterr = rx_desc->wb.upper.status_error;
  ldv_51311: ;
  if ((int )staterr & 1) {
    goto ldv_51310;
  } else {
  }
  ldv_51307:
  rx_ring->next_to_clean = (u16 )i;
  cleaned_count = igbvf_desc_unused(rx_ring);
  if (cleaned_count != 0) {
    igbvf_alloc_rx_buffers(rx_ring, cleaned_count);
  } else {
  }
  adapter->total_rx_packets = adapter->total_rx_packets + total_packets;
  adapter->total_rx_bytes = adapter->total_rx_bytes + total_bytes;
  adapter->net_stats.rx_bytes = adapter->net_stats.rx_bytes + (unsigned long )total_bytes;
  adapter->net_stats.rx_packets = adapter->net_stats.rx_packets + (unsigned long )total_packets;
  return (cleaned);
}
}
static void igbvf_put_txbuf(struct igbvf_adapter *adapter , struct igbvf_buffer *buffer_info )
{
  {
  if (buffer_info->dma != 0ULL) {
    if ((unsigned int )buffer_info->ldv_43417.ldv_43411.mapped_as_page != 0U) {
      dma_unmap_page(& (adapter->pdev)->dev, buffer_info->dma, (size_t )buffer_info->ldv_43417.ldv_43411.length,
                     1);
    } else {
      dma_unmap_single_attrs(& (adapter->pdev)->dev, buffer_info->dma, (size_t )buffer_info->ldv_43417.ldv_43411.length,
                             1, (struct dma_attrs *)0);
    }
    buffer_info->dma = 0ULL;
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
  } else {
  }
  buffer_info->ldv_43417.ldv_43411.time_stamp = 0UL;
  return;
}
}
int igbvf_setup_tx_resources(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring )
{
  struct pci_dev *pdev ;
  int size ;
  void *tmp ;
  void *tmp___0 ;
  {
  pdev = adapter->pdev;
  size = (int )(tx_ring->count * 40U);
  tmp = vzalloc((unsigned long )size);
  tx_ring->buffer_info = (struct igbvf_buffer *)tmp;
  if ((unsigned long )tx_ring->buffer_info == (unsigned long )((struct igbvf_buffer *)0)) {
    goto err;
  } else {
  }
  tx_ring->size = tx_ring->count * 16U;
  tx_ring->size = (tx_ring->size + 4095U) & 4294963200U;
  tmp___0 = dma_alloc_attrs(& pdev->dev, (size_t )tx_ring->size, & tx_ring->dma, 208U,
                            (struct dma_attrs *)0);
  tx_ring->desc = (union igbvf_desc *)tmp___0;
  if ((unsigned long )tx_ring->desc == (unsigned long )((union igbvf_desc *)0)) {
    goto err;
  } else {
  }
  tx_ring->adapter = adapter;
  tx_ring->next_to_use = 0U;
  tx_ring->next_to_clean = 0U;
  return (0);
  err:
  vfree((void const *)tx_ring->buffer_info);
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Unable to allocate memory for the transmit descriptor ring\n");
  return (-12);
}
}
int igbvf_setup_rx_resources(struct igbvf_adapter *adapter , struct igbvf_ring *rx_ring )
{
  struct pci_dev *pdev ;
  int size ;
  int desc_len ;
  void *tmp ;
  void *tmp___0 ;
  {
  pdev = adapter->pdev;
  size = (int )(rx_ring->count * 40U);
  tmp = vzalloc((unsigned long )size);
  rx_ring->buffer_info = (struct igbvf_buffer *)tmp;
  if ((unsigned long )rx_ring->buffer_info == (unsigned long )((struct igbvf_buffer *)0)) {
    goto err;
  } else {
  }
  desc_len = 16;
  rx_ring->size = rx_ring->count * (unsigned int )desc_len;
  rx_ring->size = (rx_ring->size + 4095U) & 4294963200U;
  tmp___0 = dma_alloc_attrs(& pdev->dev, (size_t )rx_ring->size, & rx_ring->dma, 208U,
                            (struct dma_attrs *)0);
  rx_ring->desc = (union igbvf_desc *)tmp___0;
  if ((unsigned long )rx_ring->desc == (unsigned long )((union igbvf_desc *)0)) {
    goto err;
  } else {
  }
  rx_ring->next_to_clean = 0U;
  rx_ring->next_to_use = 0U;
  rx_ring->adapter = adapter;
  return (0);
  err:
  vfree((void const *)rx_ring->buffer_info);
  rx_ring->buffer_info = (struct igbvf_buffer *)0;
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Unable to allocate memory for the receive descriptor ring\n");
  return (-12);
}
}
static void igbvf_clean_tx_ring(struct igbvf_ring *tx_ring )
{
  struct igbvf_adapter *adapter ;
  struct igbvf_buffer *buffer_info ;
  unsigned long size ;
  unsigned int i ;
  {
  adapter = tx_ring->adapter;
  if ((unsigned long )tx_ring->buffer_info == (unsigned long )((struct igbvf_buffer *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_51339;
  ldv_51338:
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  igbvf_put_txbuf(adapter, buffer_info);
  i = i + 1U;
  ldv_51339: ;
  if (tx_ring->count > i) {
    goto ldv_51338;
  } else {
  }
  size = (unsigned long )tx_ring->count * 40UL;
  memset((void *)tx_ring->buffer_info, 0, size);
  memset((void *)tx_ring->desc, 0, (size_t )tx_ring->size);
  tx_ring->next_to_use = 0U;
  tx_ring->next_to_clean = 0U;
  writel(0U, (void volatile *)adapter->hw.hw_addr + (unsigned long )tx_ring->head);
  writel(0U, (void volatile *)adapter->hw.hw_addr + (unsigned long )tx_ring->tail);
  return;
}
}
void igbvf_free_tx_resources(struct igbvf_ring *tx_ring )
{
  struct pci_dev *pdev ;
  {
  pdev = (tx_ring->adapter)->pdev;
  igbvf_clean_tx_ring(tx_ring);
  vfree((void const *)tx_ring->buffer_info);
  tx_ring->buffer_info = (struct igbvf_buffer *)0;
  dma_free_attrs(& pdev->dev, (size_t )tx_ring->size, (void *)tx_ring->desc, tx_ring->dma,
                 (struct dma_attrs *)0);
  tx_ring->desc = (union igbvf_desc *)0;
  return;
}
}
static void igbvf_clean_rx_ring(struct igbvf_ring *rx_ring )
{
  struct igbvf_adapter *adapter ;
  struct igbvf_buffer *buffer_info ;
  struct pci_dev *pdev ;
  unsigned long size ;
  unsigned int i ;
  {
  adapter = rx_ring->adapter;
  pdev = adapter->pdev;
  if ((unsigned long )rx_ring->buffer_info == (unsigned long )((struct igbvf_buffer *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_51354;
  ldv_51353:
  buffer_info = rx_ring->buffer_info + (unsigned long )i;
  if (buffer_info->dma != 0ULL) {
    if (adapter->rx_ps_hdr_size != 0U) {
      dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )adapter->rx_ps_hdr_size,
                             2, (struct dma_attrs *)0);
    } else {
      dma_unmap_single_attrs(& pdev->dev, buffer_info->dma, (size_t )adapter->rx_buffer_len,
                             2, (struct dma_attrs *)0);
    }
    buffer_info->dma = 0ULL;
  } else {
  }
  if ((unsigned long )buffer_info->skb != (unsigned long )((struct sk_buff *)0)) {
    ldv_skb_free(buffer_info->skb);
    buffer_info->skb = (struct sk_buff *)0;
  } else {
  }
  if ((unsigned long )buffer_info->ldv_43417.ldv_43416.page != (unsigned long )((struct page *)0)) {
    if (buffer_info->ldv_43417.ldv_43416.page_dma != 0ULL) {
      dma_unmap_page(& pdev->dev, buffer_info->ldv_43417.ldv_43416.page_dma, 2048UL,
                     2);
    } else {
    }
    put_page(buffer_info->ldv_43417.ldv_43416.page);
    buffer_info->ldv_43417.ldv_43416.page = (struct page *)0;
    buffer_info->ldv_43417.ldv_43416.page_dma = 0ULL;
    buffer_info->ldv_43417.ldv_43416.page_offset = 0U;
  } else {
  }
  i = i + 1U;
  ldv_51354: ;
  if (rx_ring->count > i) {
    goto ldv_51353;
  } else {
  }
  size = (unsigned long )rx_ring->count * 40UL;
  memset((void *)rx_ring->buffer_info, 0, size);
  memset((void *)rx_ring->desc, 0, (size_t )rx_ring->size);
  rx_ring->next_to_clean = 0U;
  rx_ring->next_to_use = 0U;
  writel(0U, (void volatile *)adapter->hw.hw_addr + (unsigned long )rx_ring->head);
  writel(0U, (void volatile *)adapter->hw.hw_addr + (unsigned long )rx_ring->tail);
  return;
}
}
void igbvf_free_rx_resources(struct igbvf_ring *rx_ring )
{
  struct pci_dev *pdev ;
  {
  pdev = (rx_ring->adapter)->pdev;
  igbvf_clean_rx_ring(rx_ring);
  vfree((void const *)rx_ring->buffer_info);
  rx_ring->buffer_info = (struct igbvf_buffer *)0;
  dma_free_attrs(& pdev->dev, (size_t )rx_ring->size, (void *)rx_ring->desc, rx_ring->dma,
                 (struct dma_attrs *)0);
  rx_ring->desc = (union igbvf_desc *)0;
  return;
}
}
static enum latency_range igbvf_update_itr(struct igbvf_adapter *adapter , enum latency_range itr_setting ,
                                           int packets , int bytes )
{
  enum latency_range retval ;
  {
  retval = itr_setting;
  if (packets == 0) {
    goto update_itr_done;
  } else {
  }
  switch ((unsigned int )itr_setting) {
  case 0U: ;
  if (bytes / packets > 8000) {
    retval = 2;
  } else
  if (packets <= 4 && bytes > 512) {
    retval = 1;
  } else {
  }
  goto ldv_51369;
  case 1U: ;
  if (bytes > 10000) {
    if (bytes / packets > 8000) {
      retval = 2;
    } else
    if (packets <= 9 || bytes / packets > 1200) {
      retval = 2;
    } else
    if (packets > 35) {
      retval = 0;
    } else {
    }
  } else
  if (bytes / packets > 2000) {
    retval = 2;
  } else
  if (packets <= 2 && bytes <= 511) {
    retval = 0;
  } else {
  }
  goto ldv_51369;
  case 2U: ;
  if (bytes > 25000) {
    if (packets > 35) {
      retval = 1;
    } else {
    }
  } else
  if (bytes <= 5999) {
    retval = 1;
  } else {
  }
  goto ldv_51369;
  default: ;
  goto ldv_51369;
  }
  ldv_51369: ;
  update_itr_done: ;
  return (retval);
}
}
static int igbvf_range_to_itr(enum latency_range current_range )
{
  int new_itr ;
  {
  switch ((unsigned int )current_range) {
  case 0U:
  new_itr = 56;
  goto ldv_51378;
  case 1U:
  new_itr = 196;
  goto ldv_51378;
  case 2U:
  new_itr = 980;
  goto ldv_51378;
  default:
  new_itr = 488;
  goto ldv_51378;
  }
  ldv_51378: ;
  return (new_itr);
}
}
static void igbvf_set_itr(struct igbvf_adapter *adapter )
{
  u32 new_itr ;
  int tmp ;
  u32 current_itr ;
  u32 _min1 ;
  u32 _min2 ;
  int tmp___0 ;
  u32 current_itr___0 ;
  u32 _min1___0 ;
  u32 _min2___0 ;
  {
  (adapter->tx_ring)->itr_range = igbvf_update_itr(adapter, (enum latency_range )(adapter->tx_ring)->itr_val,
                                                   (int )adapter->total_tx_packets,
                                                   (int )adapter->total_tx_bytes);
  if (adapter->requested_itr == 3U && (unsigned int )(adapter->tx_ring)->itr_range == 0U) {
    (adapter->tx_ring)->itr_range = 1;
  } else {
  }
  tmp = igbvf_range_to_itr((adapter->tx_ring)->itr_range);
  new_itr = (u32 )tmp;
  if ((adapter->tx_ring)->itr_val != new_itr) {
    current_itr = (adapter->tx_ring)->itr_val;
    if (new_itr > current_itr) {
      _min1 = (new_itr >> 2) + current_itr;
      _min2 = new_itr;
      new_itr = _min1 < _min2 ? _min1 : _min2;
    } else {
      new_itr = new_itr;
    }
    (adapter->tx_ring)->itr_val = new_itr;
    (adapter->tx_ring)->set_itr = 1;
  } else {
  }
  (adapter->rx_ring)->itr_range = igbvf_update_itr(adapter, (enum latency_range )(adapter->rx_ring)->itr_val,
                                                   (int )adapter->total_rx_packets,
                                                   (int )adapter->total_rx_bytes);
  if (adapter->requested_itr == 3U && (unsigned int )(adapter->rx_ring)->itr_range == 0U) {
    (adapter->rx_ring)->itr_range = 1;
  } else {
  }
  tmp___0 = igbvf_range_to_itr((adapter->rx_ring)->itr_range);
  new_itr = (u32 )tmp___0;
  if ((adapter->rx_ring)->itr_val != new_itr) {
    current_itr___0 = (adapter->rx_ring)->itr_val;
    if (new_itr > current_itr___0) {
      _min1___0 = (new_itr >> 2) + current_itr___0;
      _min2___0 = new_itr;
      new_itr = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    } else {
      new_itr = new_itr;
    }
    (adapter->rx_ring)->itr_val = new_itr;
    (adapter->rx_ring)->set_itr = 1;
  } else {
  }
  return;
}
}
static bool igbvf_clean_tx_irq(struct igbvf_ring *tx_ring )
{
  struct igbvf_adapter *adapter ;
  struct net_device *netdev ;
  struct igbvf_buffer *buffer_info ;
  struct sk_buff *skb ;
  union e1000_adv_tx_desc *tx_desc ;
  union e1000_adv_tx_desc *eop_desc ;
  unsigned int total_bytes ;
  unsigned int total_packets ;
  unsigned int i ;
  unsigned int count ;
  bool cleaned ;
  unsigned int segs ;
  unsigned int bytecount ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  {
  adapter = tx_ring->adapter;
  netdev = adapter->netdev;
  total_bytes = 0U;
  total_packets = 0U;
  count = 0U;
  cleaned = 0;
  i = (unsigned int )tx_ring->next_to_clean;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  eop_desc = buffer_info->ldv_43417.ldv_43411.next_to_watch;
  ldv_51414: ;
  if ((unsigned long )eop_desc == (unsigned long )((union e1000_adv_tx_desc *)0)) {
    goto ldv_51408;
  } else {
  }
  if ((eop_desc->wb.status & 1U) == 0U) {
    goto ldv_51408;
  } else {
  }
  buffer_info->ldv_43417.ldv_43411.next_to_watch = (union e1000_adv_tx_desc *)0;
  cleaned = 0;
  goto ldv_51412;
  ldv_51411:
  tx_desc = & (tx_ring->desc + (unsigned long )i)->tx_desc;
  cleaned = (unsigned long )tx_desc == (unsigned long )eop_desc;
  skb = buffer_info->skb;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    if ((int )((struct skb_shared_info *)tmp___1)->gso_segs != 0) {
      tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
      segs = (unsigned int )((int )((struct skb_shared_info *)tmp___0)->gso_segs);
    } else {
      segs = 1U;
    }
    tmp___2 = skb_headlen((struct sk_buff const *)skb);
    bytecount = (segs - 1U) * tmp___2 + skb->len;
    total_packets = total_packets + segs;
    total_bytes = total_bytes + bytecount;
  } else {
  }
  igbvf_put_txbuf(adapter, buffer_info);
  tx_desc->wb.status = 0U;
  i = i + 1U;
  if (tx_ring->count == i) {
    i = 0U;
  } else {
  }
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  count = count + 1U;
  ldv_51412: ;
  if (! cleaned) {
    goto ldv_51411;
  } else {
  }
  eop_desc = buffer_info->ldv_43417.ldv_43411.next_to_watch;
  if (tx_ring->count > count) {
    goto ldv_51414;
  } else {
  }
  ldv_51408:
  tx_ring->next_to_clean = (u16 )i;
  tmp___5 = ldv__builtin_expect(count != 0U, 0L);
  if (tmp___5 != 0L) {
    tmp___6 = netif_carrier_ok((struct net_device const *)netdev);
    tmp___7 = ldv__builtin_expect((long )tmp___6, 0L);
    if (tmp___7 != 0L) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  } else {
    tmp___8 = 0;
  }
  if (tmp___8 != 0) {
    tmp___9 = igbvf_desc_unused(tx_ring);
    tmp___10 = ldv__builtin_expect(tmp___9 > 31, 0L);
    if (tmp___10 != 0L) {
      __asm__ volatile ("mfence": : : "memory");
      tmp___3 = netif_queue_stopped((struct net_device const *)netdev);
      if ((int )tmp___3) {
        tmp___4 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
        if (tmp___4 == 0) {
          netif_wake_queue(netdev);
          adapter->restart_queue = adapter->restart_queue + 1U;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  adapter->net_stats.tx_bytes = adapter->net_stats.tx_bytes + (unsigned long )total_bytes;
  adapter->net_stats.tx_packets = adapter->net_stats.tx_packets + (unsigned long )total_packets;
  return (tx_ring->count > count);
}
}
static irqreturn_t igbvf_msix_other(int irq , void *data )
{
  struct net_device *netdev ;
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  int tmp___0 ;
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  adapter->int_counter1 = adapter->int_counter1 + 1U;
  netif_carrier_off(netdev);
  hw->mac.get_link_status = 1;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  if (tmp___0 == 0) {
    ldv_mod_timer_45(& adapter->watchdog_timer, (unsigned long )jiffies + 1UL);
  } else {
  }
  writel(adapter->eims_other, (void volatile *)hw->hw_addr + 5412U);
  return (1);
}
}
static irqreturn_t igbvf_intr_msix_tx(int irq , void *data )
{
  struct net_device *netdev ;
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  struct igbvf_ring *tx_ring ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  tx_ring = adapter->tx_ring;
  if (tx_ring->set_itr != 0) {
    writel(tx_ring->itr_val, (void volatile *)adapter->hw.hw_addr + (unsigned long )tx_ring->itr_register);
    (adapter->tx_ring)->set_itr = 0;
  } else {
  }
  adapter->total_tx_bytes = 0U;
  adapter->total_tx_packets = 0U;
  tmp___0 = igbvf_clean_tx_irq(tx_ring);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    writel(tx_ring->eims_value, (void volatile *)hw->hw_addr + 5408U);
  } else {
    writel(tx_ring->eims_value, (void volatile *)hw->hw_addr + 5412U);
  }
  return (1);
}
}
static irqreturn_t igbvf_intr_msix_rx(int irq , void *data )
{
  struct net_device *netdev ;
  struct igbvf_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  adapter->int_counter0 = adapter->int_counter0 + 1U;
  if ((adapter->rx_ring)->set_itr != 0) {
    writel((adapter->rx_ring)->itr_val, (void volatile *)adapter->hw.hw_addr + (unsigned long )(adapter->rx_ring)->itr_register);
    (adapter->rx_ring)->set_itr = 0;
  } else {
  }
  tmp___0 = napi_schedule_prep(& (adapter->rx_ring)->napi);
  if ((int )tmp___0) {
    adapter->total_rx_bytes = 0U;
    adapter->total_rx_packets = 0U;
    __napi_schedule(& (adapter->rx_ring)->napi);
  } else {
  }
  return (1);
}
}
static void igbvf_assign_vector(struct igbvf_adapter *adapter , int rx_queue , int tx_queue ,
                                int msix_vector )
{
  struct e1000_hw *hw ;
  u32 ivar ;
  u32 index ;
  {
  hw = & adapter->hw;
  if (rx_queue >= 0) {
    index = (u32 )(rx_queue >> 1);
    ivar = readl((void const volatile *)(hw->hw_addr + ((unsigned long )(index << 2) + 5888UL)));
    if (rx_queue & 1) {
      ivar = ivar & 4278255615U;
      ivar = (u32 )((msix_vector | 128) << 16) | ivar;
    } else {
      ivar = ivar & 4294967040U;
      ivar = ((u32 )msix_vector | ivar) | 128U;
    }
    (adapter->rx_ring + (unsigned long )rx_queue)->eims_value = (u32 )(1 << msix_vector);
    writel(ivar, (void volatile *)(hw->hw_addr + ((unsigned long )(index << 2) + 5888UL)));
  } else {
  }
  if (tx_queue >= 0) {
    index = (u32 )(tx_queue >> 1);
    ivar = readl((void const volatile *)(hw->hw_addr + ((unsigned long )(index << 2) + 5888UL)));
    if (tx_queue & 1) {
      ivar = ivar & 16777215U;
      ivar = (u32 )((msix_vector | 128) << 24) | ivar;
    } else {
      ivar = ivar & 4294902015U;
      ivar = (u32 )((msix_vector | 128) << 8) | ivar;
    }
    (adapter->tx_ring + (unsigned long )tx_queue)->eims_value = (u32 )(1 << msix_vector);
    writel(ivar, (void volatile *)(hw->hw_addr + ((unsigned long )(index << 2) + 5888UL)));
  } else {
  }
  return;
}
}
static void igbvf_configure_msix(struct igbvf_adapter *adapter )
{
  u32 tmp ;
  struct e1000_hw *hw ;
  struct igbvf_ring *tx_ring ;
  struct igbvf_ring *rx_ring ;
  int vector ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  hw = & adapter->hw;
  tx_ring = adapter->tx_ring;
  rx_ring = adapter->rx_ring;
  vector = 0;
  adapter->eims_enable_mask = 0U;
  tmp___0 = vector;
  vector = vector + 1;
  igbvf_assign_vector(adapter, -1, 0, tmp___0);
  adapter->eims_enable_mask = adapter->eims_enable_mask | tx_ring->eims_value;
  writel(tx_ring->itr_val, (void volatile *)hw->hw_addr + (unsigned long )tx_ring->itr_register);
  tmp___1 = vector;
  vector = vector + 1;
  igbvf_assign_vector(adapter, 0, -1, tmp___1);
  adapter->eims_enable_mask = adapter->eims_enable_mask | rx_ring->eims_value;
  writel(rx_ring->itr_val, (void volatile *)hw->hw_addr + (unsigned long )rx_ring->itr_register);
  tmp___2 = vector;
  vector = vector + 1;
  tmp = (u32 )(tmp___2 | 128);
  writel(tmp, (void volatile *)hw->hw_addr + 5952U);
  adapter->eims_enable_mask = (u32 )((1 << vector) + -1);
  adapter->eims_other = (u32 )(1 << (vector + -1));
  readl((void const volatile *)hw->hw_addr + 8U);
  return;
}
}
static void igbvf_reset_interrupt_capability(struct igbvf_adapter *adapter )
{
  {
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    pci_disable_msix(adapter->pdev);
    kfree((void const *)adapter->msix_entries);
    adapter->msix_entries = (struct msix_entry *)0;
  } else {
  }
  return;
}
}
static void igbvf_set_interrupt_capability(struct igbvf_adapter *adapter )
{
  int err ;
  int i ;
  void *tmp ;
  {
  err = -12;
  tmp = kcalloc(3UL, 8UL, 208U);
  adapter->msix_entries = (struct msix_entry *)tmp;
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    i = 0;
    goto ldv_51462;
    ldv_51461:
    (adapter->msix_entries + (unsigned long )i)->entry = (u16 )i;
    i = i + 1;
    ldv_51462: ;
    if (i <= 2) {
      goto ldv_51461;
    } else {
    }
    err = pci_enable_msix_range(adapter->pdev, adapter->msix_entries, 3, 3);
  } else {
  }
  if (err < 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to initialize MSI-X interrupts.\n");
    igbvf_reset_interrupt_capability(adapter);
  } else {
  }
  return;
}
}
static int igbvf_request_msix(struct igbvf_adapter *adapter )
{
  struct net_device *netdev ;
  int err ;
  int vector ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t tmp ;
  {
  netdev = adapter->netdev;
  err = 0;
  vector = 0;
  tmp = strlen((char const *)(& netdev->name));
  if (tmp <= 10UL) {
    sprintf((char *)(& (adapter->tx_ring)->name), "%s-tx-0", (char *)(& netdev->name));
    sprintf((char *)(& (adapter->rx_ring)->name), "%s-rx-0", (char *)(& netdev->name));
  } else {
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& (adapter->tx_ring)->name), (void const *)(& netdev->name),
                       __len);
    } else {
      __ret = memcpy((void *)(& (adapter->tx_ring)->name), (void const *)(& netdev->name),
                               __len);
    }
    __len___0 = 16UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& (adapter->rx_ring)->name), (void const *)(& netdev->name),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& (adapter->rx_ring)->name), (void const *)(& netdev->name),
                                   __len___0);
    }
  }
  err = ldv_request_irq_46((adapter->msix_entries + (unsigned long )vector)->vector,
                           & igbvf_intr_msix_tx, 0UL, (char const *)(& (adapter->tx_ring)->name),
                           (void *)netdev);
  if (err != 0) {
    goto out;
  } else {
  }
  (adapter->tx_ring)->itr_register = (unsigned int )((u16 )(vector + 1440)) * 4U;
  (adapter->tx_ring)->itr_val = adapter->current_itr;
  vector = vector + 1;
  err = ldv_request_irq_47((adapter->msix_entries + (unsigned long )vector)->vector,
                           & igbvf_intr_msix_rx, 0UL, (char const *)(& (adapter->rx_ring)->name),
                           (void *)netdev);
  if (err != 0) {
    goto out;
  } else {
  }
  (adapter->rx_ring)->itr_register = (unsigned int )((u16 )(vector + 1440)) * 4U;
  (adapter->rx_ring)->itr_val = adapter->current_itr;
  vector = vector + 1;
  err = ldv_request_irq_48((adapter->msix_entries + (unsigned long )vector)->vector,
                           & igbvf_msix_other, 0UL, (char const *)(& netdev->name),
                           (void *)netdev);
  if (err != 0) {
    goto out;
  } else {
  }
  igbvf_configure_msix(adapter);
  return (0);
  out: ;
  return (err);
}
}
static int igbvf_alloc_queues(struct igbvf_adapter *adapter )
{
  struct net_device *netdev ;
  void *tmp ;
  void *tmp___0 ;
  {
  netdev = adapter->netdev;
  tmp = kzalloc(304UL, 208U);
  adapter->tx_ring = (struct igbvf_ring *)tmp;
  if ((unsigned long )adapter->tx_ring == (unsigned long )((struct igbvf_ring *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = kzalloc(304UL, 208U);
  adapter->rx_ring = (struct igbvf_ring *)tmp___0;
  if ((unsigned long )adapter->rx_ring == (unsigned long )((struct igbvf_ring *)0)) {
    kfree((void const *)adapter->tx_ring);
    return (-12);
  } else {
  }
  netif_napi_add(netdev, & (adapter->rx_ring)->napi, & igbvf_poll, 64);
  return (0);
}
}
static int igbvf_request_irq(struct igbvf_adapter *adapter )
{
  int err ;
  {
  err = -1;
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    err = igbvf_request_msix(adapter);
  } else {
  }
  if (err == 0) {
    return (err);
  } else {
  }
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Unable to allocate interrupt, Error: %d\n",
          err);
  return (err);
}
}
static void igbvf_free_irq(struct igbvf_adapter *adapter )
{
  struct net_device *netdev ;
  int vector ;
  {
  netdev = adapter->netdev;
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    vector = 0;
    goto ldv_51491;
    ldv_51490:
    ldv_free_irq_49((adapter->msix_entries + (unsigned long )vector)->vector, (void *)netdev);
    vector = vector + 1;
    ldv_51491: ;
    if (vector <= 2) {
      goto ldv_51490;
    } else {
    }
  } else {
  }
  return;
}
}
static void igbvf_irq_disable(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  {
  hw = & adapter->hw;
  writel(4294967295U, (void volatile *)hw->hw_addr + 5416U);
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    writel(0U, (void volatile *)hw->hw_addr + 5420U);
  } else {
  }
  return;
}
}
static void igbvf_irq_enable(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  {
  hw = & adapter->hw;
  writel(adapter->eims_enable_mask, (void volatile *)hw->hw_addr + 5420U);
  writel(adapter->eims_enable_mask, (void volatile *)hw->hw_addr + 5424U);
  writel(adapter->eims_enable_mask, (void volatile *)hw->hw_addr + 5412U);
  return;
}
}
static int igbvf_poll(struct napi_struct *napi , int budget )
{
  struct igbvf_ring *rx_ring ;
  struct napi_struct const *__mptr ;
  struct igbvf_adapter *adapter ;
  struct e1000_hw *hw ;
  int work_done ;
  int tmp ;
  {
  __mptr = (struct napi_struct const *)napi;
  rx_ring = (struct igbvf_ring *)__mptr + 0xffffffffffffffd0UL;
  adapter = rx_ring->adapter;
  hw = & adapter->hw;
  work_done = 0;
  igbvf_clean_rx_irq(adapter, & work_done, budget);
  if (work_done < budget) {
    napi_complete(napi);
    if ((adapter->requested_itr & 3U) != 0U) {
      igbvf_set_itr(adapter);
    } else {
    }
    tmp = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
    if (tmp == 0) {
      writel((adapter->rx_ring)->eims_value, (void volatile *)hw->hw_addr + 5412U);
    } else {
    }
  } else {
  }
  return (work_done);
}
}
static void igbvf_set_rlpml(struct igbvf_adapter *adapter )
{
  int max_frame_size ;
  struct e1000_hw *hw ;
  {
  hw = & adapter->hw;
  max_frame_size = (int )(adapter->max_frame_size + 4U);
  e1000_rlpml_set_vf(hw, (int )((u16 )max_frame_size));
  return;
}
}
static int igbvf_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  s32 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  tmp___0 = (*(hw->mac.ops.set_vfta))(hw, (int )vid, 1);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to add vlan id %d\n",
            (int )vid);
    return (-22);
  } else {
  }
  set_bit((long )vid, (unsigned long volatile *)(& adapter->active_vlans));
  return (0);
}
}
static int igbvf_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  s32 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  tmp___0 = (*(hw->mac.ops.set_vfta))(hw, (int )vid, 0);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to remove vlan id %d\n",
            (int )vid);
    return (-22);
  } else {
  }
  clear_bit((long )vid, (unsigned long volatile *)(& adapter->active_vlans));
  return (0);
}
}
static void igbvf_restore_vlan(struct igbvf_adapter *adapter )
{
  u16 vid ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  tmp = find_first_bit((unsigned long const *)(& adapter->active_vlans), 4096UL);
  vid = (u16 )tmp;
  goto ldv_51535;
  ldv_51534:
  igbvf_vlan_rx_add_vid(adapter->netdev, 129, (int )vid);
  tmp___0 = find_next_bit((unsigned long const *)(& adapter->active_vlans), 4096UL,
                          (unsigned long )((int )vid + 1));
  vid = (u16 )tmp___0;
  ldv_51535: ;
  if ((unsigned int )vid <= 4095U) {
    goto ldv_51534;
  } else {
  }
  return;
}
}
static void igbvf_configure_tx(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  struct igbvf_ring *tx_ring ;
  u64 tdba ;
  u32 txdctl ;
  u32 dca_txctrl ;
  {
  hw = & adapter->hw;
  tx_ring = adapter->tx_ring;
  txdctl = readl((void const volatile *)hw->hw_addr + 14376U);
  writel(txdctl & 4261412863U, (void volatile *)hw->hw_addr + 14376U);
  readl((void const volatile *)hw->hw_addr + 8U);
  msleep(10U);
  writel(tx_ring->count * 16U, (void volatile *)hw->hw_addr + 14344U);
  tdba = tx_ring->dma;
  writel((unsigned int )tdba, (void volatile *)hw->hw_addr + 14336U);
  writel((unsigned int )(tdba >> 32), (void volatile *)hw->hw_addr + 14340U);
  writel(0U, (void volatile *)hw->hw_addr + 14352U);
  writel(0U, (void volatile *)hw->hw_addr + 14360U);
  tx_ring->head = 14352U;
  tx_ring->tail = 14360U;
  dca_txctrl = readl((void const volatile *)hw->hw_addr + 14356U);
  dca_txctrl = dca_txctrl & 4294965247U;
  writel(dca_txctrl, (void volatile *)hw->hw_addr + 14356U);
  txdctl = txdctl | 33554432U;
  writel(txdctl, (void volatile *)hw->hw_addr + 14376U);
  adapter->txd_cmd = 50331648U;
  adapter->txd_cmd = adapter->txd_cmd | 134217728U;
  return;
}
}
static void igbvf_setup_srrctl(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  u32 srrctl ;
  {
  hw = & adapter->hw;
  srrctl = 0U;
  srrctl = srrctl & 4060070016U;
  srrctl = srrctl | 2147483648U;
  srrctl = ((adapter->rx_buffer_len + 1023U) >> 10) | srrctl;
  if (adapter->rx_buffer_len <= 2047U) {
    adapter->rx_ps_hdr_size = 0U;
    srrctl = srrctl | 33554432U;
  } else {
    adapter->rx_ps_hdr_size = 128U;
    srrctl = (adapter->rx_ps_hdr_size << 2) | srrctl;
    srrctl = srrctl | 167772160U;
  }
  writel(srrctl, (void volatile *)hw->hw_addr + 10252U);
  return;
}
}
static void igbvf_configure_rx(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  struct igbvf_ring *rx_ring ;
  u64 rdba ;
  u32 rdlen ;
  u32 rxdctl ;
  {
  hw = & adapter->hw;
  rx_ring = adapter->rx_ring;
  rxdctl = readl((void const volatile *)hw->hw_addr + 10280U);
  writel(rxdctl & 4261412863U, (void volatile *)hw->hw_addr + 10280U);
  readl((void const volatile *)hw->hw_addr + 8U);
  msleep(10U);
  rdlen = rx_ring->count * 16U;
  rdba = rx_ring->dma;
  writel((unsigned int )rdba, (void volatile *)hw->hw_addr + 10240U);
  writel((unsigned int )(rdba >> 32), (void volatile *)hw->hw_addr + 10244U);
  writel(rx_ring->count * 16U, (void volatile *)hw->hw_addr + 10248U);
  rx_ring->head = 10256U;
  rx_ring->tail = 10264U;
  writel(0U, (void volatile *)hw->hw_addr + 10256U);
  writel(0U, (void volatile *)hw->hw_addr + 10264U);
  rxdctl = rxdctl | 33554432U;
  rxdctl = rxdctl & 4293918720U;
  rxdctl = rxdctl | 16U;
  rxdctl = rxdctl | 2048U;
  rxdctl = rxdctl | 65536U;
  igbvf_set_rlpml(adapter);
  writel(rxdctl, (void volatile *)hw->hw_addr + 10280U);
  return;
}
}
static void igbvf_set_multi(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  struct netdev_hw_addr *ha ;
  u8 *mta_list ;
  int i ;
  void *tmp___0 ;
  struct list_head const *__mptr ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  mta_list = (u8 *)0U;
  if (netdev->mc.count != 0) {
    tmp___0 = kmalloc_array((size_t )netdev->mc.count, 6UL, 32U);
    mta_list = (u8 *)tmp___0;
    if ((unsigned long )mta_list == (unsigned long )((u8 *)0U)) {
      return;
    } else {
    }
  } else {
  }
  i = 0;
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_51574;
  ldv_51573:
  __len = 6UL;
  if (__len > 63UL) {
    tmp___1 = i;
    i = i + 1;
    __ret = memcpy((void *)mta_list + (unsigned long )(tmp___1 * 6), (void const *)(& ha->addr),
                     __len);
  } else {
    tmp___2 = i;
    i = i + 1;
    __ret = memcpy((void *)mta_list + (unsigned long )(tmp___2 * 6), (void const *)(& ha->addr),
                             __len);
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_51574: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_51573;
  } else {
  }
  (*(hw->mac.ops.update_mc_addr_list))(hw, mta_list, (u32 )i, 0U, 0U);
  kfree((void const *)mta_list);
  return;
}
}
static void igbvf_configure(struct igbvf_adapter *adapter )
{
  int tmp ;
  {
  igbvf_set_multi(adapter->netdev);
  igbvf_restore_vlan(adapter);
  igbvf_configure_tx(adapter);
  igbvf_setup_srrctl(adapter);
  igbvf_configure_rx(adapter);
  tmp = igbvf_desc_unused(adapter->rx_ring);
  igbvf_alloc_rx_buffers(adapter->rx_ring, tmp);
  return;
}
}
static void igbvf_reset(struct igbvf_adapter *adapter )
{
  struct e1000_mac_info *mac ;
  struct net_device *netdev ;
  struct e1000_hw *hw ;
  s32 tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  bool tmp___0 ;
  {
  mac = & adapter->hw.mac;
  netdev = adapter->netdev;
  hw = & adapter->hw;
  tmp = (*(mac->ops.reset_hw))(hw);
  if (tmp != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "PF still resetting\n");
  } else {
  }
  (*(mac->ops.init_hw))(hw);
  tmp___0 = is_valid_ether_addr((u8 const *)(& adapter->hw.mac.addr));
  if ((int )tmp___0) {
    __len = (size_t )netdev->addr_len;
    __ret = memcpy((void *)netdev->dev_addr, (void const *)(& adapter->hw.mac.addr),
                             __len);
    __len___0 = (size_t )netdev->addr_len;
    __ret___0 = memcpy((void *)(& netdev->perm_addr), (void const *)(& adapter->hw.mac.addr),
                                 __len___0);
  } else {
  }
  adapter->last_reset = jiffies;
  return;
}
}
int igbvf_up(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  {
  hw = & adapter->hw;
  igbvf_configure(adapter);
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  napi_enable(& (adapter->rx_ring)->napi);
  if ((unsigned long )adapter->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    igbvf_configure_msix(adapter);
  } else {
  }
  readl((void const volatile *)hw->hw_addr + 5504U);
  igbvf_irq_enable(adapter);
  hw->mac.get_link_status = 1;
  ldv_mod_timer_50(& adapter->watchdog_timer, (unsigned long )jiffies + 1UL);
  return (0);
}
}
void igbvf_down(struct igbvf_adapter *adapter )
{
  struct net_device *netdev ;
  struct e1000_hw *hw ;
  u32 rxdctl ;
  u32 txdctl ;
  {
  netdev = adapter->netdev;
  hw = & adapter->hw;
  set_bit(2L, (unsigned long volatile *)(& adapter->state));
  rxdctl = readl((void const volatile *)hw->hw_addr + 10280U);
  writel(rxdctl & 4261412863U, (void volatile *)hw->hw_addr + 10280U);
  netif_stop_queue(netdev);
  txdctl = readl((void const volatile *)hw->hw_addr + 14376U);
  writel(txdctl & 4261412863U, (void volatile *)hw->hw_addr + 14376U);
  readl((void const volatile *)hw->hw_addr + 8U);
  msleep(10U);
  napi_disable(& (adapter->rx_ring)->napi);
  igbvf_irq_disable(adapter);
  ldv_del_timer_sync_51(& adapter->watchdog_timer);
  netif_carrier_off(netdev);
  igbvf_update_stats(adapter);
  adapter->link_speed = 0U;
  adapter->link_duplex = 0U;
  igbvf_reset(adapter);
  igbvf_clean_tx_ring(adapter->tx_ring);
  igbvf_clean_rx_ring(adapter->rx_ring);
  return;
}
}
void igbvf_reinit_locked(struct igbvf_adapter *adapter )
{
  int tmp ;
  {
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1448/dscv_tempdir/dscv/ri/205_9a/drivers/net/ethernet/intel/igbvf/netdev.o.c.prepared",
                1666, 0);
  goto ldv_51606;
  ldv_51605:
  msleep(1U);
  ldv_51606:
  tmp = test_and_set_bit(1L, (unsigned long volatile *)(& adapter->state));
  if (tmp != 0) {
    goto ldv_51605;
  } else {
  }
  igbvf_down(adapter);
  igbvf_up(adapter);
  clear_bit(1L, (unsigned long volatile *)(& adapter->state));
  return;
}
}
static int igbvf_sw_init(struct igbvf_adapter *adapter )
{
  struct net_device *netdev ;
  s32 rc ;
  int tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  netdev = adapter->netdev;
  adapter->rx_buffer_len = 1522U;
  adapter->rx_ps_hdr_size = 0U;
  adapter->max_frame_size = netdev->mtu + 18U;
  adapter->min_frame_size = 64U;
  adapter->tx_int_delay = 8U;
  adapter->tx_abs_int_delay = 32U;
  adapter->rx_int_delay = 0U;
  adapter->rx_abs_int_delay = 8U;
  adapter->requested_itr = 3U;
  adapter->current_itr = 488U;
  (*((adapter->ei)->init_ops))(& adapter->hw);
  rc = (*(adapter->hw.mac.ops.init_params))(& adapter->hw);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = (*(adapter->hw.mbx.ops.init_params))(& adapter->hw);
  if (rc != 0) {
    return (rc);
  } else {
  }
  igbvf_set_interrupt_capability(adapter);
  tmp = igbvf_alloc_queues(adapter);
  if (tmp != 0) {
    return (-12);
  } else {
  }
  spinlock_check(& adapter->tx_queue_lock);
  __raw_spin_lock_init(& adapter->tx_queue_lock.ldv_6338.rlock, "&(&adapter->tx_queue_lock)->rlock",
                       & __key);
  igbvf_irq_disable(adapter);
  spinlock_check(& adapter->stats_lock);
  __raw_spin_lock_init(& adapter->stats_lock.ldv_6338.rlock, "&(&adapter->stats_lock)->rlock",
                       & __key___0);
  set_bit(2L, (unsigned long volatile *)(& adapter->state));
  return (0);
}
}
static void igbvf_initialize_last_counter_stats(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  hw = & adapter->hw;
  adapter->stats.last_gprc = readl((void const volatile *)hw->hw_addr + 3856U);
  adapter->stats.last_gorc = readl((void const volatile *)hw->hw_addr + 3864U);
  adapter->stats.last_gptc = readl((void const volatile *)hw->hw_addr + 3860U);
  adapter->stats.last_gotc = readl((void const volatile *)hw->hw_addr + 3892U);
  adapter->stats.last_mprc = readl((void const volatile *)hw->hw_addr + 3900U);
  adapter->stats.last_gotlbc = readl((void const volatile *)hw->hw_addr + 3920U);
  adapter->stats.last_gptlbc = readl((void const volatile *)hw->hw_addr + 3908U);
  adapter->stats.last_gorlbc = readl((void const volatile *)hw->hw_addr + 3912U);
  adapter->stats.last_gprlbc = readl((void const volatile *)hw->hw_addr + 3904U);
  tmp = readl((void const volatile *)hw->hw_addr + 3856U);
  adapter->stats.base_gprc = (u64 )tmp;
  tmp___0 = readl((void const volatile *)hw->hw_addr + 3864U);
  adapter->stats.base_gorc = (u64 )tmp___0;
  tmp___1 = readl((void const volatile *)hw->hw_addr + 3860U);
  adapter->stats.base_gptc = (u64 )tmp___1;
  tmp___2 = readl((void const volatile *)hw->hw_addr + 3892U);
  adapter->stats.base_gotc = (u64 )tmp___2;
  tmp___3 = readl((void const volatile *)hw->hw_addr + 3900U);
  adapter->stats.base_mprc = (u64 )tmp___3;
  tmp___4 = readl((void const volatile *)hw->hw_addr + 3920U);
  adapter->stats.base_gotlbc = (u64 )tmp___4;
  tmp___5 = readl((void const volatile *)hw->hw_addr + 3908U);
  adapter->stats.base_gptlbc = (u64 )tmp___5;
  tmp___6 = readl((void const volatile *)hw->hw_addr + 3912U);
  adapter->stats.base_gorlbc = (u64 )tmp___6;
  tmp___7 = readl((void const volatile *)hw->hw_addr + 3904U);
  adapter->stats.base_gprlbc = (u64 )tmp___7;
  return;
}
}
static int igbvf_open(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  int err ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& adapter->state));
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  err = igbvf_setup_tx_resources(adapter, adapter->tx_ring);
  if (err != 0) {
    goto err_setup_tx;
  } else {
  }
  err = igbvf_setup_rx_resources(adapter, adapter->rx_ring);
  if (err != 0) {
    goto err_setup_rx;
  } else {
  }
  igbvf_configure(adapter);
  err = igbvf_request_irq(adapter);
  if (err != 0) {
    goto err_req_irq;
  } else {
  }
  clear_bit(2L, (unsigned long volatile *)(& adapter->state));
  napi_enable(& (adapter->rx_ring)->napi);
  readl((void const volatile *)hw->hw_addr + 5504U);
  igbvf_irq_enable(adapter);
  hw->mac.get_link_status = 1;
  ldv_mod_timer_52(& adapter->watchdog_timer, (unsigned long )jiffies + 1UL);
  return (0);
  err_req_irq:
  igbvf_free_rx_resources(adapter->rx_ring);
  err_setup_rx:
  igbvf_free_tx_resources(adapter->tx_ring);
  err_setup_tx:
  igbvf_reset(adapter);
  return (err);
}
}
static int igbvf_close(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tmp___0 = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->state));
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1448/dscv_tempdir/dscv/ri/205_9a/drivers/net/ethernet/intel/igbvf/netdev.o.c.prepared",
                       1836);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  igbvf_down(adapter);
  igbvf_free_irq(adapter);
  igbvf_free_tx_resources(adapter->tx_ring);
  igbvf_free_rx_resources(adapter->rx_ring);
  return (0);
}
}
static int igbvf_set_mac(struct net_device *netdev , void *p )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct e1000_hw *hw ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  bool tmp___2 ;
  int tmp___3 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  __len = (size_t )netdev->addr_len;
  __ret = memcpy((void *)(& hw->mac.addr), (void const *)(& addr->sa_data),
                           __len);
  (*(hw->mac.ops.rar_set))(hw, (u8 *)(& hw->mac.addr), 0U);
  tmp___2 = ether_addr_equal((u8 const *)(& addr->sa_data), (u8 const *)(& hw->mac.addr));
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (-99);
  } else {
  }
  __len___0 = (size_t )netdev->addr_len;
  __ret___0 = memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data),
                               __len___0);
  return (0);
}
}
void igbvf_update_stats(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  struct pci_dev *pdev ;
  int tmp ;
  int tmp___0 ;
  u32 current_counter ;
  unsigned int tmp___1 ;
  u32 current_counter___0 ;
  unsigned int tmp___2 ;
  u32 current_counter___1 ;
  unsigned int tmp___3 ;
  u32 current_counter___2 ;
  unsigned int tmp___4 ;
  u32 current_counter___3 ;
  unsigned int tmp___5 ;
  u32 current_counter___4 ;
  unsigned int tmp___6 ;
  u32 current_counter___5 ;
  unsigned int tmp___7 ;
  u32 current_counter___6 ;
  unsigned int tmp___8 ;
  u32 current_counter___7 ;
  unsigned int tmp___9 ;
  {
  hw = & adapter->hw;
  pdev = adapter->pdev;
  if ((unsigned int )adapter->link_speed == 0U) {
    return;
  } else {
  }
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->state));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = pci_channel_offline(pdev);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  tmp___1 = readl((void const volatile *)hw->hw_addr + 3856U);
  current_counter = tmp___1;
  if (adapter->stats.last_gprc > current_counter) {
    adapter->stats.gprc = adapter->stats.gprc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gprc = current_counter;
  adapter->stats.gprc = adapter->stats.gprc & 0xffffffff00000000ULL;
  adapter->stats.gprc = adapter->stats.gprc | (u64 )current_counter;
  tmp___2 = readl((void const volatile *)hw->hw_addr + 3864U);
  current_counter___0 = tmp___2;
  if (adapter->stats.last_gorc > current_counter___0) {
    adapter->stats.gorc = adapter->stats.gorc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gorc = current_counter___0;
  adapter->stats.gorc = adapter->stats.gorc & 0xffffffff00000000ULL;
  adapter->stats.gorc = adapter->stats.gorc | (u64 )current_counter___0;
  tmp___3 = readl((void const volatile *)hw->hw_addr + 3860U);
  current_counter___1 = tmp___3;
  if (adapter->stats.last_gptc > current_counter___1) {
    adapter->stats.gptc = adapter->stats.gptc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gptc = current_counter___1;
  adapter->stats.gptc = adapter->stats.gptc & 0xffffffff00000000ULL;
  adapter->stats.gptc = adapter->stats.gptc | (u64 )current_counter___1;
  tmp___4 = readl((void const volatile *)hw->hw_addr + 3892U);
  current_counter___2 = tmp___4;
  if (adapter->stats.last_gotc > current_counter___2) {
    adapter->stats.gotc = adapter->stats.gotc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gotc = current_counter___2;
  adapter->stats.gotc = adapter->stats.gotc & 0xffffffff00000000ULL;
  adapter->stats.gotc = adapter->stats.gotc | (u64 )current_counter___2;
  tmp___5 = readl((void const volatile *)hw->hw_addr + 3900U);
  current_counter___3 = tmp___5;
  if (adapter->stats.last_mprc > current_counter___3) {
    adapter->stats.mprc = adapter->stats.mprc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_mprc = current_counter___3;
  adapter->stats.mprc = adapter->stats.mprc & 0xffffffff00000000ULL;
  adapter->stats.mprc = adapter->stats.mprc | (u64 )current_counter___3;
  tmp___6 = readl((void const volatile *)hw->hw_addr + 3920U);
  current_counter___4 = tmp___6;
  if (adapter->stats.last_gotlbc > current_counter___4) {
    adapter->stats.gotlbc = adapter->stats.gotlbc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gotlbc = current_counter___4;
  adapter->stats.gotlbc = adapter->stats.gotlbc & 0xffffffff00000000ULL;
  adapter->stats.gotlbc = adapter->stats.gotlbc | (u64 )current_counter___4;
  tmp___7 = readl((void const volatile *)hw->hw_addr + 3908U);
  current_counter___5 = tmp___7;
  if (adapter->stats.last_gptlbc > current_counter___5) {
    adapter->stats.gptlbc = adapter->stats.gptlbc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gptlbc = current_counter___5;
  adapter->stats.gptlbc = adapter->stats.gptlbc & 0xffffffff00000000ULL;
  adapter->stats.gptlbc = adapter->stats.gptlbc | (u64 )current_counter___5;
  tmp___8 = readl((void const volatile *)hw->hw_addr + 3912U);
  current_counter___6 = tmp___8;
  if (adapter->stats.last_gorlbc > current_counter___6) {
    adapter->stats.gorlbc = adapter->stats.gorlbc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gorlbc = current_counter___6;
  adapter->stats.gorlbc = adapter->stats.gorlbc & 0xffffffff00000000ULL;
  adapter->stats.gorlbc = adapter->stats.gorlbc | (u64 )current_counter___6;
  tmp___9 = readl((void const volatile *)hw->hw_addr + 3904U);
  current_counter___7 = tmp___9;
  if (adapter->stats.last_gprlbc > current_counter___7) {
    adapter->stats.gprlbc = adapter->stats.gprlbc + 4294967296ULL;
  } else {
  }
  adapter->stats.last_gprlbc = current_counter___7;
  adapter->stats.gprlbc = adapter->stats.gprlbc & 0xffffffff00000000ULL;
  adapter->stats.gprlbc = adapter->stats.gprlbc | (u64 )current_counter___7;
  adapter->net_stats.multicast = (unsigned long )adapter->stats.mprc;
  return;
}
}
static void igbvf_print_link_info(struct igbvf_adapter *adapter )
{
  {
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Link is Up %d Mbps %s Duplex\n",
            (int )adapter->link_speed, (unsigned int )adapter->link_duplex == 2U ? (char *)"Full" : (char *)"Half");
  return;
}
}
static bool igbvf_has_link(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  s32 ret_val ;
  bool link_active ;
  int tmp ;
  {
  hw = & adapter->hw;
  ret_val = 0;
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  if (tmp != 0) {
    return (0);
  } else {
  }
  ret_val = (*(hw->mac.ops.check_for_link))(hw);
  link_active = (bool )(! ((int )hw->mac.get_link_status != 0));
  if (ret_val != 0 && (long )((adapter->last_reset - (unsigned long )jiffies) + 2500UL) < 0L) {
    schedule_work(& adapter->reset_task);
  } else {
  }
  return (link_active);
}
}
static void igbvf_watchdog(unsigned long data )
{
  struct igbvf_adapter *adapter ;
  {
  adapter = (struct igbvf_adapter *)data;
  schedule_work(& adapter->watchdog_task);
  return;
}
}
static void igbvf_watchdog_task(struct work_struct *work )
{
  struct igbvf_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  struct e1000_mac_info *mac ;
  struct igbvf_ring *tx_ring ;
  struct e1000_hw *hw ;
  u32 link ;
  int tx_pending ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  unsigned long tmp___5 ;
  int tmp___6 ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct igbvf_adapter *)__mptr + 0xfffffffffffffeb0UL;
  netdev = adapter->netdev;
  mac = & adapter->hw.mac;
  tx_ring = adapter->tx_ring;
  hw = & adapter->hw;
  tx_pending = 0;
  tmp = igbvf_has_link(adapter);
  link = (u32 )tmp;
  if (link != 0U) {
    tmp___0 = netif_carrier_ok((struct net_device const *)netdev);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      (*(mac->ops.get_link_up_info))(& adapter->hw, & adapter->link_speed, & adapter->link_duplex);
      igbvf_print_link_info(adapter);
      netif_carrier_on(netdev);
      netif_wake_queue(netdev);
    } else {
    }
  } else {
    tmp___2 = netif_carrier_ok((struct net_device const *)netdev);
    if ((int )tmp___2) {
      adapter->link_speed = 0U;
      adapter->link_duplex = 0U;
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "Link is Down\n");
      netif_carrier_off(netdev);
      netif_stop_queue(netdev);
    } else {
    }
  }
  tmp___4 = netif_carrier_ok((struct net_device const *)netdev);
  if ((int )tmp___4) {
    igbvf_update_stats(adapter);
  } else {
    tmp___3 = igbvf_desc_unused(tx_ring);
    tx_pending = (unsigned int )(tmp___3 + 1) < tx_ring->count;
    if (tx_pending != 0) {
      adapter->tx_timeout_count = adapter->tx_timeout_count + 1U;
      schedule_work(& adapter->reset_task);
    } else {
    }
  }
  writel((adapter->rx_ring)->eims_value, (void volatile *)hw->hw_addr + 5408U);
  tmp___6 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  if (tmp___6 == 0) {
    tmp___5 = round_jiffies((unsigned long )jiffies + 500UL);
    ldv_mod_timer_53(& adapter->watchdog_timer, tmp___5);
  } else {
  }
  return;
}
}
static int igbvf_tso(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring ,
                     struct sk_buff *skb , u32 tx_flags , u8 *hdr_len )
{
  struct e1000_adv_tx_context_desc *context_desc ;
  struct igbvf_buffer *buffer_info ;
  u32 info ;
  u32 tu_cmd ;
  u32 mss_l4len_idx ;
  u32 l4len ;
  unsigned int i ;
  int err ;
  struct iphdr *iph ;
  struct iphdr *tmp ;
  struct tcphdr *tmp___0 ;
  __sum16 tmp___1 ;
  struct ipv6hdr *tmp___2 ;
  struct tcphdr *tmp___3 ;
  struct ipv6hdr *tmp___4 ;
  struct ipv6hdr *tmp___5 ;
  __sum16 tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned char *tmp___14 ;
  {
  info = 0U;
  tu_cmd = 0U;
  *hdr_len = 0U;
  err = skb_cow_head(skb, 0U);
  if (err < 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "igbvf_tso returning an error\n");
    return (err);
  } else {
  }
  l4len = tcp_hdrlen((struct sk_buff const *)skb);
  *hdr_len = (int )*hdr_len + (int )((u8 )l4len);
  if ((unsigned int )skb->protocol == 8U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    iph = tmp;
    iph->tot_len = 0U;
    iph->check = 0U;
    tmp___0 = tcp_hdr((struct sk_buff const *)skb);
    tmp___1 = csum_tcpudp_magic(iph->saddr, iph->daddr, 0, 6, 0U);
    tmp___0->check = ~ ((int )tmp___1);
  } else {
    tmp___7 = skb_is_gso_v6((struct sk_buff const *)skb);
    if ((int )tmp___7) {
      tmp___2 = ipv6_hdr((struct sk_buff const *)skb);
      tmp___2->payload_len = 0U;
      tmp___3 = tcp_hdr((struct sk_buff const *)skb);
      tmp___4 = ipv6_hdr((struct sk_buff const *)skb);
      tmp___5 = ipv6_hdr((struct sk_buff const *)skb);
      tmp___6 = csum_ipv6_magic((struct in6_addr const *)(& tmp___5->saddr), (struct in6_addr const *)(& tmp___4->daddr),
                                0U, 6, 0U);
      tmp___3->check = ~ ((int )tmp___6);
    } else {
    }
  }
  i = (unsigned int )tx_ring->next_to_use;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  context_desc = & (tx_ring->desc + (unsigned long )i)->tx_context_desc;
  if ((tx_flags & 2U) != 0U) {
    info = (tx_flags & 4294901760U) | info;
  } else {
  }
  tmp___8 = skb_network_offset((struct sk_buff const *)skb);
  info = (u32 )(tmp___8 << 9) | info;
  tmp___9 = skb_network_offset((struct sk_buff const *)skb);
  *hdr_len = (int )*hdr_len + (int )((u8 )tmp___9);
  tmp___10 = skb_transport_header((struct sk_buff const *)skb);
  tmp___11 = skb_network_header((struct sk_buff const *)skb);
  info = (u32 )((int )((unsigned int )((long )tmp___10) - (unsigned int )((long )tmp___11)) | (int )info);
  tmp___12 = skb_transport_header((struct sk_buff const *)skb);
  tmp___13 = skb_network_header((struct sk_buff const *)skb);
  *hdr_len = (int )*hdr_len + ((int )((u8 )((long )tmp___12)) - (int )((u8 )((long )tmp___13)));
  context_desc->vlan_macip_lens = info;
  tu_cmd = tu_cmd | 538968064U;
  if ((unsigned int )skb->protocol == 8U) {
    tu_cmd = tu_cmd | 1024U;
  } else {
  }
  tu_cmd = tu_cmd | 2048U;
  context_desc->type_tucmd_mlhl = tu_cmd;
  tmp___14 = skb_end_pointer((struct sk_buff const *)skb);
  mss_l4len_idx = (u32 )((int )((struct skb_shared_info *)tmp___14)->gso_size << 16);
  mss_l4len_idx = (l4len << 8) | mss_l4len_idx;
  context_desc->mss_l4len_idx = mss_l4len_idx;
  context_desc->seqnum_seed = 0U;
  buffer_info->ldv_43417.ldv_43411.time_stamp = jiffies;
  buffer_info->dma = 0ULL;
  i = i + 1U;
  if (tx_ring->count == i) {
    i = 0U;
  } else {
  }
  tx_ring->next_to_use = (u16 )i;
  return (1);
}
}
__inline static bool igbvf_tx_csum(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring ,
                                   struct sk_buff *skb , u32 tx_flags )
{
  struct e1000_adv_tx_context_desc *context_desc ;
  unsigned int i ;
  struct igbvf_buffer *buffer_info ;
  u32 info ;
  u32 tu_cmd ;
  int tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  struct iphdr *tmp___2 ;
  struct ipv6hdr *tmp___3 ;
  {
  info = 0U;
  tu_cmd = 0U;
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U || (tx_flags & 2U) != 0U) {
    i = (unsigned int )tx_ring->next_to_use;
    buffer_info = tx_ring->buffer_info + (unsigned long )i;
    context_desc = & (tx_ring->desc + (unsigned long )i)->tx_context_desc;
    if ((tx_flags & 2U) != 0U) {
      info = (tx_flags & 4294901760U) | info;
    } else {
    }
    tmp = skb_network_offset((struct sk_buff const *)skb);
    info = (u32 )(tmp << 9) | info;
    if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
      tmp___0 = skb_transport_header((struct sk_buff const *)skb);
      tmp___1 = skb_network_header((struct sk_buff const *)skb);
      info = (u32 )((int )((unsigned int )((long )tmp___0) - (unsigned int )((long )tmp___1)) | (int )info);
    } else {
    }
    context_desc->vlan_macip_lens = info;
    tu_cmd = tu_cmd | 538968064U;
    if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
      switch ((int )skb->protocol) {
      case 8:
      tu_cmd = tu_cmd | 1024U;
      tmp___2 = ip_hdr((struct sk_buff const *)skb);
      if ((unsigned int )tmp___2->protocol == 6U) {
        tu_cmd = tu_cmd | 2048U;
      } else {
      }
      goto ldv_51720;
      case 56710:
      tmp___3 = ipv6_hdr((struct sk_buff const *)skb);
      if ((unsigned int )tmp___3->nexthdr == 6U) {
        tu_cmd = tu_cmd | 2048U;
      } else {
      }
      goto ldv_51720;
      default: ;
      goto ldv_51720;
      }
      ldv_51720: ;
    } else {
    }
    context_desc->type_tucmd_mlhl = tu_cmd;
    context_desc->seqnum_seed = 0U;
    context_desc->mss_l4len_idx = 0U;
    buffer_info->ldv_43417.ldv_43411.time_stamp = jiffies;
    buffer_info->dma = 0ULL;
    i = i + 1U;
    if (tx_ring->count == i) {
      i = 0U;
    } else {
    }
    tx_ring->next_to_use = (u16 )i;
    return (1);
  } else {
  }
  return (0);
}
}
static int igbvf_maybe_stop_tx(struct net_device *netdev , int size )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tmp___0 = igbvf_desc_unused(adapter->tx_ring);
  if (tmp___0 >= size) {
    return (0);
  } else {
  }
  netif_stop_queue(netdev);
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = igbvf_desc_unused(adapter->tx_ring);
  if (tmp___1 < size) {
    return (-16);
  } else {
  }
  netif_wake_queue(netdev);
  adapter->restart_queue = adapter->restart_queue + 1U;
  return (0);
}
}
__inline static int igbvf_tx_map_adv(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring ,
                                     struct sk_buff *skb )
{
  struct igbvf_buffer *buffer_info ;
  struct pci_dev *pdev ;
  unsigned int len ;
  unsigned int tmp ;
  unsigned int count ;
  unsigned int i ;
  unsigned int f ;
  long tmp___0 ;
  int tmp___1 ;
  struct skb_frag_struct const *frag ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned int tmp___6 ;
  {
  pdev = adapter->pdev;
  tmp = skb_headlen((struct sk_buff const *)skb);
  len = tmp;
  count = 0U;
  i = (unsigned int )tx_ring->next_to_use;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  tmp___0 = ldv__builtin_expect(len > 65535U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1448/dscv_tempdir/dscv/ri/205_9a/drivers/net/ethernet/intel/igbvf/netdev.o.c.prepared"),
                         "i" (2202), "i" (12UL));
    ldv_51739: ;
    goto ldv_51739;
  } else {
  }
  buffer_info->ldv_43417.ldv_43411.length = (u16 )len;
  buffer_info->ldv_43417.ldv_43411.time_stamp = jiffies;
  buffer_info->ldv_43417.ldv_43411.mapped_as_page = 0U;
  buffer_info->dma = dma_map_single_attrs(& pdev->dev, (void *)skb->data, (size_t )len,
                                          1, (struct dma_attrs *)0);
  tmp___1 = dma_mapping_error(& pdev->dev, buffer_info->dma);
  if (tmp___1 != 0) {
    goto dma_error;
  } else {
  }
  f = 0U;
  goto ldv_51744;
  ldv_51743:
  count = count + 1U;
  i = i + 1U;
  if (tx_ring->count == i) {
    i = 0U;
  } else {
  }
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___2)->frags) + (unsigned long )f;
  len = skb_frag_size(frag);
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  tmp___3 = ldv__builtin_expect(len > 65535U, 0L);
  if (tmp___3 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1448/dscv_tempdir/dscv/ri/205_9a/drivers/net/ethernet/intel/igbvf/netdev.o.c.prepared"),
                         "i" (2225), "i" (12UL));
    ldv_51742: ;
    goto ldv_51742;
  } else {
  }
  buffer_info->ldv_43417.ldv_43411.length = (u16 )len;
  buffer_info->ldv_43417.ldv_43411.time_stamp = jiffies;
  buffer_info->ldv_43417.ldv_43411.mapped_as_page = 1U;
  buffer_info->dma = skb_frag_dma_map(& pdev->dev, frag, 0UL, (size_t )len, 1);
  tmp___4 = dma_mapping_error(& pdev->dev, buffer_info->dma);
  if (tmp___4 != 0) {
    goto dma_error;
  } else {
  }
  f = f + 1U;
  ldv_51744:
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___5)->nr_frags > f) {
    goto ldv_51743;
  } else {
  }
  (tx_ring->buffer_info + (unsigned long )i)->skb = skb;
  count = count + 1U;
  return ((int )count);
  dma_error:
  dev_err((struct device const *)(& pdev->dev), "TX DMA map failed\n");
  buffer_info->dma = 0ULL;
  buffer_info->ldv_43417.ldv_43411.time_stamp = 0UL;
  buffer_info->ldv_43417.ldv_43411.length = 0U;
  buffer_info->ldv_43417.ldv_43411.mapped_as_page = 0U;
  if (count != 0U) {
    count = count - 1U;
  } else {
  }
  goto ldv_51747;
  ldv_51746: ;
  if (i == 0U) {
    i = tx_ring->count + i;
  } else {
  }
  i = i - 1U;
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  igbvf_put_txbuf(adapter, buffer_info);
  ldv_51747:
  tmp___6 = count;
  count = count - 1U;
  if (tmp___6 != 0U) {
    goto ldv_51746;
  } else {
  }
  return (0);
}
}
__inline static void igbvf_tx_queue_adv(struct igbvf_adapter *adapter , struct igbvf_ring *tx_ring ,
                                        int tx_flags , int count , unsigned int first ,
                                        u32 paylen , u8 hdr_len )
{
  union e1000_adv_tx_desc *tx_desc ;
  struct igbvf_buffer *buffer_info ;
  u32 olinfo_status ;
  u32 cmd_type_len ;
  unsigned int i ;
  int tmp ;
  {
  tx_desc = (union e1000_adv_tx_desc *)0;
  olinfo_status = 0U;
  cmd_type_len = 573571072U;
  if ((tx_flags & 2) != 0) {
    cmd_type_len = cmd_type_len | 1073741824U;
  } else {
  }
  if ((tx_flags & 4) != 0) {
    cmd_type_len = cmd_type_len | 2147483648U;
    olinfo_status = olinfo_status | 512U;
    if ((tx_flags & 8) != 0) {
      olinfo_status = olinfo_status | 256U;
    } else {
    }
  } else
  if (tx_flags & 1) {
    olinfo_status = olinfo_status | 512U;
  } else {
  }
  olinfo_status = ((paylen - (u32 )hdr_len) << 14) | olinfo_status;
  i = (unsigned int )tx_ring->next_to_use;
  goto ldv_51764;
  ldv_51763:
  buffer_info = tx_ring->buffer_info + (unsigned long )i;
  tx_desc = & (tx_ring->desc + (unsigned long )i)->tx_desc;
  tx_desc->read.buffer_addr = buffer_info->dma;
  tx_desc->read.cmd_type_len = (u32 )buffer_info->ldv_43417.ldv_43411.length | cmd_type_len;
  tx_desc->read.olinfo_status = olinfo_status;
  i = i + 1U;
  if (tx_ring->count == i) {
    i = 0U;
  } else {
  }
  ldv_51764:
  tmp = count;
  count = count - 1;
  if (tmp != 0) {
    goto ldv_51763;
  } else {
  }
  tx_desc->read.cmd_type_len = tx_desc->read.cmd_type_len | adapter->txd_cmd;
  __asm__ volatile ("sfence": : : "memory");
  (tx_ring->buffer_info + (unsigned long )first)->ldv_43417.ldv_43411.next_to_watch = tx_desc;
  tx_ring->next_to_use = (u16 )i;
  writel(i, (void volatile *)adapter->hw.hw_addr + (unsigned long )tx_ring->tail);
  __asm__ volatile ("": : : "memory");
  return;
}
}
static netdev_tx_t igbvf_xmit_frame_ring_adv(struct sk_buff *skb , struct net_device *netdev ,
                                             struct igbvf_ring *tx_ring )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  unsigned int first ;
  unsigned int tx_flags ;
  u8 hdr_len ;
  int count ;
  int tso ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  int tmp___4 ;
  bool tmp___5 ;
  long tmp___6 ;
  bool tmp___7 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tx_flags = 0U;
  hdr_len = 0U;
  count = 0;
  tso = 0;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  if (tmp___0 != 0) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  if (skb->len == 0U) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___2 = igbvf_maybe_stop_tx(netdev, (int )((struct skb_shared_info *)tmp___1)->nr_frags + 4);
  if (tmp___2 != 0) {
    return (16);
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    tx_flags = tx_flags | 2U;
    tx_flags = (unsigned int )(((int )skb->vlan_tci & -4097) << 16) | tx_flags;
  } else {
  }
  if ((unsigned int )skb->protocol == 8U) {
    tx_flags = tx_flags | 8U;
  } else {
  }
  first = (unsigned int )tx_ring->next_to_use;
  tmp___5 = skb_is_gso((struct sk_buff const *)skb);
  if ((int )tmp___5) {
    tmp___4 = igbvf_tso(adapter, tx_ring, skb, tx_flags, & hdr_len);
    tso = tmp___4;
  } else {
    tso = 0;
  }
  tmp___6 = ldv__builtin_expect(tso < 0, 0L);
  if (tmp___6 != 0L) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  if (tso != 0) {
    tx_flags = tx_flags | 4U;
  } else {
    tmp___7 = igbvf_tx_csum(adapter, tx_ring, skb, tx_flags);
    if ((int )tmp___7 && (unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
      tx_flags = tx_flags | 1U;
    } else {
    }
  }
  count = igbvf_tx_map_adv(adapter, tx_ring, skb);
  if (count != 0) {
    igbvf_tx_queue_adv(adapter, tx_ring, (int )tx_flags, count, first, skb->len, (int )hdr_len);
    igbvf_maybe_stop_tx(netdev, 21);
  } else {
    dev_kfree_skb_any(skb);
    (tx_ring->buffer_info + (unsigned long )first)->ldv_43417.ldv_43411.time_stamp = 0UL;
    tx_ring->next_to_use = (u16 )first;
  }
  return (0);
}
}
static netdev_tx_t igbvf_xmit_frame(struct sk_buff *skb , struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  struct igbvf_ring *tx_ring ;
  int tmp___0 ;
  netdev_tx_t tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  tmp___0 = constant_test_bit(2L, (unsigned long const volatile *)(& adapter->state));
  if (tmp___0 != 0) {
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  tx_ring = adapter->tx_ring;
  tmp___1 = igbvf_xmit_frame_ring_adv(skb, netdev, tx_ring);
  return (tmp___1);
}
}
static void igbvf_tx_timeout(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  adapter->tx_timeout_count = adapter->tx_timeout_count + 1U;
  schedule_work(& adapter->reset_task);
  return;
}
}
static void igbvf_reset_task(struct work_struct *work )
{
  struct igbvf_adapter *adapter ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct igbvf_adapter *)__mptr + 0xffffffffffffff00UL;
  igbvf_reinit_locked(adapter);
  return;
}
}
static struct net_device_stats *igbvf_get_stats(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  return (& adapter->net_stats);
}
}
static int igbvf_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  int max_frame ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  max_frame = new_mtu + 18;
  if ((new_mtu <= 67 || new_mtu > 2147483629) || max_frame > 16128) {
    return (-22);
  } else {
  }
  if (max_frame > 9234) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "MTU > 9216 not supported.\n");
    return (-22);
  } else {
  }
  goto ldv_51804;
  ldv_51803:
  msleep(1U);
  ldv_51804:
  tmp___0 = test_and_set_bit(1L, (unsigned long volatile *)(& adapter->state));
  if (tmp___0 != 0) {
    goto ldv_51803;
  } else {
  }
  adapter->max_frame_size = (u32 )max_frame;
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    igbvf_down(adapter);
  } else {
  }
  if (max_frame <= 1024) {
    adapter->rx_buffer_len = 1024U;
  } else
  if (max_frame <= 2048) {
    adapter->rx_buffer_len = 2048U;
  } else {
    adapter->rx_buffer_len = 2048U;
  }
  if (max_frame == 1518 || max_frame == 1522) {
    adapter->rx_buffer_len = 1522U;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "changing MTU from %d to %d\n",
            netdev->mtu, new_mtu);
  netdev->mtu = (unsigned int )new_mtu;
  tmp___2 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___2) {
    igbvf_up(adapter);
  } else {
    igbvf_reset(adapter);
  }
  clear_bit(1L, (unsigned long volatile *)(& adapter->state));
  return (0);
}
}
static int igbvf_ioctl(struct net_device *netdev , struct ifreq *ifr , int cmd )
{
  {
  switch (cmd) {
  default: ;
  return (-95);
  }
}
}
static int igbvf_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  int retval ;
  int __ret_warn_on ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  retval = 0;
  netif_device_detach(netdev);
  tmp___3 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___3) {
    tmp___1 = constant_test_bit(1L, (unsigned long const volatile *)(& adapter->state));
    __ret_warn_on = tmp___1 != 0;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1448/dscv_tempdir/dscv/ri/205_9a/drivers/net/ethernet/intel/igbvf/netdev.o.c.prepared",
                         2539);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    igbvf_down(adapter);
    igbvf_free_irq(adapter);
  } else {
  }
  retval = pci_save_state(pdev);
  if (retval != 0) {
    return (retval);
  } else {
  }
  pci_disable_device(pdev);
  return (0);
}
}
static int igbvf_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  u32 err ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  pci_restore_state(pdev);
  tmp___1 = pci_enable_device_mem(pdev);
  err = (u32 )tmp___1;
  if (err != 0U) {
    dev_err((struct device const *)(& pdev->dev), "Cannot enable PCI device from suspend\n");
    return ((int )err);
  } else {
  }
  pci_set_master(pdev);
  tmp___3 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___3) {
    tmp___2 = igbvf_request_irq(adapter);
    err = (u32 )tmp___2;
    if (err != 0U) {
      return ((int )err);
    } else {
    }
  } else {
  }
  igbvf_reset(adapter);
  tmp___4 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___4) {
    igbvf_up(adapter);
  } else {
  }
  netif_device_attach(netdev);
  return (0);
}
}
static void igbvf_shutdown(struct pci_dev *pdev )
{
  struct pm_message __constr_expr_0 ;
  {
  __constr_expr_0.event = 2;
  igbvf_suspend(pdev, __constr_expr_0);
  return;
}
}
static void igbvf_netpoll(struct net_device *netdev )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  disable_irq((adapter->pdev)->irq);
  igbvf_clean_tx_irq(adapter->tx_ring);
  enable_irq((adapter->pdev)->irq);
  return;
}
}
static pci_ers_result_t igbvf_io_error_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  netif_device_detach(netdev);
  if (state == 3U) {
    return (4U);
  } else {
  }
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    igbvf_down(adapter);
  } else {
  }
  pci_disable_device(pdev);
  return (3U);
}
}
static pci_ers_result_t igbvf_io_slot_reset(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  tmp___1 = pci_enable_device_mem(pdev);
  if (tmp___1 != 0) {
    dev_err((struct device const *)(& pdev->dev), "Cannot re-enable PCI device after reset.\n");
    return (4U);
  } else {
  }
  pci_set_master(pdev);
  igbvf_reset(adapter);
  return (5U);
}
}
static void igbvf_io_resume(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  tmp___2 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___2) {
    tmp___1 = igbvf_up(adapter);
    if (tmp___1 != 0) {
      dev_err((struct device const *)(& pdev->dev), "can\'t bring device back up after reset\n");
      return;
    } else {
    }
  } else {
  }
  netif_device_attach(netdev);
  return;
}
}
static void igbvf_print_device_info(struct igbvf_adapter *adapter )
{
  struct e1000_hw *hw ;
  struct net_device *netdev ;
  struct pci_dev *pdev ;
  {
  hw = & adapter->hw;
  netdev = adapter->netdev;
  pdev = adapter->pdev;
  if ((unsigned int )hw->mac.type == 2U) {
    _dev_info((struct device const *)(& pdev->dev), "Intel(R) I350 Virtual Function\n");
  } else {
    _dev_info((struct device const *)(& pdev->dev), "Intel(R) 82576 Virtual Function\n");
  }
  _dev_info((struct device const *)(& pdev->dev), "Address: %pM\n", netdev->dev_addr);
  return;
}
}
static int igbvf_set_features(struct net_device *netdev , netdev_features_t features )
{
  struct igbvf_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  if ((features & 17179869184ULL) != 0ULL) {
    adapter->flags = adapter->flags & 4294967294U;
  } else {
    adapter->flags = adapter->flags | 1U;
  }
  return (0);
}
}
static struct net_device_ops const igbvf_netdev_ops =
     {0, 0, & igbvf_open, & igbvf_close, & igbvf_xmit_frame, 0, 0, & igbvf_set_multi,
    & igbvf_set_mac, 0, & igbvf_ioctl, 0, & igbvf_change_mtu, 0, & igbvf_tx_timeout,
    0, & igbvf_get_stats, & igbvf_vlan_rx_add_vid, & igbvf_vlan_rx_kill_vid, & igbvf_netpoll,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & igbvf_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int igbvf_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct net_device *netdev ;
  struct igbvf_adapter *adapter ;
  struct e1000_hw *hw ;
  struct igbvf_info const *ei ;
  int cards_found ;
  int err ;
  int pci_using_dac ;
  void *tmp ;
  void *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  {
  ei = igbvf_info_tbl[ent->driver_data];
  err = pci_enable_device_mem(pdev);
  if (err != 0) {
    return (err);
  } else {
  }
  pci_using_dac = 0;
  err = dma_set_mask_and_coherent(& pdev->dev, 0xffffffffffffffffULL);
  if (err == 0) {
    pci_using_dac = 1;
  } else {
    err = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pdev->dev), "No usable DMA configuration, aborting\n");
      goto err_dma;
    } else {
    }
  }
  err = pci_request_regions(pdev, (char const *)(& igbvf_driver_name));
  if (err != 0) {
    goto err_pci_reg;
  } else {
  }
  pci_set_master(pdev);
  err = -12;
  netdev = alloc_etherdev_mqs(2688, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    goto err_alloc_etherdev;
  } else {
  }
  netdev->dev.parent = & pdev->dev;
  pci_set_drvdata(pdev, (void *)netdev);
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp;
  hw = & adapter->hw;
  adapter->netdev = netdev;
  adapter->pdev = pdev;
  adapter->ei = ei;
  adapter->pba = ei->pba;
  adapter->flags = ei->flags;
  adapter->hw.back = (void *)adapter;
  adapter->hw.mac.type = ei->mac;
  adapter->msg_enable = netif_msg_init(debug, 7);
  hw->vendor_id = pdev->vendor;
  hw->device_id = pdev->device;
  hw->subsystem_vendor_id = pdev->subsystem_vendor;
  hw->subsystem_device_id = pdev->subsystem_device;
  hw->revision_id = pdev->revision;
  err = -5;
  tmp___0 = ioremap(pdev->resource[0].start, pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (unsigned long )((pdev->resource[0].end - pdev->resource[0].start) + 1ULL) : 0UL);
  adapter->hw.hw_addr = (u8 *)tmp___0;
  if ((unsigned long )adapter->hw.hw_addr == (unsigned long )((u8 *)0U)) {
    goto err_ioremap;
  } else {
  }
  if ((unsigned long )ei->get_variants != (unsigned long )((s32 (* )(struct igbvf_adapter * ))0)) {
    err = (*(ei->get_variants))(adapter);
    if (err != 0) {
      goto err_get_variants;
    } else {
    }
  } else {
  }
  err = igbvf_sw_init(adapter);
  if (err != 0) {
    goto err_sw_init;
  } else {
  }
  netdev->netdev_ops = & igbvf_netdev_ops;
  igbvf_set_ethtool_ops(netdev);
  netdev->watchdog_timeo = 1250;
  tmp___1 = pci_name((struct pci_dev const *)pdev);
  strncpy((char *)(& netdev->name), tmp___1, 15UL);
  tmp___2 = cards_found;
  cards_found = cards_found + 1;
  adapter->bd_number = (u32 )tmp___2;
  netdev->hw_features = 17180983315ULL;
  netdev->features = netdev->hw_features | 896ULL;
  if (pci_using_dac != 0) {
    netdev->features = netdev->features | 32ULL;
  } else {
  }
  netdev->vlan_features = netdev->vlan_features | 65536ULL;
  netdev->vlan_features = netdev->vlan_features | 1048576ULL;
  netdev->vlan_features = netdev->vlan_features | 2ULL;
  netdev->vlan_features = netdev->vlan_features | 16ULL;
  netdev->vlan_features = netdev->vlan_features | 1ULL;
  err = (*(hw->mac.ops.reset_hw))(hw);
  if (err != 0) {
    _dev_info((struct device const *)(& pdev->dev), "PF still in reset state. Is the PF interface up?\n");
  } else {
    err = (*(hw->mac.ops.read_mac_addr))(hw);
    if (err != 0) {
      _dev_info((struct device const *)(& pdev->dev), "Error reading MAC address.\n");
    } else {
      tmp___3 = is_zero_ether_addr((u8 const *)(& adapter->hw.mac.addr));
      if ((int )tmp___3) {
        _dev_info((struct device const *)(& pdev->dev), "MAC address not assigned by administrator.\n");
      } else {
      }
    }
    __len = (size_t )netdev->addr_len;
    __ret = memcpy((void *)netdev->dev_addr, (void const *)(& adapter->hw.mac.addr),
                             __len);
  }
  tmp___4 = is_valid_ether_addr((u8 const *)netdev->dev_addr);
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    _dev_info((struct device const *)(& pdev->dev), "Assigning random MAC address.\n");
    eth_hw_addr_random(netdev);
    __len___0 = (size_t )netdev->addr_len;
    __ret___0 = memcpy((void *)(& adapter->hw.mac.addr), (void const *)netdev->dev_addr,
                                 __len___0);
  } else {
  }
  reg_timer_4(& adapter->watchdog_timer, & igbvf_watchdog, (unsigned long )adapter);
  __init_work(& adapter->reset_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->reset_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->reset_task.lockdep_map, "(&adapter->reset_task)", & __key,
                   0);
  INIT_LIST_HEAD(& adapter->reset_task.entry);
  adapter->reset_task.func = & igbvf_reset_task;
  __init_work(& adapter->watchdog_task, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->watchdog_task.data = __constr_expr_1;
  lockdep_init_map(& adapter->watchdog_task.lockdep_map, "(&adapter->watchdog_task)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& adapter->watchdog_task.entry);
  adapter->watchdog_task.func = & igbvf_watchdog_task;
  (adapter->rx_ring)->count = 1024U;
  (adapter->tx_ring)->count = 1024U;
  igbvf_reset(adapter);
  if ((unsigned int )adapter->hw.mac.type == 2U) {
    adapter->flags = adapter->flags | 2U;
  } else {
  }
  strcpy((char *)(& netdev->name), "eth%d");
  err = ldv_register_netdev_54(netdev);
  if (err != 0) {
    goto err_hw_init;
  } else {
  }
  netif_carrier_off(netdev);
  netif_stop_queue(netdev);
  igbvf_print_device_info(adapter);
  igbvf_initialize_last_counter_stats(adapter);
  return (0);
  err_hw_init:
  kfree((void const *)adapter->tx_ring);
  kfree((void const *)adapter->rx_ring);
  err_sw_init:
  igbvf_reset_interrupt_capability(adapter);
  err_get_variants:
  iounmap((void volatile *)adapter->hw.hw_addr);
  err_ioremap:
  ldv_free_netdev_55(netdev);
  err_alloc_etherdev:
  pci_release_regions(pdev);
  err_pci_reg: ;
  err_dma:
  pci_disable_device(pdev);
  return (err);
}
}
static void igbvf_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct igbvf_adapter *adapter ;
  void *tmp___0 ;
  struct e1000_hw *hw ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct igbvf_adapter *)tmp___0;
  hw = & adapter->hw;
  set_bit(2L, (unsigned long volatile *)(& adapter->state));
  ldv_del_timer_sync_56(& adapter->watchdog_timer);
  cancel_work_sync(& adapter->reset_task);
  cancel_work_sync(& adapter->watchdog_task);
  ldv_unregister_netdev_57(netdev);
  igbvf_reset_interrupt_capability(adapter);
  netif_napi_del(& (adapter->rx_ring)->napi);
  kfree((void const *)adapter->tx_ring);
  kfree((void const *)adapter->rx_ring);
  iounmap((void volatile *)hw->hw_addr);
  if ((unsigned long )hw->flash_address != (unsigned long )((u8 *)0U)) {
    iounmap((void volatile *)hw->flash_address);
  } else {
  }
  pci_release_regions(pdev);
  ldv_free_netdev_58(netdev);
  pci_disable_device(pdev);
  return;
}
}
static struct pci_error_handlers const igbvf_err_handler = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& igbvf_io_error_detected),
    0, 0, & igbvf_io_slot_reset, 0, & igbvf_io_resume};
static struct pci_device_id const igbvf_pci_tbl[3U] = { {32902U, 4298U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 5408U, 4294967295U, 4294967295U, 0U, 0U, 1UL}};
struct pci_device_id const __mod_pci__igbvf_pci_tbl_device_table ;
static struct pci_driver igbvf_driver =
     {{0, 0}, (char const *)(& igbvf_driver_name), (struct pci_device_id const *)(& igbvf_pci_tbl),
    & igbvf_probe, & igbvf_remove, & igbvf_suspend, 0, 0, & igbvf_resume, & igbvf_shutdown,
    0, & igbvf_err_handler, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static int igbvf_init_module(void)
{
  int ret ;
  {
  printk("\016igbvf: %s - version %s\n", (char const *)(& igbvf_driver_string),
         (char const *)(& igbvf_driver_version));
  printk("\016igbvf: %s\n", (char const *)(& igbvf_copyright));
  ret = __pci_register_driver(& igbvf_driver, & __this_module, "igbvf");
  return (ret);
}
}
static void igbvf_exit_module(void)
{
  {
  pci_unregister_driver(& igbvf_driver);
  return;
}
}
extern int ldv_suspend_6(void) ;
extern int ldv_release_6(void) ;
extern int ldv_ndo_init_7(void) ;
extern int ldv_ndo_uninit_7(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
int ldv_retval_1 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_3 ;
extern int ldv_probe_6(void) ;
int ldv_irq_3(int state , int line , void *data )
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
      irq_retval = igbvf_msix_other(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_51949;
    default:
    ldv_stop();
    }
    ldv_51949: ;
  } else {
  }
  return (state);
}
}
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_51955;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_51955;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_51955;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_51955;
  default:
  ldv_stop();
  }
  ldv_51955: ;
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
void ldv_initialize_pci_driver_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  igbvf_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_net_device_ops_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  igbvf_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void activate_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 == 0) {
    ldv_irq_line_3_0 = line;
    ldv_irq_data_3_0 = data;
    ldv_irq_3_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_1 == 0) {
    ldv_irq_line_3_1 = line;
    ldv_irq_data_3_1 = data;
    ldv_irq_3_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_2 == 0) {
    ldv_irq_line_3_2 = line;
    ldv_irq_data_3_2 = data;
    ldv_irq_3_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_3_3 == 0) {
    ldv_irq_line_3_3 = line;
    ldv_irq_data_3_3 = data;
    ldv_irq_3_3 = 1;
    return;
  } else {
  }
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
  if ((unsigned long )ldv_timer_list_4_0 == (unsigned long )timer) {
    if (ldv_timer_4_0 == 2 || pending_flag != 0) {
      ldv_timer_list_4_0 = timer;
      ldv_timer_list_4_0->data = data;
      ldv_timer_4_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_1 == (unsigned long )timer) {
    if (ldv_timer_4_1 == 2 || pending_flag != 0) {
      ldv_timer_list_4_1 = timer;
      ldv_timer_list_4_1->data = data;
      ldv_timer_4_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_2 == (unsigned long )timer) {
    if (ldv_timer_4_2 == 2 || pending_flag != 0) {
      ldv_timer_list_4_2 = timer;
      ldv_timer_list_4_2->data = data;
      ldv_timer_4_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_4_3 == (unsigned long )timer) {
    if (ldv_timer_4_3 == 2 || pending_flag != 0) {
      ldv_timer_list_4_3 = timer;
      ldv_timer_list_4_3->data = data;
      ldv_timer_4_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_4(timer, data);
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& igbvf_intr_msix_tx)) {
    return (1);
  } else {
  }
  return (0);
}
}
void timer_init_4(void)
{
  {
  ldv_timer_4_0 = 0;
  ldv_timer_4_1 = 0;
  ldv_timer_4_2 = 0;
  ldv_timer_4_3 = 0;
  return;
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
  goto ldv_51995;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_51995;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_51995;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_51995;
  default:
  ldv_stop();
  }
  ldv_51995: ;
  return;
}
}
void choose_timer_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_4_0 == 1) {
    ldv_timer_4_0 = 2;
    ldv_timer_4(ldv_timer_4_0, ldv_timer_list_4_0);
  } else {
  }
  goto ldv_52004;
  case 1: ;
  if (ldv_timer_4_1 == 1) {
    ldv_timer_4_1 = 2;
    ldv_timer_4(ldv_timer_4_1, ldv_timer_list_4_1);
  } else {
  }
  goto ldv_52004;
  case 2: ;
  if (ldv_timer_4_2 == 1) {
    ldv_timer_4_2 = 2;
    ldv_timer_4(ldv_timer_4_2, ldv_timer_list_4_2);
  } else {
  }
  goto ldv_52004;
  case 3: ;
  if (ldv_timer_4_3 == 1) {
    ldv_timer_4_3 = 2;
    ldv_timer_4(ldv_timer_4_3, ldv_timer_list_4_3);
  } else {
  }
  goto ldv_52004;
  default:
  ldv_stop();
  }
  ldv_52004: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& igbvf_intr_msix_rx)) {
    return (1);
  } else {
  }
  return (0);
}
}
void disable_suitable_irq_3(int line , void *data )
{
  {
  if (ldv_irq_3_0 != 0 && line == ldv_irq_line_3_0) {
    ldv_irq_3_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_1 != 0 && line == ldv_irq_line_3_1) {
    ldv_irq_3_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_2 != 0 && line == ldv_irq_line_3_2) {
    ldv_irq_3_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_3_3 != 0 && line == ldv_irq_line_3_3) {
    ldv_irq_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_4(struct timer_list *timer )
{
  {
  if (ldv_timer_4_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_0) {
    ldv_timer_4_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_1) {
    ldv_timer_4_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_2) {
    ldv_timer_4_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_4_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_4_3) {
    ldv_timer_4_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_3(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& igbvf_msix_other)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_initialize_pci_error_handlers_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  igbvf_err_handler_group0 = (struct pci_dev *)tmp;
  return;
}
}
int reg_timer_4(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& igbvf_watchdog)) {
    activate_suitable_timer_4(timer, data);
  } else {
  }
  return (0);
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
      irq_retval = igbvf_intr_msix_tx(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_52046;
    default:
    ldv_stop();
    }
    ldv_52046: ;
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
void choose_interrupt_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_0, ldv_irq_line_3_0, ldv_irq_data_3_0);
  goto ldv_52058;
  case 1:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_1, ldv_irq_line_3_1, ldv_irq_data_3_1);
  goto ldv_52058;
  case 2:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_2, ldv_irq_line_3_2, ldv_irq_data_3_2);
  goto ldv_52058;
  case 3:
  ldv_irq_3_0 = ldv_irq_3(ldv_irq_3_3, ldv_irq_line_3_3, ldv_irq_data_3_3);
  goto ldv_52058;
  default:
  ldv_stop();
  }
  ldv_52058: ;
  return;
}
}
void ldv_timer_4(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  igbvf_watchdog(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
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
      irq_retval = igbvf_intr_msix_rx(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_52074;
    default:
    ldv_stop();
    }
    ldv_52074: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_timer_4(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_4_0 == 0 || ldv_timer_4_0 == 2) {
    ldv_timer_list_4_0 = timer;
    ldv_timer_list_4_0->data = data;
    ldv_timer_4_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_1 == 0 || ldv_timer_4_1 == 2) {
    ldv_timer_list_4_1 = timer;
    ldv_timer_list_4_1->data = data;
    ldv_timer_4_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_2 == 0 || ldv_timer_4_2 == 2) {
    ldv_timer_list_4_2 = timer;
    ldv_timer_list_4_2->data = data;
    ldv_timer_4_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_4_3 == 0 || ldv_timer_4_3 == 2) {
    ldv_timer_list_4_3 = timer;
    ldv_timer_list_4_3->data = data;
    ldv_timer_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
int main(void)
{
  enum pci_channel_state ldvarg0 ;
  int ldvarg7 ;
  int tmp ;
  netdev_features_t ldvarg3 ;
  u16 ldvarg5 ;
  u16 tmp___0 ;
  __be16 ldvarg6 ;
  void *ldvarg1 ;
  void *tmp___1 ;
  struct ifreq *ldvarg8 ;
  void *tmp___2 ;
  struct sk_buff *ldvarg4 ;
  void *tmp___3 ;
  __be16 ldvarg10 ;
  u16 ldvarg9 ;
  u16 tmp___4 ;
  int ldvarg2 ;
  int tmp___5 ;
  struct e1000_hw *ldvarg11 ;
  void *tmp___6 ;
  struct e1000_hw *ldvarg12 ;
  void *tmp___7 ;
  struct pci_device_id *ldvarg27 ;
  void *tmp___8 ;
  pm_message_t ldvarg26 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg7 = tmp;
  tmp___0 = __VERIFIER_nondet_u16();
  ldvarg5 = tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg1 = tmp___1;
  tmp___2 = ldv_zalloc(40UL);
  ldvarg8 = (struct ifreq *)tmp___2;
  tmp___3 = ldv_zalloc(232UL);
  ldvarg4 = (struct sk_buff *)tmp___3;
  tmp___4 = __VERIFIER_nondet_u16();
  ldvarg9 = tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___5;
  tmp___6 = ldv_zalloc(288UL);
  ldvarg11 = (struct e1000_hw *)tmp___6;
  tmp___7 = ldv_zalloc(288UL);
  ldvarg12 = (struct e1000_hw *)tmp___7;
  tmp___8 = ldv_zalloc(32UL);
  ldvarg27 = (struct pci_device_id *)tmp___8;
  ldv_initialize();
  memset((void *)(& ldvarg0), 0, 4UL);
  memset((void *)(& ldvarg3), 0, 8UL);
  memset((void *)(& ldvarg6), 0, 2UL);
  memset((void *)(& ldvarg10), 0, 2UL);
  memset((void *)(& ldvarg26), 0, 4UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  timer_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_52168:
  tmp___9 = __VERIFIER_nondet_int();
  switch (tmp___9) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___10 = __VERIFIER_nondet_int();
    switch (tmp___10) {
    case 0: ;
    if (ldv_state_variable_6 == 3) {
      igbvf_io_resume(igbvf_err_handler_group0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_52114;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      igbvf_io_slot_reset(igbvf_err_handler_group0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      igbvf_io_slot_reset(igbvf_err_handler_group0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      igbvf_io_slot_reset(igbvf_err_handler_group0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_52114;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      igbvf_io_error_detected(igbvf_err_handler_group0, (pci_channel_state_t )ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      igbvf_io_error_detected(igbvf_err_handler_group0, (pci_channel_state_t )ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      igbvf_io_error_detected(igbvf_err_handler_group0, (pci_channel_state_t )ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_52114;
    case 3: ;
    if (ldv_state_variable_6 == 2) {
      ldv_suspend_6();
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_52114;
    case 4: ;
    if (ldv_state_variable_6 == 3) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      ldv_release_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52114;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      ldv_probe_6();
      ldv_state_variable_6 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_52114;
    default:
    ldv_stop();
    }
    ldv_52114: ;
  } else {
  }
  goto ldv_52121;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    choose_interrupt_3();
  } else {
  }
  goto ldv_52121;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_vlan_rx_kill_vid(igbvf_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_vlan_rx_kill_vid(igbvf_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_vlan_rx_kill_vid(igbvf_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_ioctl(igbvf_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_ioctl(igbvf_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_ioctl(igbvf_netdev_ops_group1, ldvarg8, ldvarg7);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_vlan_rx_add_vid(igbvf_netdev_ops_group1, (int )ldvarg6, (int )ldvarg5);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_vlan_rx_add_vid(igbvf_netdev_ops_group1, (int )ldvarg6, (int )ldvarg5);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_vlan_rx_add_vid(igbvf_netdev_ops_group1, (int )ldvarg6, (int )ldvarg5);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_get_stats(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_get_stats(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_get_stats(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 4: ;
    if (ldv_state_variable_7 == 2) {
      ldv_retval_1 = igbvf_open(igbvf_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_7 = 3;
      } else {
      }
    } else {
    }
    goto ldv_52125;
    case 5: ;
    if (ldv_state_variable_7 == 3) {
      igbvf_xmit_frame(ldvarg4, igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_52125;
    case 6: ;
    if (ldv_state_variable_7 == 3) {
      igbvf_close(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 7: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_set_multi(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_set_multi(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_set_multi(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 8: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_netpoll(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_netpoll(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_netpoll(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 9: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_set_features(igbvf_netdev_ops_group1, ldvarg3);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_set_features(igbvf_netdev_ops_group1, ldvarg3);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_set_features(igbvf_netdev_ops_group1, ldvarg3);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 10: ;
    if (ldv_state_variable_7 == 3) {
      igbvf_change_mtu(igbvf_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_change_mtu(igbvf_netdev_ops_group1, ldvarg2);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 11: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_set_mac(igbvf_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_set_mac(igbvf_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_set_mac(igbvf_netdev_ops_group1, ldvarg1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 12: ;
    if (ldv_state_variable_7 == 1) {
      igbvf_tx_timeout(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      igbvf_tx_timeout(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      igbvf_tx_timeout(igbvf_netdev_ops_group1);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_52125;
    case 13: ;
    if (ldv_state_variable_7 == 1) {
      ldv_retval_0 = ldv_ndo_init_7();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_7 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52125;
    case 14: ;
    if (ldv_state_variable_7 == 2) {
      ldv_ndo_uninit_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52125;
    default:
    ldv_stop();
    }
    ldv_52125: ;
  } else {
  }
  goto ldv_52121;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      e1000_init_function_pointers_vf(ldvarg11);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_52143;
    default:
    ldv_stop();
    }
    ldv_52143: ;
  } else {
  }
  goto ldv_52121;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_52121;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      e1000_init_function_pointers_vf(ldvarg12);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_52148;
    default:
    ldv_stop();
    }
    ldv_52148: ;
  } else {
  }
  goto ldv_52121;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_52121;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    choose_timer_4();
  } else {
  }
  goto ldv_52121;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      igbvf_exit_module();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_52155;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = igbvf_init_module();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_initialize_pci_driver_5();
        ldv_state_variable_9 = 1;
        ldv_state_variable_10 = 1;
        ldv_initialize_ethtool_ops_10();
        ldv_state_variable_6 = 1;
        ldv_initialize_pci_error_handlers_6();
        ldv_state_variable_8 = 1;
      } else {
      }
    } else {
    }
    goto ldv_52155;
    default:
    ldv_stop();
    }
    ldv_52155: ;
  } else {
  }
  goto ldv_52121;
  case 9: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_52121;
  case 10: ;
  if (ldv_state_variable_5 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_5 = igbvf_probe(igbvf_driver_group0, (struct pci_device_id const *)ldvarg27);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_52161;
    case 1: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_4 = igbvf_suspend(igbvf_driver_group0, ldvarg26);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_52161;
    case 2: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_3 = igbvf_resume(igbvf_driver_group0);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_5 = 2;
      } else {
      }
    } else {
    }
    goto ldv_52161;
    case 3: ;
    if (ldv_state_variable_5 == 3) {
      igbvf_shutdown(igbvf_driver_group0);
      ldv_state_variable_5 = 4;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      igbvf_shutdown(igbvf_driver_group0);
      ldv_state_variable_5 = 4;
    } else {
    }
    goto ldv_52161;
    case 4: ;
    if (ldv_state_variable_5 == 4) {
      igbvf_remove(igbvf_driver_group0);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      igbvf_remove(igbvf_driver_group0);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      igbvf_remove(igbvf_driver_group0);
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_52161;
    default:
    ldv_stop();
    }
    ldv_52161: ;
  } else {
  }
  goto ldv_52121;
  default:
  ldv_stop();
  }
  ldv_52121: ;
  goto ldv_52168;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_consume_skb_36(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_37(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_38(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_39(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_42(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_44(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
int ldv_mod_timer_45(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_46(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_3(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_3((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_47(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_3(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_3((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_48(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_3(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_3((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_49(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_3((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_mod_timer_50(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_51(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_52(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_53(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_4(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_register_netdev_54(struct net_device *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_7 = 1;
  ldv_net_device_ops_7();
  return (ldv_func_res);
}
}
void ldv_free_netdev_55(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
int ldv_del_timer_sync_56(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_4(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_57(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
void ldv_free_netdev_58(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_7 = 0;
  return;
}
}
__inline static void ldv_error(void);
Element set_impl[15] ;
int last_index = 0;
__inline static void ldv_set_init(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_init(Set set )
{
  {
  set = set_impl;
  last_index = 0;
  return;
}
}
__inline static void ldv_set_add(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_add(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return;
    } else {
    }
    i = i + 1;
  }
  if (last_index < 15) {
    set_impl[last_index] = e;
    last_index = last_index + 1;
  } else {
  }
  return;
}
}
__inline static void ldv_set_remove(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_remove(Set set , Element e )
{
  int i ;
  int deleted_index ;
  {
  deleted_index = -1;
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      deleted_index = i;
      break;
    } else {
    }
    i = i + 1;
  }
  if (deleted_index != -1) {
    i = deleted_index + 1;
    while (1) {
      if (i < last_index) {
      } else {
        break;
      }
      set_impl[i - 1] = set_impl[i];
      i = i + 1;
    }
    last_index = last_index - 1;
  } else {
  }
  return;
}
}
__inline static int ldv_set_contains(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_contains(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return (1);
    } else {
    }
    i = i + 1;
  }
  return (0);
}
}
__inline static int ldv_set_is_empty(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_is_empty(Set set )
{
  {
  return (last_index == 0);
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
  bool tmp___7 ;
  int tmp___8 ;
  {
  if (! ptr) {
    tmp___8 = 1;
  } else {
    tmp___7 = ldv_is_err((unsigned long )ptr);
    if (tmp___7) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  }
  return (tmp___8);
}
}
Set LDV_SKBS ;
struct sk_buff___0 *ldv_skb_alloc(void)
{
  void *skb ;
  void *tmp___7 ;
  {
  tmp___7 = ldv_zalloc(sizeof(struct sk_buff___0 ));
  skb = (struct sk_buff___0 *)tmp___7;
  if (! skb) {
    return ((void *)0);
  } else {
    ldv_set_add(LDV_SKBS, skb);
    return (skb);
  }
}
}
void ldv_initialize(void)
{
  {
  ldv_set_init(LDV_SKBS);
  return;
}
}
void ldv_skb_free(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return;
}
}
int ldv_skb_free_int(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return (0);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void) ;
struct sk_buff___0 *ldv_dev_alloc_skb(void)
{
  void *skb ;
  int tmp___7 ;
  {
  tmp___7 = (int )ldv_netdev_alloc_skb();
  skb = tmp___7;
  return (skb);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void)
{
  struct sk_buff___0 *tmp___7 ;
  {
  tmp___7 = ldv_skb_alloc();
  return (tmp___7);
}
}
int ldv_skb_current(struct sk_buff___0 *skb )
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_contains(LDV_SKBS, skb);
  if (tmp___7) {
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_check_final_state(void)
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_is_empty(LDV_SKBS);
  if (tmp___7) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
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
void __udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 csum_ipv6_magic(const struct in6_addr *arg0, const struct in6_addr *arg1, __u32 arg2, unsigned short arg3, __wsum arg4) {
  return __VERIFIER_nondet_ushort();
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
void disable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_page(struct page *arg0, const char *arg1) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
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
int __VERIFIER_nondet_int(void);
int ldv_probe_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_6() {
  return __VERIFIER_nondet_int();
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
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
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device_mem(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
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
void put_page(struct page *arg0) {
  return;
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
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
void vfree(const void *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(arg0);
}
void *vzalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}