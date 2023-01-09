extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "linux-stable-8817633-1-144_2a-drivers--staging--media--easycap--easycap.ko-entry_point_ldv-val-v0.8.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
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
typedef u64 dma_addr_t;
typedef __u16 __le16;
typedef __u32 __le32;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   kernel_ulong_t driver_info ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_10 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_11 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_12 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_9 {
   struct __anonstruct_futex_10 futex ;
   struct __anonstruct_nanosleep_11 nanosleep ;
   struct __anonstruct_poll_12 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_9 __annonCompField4 ;
};
struct page;
struct task_struct;
struct exec_domain;
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
struct __anonstruct____missing_field_name_14 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_15 {
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
union __anonunion____missing_field_name_13 {
   struct __anonstruct____missing_field_name_14 __annonCompField5 ;
   struct __anonstruct____missing_field_name_15 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_13 __annonCompField7 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_17 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_17 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct arch_spinlock;
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
union __anonunion____missing_field_name_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_20 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct jump_label_key;
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
   struct __anonstruct____missing_field_name_25 __annonCompField12 ;
   struct __anonstruct____missing_field_name_26 __annonCompField13 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField15 ;
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
   unsigned long trap_no ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_94 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_94 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_96 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_95 {
   s64 lock ;
   struct __anonstruct____missing_field_name_96 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_95 arch_rwlock_t;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_98 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_97 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_98 __annonCompField19 ;
};
struct spinlock {
   union __anonunion____missing_field_name_97 __annonCompField20 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_99 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_99 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
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
};
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
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
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_nodemask_t_101 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_101 nodemask_t;
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
struct __anonstruct_mm_context_t_102 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_102 mm_context_t;
struct vm_area_struct;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
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
struct proc_dir_entry;
struct irqaction;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct kref {
   atomic_t refcount ;
};
struct jump_label_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct jump_label_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   void *dev_id ;
   void *percpu_dev_id ;
   struct irqaction *next ;
   int irq ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
   unsigned long thread_mask ;
   char const *name ;
   struct proc_dir_entry *dir ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
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
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
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
   char *(*devnode)(struct device * , umode_t * ) ;
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
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
struct block_device;
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
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_130 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
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
   union __anonunion_d_u_130 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
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
   uid_t uid ;
   gid_t gid ;
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
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
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
   struct rcu_head rcu ;
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
struct user_namespace;
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
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
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
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
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
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
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
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
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
struct address_space;
struct writeback_control;
enum migrate_mode;
enum migrate_mode;
union __anonunion_arg_133 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_132 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_133 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_132 read_descriptor_t;
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
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
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
union __anonunion____missing_field_name_134 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_135 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_136 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_134 __annonCompField31 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_135 __annonCompField32 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_136 __annonCompField33 ;
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
   uid_t uid ;
   uid_t euid ;
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
union __anonunion_f_u_137 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_137 f_u ;
   struct path f_path ;
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
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
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
struct __anonstruct_afs_139 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_138 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_139 afs ;
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
   union __anonunion_fl_u_138 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
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
   struct mutex s_lock ;
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
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
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
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
union __anonunion____missing_field_name_141 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_145 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_144 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_145 __annonCompField35 ;
};
struct __anonstruct____missing_field_name_143 {
   union __anonunion____missing_field_name_144 __annonCompField36 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_142 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_143 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_140 {
   union __anonunion____missing_field_name_141 __annonCompField34 ;
   union __anonunion____missing_field_name_142 __annonCompField38 ;
};
struct __anonstruct____missing_field_name_147 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_146 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
};
union __anonunion____missing_field_name_148 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_140 __annonCompField39 ;
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   union __anonunion____missing_field_name_148 __annonCompField42 ;
   unsigned long debug_flags ;
};
struct __anonstruct_vm_set_150 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_149 {
   struct __anonstruct_vm_set_150 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_149 shared ;
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
   unsigned long reserved_vm ;
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
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_151 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_151 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_154 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_155 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_156 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_157 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_158 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_152 {
   int _pad[28U] ;
   struct __anonstruct__kill_153 _kill ;
   struct __anonstruct__timer_154 _timer ;
   struct __anonstruct__rt_155 _rt ;
   struct __anonstruct__sigchld_156 _sigchld ;
   struct __anonstruct__sigfault_157 _sigfault ;
   struct __anonstruct__sigpoll_158 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_152 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct __anonstruct_seccomp_t_161 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_161 seccomp_t;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_164 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_165 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_166 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_164 __annonCompField45 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_165 type_data ;
   union __anonunion_payload_166 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
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
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_167 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_167 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
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
   uid_t uid ;
   struct user_namespace *user_ns ;
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
struct io_context;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
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
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
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
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
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
   cputime_t prev_utime ;
   cputime_t prev_stime ;
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
   struct cred *replacement_session_keyring ;
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
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   struct irqaction *irqaction ;
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
   int mems_allowed_change_disable ;
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
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
   unsigned char *extra ;
   int extralen ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct dentry *usbfs_dentry ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   struct device *usb_classdev ;
   struct dentry *usbfs_dentry ;
   int maxchild ;
   struct usb_device *children[31U] ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned char poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev cdev ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   int minor_num ;
   int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   int flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct pps_event_time {
   struct timespec ts_real ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int , struct pps_event_time * ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   atomic_t users ;
};
struct tty_buffer {
   struct tty_buffer *next ;
   char *char_buf_ptr ;
   unsigned char *flag_buf_ptr ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct work_struct work ;
   spinlock_t lock ;
   struct tty_buffer *head ;
   struct tty_buffer *tail ;
   struct tty_buffer *free ;
   int memory_used ;
};
struct tty_port;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   void (*drop)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_struct *tty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct mutex ldisc_mutex ;
   struct tty_ldisc *ldisc ;
   struct mutex termios_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios *termios ;
   struct ktermios *termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char low_latency : 1 ;
   unsigned char warned : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   struct tty_bufhead buf ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned int column ;
   unsigned char lnext : 1 ;
   unsigned char erasing : 1 ;
   unsigned char raw : 1 ;
   unsigned char real_raw : 1 ;
   unsigned char icanon : 1 ;
   unsigned char closing : 1 ;
   unsigned char echo_overrun : 1 ;
   unsigned short minimum_to_wake ;
   unsigned long overrun_time ;
   int num_overrun ;
   unsigned long process_char_map[4U] ;
   char *read_buf ;
   int read_head ;
   int read_tail ;
   int read_cnt ;
   unsigned long read_flags[64U] ;
   unsigned char *echo_buf ;
   unsigned int echo_pos ;
   unsigned int echo_cnt ;
   int canon_data ;
   unsigned long canon_head ;
   unsigned int canon_column ;
   struct mutex atomic_read_lock ;
   struct mutex atomic_write_lock ;
   struct mutex output_lock ;
   struct mutex echo_lock ;
   unsigned char *write_buf ;
   int write_cnt ;
   spinlock_t read_lock ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[24U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct snd_pcm_substream;
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
union __anonunion____missing_field_name_173 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion____missing_field_name_173 __annonCompField47 ;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
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
    MODULE_STATE_GOING = 2
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long key ;
};
typedef struct poll_table_struct poll_table;
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
   unsigned int last_numid ;
   struct rw_semaphore controls_rwsem ;
   rwlock_t ctl_files_rwlock ;
   int controls_count ;
   int user_ctl_count ;
   struct list_head controls ;
   struct list_head ctl_files ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_id ;
   struct proc_dir_entry *proc_root_link ;
   struct list_head files_list ;
   struct snd_shutdown_f_ops *s_f_ops ;
   spinlock_t files_lock ;
   int shutdown ;
   int free_on_last_close ;
   wait_queue_head_t shutdown_sleep ;
   struct device *dev ;
   struct device *card_dev ;
   unsigned int power_state ;
   struct mutex power_lock ;
   wait_queue_head_t power_sleep ;
   struct snd_mixer_oss *mixer_oss ;
   int mixer_oss_change_count ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned char openmin : 1 ;
   unsigned char openmax : 1 ;
   unsigned char integer : 1 ;
   unsigned char empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
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
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned char disable : 1 ;
   unsigned char direct : 1 ;
   unsigned char block : 1 ;
   unsigned char nonblock : 1 ;
   unsigned char partialfrag : 1 ;
   unsigned char nosilence : 1 ;
   unsigned char buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned char params : 1 ;
   unsigned char prepare : 1 ;
   unsigned char trigger : 1 ;
   unsigned char sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_oss_substream {
   unsigned char oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned char no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm;
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   unsigned int dma_buf_id ;
   size_t dma_max ;
   struct snd_pcm_ops *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned char timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   unsigned char hw_opened : 1 ;
};
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
};
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   struct device *dev ;
   struct snd_pcm_oss oss ;
};
struct snd_info_buffer {
   char *buffer ;
   unsigned int curr ;
   unsigned int size ;
   unsigned int len ;
   int stop ;
   int error ;
};
struct snd_info_entry_text {
   void (*read)(struct snd_info_entry * , struct snd_info_buffer * ) ;
   void (*write)(struct snd_info_entry * , struct snd_info_buffer * ) ;
};
struct snd_info_entry_ops {
   int (*open)(struct snd_info_entry * , unsigned short , void ** ) ;
   int (*release)(struct snd_info_entry * , unsigned short , void * ) ;
   ssize_t (*read)(struct snd_info_entry * , void * , struct file * , char * , size_t ,
                   loff_t ) ;
   ssize_t (*write)(struct snd_info_entry * , void * , struct file * , char const * ,
                    size_t , loff_t ) ;
   loff_t (*llseek)(struct snd_info_entry * , void * , struct file * , loff_t , int ) ;
   unsigned int (*poll)(struct snd_info_entry * , void * , struct file * , poll_table * ) ;
   int (*ioctl)(struct snd_info_entry * , void * , struct file * , unsigned int ,
                unsigned long ) ;
   int (*mmap)(struct snd_info_entry * , void * , struct inode * , struct file * ,
               struct vm_area_struct * ) ;
};
union __anonunion_c_189 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_189 c ;
   struct snd_info_entry *parent ;
   struct snd_card *card ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_info_entry * ) ;
   struct proc_dir_entry *p ;
   struct mutex access ;
   struct list_head children ;
   struct list_head list ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_tuner_type {
    V4L2_TUNER_RADIO = 1,
    V4L2_TUNER_ANALOG_TV = 2,
    V4L2_TUNER_DIGITAL_TV = 3
} ;
enum v4l2_colorspace {
    V4L2_COLORSPACE_SMPTE170M = 1,
    V4L2_COLORSPACE_SMPTE240M = 2,
    V4L2_COLORSPACE_REC709 = 3,
    V4L2_COLORSPACE_BT878 = 4,
    V4L2_COLORSPACE_470_SYSTEM_M = 5,
    V4L2_COLORSPACE_470_SYSTEM_BG = 6,
    V4L2_COLORSPACE_JPEG = 7,
    V4L2_COLORSPACE_SRGB = 8
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __s32 width ;
   __s32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   enum v4l2_field field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   enum v4l2_colorspace colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_192 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_192 __annonCompField48 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_193 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_193 __annonCompField49 ;
   __u32 reserved[2U] ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   enum v4l2_field field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   enum v4l2_buf_type type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   enum v4l2_buf_type type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_standard {
   __u32 index ;
   v4l2_std_id id ;
   __u8 name[24U] ;
   struct v4l2_fract frameperiod ;
   __u32 framelines ;
   __u32 reserved[4U] ;
};
struct v4l2_dv_preset {
   __u32 preset ;
   __u32 reserved[4U] ;
};
struct v4l2_dv_enum_preset {
   __u32 index ;
   __u32 preset ;
   __u8 name[32U] ;
   __u32 width ;
   __u32 height ;
   __u32 reserved[4U] ;
};
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_196 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_197 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8
} ;
struct v4l2_queryctrl {
   __u32 id ;
   enum v4l2_ctrl_type type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   __u8 name[32U] ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   enum v4l2_tuner_type type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   enum v4l2_tuner_type type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   enum v4l2_buf_type type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   enum v4l2_field field ;
   enum v4l2_colorspace colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_201 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   enum v4l2_buf_type type ;
   union __anonunion_fmt_201 fmt ;
};
union __anonunion_parm_202 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   enum v4l2_buf_type type ;
   union __anonunion_parm_202 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_205 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_205 __annonCompField55 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_ident {
   struct v4l2_dbg_match match ;
   __u32 ident ;
   __u32 revision ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
};
struct media_device;
struct __anonstruct_v4l_211 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_212 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_213 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_210 {
   struct __anonstruct_v4l_211 v4l ;
   struct __anonstruct_fb_212 fb ;
   struct __anonstruct_alsa_213 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_210 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct device *parent ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   v4l2_std_id current_norm ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   struct mutex *lock ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_pad * , struct media_pad * , u32 ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*g_chip_ident)(struct v4l2_subdev * , struct v4l2_dbg_chip_ident * ) ;
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*enum_dv_presets)(struct v4l2_subdev * , struct v4l2_dv_enum_preset * ) ;
   int (*s_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*g_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*query_dv_preset)(struct v4l2_subdev * , struct v4l2_dv_preset * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct v4l2_mbus_framefmt *try_fmt ;
   struct v4l2_rect *try_crop ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct easycap;
struct easycap_dongle {
   struct easycap *peasycap ;
   struct mutex mutex_video ;
   struct mutex mutex_audio ;
};
struct data_buffer {
   struct list_head list_head ;
   void *pgo ;
   void *pto ;
   u16 kount ;
   u16 input ;
};
struct data_urb {
   struct list_head list_head ;
   struct urb *purb ;
   int isbuf ;
   int length ;
};
struct easycap_standard {
   u16 mask ;
   struct v4l2_standard v4l2_standard ;
};
struct easycap_format {
   u16 mask ;
   char name[128U] ;
   struct v4l2_format v4l2_format ;
};
struct inputset {
   int input ;
   int input_ok ;
   int standard_offset ;
   int standard_offset_ok ;
   int format_offset ;
   int format_offset_ok ;
   int brightness ;
   int brightness_ok ;
   int contrast ;
   int contrast_ok ;
   int saturation ;
   int saturation_ok ;
   int hue ;
   int hue_ok ;
};
struct easycap {
   int isdongle ;
   int minor ;
   struct video_device video_device ;
   struct v4l2_device v4l2_device ;
   int status ;
   unsigned int audio_pages_per_fragment ;
   unsigned int audio_bytes_per_fragment ;
   unsigned int audio_buffer_page_many ;
   s16 oldaudio ;
   int ilk ;
   bool microphone ;
   struct usb_device *pusb_device ;
   struct usb_interface *pusb_interface ;
   struct kref kref ;
   int queued[6U] ;
   int done[6U] ;
   wait_queue_head_t wq_video ;
   wait_queue_head_t wq_audio ;
   wait_queue_head_t wq_trigger ;
   int input ;
   int polled ;
   int standard_offset ;
   int format_offset ;
   struct inputset inputset[6U] ;
   bool ntsc ;
   int fps ;
   int usec ;
   int tolerate ;
   int skip ;
   int skipped ;
   int lost[6U] ;
   int merit[180U] ;
   int video_interface ;
   int video_altsetting_on ;
   int video_altsetting_off ;
   int video_endpointnumber ;
   int video_isoc_maxframesize ;
   int video_isoc_buffer_size ;
   int video_isoc_framesperdesc ;
   int video_isoc_streaming ;
   int video_isoc_sequence ;
   int video_idle ;
   int video_eof ;
   int video_junk ;
   struct data_buffer video_isoc_buffer[16U] ;
   struct data_buffer field_buffer[4U][203U] ;
   struct data_buffer frame_buffer[6U][405U] ;
   struct list_head urb_video_head ;
   struct list_head *purb_video_head ;
   u8 cache[8U] ;
   u8 *pcache ;
   int video_mt ;
   int audio_mt ;
   u32 isequence ;
   int vma_many ;
   int field_fill ;
   int field_page ;
   int field_read ;
   int frame_fill ;
   int frame_read ;
   int frame_lock ;
   u32 pixelformat ;
   int width ;
   int height ;
   int bytesperpixel ;
   bool byteswaporder ;
   bool decimatepixel ;
   bool offerfields ;
   int frame_buffer_used ;
   int frame_buffer_many ;
   int videofieldamount ;
   int brightness ;
   int contrast ;
   int saturation ;
   int hue ;
   int allocation_video_urb ;
   int allocation_video_page ;
   int allocation_video_struct ;
   int registered_video ;
   struct snd_pcm_hardware alsa_hardware ;
   struct snd_card *psnd_card ;
   struct snd_pcm *psnd_pcm ;
   struct snd_pcm_substream *psubstream ;
   int dma_fill ;
   int dma_next ;
   int dma_read ;
   int audio_interface ;
   int audio_altsetting_on ;
   int audio_altsetting_off ;
   int audio_endpointnumber ;
   int audio_isoc_maxframesize ;
   int audio_isoc_buffer_size ;
   int audio_isoc_framesperdesc ;
   int audio_isoc_streaming ;
   int audio_idle ;
   int audio_eof ;
   int volume ;
   int mute ;
   s8 gain ;
   struct data_buffer audio_isoc_buffer[16U] ;
   struct list_head urb_audio_head ;
   struct list_head *purb_audio_head ;
   int audio_fill ;
   int audio_read ;
   int allocation_audio_urb ;
   int allocation_audio_page ;
   int allocation_audio_struct ;
   int registered_audio ;
   long long audio_sample ;
   long long audio_niveau ;
   long long audio_square ;
   struct data_buffer audio_buffer[] ;
};
typedef int ldv_func_ret_type;
enum hrtimer_restart;
enum migrate_mode;
enum migrate_mode;
struct stk1160config {
   u16 reg ;
   u16 set ;
};
struct saa7113config {
   u8 reg ;
   u8 set ;
};
typedef long __kernel_suseconds_t;
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
enum hrtimer_restart;
enum migrate_mode;
enum migrate_mode;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3
} ;
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 reserved[4U] ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   enum v4l2_buf_type type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   enum v4l2_buf_type type ;
   enum v4l2_memory memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_194 {
   __u32 mem_offset ;
   unsigned long userptr ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_194 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_195 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
};
struct v4l2_buffer {
   __u32 index ;
   enum v4l2_buf_type type ;
   __u32 bytesused ;
   __u32 flags ;
   enum v4l2_field field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   enum v4l2_memory memory ;
   union __anonunion_m_195 m ;
   __u32 length ;
   __u32 input ;
   __u32 reserved ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
enum hrtimer_restart;
enum migrate_mode;
enum migrate_mode;
enum hrtimer_restart;
enum migrate_mode;
enum migrate_mode;
typedef int snd_pcm_hw_param_t;
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static int usb_endpoint_is_isoc_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_isoc(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
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
extern int printk(char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3237;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3237;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3237;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3237;
  default:
  __bad_percpu_size();
  }
  ldv_3237: ;
  return (pfo_ret__);
}
}
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
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
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
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
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void __list_add(struct list_head *new , struct list_head *prev , struct list_head *next )
{
  {
  next->prev = new;
  new->next = next;
  new->prev = prev;
  prev->next = new;
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
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
__inline static int mutex_is_locked(struct mutex *lock )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lock->count));
  return (tmp != 1);
}
}
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& kref->refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/linux/kref.h", 41);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  atomic_inc(& kref->refcount);
  return;
}
}
__inline static int ldv_kref_put_13(struct kref *kref , void (*release)(struct kref * ) ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern void schedule(void) ;
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
__inline static void *ldv_usb_get_intfdata_12(struct usb_interface *intf ) ;
__inline static void ldv_usb_set_intfdata_8(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_8(struct usb_interface *intf , void *data ) ;
__inline static void ldv_usb_set_intfdata_8(struct usb_interface *intf , void *data ) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf ) ;
extern struct usb_host_interface *usb_altnum_to_altsetting(struct usb_interface const * ,
                                                           unsigned int ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_14(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_15(struct usb_driver *arg ) ;
struct urb *ldv_usb_alloc_urb_7(int iso_packets , gfp_t mem_flags ) ;
struct urb *ldv_usb_alloc_urb_10(int iso_packets , gfp_t mem_flags ) ;
void ldv_usb_free_urb_3(struct urb *urb ) ;
void ldv_usb_free_urb_4(struct urb *urb ) ;
int ldv_usb_submit_urb_2(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_5(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_6(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
struct urb *ldv_alloc_urb(void) ;
void ldv_free_urb(struct urb *urb ) ;
int ldv_submit_urb(struct urb *urb ) ;
struct usb_device *ldv_interface_to_usbdev(void) ;
void *ldv_usb_get_intfdata(void) ;
void ldv_usb_set_intfdata(void *data ) ;
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
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
__inline static long IS_ERR(void const *ptr ) ;

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
int LDV_IN_INTERRUPT = 1;
struct usb_interface *easycap_usb_driver_group1 ;
struct file *v4l2_fops_group0 ;
struct snd_pcm_substream *easycap_alsa_pcm_ops_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_3 ;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int usb_counter ;
int ldv_state_variable_4 ;
struct vm_area_struct *easycap_vm_ops_group0 ;
void ldv_usb_driver_2(void) ;
void ldv_initialize_v4l2_file_operations_3(void) ;
void ldv_initialize_vm_operations_struct_4(void) ;
void ldv_initialize_snd_pcm_ops_1(void) ;
extern struct module __this_module ;
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
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField39.__annonCompField38.__annonCompField37._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (402), "i" (12UL));
    ldv_26978: ;
    goto ldv_26978;
  } else {
  }
  atomic_inc(& page->__annonCompField39.__annonCompField38.__annonCompField37._count);
  return;
}
}
extern int snd_card_free(struct snd_card * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
int easycap_newinput(struct easycap *peasycap , int input ) ;
void easycap_testcard(struct easycap *peasycap , int field ) ;
int easycap_isdongle(struct easycap *peasycap ) ;
long easycap_unlocked_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
int easycap_video_dqbuf(struct easycap *peasycap , int mode ) ;
int easycap_video_submit_urbs(struct easycap *peasycap ) ;
int easycap_video_kill_urbs(struct easycap *peasycap ) ;
int easycap_video_fillin_formats(void) ;
int adjust_standard(struct easycap *peasycap , v4l2_std_id std_id ) ;
int adjust_format(struct easycap *peasycap , u32 width , u32 height , u32 pixelformat ,
                  int field , bool try ) ;
int adjust_brightness(struct easycap *peasycap , int value ) ;
int adjust_contrast(struct easycap *peasycap , int value ) ;
int adjust_saturation(struct easycap *peasycap , int value ) ;
int adjust_hue(struct easycap *peasycap , int value ) ;
int easycap_alsa_probe(struct easycap *peasycap ) ;
int easycap_audio_kill_urbs(struct easycap *peasycap ) ;
void easycap_alsa_complete(struct urb *purb ) ;
int easycap_wakeup_device(struct usb_device *pusb_device ) ;
int setup_stk(struct usb_device *p , bool ntsc ) ;
int setup_saa(struct usb_device *p , bool ntsc ) ;
int ready_saa(struct usb_device *p ) ;
int select_input(struct usb_device *p , int input , int mode ) ;
int read_saa(struct usb_device *p , u16 reg0 ) ;
int start_100(struct usb_device *p ) ;
int stop_100(struct usb_device *p ) ;
char const *ldv_strerror(int err ) ;
int easycap_debug ;
bool easycap_readback ;
struct easycap_standard const easycap_standard[21U] ;
struct easycap_format easycap_format[3361U] ;
struct v4l2_queryctrl easycap_control[7U] ;
struct easycap_dongle easycapdc60_dongle[8U] ;
static int easycap_bars = 1;
static int easycap_gain = 16;
static bool easycap_ntsc ;
static struct mutex mutex_dongle ;
static void easycap_complete(struct urb *purb ) ;
static int reset(struct easycap *peasycap ) ;
static int field2frame(struct easycap *peasycap ) ;
static int redaub(struct easycap *peasycap , void *pad , void *pex , int much , int more ,
                  u8 mask , u8 margin , bool isuy ) ;
char const *ldv_strerror(int err )
{
  {
  switch (err) {
  case 0: ;
  return ("OK");
  case 12: ;
  return ("ENOMEM");
  case 19: ;
  return ("ENODEV");
  case 6: ;
  return ("ENXIO");
  case 22: ;
  return ("EINVAL");
  case 11: ;
  return ("EAGAIN");
  case 27: ;
  return ("EFBIG");
  case 32: ;
  return ("EPIPE");
  case 90: ;
  return ("EMSGSIZE");
  case 28: ;
  return ("ENOSPC");
  case 115: ;
  return ("EINPROGRESS");
  case 63: ;
  return ("ENOSR");
  case 75: ;
  return ("EOVERFLOW");
  case 71: ;
  return ("EPROTO");
  case 84: ;
  return ("EILSEQ");
  case 110: ;
  return ("ETIMEDOUT");
  case 95: ;
  return ("EOPNOTSUPP");
  case 96: ;
  return ("EPFNOSUPPORT");
  case 97: ;
  return ("EAFNOSUPPORT");
  case 98: ;
  return ("EADDRINUSE");
  case 99: ;
  return ("EADDRNOTAVAIL");
  case 105: ;
  return ("ENOBUFS");
  case 106: ;
  return ("EISCONN");
  case 107: ;
  return ("ENOTCONN");
  case 108: ;
  return ("ESHUTDOWN");
  case 2: ;
  return ("ENOENT");
  case 104: ;
  return ("ECONNRESET");
  case 62: ;
  return ("ETIME");
  case 70: ;
  return ("ECOMM");
  case 121: ;
  return ("EREMOTEIO");
  case 18: ;
  return ("EXDEV");
  case 1: ;
  return ("EPERM");
  default: ;
  return ("unknown");
  }
}
}
int easycap_isdongle(struct easycap *peasycap )
{
  int k ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    return (-2);
  } else {
  }
  k = 0;
  goto ldv_32929;
  ldv_32928: ;
  if ((unsigned long )easycapdc60_dongle[k].peasycap == (unsigned long )peasycap) {
    peasycap->isdongle = k;
    return (k);
  } else {
  }
  k = k + 1;
  ldv_32929: ;
  if (k <= 7) {
    goto ldv_32928;
  } else {
  }
  return (-1);
}
}
static int easycap_open(struct inode *inode , struct file *file )
{
  struct video_device *pvideo_device ;
  struct easycap *peasycap ;
  int rc ;
  void *tmp ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_open");
  } else {
  }
  printk("<7>easycap:: %s: ==========OPEN=========\n", "easycap_open");
  pvideo_device = video_devdata(file);
  if ((unsigned long )pvideo_device == (unsigned long )((struct video_device *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: pvideo_device is NULL.\n", "easycap_open");
    return (-14);
  } else {
  }
  tmp = video_get_drvdata(pvideo_device);
  peasycap = (struct easycap *)tmp;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_open");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_open");
    return (-14);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: peasycap->pusb_device=%p\n", peasycap->isdongle, "easycap_open",
           peasycap->pusb_device);
  } else {
  }
  file->private_data = (void *)peasycap;
  rc = easycap_wakeup_device(peasycap->pusb_device);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: wakeup_device() rc = %i\n", peasycap->isdongle,
           "easycap_open", rc);
    if (rc == -19) {
      printk("<7>easycap::%i%s: OLD_ERROR: wakeup_device() returned -ENODEV\n", peasycap->isdongle,
             "easycap_open");
    } else {
      printk("<7>easycap::%i%s: OLD_ERROR: wakeup_device() rc = %i\n", peasycap->isdongle,
             "easycap_open", rc);
    }
    return (rc);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: wakeup_device() OK\n", peasycap->isdongle, "easycap_open");
  } else {
  }
  peasycap->input = 0;
  rc = reset(peasycap);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: reset() rc = %i\n", peasycap->isdongle, "easycap_open",
           rc);
    return (-14);
  } else {
  }
  return (0);
}
}
static int reset(struct easycap *peasycap )
{
  struct easycap_standard const *peasycap_standard ;
  int fmtidx ;
  int input ;
  int rate ;
  bool ntsc ;
  bool other ;
  int rc ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "reset");
    return (-14);
  } else {
  }
  input = peasycap->input;
  other = 0;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: peasycap->ntsc=%d\n", peasycap->isdongle, "reset", (int )peasycap->ntsc);
  } else {
  }
  rate = ready_saa(peasycap->pusb_device);
  if (rate < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: not ready to capture after %i ms ...\n", peasycap->isdongle,
             "reset", 500);
    } else {
    }
    ntsc = (bool )(! ((int )peasycap->ntsc != 0));
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: ... trying  %s ..\n", peasycap->isdongle, "reset",
             (int )ntsc ? (char *)"NTSC" : (char *)"PAL");
    } else {
    }
    rc = setup_stk(peasycap->pusb_device, (int )ntsc);
    if (rc != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: setup_stk() rc = %i\n", peasycap->isdongle,
             "reset", rc);
      return (-14);
    } else {
    }
    rc = setup_saa(peasycap->pusb_device, (int )ntsc);
    if (rc != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: setup_saa() rc = %i\n", peasycap->isdongle,
             "reset", rc);
      return (-14);
    } else {
    }
    rate = ready_saa(peasycap->pusb_device);
    if (rate < 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: not ready to capture after %i ms\n", peasycap->isdongle,
               "reset", 500);
      } else {
      }
      if (easycap_debug > 7) {
        tmp = read_saa(peasycap->pusb_device, 31);
        printk("<7>easycap::%i%s: ... saa register 0x1F has 0x%02X\n", peasycap->isdongle,
               "reset", tmp);
      } else {
      }
      ntsc = peasycap->ntsc;
    } else {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: ... success at second try:  %i=rate\n", peasycap->isdongle,
               "reset", rate);
      } else {
      }
      ntsc = rate > 1;
      other = 1;
    }
  } else {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: ... success at first try:  %i=rate\n", peasycap->isdongle,
             "reset", rate);
    } else {
    }
    ntsc = rate > 1;
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: ntsc=%d\n", peasycap->isdongle, "reset", (int )ntsc);
  } else {
  }
  rc = setup_stk(peasycap->pusb_device, (int )ntsc);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: setup_stk() rc = %i\n", peasycap->isdongle, "reset",
           rc);
    return (-14);
  } else {
  }
  rc = setup_saa(peasycap->pusb_device, (int )ntsc);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: setup_saa() rc = %i\n", peasycap->isdongle, "reset",
           rc);
    return (-14);
  } else {
  }
  memset((void *)(& peasycap->merit), 0, 720UL);
  peasycap->video_eof = 0;
  peasycap->audio_eof = 0;
  peasycap->input = -8192;
  peasycap->standard_offset = -8192;
  fmtidx = (int )ntsc;
  if ((int )other) {
    peasycap_standard = (struct easycap_standard const *)(& easycap_standard);
    goto ldv_32952;
    ldv_32951: ;
    if ((unsigned int )fmtidx == (unsigned int )peasycap_standard->v4l2_standard.index) {
      peasycap->inputset[input].standard_offset = (int )(((long )peasycap_standard - (long )(& easycap_standard)) / 80L);
      goto ldv_32950;
    } else {
    }
    peasycap_standard = peasycap_standard + 1;
    ldv_32952: ;
    if ((unsigned int )((unsigned short )peasycap_standard->mask) != 65535U) {
      goto ldv_32951;
    } else {
    }
    ldv_32950: ;
    if ((unsigned int )((unsigned short )peasycap_standard->mask) == 65535U) {
      printk("<7>easycap::%i%s: OLD_ERROR: standard not found\n", peasycap->isdongle,
             "reset");
      return (-22);
    } else {
    }
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->inputset[%i].standard_offset\n", peasycap->isdongle,
             "reset", peasycap->inputset[input].standard_offset, input);
    } else {
    }
  } else {
  }
  peasycap->format_offset = -8192;
  peasycap->brightness = -8192;
  peasycap->contrast = -8192;
  peasycap->saturation = -8192;
  peasycap->hue = -8192;
  rc = easycap_newinput(peasycap, input);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: newinput(.,%i) rc = %i\n", peasycap->isdongle,
           "reset", rc, input);
    return (-14);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: restored input, standard and format\n", peasycap->isdongle,
           "reset");
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: true=peasycap->ntsc %d\n", peasycap->isdongle, "reset",
           (int )peasycap->ntsc);
  } else {
  }
  if (peasycap->input < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->input\n", peasycap->isdongle,
           "reset", peasycap->input);
    return (-2);
  } else {
  }
  if (peasycap->standard_offset < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->standard_offset\n", peasycap->isdongle,
           "reset", peasycap->standard_offset);
    return (-2);
  } else {
  }
  if (peasycap->format_offset < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->format_offset\n", peasycap->isdongle,
           "reset", peasycap->format_offset);
    return (-2);
  } else {
  }
  if (peasycap->brightness < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->brightness\n", peasycap->isdongle,
           "reset", peasycap->brightness);
    return (-2);
  } else {
  }
  if (peasycap->contrast < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->contrast\n", peasycap->isdongle,
           "reset", peasycap->contrast);
    return (-2);
  } else {
  }
  if (peasycap->saturation < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->saturation\n", peasycap->isdongle,
           "reset", peasycap->saturation);
    return (-2);
  } else {
  }
  if (peasycap->hue < 0) {
    printk("<7>easycap::%i%s: MISTAKE:  %i=peasycap->hue\n", peasycap->isdongle, "reset",
           peasycap->hue);
    return (-2);
  } else {
  }
  return (0);
}
}
int easycap_newinput(struct easycap *peasycap , int input )
{
  int rc ;
  int k ;
  int m ;
  int mood ;
  int off ;
  int inputnow ;
  int video_idlenow ;
  int audio_idlenow ;
  bool resubmit ;
  struct v4l2_pix_format *pix ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_newinput");
    return (-14);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=input sought\n", peasycap->isdongle, "easycap_newinput",
           input);
  } else {
  }
  if (input < 0 && input > 5) {
    return (-2);
  } else {
  }
  inputnow = peasycap->input;
  if (input == inputnow) {
    return (0);
  } else {
  }
  video_idlenow = peasycap->video_idle;
  audio_idlenow = peasycap->audio_idle;
  peasycap->video_idle = 1;
  peasycap->audio_idle = 1;
  if (peasycap->video_isoc_streaming != 0) {
    resubmit = 1;
    easycap_video_kill_urbs(peasycap);
  } else {
    resubmit = 0;
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_newinput");
    return (-19);
  } else {
  }
  rc = usb_set_interface(peasycap->pusb_device, peasycap->video_interface, peasycap->video_altsetting_off);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: usb_set_interface() rc = %i\n", peasycap->isdongle,
           "easycap_newinput", rc);
    return (-14);
  } else {
  }
  rc = stop_100(peasycap->pusb_device);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: stop_100() rc = %i\n", peasycap->isdongle, "easycap_newinput",
           rc);
    return (-14);
  } else {
  }
  k = 0;
  goto ldv_32971;
  ldv_32970:
  m = 0;
  goto ldv_32968;
  ldv_32967:
  memset(peasycap->field_buffer[k][m].pgo, 0, 4096UL);
  m = m + 1;
  ldv_32968: ;
  if ((unsigned int )m <= 202U) {
    goto ldv_32967;
  } else {
  }
  k = k + 1;
  ldv_32971: ;
  if (k <= 3) {
    goto ldv_32970;
  } else {
  }
  k = 0;
  goto ldv_32977;
  ldv_32976:
  m = 0;
  goto ldv_32974;
  ldv_32973:
  memset(peasycap->frame_buffer[k][m].pgo, 0, 4096UL);
  m = m + 1;
  ldv_32974: ;
  if ((unsigned int )m <= 404U) {
    goto ldv_32973;
  } else {
  }
  k = k + 1;
  ldv_32977: ;
  if (k <= 5) {
    goto ldv_32976;
  } else {
  }
  peasycap->field_page = 0;
  peasycap->field_read = 0;
  peasycap->field_fill = 0;
  peasycap->frame_read = 0;
  peasycap->frame_fill = 0;
  k = 0;
  goto ldv_32980;
  ldv_32979:
  peasycap->frame_fill = peasycap->frame_fill + 1;
  if (peasycap->frame_buffer_many <= peasycap->frame_fill) {
    peasycap->frame_fill = 0;
  } else {
  }
  k = k + 1;
  ldv_32980: ;
  if (peasycap->input > k) {
    goto ldv_32979;
  } else {
  }
  peasycap->input = input;
  select_input(peasycap->pusb_device, peasycap->input, 9);
  if (peasycap->inputset[input].input == input) {
    off = peasycap->inputset[input].standard_offset;
    if (peasycap->standard_offset != off) {
      rc = adjust_standard(peasycap, easycap_standard[off].v4l2_standard.id);
      if (rc != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_standard() rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->standard_offset\n", peasycap->isdongle,
               "easycap_newinput", peasycap->standard_offset);
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->standard_offset unchanged\n", peasycap->isdongle,
             "easycap_newinput", peasycap->standard_offset);
    } else {
    }
    off = peasycap->inputset[input].format_offset;
    if (peasycap->format_offset != off) {
      pix = & easycap_format[off].v4l2_format.fmt.pix;
      rc = adjust_format(peasycap, pix->width, pix->height, pix->pixelformat, (int )pix->field,
                         0);
      if (rc < 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_format() rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->format_offset\n", peasycap->isdongle,
               "easycap_newinput", peasycap->format_offset);
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->format_offset unchanged\n", peasycap->isdongle,
             "easycap_newinput", peasycap->format_offset);
    } else {
    }
    mood = peasycap->inputset[input].brightness;
    if (peasycap->brightness != mood) {
      rc = adjust_brightness(peasycap, mood);
      if (rc != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_brightness rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->brightness\n", peasycap->isdongle,
               "easycap_newinput", peasycap->brightness);
      } else {
      }
    } else {
    }
    mood = peasycap->inputset[input].contrast;
    if (peasycap->contrast != mood) {
      rc = adjust_contrast(peasycap, mood);
      if (rc != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_contrast rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->contrast\n", peasycap->isdongle, "easycap_newinput",
               peasycap->contrast);
      } else {
      }
    } else {
    }
    mood = peasycap->inputset[input].saturation;
    if (peasycap->saturation != mood) {
      rc = adjust_saturation(peasycap, mood);
      if (rc != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_saturation rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->saturation\n", peasycap->isdongle,
               "easycap_newinput", peasycap->saturation);
      } else {
      }
    } else {
    }
    mood = peasycap->inputset[input].hue;
    if (peasycap->hue != mood) {
      rc = adjust_hue(peasycap, mood);
      if (rc != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: adjust_hue rc = %i\n", peasycap->isdongle,
               "easycap_newinput", rc);
        return (-14);
      } else {
      }
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: %i=peasycap->hue\n", peasycap->isdongle, "easycap_newinput",
               peasycap->hue);
      } else {
      }
    } else {
    }
  } else {
    printk("<7>easycap::%i%s: MISTAKE: easycap.inputset[%i] unpopulated\n", peasycap->isdongle,
           "easycap_newinput", input);
    return (-2);
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_newinput");
    return (-19);
  } else {
  }
  rc = usb_set_interface(peasycap->pusb_device, peasycap->video_interface, peasycap->video_altsetting_on);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: usb_set_interface() rc = %i\n", peasycap->isdongle,
           "easycap_newinput", rc);
    return (-14);
  } else {
  }
  rc = start_100(peasycap->pusb_device);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: start_100() rc = %i\n", peasycap->isdongle, "easycap_newinput",
           rc);
    return (-14);
  } else {
  }
  if ((int )resubmit) {
    easycap_video_submit_urbs(peasycap);
  } else {
  }
  peasycap->video_isoc_sequence = 15;
  peasycap->video_idle = video_idlenow;
  peasycap->audio_idle = audio_idlenow;
  peasycap->video_junk = 0;
  return (0);
}
}
int easycap_video_submit_urbs(struct easycap *peasycap )
{
  struct data_urb *pdata_urb ;
  struct urb *purb ;
  struct list_head *plist_head ;
  int j ;
  int isbad ;
  int nospc ;
  int m ;
  int rc ;
  int isbuf ;
  struct list_head const *__mptr ;
  unsigned int tmp ;
  char const *tmp___0 ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_video_submit_urbs");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->purb_video_head == (unsigned long )((struct list_head *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap->urb_video_head uninitialized\n", "easycap_video_submit_urbs");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap->pusb_device is NULL\n", "easycap_video_submit_urbs");
    return (-19);
  } else {
  }
  if (peasycap->video_isoc_streaming == 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: submission of all video urbs\n", peasycap->isdongle,
             "easycap_video_submit_urbs");
    } else {
    }
    isbad = 0;
    nospc = 0;
    m = 0;
    plist_head = (peasycap->purb_video_head)->next;
    goto ldv_33002;
    ldv_33001:
    __mptr = (struct list_head const *)plist_head;
    pdata_urb = (struct data_urb *)__mptr;
    if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
      purb = pdata_urb->purb;
      isbuf = pdata_urb->isbuf;
      purb->interval = 1;
      purb->dev = peasycap->pusb_device;
      tmp = __create_pipe(peasycap->pusb_device, (unsigned int )peasycap->video_endpointnumber);
      purb->pipe = tmp | 128U;
      purb->transfer_flags = 2U;
      purb->transfer_buffer = peasycap->video_isoc_buffer[isbuf].pgo;
      purb->transfer_buffer_length = (u32 )peasycap->video_isoc_buffer_size;
      purb->complete = & easycap_complete;
      purb->context = (void *)peasycap;
      purb->start_frame = 0;
      purb->number_of_packets = peasycap->video_isoc_framesperdesc;
      j = 0;
      goto ldv_32999;
      ldv_32998:
      purb->iso_frame_desc[j].offset = (unsigned int )(peasycap->video_isoc_maxframesize * j);
      purb->iso_frame_desc[j].length = (unsigned int )peasycap->video_isoc_maxframesize;
      j = j + 1;
      ldv_32999: ;
      if (peasycap->video_isoc_framesperdesc > j) {
        goto ldv_32998;
      } else {
      }
      rc = ldv_usb_submit_urb_2(purb, 208U);
      if (rc != 0) {
        isbad = isbad + 1;
        tmp___0 = ldv_strerror(rc);
        printk("<7>easycap::%i%s: OLD_ERROR: usb_submit_urb() failed for urb with rc:-%s\n",
               peasycap->isdongle, "easycap_video_submit_urbs", tmp___0);
        if (rc == -28) {
          nospc = nospc + 1;
        } else {
        }
      } else {
        m = m + 1;
      }
    } else {
      isbad = isbad + 1;
    }
    plist_head = plist_head->next;
    ldv_33002: ;
    if ((unsigned long )peasycap->purb_video_head != (unsigned long )plist_head) {
      goto ldv_33001;
    } else {
    }
    if (nospc != 0) {
      printk("<7>easycap::%i%s: -ENOSPC=usb_submit_urb() for %i urbs\n", peasycap->isdongle,
             "easycap_video_submit_urbs", nospc);
      printk("<7>easycap::%i%s: .....  possibly inadequate USB bandwidth\n", peasycap->isdongle,
             "easycap_video_submit_urbs");
      peasycap->video_eof = 1;
    } else {
    }
    if (isbad != 0) {
      easycap_video_kill_urbs(peasycap);
    } else {
      peasycap->video_isoc_streaming = 1;
    }
  } else
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: already streaming video urbs\n", peasycap->isdongle,
           "easycap_video_submit_urbs");
  } else {
  }
  return (0);
}
}
int easycap_audio_kill_urbs(struct easycap *peasycap )
{
  int m ;
  struct list_head *plist_head ;
  struct data_urb *pdata_urb ;
  struct list_head const *__mptr ;
  {
  if (peasycap->audio_isoc_streaming == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )peasycap->purb_audio_head == (unsigned long )((struct list_head *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->purb_audio_head is NULL\n", peasycap->isdongle,
           "easycap_audio_kill_urbs");
    return (-14);
  } else {
  }
  peasycap->audio_isoc_streaming = 0;
  m = 0;
  plist_head = (peasycap->purb_audio_head)->next;
  goto ldv_33014;
  ldv_33013:
  __mptr = (struct list_head const *)plist_head;
  pdata_urb = (struct data_urb *)__mptr;
  if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(pdata_urb->purb);
    m = m + 1;
  } else {
  }
  plist_head = plist_head->next;
  ldv_33014: ;
  if ((unsigned long )peasycap->purb_audio_head != (unsigned long )plist_head) {
    goto ldv_33013;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i audio urbs killed\n", peasycap->isdongle, "easycap_audio_kill_urbs",
           m);
  } else {
  }
  return (0);
}
}
int easycap_video_kill_urbs(struct easycap *peasycap )
{
  int m ;
  struct list_head *plist_head ;
  struct data_urb *pdata_urb ;
  struct list_head const *__mptr ;
  {
  if (peasycap->video_isoc_streaming == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )peasycap->purb_video_head == (unsigned long )((struct list_head *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->purb_video_head is NULL\n", peasycap->isdongle,
           "easycap_video_kill_urbs");
    return (-14);
  } else {
  }
  peasycap->video_isoc_streaming = 0;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: killing video urbs\n", peasycap->isdongle, "easycap_video_kill_urbs");
  } else {
  }
  m = 0;
  plist_head = (peasycap->purb_video_head)->next;
  goto ldv_33026;
  ldv_33025:
  __mptr = (struct list_head const *)plist_head;
  pdata_urb = (struct data_urb *)__mptr;
  if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(pdata_urb->purb);
    m = m + 1;
  } else {
  }
  plist_head = plist_head->next;
  ldv_33026: ;
  if ((unsigned long )peasycap->purb_video_head != (unsigned long )plist_head) {
    goto ldv_33025;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i video urbs killed\n", peasycap->isdongle, "easycap_video_kill_urbs",
           m);
  } else {
  }
  return (0);
}
}
static int easycap_open_noinode(struct file *file )
{
  int tmp ;
  {
  tmp = easycap_open((struct inode *)0, file);
  return (tmp);
}
}
static int videodev_release(struct video_device *pvideo_device )
{
  struct easycap *peasycap ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = video_get_drvdata(pvideo_device);
  peasycap = (struct easycap *)tmp;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "videodev_release");
    printk("<7>easycap:: %s: ending unsuccessfully\n", "videodev_release");
    return (-14);
  } else {
  }
  tmp___0 = easycap_video_kill_urbs(peasycap);
  if (tmp___0 != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: easycap_video_kill_urbs() failed\n", peasycap->isdongle,
           "videodev_release");
    return (-14);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: ending successfully\n", peasycap->isdongle, "videodev_release");
  } else {
  }
  return (0);
}
}
static void easycap_delete(struct kref *pkref )
{
  struct easycap *peasycap ;
  struct data_urb *pdata_urb ;
  struct list_head *plist_head ;
  struct list_head *plist_next ;
  int k ;
  int m ;
  int gone ;
  int kd ;
  int allocation_video_urb ;
  int allocation_video_page ;
  int allocation_video_struct ;
  int allocation_audio_urb ;
  int allocation_audio_page ;
  int allocation_audio_struct ;
  int registered_video ;
  int registered_audio ;
  struct kref const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  int tmp ;
  {
  __mptr = (struct kref const *)pkref;
  peasycap = (struct easycap *)__mptr + 0xfffffffffffff870UL;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap is NULL: cannot perform deletions\n",
           peasycap->isdongle, "easycap_delete");
    return;
  } else {
  }
  kd = easycap_isdongle(peasycap);
  if ((unsigned long )peasycap->purb_video_head != (unsigned long )((struct list_head *)0)) {
    m = 0;
    plist_head = (peasycap->purb_video_head)->next;
    goto ldv_33061;
    ldv_33060:
    __mptr___0 = (struct list_head const *)plist_head;
    pdata_urb = (struct data_urb *)__mptr___0;
    if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
      ldv_usb_free_urb_3(pdata_urb->purb);
      pdata_urb->purb = (struct urb *)0;
      peasycap->allocation_video_urb = peasycap->allocation_video_urb - 1;
      m = m + 1;
    } else {
    }
    plist_head = plist_head->next;
    ldv_33061: ;
    if ((unsigned long )peasycap->purb_video_head != (unsigned long )plist_head) {
      goto ldv_33060;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i video urbs freed\n", peasycap->isdongle, "easycap_delete",
             m);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: freeing video data_urb structures.\n", peasycap->isdongle,
             "easycap_delete");
    } else {
    }
    m = 0;
    plist_head = (peasycap->purb_video_head)->next;
    plist_next = plist_head->next;
    goto ldv_33066;
    ldv_33065:
    __mptr___1 = (struct list_head const *)plist_head;
    pdata_urb = (struct data_urb *)__mptr___1;
    if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0)) {
      peasycap->allocation_video_struct = (int )((unsigned int )peasycap->allocation_video_struct - 32U);
      kfree((void const *)pdata_urb);
      m = m + 1;
    } else {
    }
    plist_head = plist_next;
    plist_next = plist_head->next;
    ldv_33066: ;
    if ((unsigned long )peasycap->purb_video_head != (unsigned long )plist_head) {
      goto ldv_33065;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i video data_urb structures freed\n", peasycap->isdongle,
             "easycap_delete", m);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: setting peasycap->purb_video_head=NULL\n", peasycap->isdongle,
             "easycap_delete");
    } else {
    }
    peasycap->purb_video_head = (struct list_head *)0;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: freeing video isoc buffers.\n", peasycap->isdongle,
           "easycap_delete");
  } else {
  }
  m = 0;
  k = 0;
  goto ldv_33069;
  ldv_33068: ;
  if ((unsigned long )peasycap->video_isoc_buffer[k].pgo != (unsigned long )((void *)0)) {
    free_pages((unsigned long )peasycap->video_isoc_buffer[k].pgo, 3U);
    peasycap->video_isoc_buffer[k].pgo = (void *)0;
    peasycap->allocation_video_page = (int )((unsigned int )peasycap->allocation_video_page - 8U);
    m = m + 1;
  } else {
  }
  k = k + 1;
  ldv_33069: ;
  if (k <= 15) {
    goto ldv_33068;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: isoc video buffers freed: %i pages\n", peasycap->isdongle,
           "easycap_delete", m * 8);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: freeing video field buffers.\n", peasycap->isdongle,
           "easycap_delete");
  } else {
  }
  gone = 0;
  k = 0;
  goto ldv_33075;
  ldv_33074:
  m = 0;
  goto ldv_33072;
  ldv_33071: ;
  if ((unsigned long )peasycap->field_buffer[k][m].pgo != (unsigned long )((void *)0)) {
    free_pages((unsigned long )peasycap->field_buffer[k][m].pgo, 0U);
    peasycap->field_buffer[k][m].pgo = (void *)0;
    peasycap->allocation_video_page = peasycap->allocation_video_page + -1;
    gone = gone + 1;
  } else {
  }
  m = m + 1;
  ldv_33072: ;
  if ((unsigned int )m <= 202U) {
    goto ldv_33071;
  } else {
  }
  k = k + 1;
  ldv_33075: ;
  if (k <= 3) {
    goto ldv_33074;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: video field buffers freed: %i pages\n", peasycap->isdongle,
           "easycap_delete", gone);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: freeing video frame buffers.\n", peasycap->isdongle,
           "easycap_delete");
  } else {
  }
  gone = 0;
  k = 0;
  goto ldv_33081;
  ldv_33080:
  m = 0;
  goto ldv_33078;
  ldv_33077: ;
  if ((unsigned long )peasycap->frame_buffer[k][m].pgo != (unsigned long )((void *)0)) {
    free_pages((unsigned long )peasycap->frame_buffer[k][m].pgo, 0U);
    peasycap->frame_buffer[k][m].pgo = (void *)0;
    peasycap->allocation_video_page = peasycap->allocation_video_page + -1;
    gone = gone + 1;
  } else {
  }
  m = m + 1;
  ldv_33078: ;
  if ((unsigned int )m <= 404U) {
    goto ldv_33077;
  } else {
  }
  k = k + 1;
  ldv_33081: ;
  if (k <= 5) {
    goto ldv_33080;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: video frame buffers freed: %i pages\n", peasycap->isdongle,
           "easycap_delete", gone);
  } else {
  }
  if ((unsigned long )peasycap->purb_audio_head != (unsigned long )((struct list_head *)0)) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: freeing audio urbs\n", peasycap->isdongle, "easycap_delete");
    } else {
    }
    m = 0;
    plist_head = (peasycap->purb_audio_head)->next;
    goto ldv_33086;
    ldv_33085:
    __mptr___2 = (struct list_head const *)plist_head;
    pdata_urb = (struct data_urb *)__mptr___2;
    if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
      ldv_usb_free_urb_4(pdata_urb->purb);
      pdata_urb->purb = (struct urb *)0;
      peasycap->allocation_audio_urb = peasycap->allocation_audio_urb - 1;
      m = m + 1;
    } else {
    }
    plist_head = plist_head->next;
    ldv_33086: ;
    if ((unsigned long )peasycap->purb_audio_head != (unsigned long )plist_head) {
      goto ldv_33085;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i audio urbs freed\n", peasycap->isdongle, "easycap_delete",
             m);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: freeing audio data_urb structures.\n", peasycap->isdongle,
             "easycap_delete");
    } else {
    }
    m = 0;
    plist_head = (peasycap->purb_audio_head)->next;
    plist_next = plist_head->next;
    goto ldv_33091;
    ldv_33090:
    __mptr___3 = (struct list_head const *)plist_head;
    pdata_urb = (struct data_urb *)__mptr___3;
    if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0)) {
      peasycap->allocation_audio_struct = (int )((unsigned int )peasycap->allocation_audio_struct - 32U);
      kfree((void const *)pdata_urb);
      m = m + 1;
    } else {
    }
    plist_head = plist_next;
    plist_next = plist_head->next;
    ldv_33091: ;
    if ((unsigned long )peasycap->purb_audio_head != (unsigned long )plist_head) {
      goto ldv_33090;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i audio data_urb structures freed\n", peasycap->isdongle,
             "easycap_delete", m);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: setting peasycap->purb_audio_head=NULL\n", peasycap->isdongle,
             "easycap_delete");
    } else {
    }
    peasycap->purb_audio_head = (struct list_head *)0;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: freeing audio isoc buffers.\n", peasycap->isdongle,
           "easycap_delete");
  } else {
  }
  m = 0;
  k = 0;
  goto ldv_33094;
  ldv_33093: ;
  if ((unsigned long )peasycap->audio_isoc_buffer[k].pgo != (unsigned long )((void *)0)) {
    free_pages((unsigned long )peasycap->audio_isoc_buffer[k].pgo, 1U);
    peasycap->audio_isoc_buffer[k].pgo = (void *)0;
    peasycap->allocation_audio_page = (int )((unsigned int )peasycap->allocation_audio_page - 2U);
    m = m + 1;
  } else {
  }
  k = k + 1;
  ldv_33094: ;
  if (k <= 15) {
    goto ldv_33093;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: easyoss_delete(): isoc audio buffers freed: %i pages\n",
           peasycap->isdongle, "easycap_delete", m * 2);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: freeing easycap structure.\n", peasycap->isdongle, "easycap_delete");
  } else {
  }
  allocation_video_urb = peasycap->allocation_video_urb;
  allocation_video_page = peasycap->allocation_video_page;
  allocation_video_struct = peasycap->allocation_video_struct;
  registered_video = peasycap->registered_video;
  allocation_audio_urb = peasycap->allocation_audio_urb;
  allocation_audio_page = peasycap->allocation_audio_page;
  allocation_audio_struct = peasycap->allocation_audio_struct;
  registered_audio = peasycap->registered_audio;
  if (kd >= 0 && kd <= 7) {
    tmp = mutex_lock_interruptible_nested(& mutex_dongle, 0U);
    if (tmp != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot down mutex_dongle\n", "easycap_delete");
    } else {
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: locked mutex_dongle\n", peasycap->isdongle, "easycap_delete");
      } else {
      }
      easycapdc60_dongle[kd].peasycap = (struct easycap *)0;
      mutex_unlock(& mutex_dongle);
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: unlocked mutex_dongle\n", peasycap->isdongle, "easycap_delete");
      } else {
      }
      if (easycap_debug > 3) {
        printk("<7>easycap:: %s:    null-->dongle[%i].peasycap\n", "easycap_delete",
               kd);
      } else {
      }
      allocation_video_struct = (int )((unsigned int )allocation_video_struct - 134768U);
    }
  } else {
    printk("<7>easycap:: %s: OLD_ERROR: cannot purge dongle[].peasycap", "easycap_delete");
  }
  kfree((void const *)peasycap);
  printk("<7>easycap:: %s: %8i=video urbs    after all deletions\n", "easycap_delete",
         allocation_video_urb);
  printk("<7>easycap:: %s: %8i=video pages   after all deletions\n", "easycap_delete",
         allocation_video_page);
  printk("<7>easycap:: %s: %8i=video structs after all deletions\n", "easycap_delete",
         allocation_video_struct);
  printk("<7>easycap:: %s: %8i=video devices after all deletions\n", "easycap_delete",
         registered_video);
  printk("<7>easycap:: %s: %8i=audio urbs    after all deletions\n", "easycap_delete",
         allocation_audio_urb);
  printk("<7>easycap:: %s: %8i=audio pages   after all deletions\n", "easycap_delete",
         allocation_audio_page);
  printk("<7>easycap:: %s: %8i=audio structs after all deletions\n", "easycap_delete",
         allocation_audio_struct);
  printk("<7>easycap:: %s: %8i=audio devices after all deletions\n", "easycap_delete",
         registered_audio);
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: ending.\n", "easycap_delete");
  } else {
  }
  return;
}
}
static unsigned int easycap_poll(struct file *file , poll_table *wait )
{
  struct easycap *peasycap ;
  int rc ;
  int kd ;
  int tmp ;
  int tmp___0 ;
  {
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: \n", "easycap_poll");
  } else {
  }
  if ((unsigned long )wait == (unsigned long )((poll_table *)0)) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: WARNING:  poll table pointer is NULL ... continuing\n",
             "easycap_poll");
    } else {
    }
  } else {
  }
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  file pointer is NULL\n", "easycap_poll");
    return (4294966784U);
  } else {
  }
  peasycap = (struct easycap *)file->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_poll");
    return (4294967282U);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap->pusb_device is NULL\n", "easycap_poll");
    return (4294967282U);
  } else {
  }
  kd = easycap_isdongle(peasycap);
  if (kd >= 0 && kd <= 7) {
    tmp = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_video, 0U);
    if (tmp != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot down dongle[%i].mutex_video\n", "easycap_poll",
             kd);
      return (4294966784U);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_poll", kd);
    } else {
    }
    tmp___0 = easycap_isdongle(peasycap);
    if (tmp___0 != kd) {
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (4294966784U);
    } else {
    }
    if ((unsigned long )file == (unsigned long )((struct file *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR:  file is NULL\n", "easycap_poll");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (4294966784U);
    } else {
    }
    peasycap = (struct easycap *)file->private_data;
    if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_poll");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (4294966784U);
    } else {
    }
    if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
      printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
             "easycap_poll");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (4294966784U);
    } else {
    }
  } else {
    return (4294966784U);
  }
  rc = easycap_video_dqbuf(peasycap, 0);
  peasycap->polled = 1;
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  if (rc != 0) {
    return (8U);
  } else {
  }
  return (65U);
}
}
int easycap_video_dqbuf(struct easycap *peasycap , int mode )
{
  int input ;
  int ifield ;
  int miss ;
  int rc ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int __ret___0 ;
  wait_queue_t __wait___0 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_video_dqbuf");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap->pusb_device is NULL\n", "easycap_video_dqbuf");
    return (-14);
  } else {
  }
  ifield = 0;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=ifield\n", peasycap->isdongle, "easycap_video_dqbuf",
           ifield);
  } else {
  }
  input = peasycap->input;
  if (input >= 0 && input <= 5) {
    rc = read_saa(peasycap->pusb_device, 31);
    if (rc >= 0) {
      if ((rc & 64) != 0) {
        peasycap->lost[input] = peasycap->lost[input] + 1;
      } else {
        peasycap->lost[input] = peasycap->lost[input] + -2;
      }
      if (peasycap->lost[input] < 0) {
        peasycap->lost[input] = 0;
      } else
      if (peasycap->lost[input] > 100) {
        peasycap->lost[input] = 100;
      } else {
      }
    } else {
    }
  } else {
  }
  miss = 0;
  goto ldv_33120;
  ldv_33119: ;
  if (mode != 0) {
    return (-11);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: first wait  on wq_video, %i=field_read %i=field_fill\n",
           peasycap->isdongle, "easycap_video_dqbuf", peasycap->field_read, peasycap->field_fill);
  } else {
  }
  __ret = 0;
  if ((peasycap->video_idle == 0 && peasycap->video_eof == 0) && ((peasycap->field_read == peasycap->field_fill || ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) != 0U) || ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) != ifield)) {
    tmp = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_33117:
    prepare_to_wait(& peasycap->wq_video, & __wait, 1);
    if ((peasycap->video_idle != 0 || peasycap->video_eof != 0) || ((peasycap->field_read != peasycap->field_fill && ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) == 0U) && ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) == ifield)) {
      goto ldv_33115;
    } else {
    }
    tmp___0 = get_current();
    tmp___1 = signal_pending(tmp___0);
    if (tmp___1 == 0) {
      schedule();
      goto ldv_33116;
    } else {
    }
    __ret = -512;
    goto ldv_33115;
    ldv_33116: ;
    goto ldv_33117;
    ldv_33115:
    finish_wait(& peasycap->wq_video, & __wait);
  } else {
  }
  if (__ret != 0) {
    printk("<7>easycap::%i%s: aborted by signal\n", peasycap->isdongle, "easycap_video_dqbuf");
    return (-5);
  } else {
  }
  if (peasycap->video_idle != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->video_idle returning -EAGAIN\n", peasycap->isdongle,
             "easycap_video_dqbuf", peasycap->video_idle);
    } else {
    }
    return (-11);
  } else {
  }
  if (peasycap->video_eof != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->video_eof\n", peasycap->isdongle, "easycap_video_dqbuf",
             peasycap->video_eof);
    } else {
    }
    if (peasycap->status == 1) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: persevering ...\n", peasycap->isdongle, "easycap_video_dqbuf");
      } else {
      }
      peasycap->video_eof = 0;
      peasycap->audio_eof = 0;
      tmp___2 = reset(peasycap);
      if (tmp___2 != 0) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s:  ... failed  returning -EIO\n", peasycap->isdongle,
                 "easycap_video_dqbuf");
        } else {
        }
        peasycap->video_eof = 1;
        peasycap->audio_eof = 1;
        easycap_video_kill_urbs(peasycap);
        return (-5);
      } else {
      }
      peasycap->status = 0;
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s:  ... OK  returning -EAGAIN\n", peasycap->isdongle,
               "easycap_video_dqbuf");
      } else {
      }
      return (-11);
    } else {
    }
    peasycap->video_eof = 1;
    peasycap->audio_eof = 1;
    easycap_video_kill_urbs(peasycap);
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EIO\n", peasycap->isdongle, "easycap_video_dqbuf");
    } else {
    }
    return (-5);
  } else {
  }
  miss = miss + 1;
  ldv_33120: ;
  if ((peasycap->field_read == peasycap->field_fill || ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) != 0U) || ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) != ifield) {
    goto ldv_33119;
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: first awakening on wq_video after %i waits\n", peasycap->isdongle,
           "easycap_video_dqbuf", miss);
  } else {
  }
  rc = field2frame(peasycap);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: field2frame() rc = %i\n", peasycap->isdongle,
           "easycap_video_dqbuf", rc);
  } else {
  }
  if (ifield != 0) {
    ifield = 0;
  } else {
    ifield = 1;
  }
  miss = 0;
  goto ldv_33129;
  ldv_33128: ;
  if (mode != 0) {
    return (-11);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: second wait on wq_video %i=field_read  %i=field_fill\n",
           peasycap->isdongle, "easycap_video_dqbuf", peasycap->field_read, peasycap->field_fill);
  } else {
  }
  __ret___0 = 0;
  if ((peasycap->video_idle == 0 && peasycap->video_eof == 0) && ((peasycap->field_read == peasycap->field_fill || ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) != 0U) || ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) != ifield)) {
    tmp___3 = get_current();
    __wait___0.flags = 0U;
    __wait___0.private = (void *)tmp___3;
    __wait___0.func = & autoremove_wake_function;
    __wait___0.task_list.next = & __wait___0.task_list;
    __wait___0.task_list.prev = & __wait___0.task_list;
    ldv_33126:
    prepare_to_wait(& peasycap->wq_video, & __wait___0, 1);
    if ((peasycap->video_idle != 0 || peasycap->video_eof != 0) || ((peasycap->field_read != peasycap->field_fill && ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) == 0U) && ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) == ifield)) {
      goto ldv_33124;
    } else {
    }
    tmp___4 = get_current();
    tmp___5 = signal_pending(tmp___4);
    if (tmp___5 == 0) {
      schedule();
      goto ldv_33125;
    } else {
    }
    __ret___0 = -512;
    goto ldv_33124;
    ldv_33125: ;
    goto ldv_33126;
    ldv_33124:
    finish_wait(& peasycap->wq_video, & __wait___0);
  } else {
  }
  if (__ret___0 != 0) {
    printk("<7>easycap::%i%s: aborted by signal\n", peasycap->isdongle, "easycap_video_dqbuf");
    return (-5);
  } else {
  }
  if (peasycap->video_idle != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->video_idle returning -EAGAIN\n", peasycap->isdongle,
             "easycap_video_dqbuf", peasycap->video_idle);
    } else {
    }
    return (-11);
  } else {
  }
  if (peasycap->video_eof != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->video_eof\n", peasycap->isdongle, "easycap_video_dqbuf",
             peasycap->video_eof);
    } else {
    }
    if (peasycap->status == 1) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: persevering ...\n", peasycap->isdongle, "easycap_video_dqbuf");
      } else {
      }
      peasycap->video_eof = 0;
      peasycap->audio_eof = 0;
      tmp___6 = reset(peasycap);
      if (tmp___6 != 0) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s:  ... failed returning -EIO\n", peasycap->isdongle,
                 "easycap_video_dqbuf");
        } else {
        }
        peasycap->video_eof = 1;
        peasycap->audio_eof = 1;
        easycap_video_kill_urbs(peasycap);
        return (-5);
      } else {
      }
      peasycap->status = 0;
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s:  ... OK ... returning -EAGAIN\n", peasycap->isdongle,
               "easycap_video_dqbuf");
      } else {
      }
      return (-11);
    } else {
    }
    peasycap->video_eof = 1;
    peasycap->audio_eof = 1;
    easycap_video_kill_urbs(peasycap);
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EIO\n", peasycap->isdongle, "easycap_video_dqbuf");
    } else {
    }
    return (-5);
  } else {
  }
  miss = miss + 1;
  ldv_33129: ;
  if ((peasycap->field_read == peasycap->field_fill || ((unsigned int )peasycap->field_buffer[peasycap->field_read][0].kount & 65280U) != 0U) || ((int )peasycap->field_buffer[peasycap->field_read][0].kount & 255) != ifield) {
    goto ldv_33128;
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: second awakening on wq_video after %i waits\n", peasycap->isdongle,
           "easycap_video_dqbuf", miss);
  } else {
  }
  rc = field2frame(peasycap);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: field2frame() rc = %i\n", peasycap->isdongle,
           "easycap_video_dqbuf", rc);
  } else {
  }
  if (peasycap->skip != 0) {
    peasycap->skipped = peasycap->skipped + 1;
    if (peasycap->skip != peasycap->skipped) {
      return (peasycap->skip - peasycap->skipped);
    } else {
      peasycap->skipped = 0;
    }
  } else {
  }
  peasycap->frame_read = peasycap->frame_fill;
  peasycap->queued[peasycap->frame_read] = 0;
  peasycap->done[peasycap->frame_read] = 4;
  peasycap->frame_fill = peasycap->frame_fill + 1;
  if (peasycap->frame_buffer_many <= peasycap->frame_fill) {
    peasycap->frame_fill = 0;
  } else {
  }
  if ((int )easycap_standard[peasycap->standard_offset].mask & 1) {
    peasycap->frame_buffer[peasycap->frame_read][0].kount = 2U;
  } else {
    peasycap->frame_buffer[peasycap->frame_read][0].kount = 3U;
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: setting:    %i=peasycap->frame_read\n", peasycap->isdongle,
           "easycap_video_dqbuf", peasycap->frame_read);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: bumped to:  %i=peasycap->frame_fill\n", peasycap->isdongle,
           "easycap_video_dqbuf", peasycap->frame_fill);
  } else {
  }
  return (0);
}
}
static int field2frame(struct easycap *peasycap )
{
  void *pex ;
  void *pad ;
  int kex ;
  int kad ;
  int mex ;
  int mad ;
  int rex ;
  int rad ;
  int rad2 ;
  int c2 ;
  int c3 ;
  int w2 ;
  int w3 ;
  int cz ;
  int wz ;
  int rc ;
  int bytesperpixel ;
  int multiplier ;
  int much ;
  int more ;
  int over ;
  int rump ;
  int caches ;
  int input ;
  u8 mask ;
  u8 margin ;
  bool odd ;
  bool isuy ;
  bool decimatepixel ;
  bool badinput ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "field2frame");
    return (-14);
  } else {
  }
  badinput = 0;
  input = (int )peasycap->field_buffer[peasycap->field_read][0].input & 7;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: =====  parity %i, input 0x%02X, field buffer %i --> frame buffer %i\n",
           peasycap->isdongle, "field2frame", (int )peasycap->field_buffer[peasycap->field_read][0].kount,
           (int )peasycap->field_buffer[peasycap->field_read][0].input, peasycap->field_read,
           peasycap->frame_fill);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: =====  %i=bytesperpixel\n", peasycap->isdongle, "field2frame",
           peasycap->bytesperpixel);
  } else {
  }
  if (peasycap->field_read == peasycap->field_fill) {
    printk("<7>easycap::%i%s: OLD_ERROR: on entry, still filling field buffer %i\n", peasycap->isdongle,
           "field2frame", peasycap->field_read);
    return (0);
  } else {
  }
  if (input >= 0 && input <= 5) {
    if (easycap_bars != 0 && peasycap->lost[input] > 49) {
      easycap_testcard(peasycap, peasycap->field_read);
    } else {
    }
  } else {
  }
  bytesperpixel = peasycap->bytesperpixel;
  decimatepixel = peasycap->decimatepixel;
  if ((bytesperpixel != 2 && bytesperpixel != 3) && bytesperpixel != 4) {
    printk("<7>easycap::%i%s: MISTAKE: %i=bytesperpixel\n", peasycap->isdongle, "field2frame",
           bytesperpixel);
    return (-14);
  } else {
  }
  if ((int )decimatepixel) {
    multiplier = 2;
  } else {
    multiplier = 1;
  }
  w2 = (multiplier * 2) * peasycap->width;
  w3 = (bytesperpixel * multiplier) * peasycap->width;
  wz = ((peasycap->height * multiplier) * multiplier) * peasycap->width;
  kex = peasycap->field_read;
  mex = 0;
  kad = peasycap->frame_fill;
  mad = 0;
  pex = peasycap->field_buffer[kex][0].pgo;
  rex = 4096;
  pad = peasycap->frame_buffer[kad][0].pgo;
  rad = 4096;
  odd = (unsigned int )peasycap->field_buffer[kex][0].kount != 0U;
  if ((int )odd && ! decimatepixel) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: initial skipping %4i bytes p.%4i\n", peasycap->isdongle,
             "field2frame", w3 / multiplier, mad);
    } else {
    }
    pad = pad + (unsigned long )(w3 / multiplier);
    rad = rad - w3 / multiplier;
  } else {
  }
  isuy = 1;
  mask = 0U;
  rump = 0;
  caches = 0;
  cz = 0;
  goto ldv_33174;
  ldv_33173: ;
  if (! decimatepixel) {
    over = w2;
    ldv_33165:
    much = over;
    more = 0;
    margin = 0U;
    mask = 0U;
    if (rex < much) {
      much = rex;
    } else {
    }
    rump = 0;
    if (much & 1) {
      printk("<7>easycap::%i%s: MISTAKE: much is odd\n", peasycap->isdongle, "field2frame");
      return (-14);
    } else {
    }
    more = (bytesperpixel * much) / 2;
    if (bytesperpixel > 1) {
      if (rad * 2 < much * bytesperpixel) {
        rad2 = (rad + bytesperpixel) + -1;
        much = (((rad2 * 2) / bytesperpixel) / 2) * 2;
        rump = (bytesperpixel * much) / 2 - rad;
        more = rad;
      } else {
      }
      mask = (unsigned char )rump;
      margin = 0U;
      if (much == rex) {
        mask = (u8 )((unsigned int )mask | 4U);
        if ((unsigned int )(mex + 1) <= 202U) {
          margin = *((u8 *)peasycap->field_buffer[kex][mex + 1].pgo);
        } else {
          mask = (u8 )((unsigned int )mask | 8U);
        }
      } else {
      }
    } else {
      printk("<7>easycap::%i%s: MISTAKE: %i=bytesperpixel\n", peasycap->isdongle,
             "field2frame", bytesperpixel);
      return (-14);
    }
    if (rump != 0) {
      caches = caches + 1;
    } else {
    }
    if ((int )badinput) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: OLD_ERROR: 0x%02X=->field_buffer[%i][%i].input, 0x%02X=(0x08|->input)\n",
               peasycap->isdongle, "field2frame", (int )peasycap->field_buffer[kex][mex].input,
               kex, mex, peasycap->input | 8);
      } else {
      }
    } else {
    }
    rc = redaub(peasycap, pad, pex, much, more, (int )mask, (int )margin, (int )isuy);
    if (rc < 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: redaub() failed\n", peasycap->isdongle, "field2frame");
      return (-14);
    } else {
    }
    if (((unsigned int )much & 3U) != 0U) {
      isuy = (bool )(! ((int )isuy != 0));
    } else {
    }
    over = over - much;
    cz = cz + much;
    pex = pex + (unsigned long )much;
    rex = rex - much;
    if (rex == 0) {
      mex = mex + 1;
      pex = peasycap->field_buffer[kex][mex].pgo;
      rex = 4096;
      if ((int )peasycap->field_buffer[kex][mex].input != (peasycap->input | 8)) {
        badinput = 1;
      } else {
      }
    } else {
    }
    pad = pad + (unsigned long )more;
    rad = rad - more;
    if (rad == 0) {
      mad = mad + 1;
      pad = peasycap->frame_buffer[kad][mad].pgo;
      rad = 4096;
      if (rump != 0) {
        pad = pad + (unsigned long )rump;
        rad = rad - rump;
      } else {
      }
    } else {
    }
    if (over != 0) {
      goto ldv_33165;
    } else {
    }
    if (! odd || cz != wz) {
      over = w3;
      ldv_33167: ;
      if (rad == 0) {
        mad = mad + 1;
        pad = peasycap->frame_buffer[kad][mad].pgo;
        rad = 4096;
      } else {
      }
      more = over;
      if (rad < more) {
        more = rad;
      } else {
      }
      over = over - more;
      pad = pad + (unsigned long )more;
      rad = rad - more;
      if (over != 0) {
        goto ldv_33167;
      } else {
      }
    } else {
    }
  } else
  if (! odd) {
    over = w2;
    ldv_33169:
    much = over;
    more = 0;
    margin = 0U;
    mask = 0U;
    if (rex < much) {
      much = rex;
    } else {
    }
    rump = 0;
    if (much & 1) {
      printk("<7>easycap::%i%s: MISTAKE: much is odd\n", peasycap->isdongle, "field2frame");
      return (-14);
    } else {
    }
    more = (bytesperpixel * much) / 4;
    if (bytesperpixel > 1) {
      if (rad * 4 < much * bytesperpixel) {
        rad2 = (rad + bytesperpixel) + -1;
        much = (((rad2 * 2) / bytesperpixel) / 2) * 4;
        rump = (bytesperpixel * much) / 4 - rad;
        more = rad;
      } else {
      }
      mask = (unsigned char )rump;
      margin = 0U;
      if (much == rex) {
        mask = (u8 )((unsigned int )mask | 4U);
        if ((unsigned int )(mex + 1) <= 202U) {
          margin = *((u8 *)peasycap->field_buffer[kex][mex + 1].pgo);
        } else {
          mask = (u8 )((unsigned int )mask | 8U);
        }
      } else {
      }
    } else {
      printk("<7>easycap::%i%s: MISTAKE: %i=bytesperpixel\n", peasycap->isdongle,
             "field2frame", bytesperpixel);
      return (-14);
    }
    if (rump != 0) {
      caches = caches + 1;
    } else {
    }
    if ((int )badinput) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: OLD_ERROR: 0x%02X=->field_buffer[%i][%i].input, 0x%02X=(0x08|->input)\n",
               peasycap->isdongle, "field2frame", (int )peasycap->field_buffer[kex][mex].input,
               kex, mex, peasycap->input | 8);
      } else {
      }
    } else {
    }
    rc = redaub(peasycap, pad, pex, much, more, (int )mask, (int )margin, (int )isuy);
    if (rc < 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: redaub() failed\n", peasycap->isdongle, "field2frame");
      return (-14);
    } else {
    }
    over = over - much;
    cz = cz + much;
    pex = pex + (unsigned long )much;
    rex = rex - much;
    if (rex == 0) {
      mex = mex + 1;
      pex = peasycap->field_buffer[kex][mex].pgo;
      rex = 4096;
      if ((int )peasycap->field_buffer[kex][mex].input != (peasycap->input | 8)) {
        badinput = 1;
      } else {
      }
    } else {
    }
    pad = pad + (unsigned long )more;
    rad = rad - more;
    if (rad == 0) {
      mad = mad + 1;
      pad = peasycap->frame_buffer[kad][mad].pgo;
      rad = 4096;
      if (rump != 0) {
        pad = pad + (unsigned long )rump;
        rad = rad - rump;
      } else {
      }
    } else {
    }
    if (over != 0) {
      goto ldv_33169;
    } else {
    }
  } else {
    over = w2;
    ldv_33171: ;
    if (rex == 0) {
      mex = mex + 1;
      pex = peasycap->field_buffer[kex][mex].pgo;
      rex = 4096;
      if ((int )peasycap->field_buffer[kex][mex].input != (peasycap->input | 8)) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s: OLD_ERROR: 0x%02X=->field_buffer[%i][%i].input, 0x%02X=(0x08|->input)\n",
                 peasycap->isdongle, "field2frame", (int )peasycap->field_buffer[kex][mex].input,
                 kex, mex, peasycap->input | 8);
        } else {
        }
        badinput = 1;
      } else {
      }
    } else {
    }
    much = over;
    if (rex < much) {
      much = rex;
    } else {
    }
    over = over - much;
    cz = cz + much;
    pex = pex + (unsigned long )much;
    rex = rex - much;
    if (over != 0) {
      goto ldv_33171;
    } else {
    }
  }
  ldv_33174: ;
  if (cz < wz) {
    goto ldv_33173;
  } else {
  }
  c2 = (int )((unsigned int )((unsigned long )(mex + 1)) * 4096U - (unsigned int )rex);
  if (cz != c2) {
    printk("<7>easycap::%i%s: OLD_ERROR: discrepancy %i in bytes read\n", peasycap->isdongle,
           "field2frame", c2 - cz);
  } else {
  }
  c3 = (int )((unsigned int )((unsigned long )(mad + 1)) * 4096U - (unsigned int )rad);
  if (! decimatepixel) {
    if (bytesperpixel * cz != c3) {
      printk("<7>easycap::%i%s: OLD_ERROR: discrepancy %i in bytes written\n", peasycap->isdongle,
             "field2frame", c3 - bytesperpixel * cz);
    } else {
    }
  } else
  if (! odd) {
    if (bytesperpixel * cz != c3 * 4) {
      printk("<7>easycap::%i%s: OLD_ERROR: discrepancy %i in bytes written\n", peasycap->isdongle,
             "field2frame", c3 * 2 - bytesperpixel * cz);
    } else {
    }
  } else
  if (c3 != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: discrepancy %i in bytes written\n", peasycap->isdongle,
           "field2frame", c3);
  } else {
  }
  if (rump != 0) {
    printk("<7>easycap::%i%s: WORRY: undischarged cache at end of line in frame buffer\n",
           peasycap->isdongle, "field2frame");
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: ===== field2frame(): %i bytes --> %i bytes (incl skip)\n",
           peasycap->isdongle, "field2frame", c2, c3);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: ===== field2frame(): %i=mad  %i=rad\n", peasycap->isdongle,
           "field2frame", mad, rad);
  } else {
  }
  if ((int )odd) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: +++++ field2frame():  frame buffer %i is full\n",
             peasycap->isdongle, "field2frame", kad);
    } else {
    }
  } else {
  }
  if (peasycap->field_read == peasycap->field_fill) {
    printk("<7>easycap::%i%s: WARNING: on exit, filling field buffer %i\n", peasycap->isdongle,
           "field2frame", peasycap->field_read);
  } else {
  }
  if (caches != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=caches\n", peasycap->isdongle, "field2frame", caches);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int redaub(struct easycap *peasycap , void *pad , void *pex , int much , int more ,
                  u8 mask , u8 margin , bool isuy )
{
  s32 ay[256U] ;
  s32 bu[256U] ;
  s32 rv[256U] ;
  s32 gu[256U] ;
  s32 gv[256U] ;
  u8 *pcache ;
  u8 r ;
  u8 g ;
  u8 b ;
  u8 y ;
  u8 u ;
  u8 v ;
  u8 c ;
  u8 *p2 ;
  u8 *p3 ;
  u8 *pz ;
  u8 *pr ;
  int bytesperpixel ;
  bool byteswaporder ;
  bool decimatepixel ;
  bool last ;
  int j ;
  int rump ;
  s32 tmp ;
  u8 *tmp___0 ;
  size_t __len ;
  void *__ret ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  u8 *tmp___8 ;
  u8 *tmp___9 ;
  u8 *tmp___10 ;
  u8 *tmp___11 ;
  u8 *tmp___12 ;
  u8 *tmp___13 ;
  u8 *tmp___14 ;
  u8 *tmp___15 ;
  u8 *tmp___16 ;
  u8 *tmp___17 ;
  u8 *tmp___18 ;
  u8 *tmp___19 ;
  u8 *tmp___20 ;
  u8 *tmp___21 ;
  u8 *tmp___22 ;
  u8 *tmp___23 ;
  u8 *tmp___24 ;
  u8 *tmp___25 ;
  u8 *tmp___26 ;
  u8 *tmp___27 ;
  u8 *tmp___28 ;
  u8 *tmp___29 ;
  u8 *tmp___30 ;
  u8 *tmp___31 ;
  u8 *tmp___32 ;
  u8 *tmp___33 ;
  u8 *tmp___34 ;
  u8 *tmp___35 ;
  u8 *tmp___36 ;
  {
  if (much & 1) {
    printk("<7>easycap::%i%s: MISTAKE: much is odd\n", peasycap->isdongle, "redaub");
    return (-14);
  } else {
  }
  bytesperpixel = peasycap->bytesperpixel;
  byteswaporder = peasycap->byteswaporder;
  decimatepixel = peasycap->decimatepixel;
  if (bu[255] == 0) {
    j = 0;
    goto ldv_33212;
    ldv_33211:
    tmp = (j * 453 & 65280) >> 8;
    bu[j + 128] = tmp;
    bu[127 - j] = - tmp;
    tmp = (j * 359 & 65280) >> 8;
    rv[j + 128] = tmp;
    rv[127 - j] = - tmp;
    tmp = (j * 88 & 65280) >> 8;
    gu[j + 128] = tmp;
    gu[127 - j] = - tmp;
    tmp = (j * 183 & 65280) >> 8;
    gv[j + 128] = tmp;
    gv[127 - j] = - tmp;
    j = j + 1;
    ldv_33212: ;
    if (j <= 111) {
      goto ldv_33211;
    } else {
    }
    j = 0;
    goto ldv_33215;
    ldv_33214:
    bu[j] = bu[16];
    rv[j] = rv[16];
    gu[j] = gu[16];
    gv[j] = gv[16];
    j = j + 1;
    ldv_33215: ;
    if (j <= 15) {
      goto ldv_33214;
    } else {
    }
    j = 240;
    goto ldv_33218;
    ldv_33217:
    bu[j] = bu[239];
    rv[j] = rv[239];
    gu[j] = gu[239];
    gv[j] = gv[239];
    j = j + 1;
    ldv_33218: ;
    if (j <= 255) {
      goto ldv_33217;
    } else {
    }
    j = 16;
    goto ldv_33221;
    ldv_33220:
    ay[j] = j;
    j = j + 1;
    ldv_33221: ;
    if (j <= 235) {
      goto ldv_33220;
    } else {
    }
    j = 0;
    goto ldv_33224;
    ldv_33223:
    ay[j] = ay[16];
    j = j + 1;
    ldv_33224: ;
    if (j <= 15) {
      goto ldv_33223;
    } else {
    }
    j = 236;
    goto ldv_33227;
    ldv_33226:
    ay[j] = ay[235];
    j = j + 1;
    ldv_33227: ;
    if (j <= 255) {
      goto ldv_33226;
    } else {
    }
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: lookup tables are prepared\n", peasycap->isdongle,
             "redaub");
    } else {
    }
  } else {
  }
  pcache = peasycap->pcache;
  if ((unsigned long )pcache == (unsigned long )((u8 *)0U)) {
    pcache = (u8 *)(& peasycap->cache);
  } else {
  }
  if ((unsigned long )pcache == (unsigned long )((u8 *)0U)) {
    printk("<7>easycap::%i%s: MISTAKE: pcache is NULL\n", peasycap->isdongle, "redaub");
    return (-14);
  } else {
  }
  if ((unsigned long )((u8 *)(& peasycap->cache)) != (unsigned long )pcache) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: cache has %i bytes\n", peasycap->isdongle, "redaub",
             (int )((unsigned int )((long )pcache) - (unsigned int )((long )(& peasycap->cache))));
    } else {
    }
  } else {
  }
  p2 = (u8 *)(& peasycap->cache);
  p3 = (u8 *)pad + - ((unsigned long )((int )((unsigned int )((long )pcache) - (unsigned int )((long )(& peasycap->cache)))));
  goto ldv_33230;
  ldv_33229:
  tmp___0 = p3;
  p3 = p3 + 1;
  *tmp___0 = *p2;
  p2 = p2 + 1;
  ldv_33230: ;
  if ((unsigned long )p2 < (unsigned long )pcache) {
    goto ldv_33229;
  } else {
  }
  pcache = (u8 *)(& peasycap->cache);
  if ((unsigned long )((void *)p3) != (unsigned long )pad) {
    printk("<7>easycap::%i%s: MISTAKE: pointer misalignment\n", peasycap->isdongle,
           "redaub");
    return (-14);
  } else {
  }
  rump = (int )mask & 3;
  u = 0U;
  v = 0U;
  p2 = (u8 *)pex;
  pz = p2 + (unsigned long )much;
  pr = p3 + (unsigned long )more;
  last = 0;
  p2 = p2 + 1;
  if ((int )isuy) {
    u = *(p2 + 0xffffffffffffffffUL);
  } else {
    v = *(p2 + 0xffffffffffffffffUL);
  }
  if (rump != 0) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: %4i=much  %4i=more  %i=rump\n", peasycap->isdongle,
             "redaub", much, more, rump);
    } else {
    }
  } else {
  }
  switch (bytesperpixel) {
  case 2: ;
  if (! decimatepixel) {
    __len = (unsigned long )much;
    __ret = memcpy(pad, (void const *)pex, __len);
    if (! byteswaporder) {
      return (0);
    } else {
      p3 = (u8 *)pad;
      pz = p3 + (unsigned long )much;
      goto ldv_33237;
      ldv_33236:
      c = *p3;
      *p3 = *(p3 + 1UL);
      *(p3 + 1UL) = c;
      p3 = p3 + 2UL;
      ldv_33237: ;
      if ((unsigned long )pz > (unsigned long )p3) {
        goto ldv_33236;
      } else {
      }
      return (0);
    }
  } else
  if (! byteswaporder) {
    p2 = (u8 *)pex;
    p3 = (u8 *)pad;
    pz = p2 + (unsigned long )much;
    goto ldv_33240;
    ldv_33239:
    *p3 = *p2;
    *(p3 + 1UL) = *(p2 + 1UL);
    *(p3 + 2UL) = *(p2 + 2UL);
    *(p3 + 3UL) = *(p2 + 3UL);
    p3 = p3 + 4UL;
    p2 = p2 + 8UL;
    ldv_33240: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33239;
    } else {
    }
    return (0);
  } else {
    p2 = (u8 *)pex;
    p3 = (u8 *)pad;
    pz = p2 + (unsigned long )much;
    goto ldv_33243;
    ldv_33242:
    *p3 = *(p2 + 1UL);
    *(p3 + 1UL) = *p2;
    *(p3 + 2UL) = *(p2 + 3UL);
    *(p3 + 3UL) = *(p2 + 2UL);
    p3 = p3 + 4UL;
    p2 = p2 + 8UL;
    ldv_33243: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33242;
    } else {
    }
    return (0);
  }
  case 3: ;
  if (! decimatepixel) {
    if (! byteswaporder) {
      goto ldv_33251;
      ldv_33250: ;
      if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
        last = 1;
      } else {
        last = 0;
      }
      y = *p2;
      if ((int )last && ((unsigned int )mask & 12U) != 0U) {
        if (((unsigned int )mask & 4U) != 0U) {
          if ((int )isuy) {
            v = margin;
          } else {
            u = margin;
          }
        } else {
        }
      } else
      if ((int )isuy) {
        v = *(p2 + 1UL);
      } else {
        u = *(p2 + 1UL);
      }
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = r;
        tmp___1 = pcache;
        pcache = pcache + 1;
        *tmp___1 = g;
        tmp___2 = pcache;
        pcache = pcache + 1;
        *tmp___2 = b;
        goto ldv_33247;
        case 2:
        *p3 = r;
        *(p3 + 1UL) = g;
        tmp___3 = pcache;
        pcache = pcache + 1;
        *tmp___3 = b;
        goto ldv_33247;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33247: ;
      } else {
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
      }
      p2 = p2 + 2UL;
      if ((int )isuy) {
        isuy = 0;
      } else {
        isuy = 1;
      }
      p3 = p3 + (unsigned long )bytesperpixel;
      ldv_33251: ;
      if ((unsigned long )pz > (unsigned long )p2) {
        goto ldv_33250;
      } else {
      }
      return (0);
    } else {
      goto ldv_33258;
      ldv_33257: ;
      if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
        last = 1;
      } else {
        last = 0;
      }
      y = *p2;
      if ((int )last && ((unsigned int )mask & 12U) != 0U) {
        if (((unsigned int )mask & 4U) != 0U) {
          if ((int )isuy) {
            v = margin;
          } else {
            u = margin;
          }
        } else {
        }
      } else
      if ((int )isuy) {
        v = *(p2 + 1UL);
      } else {
        u = *(p2 + 1UL);
      }
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = b;
        tmp___4 = pcache;
        pcache = pcache + 1;
        *tmp___4 = g;
        tmp___5 = pcache;
        pcache = pcache + 1;
        *tmp___5 = r;
        goto ldv_33254;
        case 2:
        *p3 = b;
        *(p3 + 1UL) = g;
        tmp___6 = pcache;
        pcache = pcache + 1;
        *tmp___6 = r;
        goto ldv_33254;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33254: ;
      } else {
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
      }
      p2 = p2 + 2UL;
      if ((int )isuy) {
        isuy = 0;
      } else {
        isuy = 1;
      }
      p3 = p3 + (unsigned long )bytesperpixel;
      ldv_33258: ;
      if ((unsigned long )pz > (unsigned long )p2) {
        goto ldv_33257;
      } else {
      }
    }
    return (0);
  } else
  if (! byteswaporder) {
    goto ldv_33265;
    ldv_33264: ;
    if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
      last = 1;
    } else {
      last = 0;
    }
    y = *p2;
    if ((int )last && ((unsigned int )mask & 12U) != 0U) {
      if (((unsigned int )mask & 4U) != 0U) {
        if ((int )isuy) {
          v = margin;
        } else {
          u = margin;
        }
      } else {
      }
    } else
    if ((int )isuy) {
      v = *(p2 + 1UL);
    } else {
      u = *(p2 + 1UL);
    }
    if ((int )isuy) {
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = r;
        tmp___7 = pcache;
        pcache = pcache + 1;
        *tmp___7 = g;
        tmp___8 = pcache;
        pcache = pcache + 1;
        *tmp___8 = b;
        goto ldv_33261;
        case 2:
        *p3 = r;
        *(p3 + 1UL) = g;
        tmp___9 = pcache;
        pcache = pcache + 1;
        *tmp___9 = b;
        goto ldv_33261;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33261: ;
      } else {
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
      }
      isuy = 0;
      p3 = p3 + (unsigned long )bytesperpixel;
    } else {
      isuy = 1;
    }
    p2 = p2 + 2UL;
    ldv_33265: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33264;
    } else {
    }
    return (0);
  } else {
    goto ldv_33272;
    ldv_33271: ;
    if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
      last = 1;
    } else {
      last = 0;
    }
    y = *p2;
    if ((int )last && ((unsigned int )mask & 12U) != 0U) {
      if (((unsigned int )mask & 4U) != 0U) {
        if ((int )isuy) {
          v = margin;
        } else {
          u = margin;
        }
      } else {
      }
    } else
    if ((int )isuy) {
      v = *(p2 + 1UL);
    } else {
      u = *(p2 + 1UL);
    }
    if ((int )isuy) {
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = b;
        tmp___10 = pcache;
        pcache = pcache + 1;
        *tmp___10 = g;
        tmp___11 = pcache;
        pcache = pcache + 1;
        *tmp___11 = r;
        goto ldv_33268;
        case 2:
        *p3 = b;
        *(p3 + 1UL) = g;
        tmp___12 = pcache;
        pcache = pcache + 1;
        *tmp___12 = r;
        goto ldv_33268;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33268: ;
      } else {
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
      }
      isuy = 0;
      p3 = p3 + (unsigned long )bytesperpixel;
    } else {
      isuy = 1;
    }
    p2 = p2 + 2UL;
    ldv_33272: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33271;
    } else {
    }
    return (0);
  }
  case 4: ;
  if (! decimatepixel) {
    if (! byteswaporder) {
      goto ldv_33281;
      ldv_33280: ;
      if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
        last = 1;
      } else {
        last = 0;
      }
      y = *p2;
      if ((int )last && ((unsigned int )mask & 12U) != 0U) {
        if (((unsigned int )mask & 4U) != 0U) {
          if ((int )isuy) {
            v = margin;
          } else {
            u = margin;
          }
        } else {
        }
      } else
      if ((int )isuy) {
        v = *(p2 + 1UL);
      } else {
        u = *(p2 + 1UL);
      }
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = r;
        tmp___13 = pcache;
        pcache = pcache + 1;
        *tmp___13 = g;
        tmp___14 = pcache;
        pcache = pcache + 1;
        *tmp___14 = b;
        tmp___15 = pcache;
        pcache = pcache + 1;
        *tmp___15 = 0U;
        goto ldv_33276;
        case 2:
        *p3 = r;
        *(p3 + 1UL) = g;
        tmp___16 = pcache;
        pcache = pcache + 1;
        *tmp___16 = b;
        tmp___17 = pcache;
        pcache = pcache + 1;
        *tmp___17 = 0U;
        goto ldv_33276;
        case 3:
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
        tmp___18 = pcache;
        pcache = pcache + 1;
        *tmp___18 = 0U;
        goto ldv_33276;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33276: ;
      } else {
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
        *(p3 + 3UL) = 0U;
      }
      p2 = p2 + 2UL;
      if ((int )isuy) {
        isuy = 0;
      } else {
        isuy = 1;
      }
      p3 = p3 + (unsigned long )bytesperpixel;
      ldv_33281: ;
      if ((unsigned long )pz > (unsigned long )p2) {
        goto ldv_33280;
      } else {
      }
      return (0);
    } else {
      goto ldv_33289;
      ldv_33288: ;
      if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
        last = 1;
      } else {
        last = 0;
      }
      y = *p2;
      if ((int )last && ((unsigned int )mask & 12U) != 0U) {
        if (((unsigned int )mask & 4U) != 0U) {
          if ((int )isuy) {
            v = margin;
          } else {
            u = margin;
          }
        } else {
        }
      } else
      if ((int )isuy) {
        v = *(p2 + 1UL);
      } else {
        u = *(p2 + 1UL);
      }
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = b;
        tmp___19 = pcache;
        pcache = pcache + 1;
        *tmp___19 = g;
        tmp___20 = pcache;
        pcache = pcache + 1;
        *tmp___20 = r;
        tmp___21 = pcache;
        pcache = pcache + 1;
        *tmp___21 = 0U;
        goto ldv_33284;
        case 2:
        *p3 = b;
        *(p3 + 1UL) = g;
        tmp___22 = pcache;
        pcache = pcache + 1;
        *tmp___22 = r;
        tmp___23 = pcache;
        pcache = pcache + 1;
        *tmp___23 = 0U;
        goto ldv_33284;
        case 3:
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
        tmp___24 = pcache;
        pcache = pcache + 1;
        *tmp___24 = 0U;
        goto ldv_33284;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33284: ;
      } else {
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
        *(p3 + 3UL) = 0U;
      }
      p2 = p2 + 2UL;
      if ((int )isuy) {
        isuy = 0;
      } else {
        isuy = 1;
      }
      p3 = p3 + (unsigned long )bytesperpixel;
      ldv_33289: ;
      if ((unsigned long )pz > (unsigned long )p2) {
        goto ldv_33288;
      } else {
      }
    }
    return (0);
  } else
  if (! byteswaporder) {
    goto ldv_33297;
    ldv_33296: ;
    if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
      last = 1;
    } else {
      last = 0;
    }
    y = *p2;
    if ((int )last && ((unsigned int )mask & 12U) != 0U) {
      if (((unsigned int )mask & 4U) != 0U) {
        if ((int )isuy) {
          v = margin;
        } else {
          u = margin;
        }
      } else {
      }
    } else
    if ((int )isuy) {
      v = *(p2 + 1UL);
    } else {
      u = *(p2 + 1UL);
    }
    if ((int )isuy) {
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = r;
        tmp___25 = pcache;
        pcache = pcache + 1;
        *tmp___25 = g;
        tmp___26 = pcache;
        pcache = pcache + 1;
        *tmp___26 = b;
        tmp___27 = pcache;
        pcache = pcache + 1;
        *tmp___27 = 0U;
        goto ldv_33292;
        case 2:
        *p3 = r;
        *(p3 + 1UL) = g;
        tmp___28 = pcache;
        pcache = pcache + 1;
        *tmp___28 = b;
        tmp___29 = pcache;
        pcache = pcache + 1;
        *tmp___29 = 0U;
        goto ldv_33292;
        case 3:
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
        tmp___30 = pcache;
        pcache = pcache + 1;
        *tmp___30 = 0U;
        goto ldv_33292;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33292: ;
      } else {
        *p3 = r;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = b;
        *(p3 + 3UL) = 0U;
      }
      isuy = 0;
      p3 = p3 + (unsigned long )bytesperpixel;
    } else {
      isuy = 1;
    }
    p2 = p2 + 2UL;
    ldv_33297: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33296;
    } else {
    }
    return (0);
  } else {
    goto ldv_33305;
    ldv_33304: ;
    if ((unsigned long )(p3 + (unsigned long )bytesperpixel) >= (unsigned long )pr) {
      last = 1;
    } else {
      last = 0;
    }
    y = *p2;
    if ((int )last && ((unsigned int )mask & 12U) != 0U) {
      if (((unsigned int )mask & 4U) != 0U) {
        if ((int )isuy) {
          v = margin;
        } else {
          u = margin;
        }
      } else {
      }
    } else
    if ((int )isuy) {
      v = *(p2 + 1UL);
    } else {
      u = *(p2 + 1UL);
    }
    if ((int )isuy) {
      tmp = ay[(int )y] + rv[(int )v];
      r = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = (ay[(int )y] - gu[(int )u]) - gv[(int )v];
      g = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      tmp = ay[(int )y] + bu[(int )u];
      b = tmp <= 255 ? (tmp >= 0 ? (u8 )tmp : 0U) : 255U;
      if ((int )last && rump != 0) {
        pcache = (u8 *)(& peasycap->cache);
        switch (bytesperpixel - rump) {
        case 1:
        *p3 = b;
        tmp___31 = pcache;
        pcache = pcache + 1;
        *tmp___31 = g;
        tmp___32 = pcache;
        pcache = pcache + 1;
        *tmp___32 = r;
        tmp___33 = pcache;
        pcache = pcache + 1;
        *tmp___33 = 0U;
        goto ldv_33300;
        case 2:
        *p3 = b;
        *(p3 + 1UL) = g;
        tmp___34 = pcache;
        pcache = pcache + 1;
        *tmp___34 = r;
        tmp___35 = pcache;
        pcache = pcache + 1;
        *tmp___35 = 0U;
        goto ldv_33300;
        case 3:
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
        tmp___36 = pcache;
        pcache = pcache + 1;
        *tmp___36 = 0U;
        goto ldv_33300;
        default:
        printk("<7>easycap::%i%s: MISTAKE: %i=rump\n", peasycap->isdongle, "redaub",
               bytesperpixel - rump);
        return (-14);
        }
        ldv_33300: ;
      } else {
        *p3 = b;
        *(p3 + 1UL) = g;
        *(p3 + 2UL) = r;
        *(p3 + 3UL) = 0U;
      }
      isuy = 0;
      p3 = p3 + (unsigned long )bytesperpixel;
    } else {
      isuy = 1;
    }
    p2 = p2 + 2UL;
    ldv_33305: ;
    if ((unsigned long )pz > (unsigned long )p2) {
      goto ldv_33304;
    } else {
    }
    return (0);
  }
  default:
  printk("<7>easycap::%i%s: MISTAKE: %i=bytesperpixel\n", peasycap->isdongle, "redaub",
         bytesperpixel);
  return (-14);
  }
  return (0);
}
}
static void easycap_vma_open(struct vm_area_struct *pvma )
{
  struct easycap *peasycap ;
  {
  peasycap = (struct easycap *)pvma->vm_private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_vma_open");
    return;
  } else {
  }
  peasycap->vma_many = peasycap->vma_many + 1;
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: %i=peasycap->vma_many\n", "easycap_vma_open", peasycap->vma_many);
  } else {
  }
  return;
}
}
static void easycap_vma_close(struct vm_area_struct *pvma )
{
  struct easycap *peasycap ;
  {
  peasycap = (struct easycap *)pvma->vm_private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_vma_close");
    return;
  } else {
  }
  peasycap->vma_many = peasycap->vma_many - 1;
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: %i=peasycap->vma_many\n", "easycap_vma_close", peasycap->vma_many);
  } else {
  }
  return;
}
}
static int easycap_vma_fault(struct vm_area_struct *pvma , struct vm_fault *pvmf )
{
  int k ;
  int m ;
  int retcode ;
  void *pbuf ;
  struct page *page ;
  struct easycap *peasycap ;
  unsigned long tmp ;
  {
  retcode = 256;
  if ((unsigned long )pvma == (unsigned long )((struct vm_area_struct *)0)) {
    printk("<7>easycap:: %s: pvma is NULL\n", "easycap_vma_fault");
    return (retcode);
  } else {
  }
  if ((unsigned long )pvmf == (unsigned long )((struct vm_fault *)0)) {
    printk("<7>easycap:: %s: pvmf is NULL\n", "easycap_vma_fault");
    return (retcode);
  } else {
  }
  k = (int )(pvmf->pgoff / 405UL);
  m = (int )(pvmf->pgoff % 405UL);
  if (m == 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap:: %s: %4i=k, %4i=m\n", "easycap_vma_fault", k, m);
    } else {
    }
  } else
  if (easycap_debug > 15) {
    printk("<7>easycap:: %s: %4i=k, %4i=m\n", "easycap_vma_fault", k, m);
  } else {
  }
  if (k < 0 || k > 5) {
    printk("<7>easycap:: %s: OLD_ERROR: buffer index %i out of range\n", "easycap_vma_fault",
           k);
    return (retcode);
  } else {
  }
  if (m < 0 || (unsigned int )m > 404U) {
    printk("<7>easycap:: %s: OLD_ERROR: page number  %i out of range\n", "easycap_vma_fault",
           m);
    return (retcode);
  } else {
  }
  peasycap = (struct easycap *)pvma->vm_private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_vma_fault");
    return (retcode);
  } else {
  }
  pbuf = peasycap->frame_buffer[k][m].pgo;
  if ((unsigned long )pbuf == (unsigned long )((void *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR:  pbuf is NULL\n", peasycap->isdongle, "easycap_vma_fault");
    return (retcode);
  } else {
  }
  tmp = __phys_addr((unsigned long )pbuf);
  page = (struct page *)-24189255811072L + (tmp >> 12);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR:  page is NULL\n", peasycap->isdongle, "easycap_vma_fault");
    return (retcode);
  } else {
  }
  get_page(page);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR:  page is NULL after get_page(page)\n", peasycap->isdongle,
           "easycap_vma_fault");
  } else {
    pvmf->page = page;
    retcode = 0;
  }
  return (retcode);
}
}
static struct vm_operations_struct const easycap_vm_ops =
     {& easycap_vma_open, & easycap_vma_close, & easycap_vma_fault, 0, 0, 0, 0, 0};
static int easycap_mmap(struct file *file , struct vm_area_struct *pvma )
{
  {
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: \n", "easycap_mmap");
  } else {
  }
  pvma->vm_ops = & easycap_vm_ops;
  pvma->vm_flags = pvma->vm_flags | 524288UL;
  if ((unsigned long )file != (unsigned long )((struct file *)0)) {
    pvma->vm_private_data = file->private_data;
  } else {
  }
  easycap_vma_open(pvma);
  return (0);
}
}
static void easycap_complete(struct urb *purb )
{
  struct easycap *peasycap ;
  struct data_buffer *pfield_buffer ;
  char errbuf[16U] ;
  int i ;
  int more ;
  int much ;
  int leap ;
  int rc ;
  int last ;
  int videofieldamount ;
  unsigned int override ;
  unsigned int bad ;
  int framestatus ;
  int framelength ;
  int frameactual ;
  int frameoffset ;
  u8 *pu ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  char const *tmp___3 ;
  {
  if ((unsigned long )purb == (unsigned long )((struct urb *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: easycap_complete(): purb is NULL\n", "easycap_complete");
    return;
  } else {
  }
  peasycap = (struct easycap *)purb->context;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: easycap_complete(): peasycap is NULL\n", "easycap_complete");
    return;
  } else {
  }
  if (peasycap->video_eof != 0) {
    return;
  } else {
  }
  i = 0;
  goto ldv_33358;
  ldv_33357: ;
  if ((unsigned long )purb->transfer_buffer == (unsigned long )peasycap->video_isoc_buffer[i].pgo) {
    goto ldv_33356;
  } else {
  }
  i = i + 1;
  ldv_33358: ;
  if (i <= 15) {
    goto ldv_33357;
  } else {
  }
  ldv_33356: ;
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: %2i=urb\n", peasycap->isdongle, "easycap_complete",
           i);
  } else {
  }
  last = peasycap->video_isoc_sequence;
  if ((last == 15 && i != 0) || (last != 15 && last + 1 != i)) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: OLD_ERROR: out-of-order urbs %i,%i ... continuing\n",
             peasycap->isdongle, "easycap_complete", last, i);
    } else {
    }
  } else {
  }
  peasycap->video_isoc_sequence = i;
  if (peasycap->video_idle != 0) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: %i=video_idle  %i=video_isoc_streaming\n", peasycap->isdongle,
             "easycap_complete", peasycap->video_idle, peasycap->video_isoc_streaming);
    } else {
    }
    if (peasycap->video_isoc_streaming != 0) {
      rc = ldv_usb_submit_urb_5(purb, 32U);
      if (rc != 0) {
        tmp = ldv_strerror(rc);
        printk("<7>easycap::%i%s: %s:%d ENOMEM\n", peasycap->isdongle, "easycap_complete",
               tmp, rc);
        if (rc != -19) {
          printk("<7>easycap::%i%s: OLD_ERROR: while %i=video_idle, usb_submit_urb() failed with rc:\n",
                 peasycap->isdongle, "easycap_complete", peasycap->video_idle);
        } else {
        }
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  override = 0U;
  if (peasycap->field_fill > 3) {
    printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->field_fill\n", peasycap->isdongle,
           "easycap_complete");
    return;
  } else {
  }
  if (purb->status != 0) {
    if (purb->status == -108 || purb->status == -2) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: urb status -ESHUTDOWN or -ENOENT\n", peasycap->isdongle,
               "easycap_complete");
      } else {
      }
      return;
    } else {
    }
    peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 32768U);
    tmp___0 = ldv_strerror(purb->status);
    printk("<7>easycap::%i%s: OLD_ERROR: bad urb status -%s: %d\n", peasycap->isdongle,
           "easycap_complete", tmp___0, purb->status);
  } else {
    i = 0;
    goto ldv_33366;
    ldv_33365: ;
    if (purb->iso_frame_desc[i].status != 0) {
      peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 32768U);
      tmp___1 = ldv_strerror(purb->iso_frame_desc[i].status);
      strcpy((char *)(& errbuf), tmp___1);
    } else {
    }
    framestatus = purb->iso_frame_desc[i].status;
    framelength = (int )purb->iso_frame_desc[i].length;
    frameactual = (int )purb->iso_frame_desc[i].actual_length;
    frameoffset = (int )purb->iso_frame_desc[i].offset;
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: frame[%2i]:%4i=status %4i=actual %4i=length %5i=offset\n",
             peasycap->isdongle, "easycap_complete", i, framestatus, frameactual,
             framelength, frameoffset);
    } else {
    }
    if (purb->iso_frame_desc[i].status == 0) {
      more = (int )purb->iso_frame_desc[i].actual_length;
      pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
      videofieldamount = (int )((unsigned int )((unsigned long )peasycap->field_page) * 4096U + ((unsigned int )((long )pfield_buffer->pto) - (unsigned int )((long )pfield_buffer->pgo)));
      if (more == 4) {
        peasycap->video_mt = peasycap->video_mt + 1;
      } else {
      }
      if (more > 4) {
        if (peasycap->video_mt != 0) {
          if (easycap_debug > 7) {
            printk("<7>easycap::%i%s: %4i empty video urb frames\n", peasycap->isdongle,
                   "easycap_complete", peasycap->video_mt);
          } else {
          }
          peasycap->video_mt = 0;
        } else {
        }
        if (peasycap->field_fill > 3) {
          printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->field_fill\n", peasycap->isdongle,
                 "easycap_complete");
          return;
        } else {
        }
        if ((unsigned int )peasycap->field_page > 202U) {
          printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->field_page\n", peasycap->isdongle,
                 "easycap_complete");
          return;
        } else {
        }
        pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
        pu = (u8 *)purb->transfer_buffer + (unsigned long )purb->iso_frame_desc[i].offset;
        if ((int )((signed char )*pu) < 0) {
          leap = 8;
        } else {
          leap = 4;
        }
        if (more == 8 || override != 0U) {
          if (peasycap->videofieldamount < videofieldamount) {
            if (videofieldamount - peasycap->videofieldamount == 2) {
              peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 256U);
              peasycap->video_junk = peasycap->video_junk + 17;
            } else {
              peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 16384U);
            }
          } else
          if (peasycap->videofieldamount > videofieldamount) {
            peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 8192U);
          } else {
          }
          bad = (unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount & 65280U;
          if (bad == 0U) {
            peasycap->video_junk = peasycap->video_junk - 1;
            if (peasycap->video_junk < -16) {
              peasycap->video_junk = -16;
            } else {
            }
            tmp___2 = peasycap->field_fill;
            peasycap->field_fill = peasycap->field_fill + 1;
            peasycap->field_read = tmp___2;
            if (peasycap->field_fill > 3) {
              peasycap->field_fill = 0;
            } else {
            }
            peasycap->field_page = 0;
            pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
            pfield_buffer->pto = pfield_buffer->pgo;
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: bumped to: %i=peasycap->field_fill  %i=parity\n",
                     peasycap->isdongle, "easycap_complete", peasycap->field_fill,
                     (int )pfield_buffer->kount & 255);
            } else {
            }
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: field buffer %i has %i bytes fit to be read\n",
                     peasycap->isdongle, "easycap_complete", peasycap->field_read,
                     videofieldamount);
            } else {
            }
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: wakeup call to wq_video, %i=field_read %i=field_fill %i=parity\n",
                     peasycap->isdongle, "easycap_complete", peasycap->field_read,
                     peasycap->field_fill, (int )peasycap->field_buffer[peasycap->field_read][0].kount & 255);
            } else {
            }
            __wake_up(& peasycap->wq_video, 1U, 1, (void *)0);
          } else {
            peasycap->video_junk = peasycap->video_junk + 1;
            if ((bad & 16U) != 0U) {
              peasycap->video_junk = peasycap->video_junk + 9;
            } else {
            }
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: field buffer %i had %i bytes, now discarded: 0x%04X\n",
                     peasycap->isdongle, "easycap_complete", peasycap->field_fill,
                     videofieldamount, (int )peasycap->field_buffer[peasycap->field_fill][0].kount & 65280);
            } else {
            }
            peasycap->field_fill = peasycap->field_fill + 1;
            if (peasycap->field_fill > 3) {
              peasycap->field_fill = 0;
            } else {
            }
            peasycap->field_page = 0;
            pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
            pfield_buffer->pto = pfield_buffer->pgo;
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: bumped to: %i=peasycap->field_fill  %i=parity\n",
                     peasycap->isdongle, "easycap_complete", peasycap->field_fill,
                     (int )pfield_buffer->kount & 255);
            } else {
            }
          }
          if (more == 8) {
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: end-of-field: received parity byte 0x%02X\n",
                     peasycap->isdongle, "easycap_complete", (int )*pu);
            } else {
            }
            if (((unsigned int )*pu & 64U) != 0U) {
              pfield_buffer->kount = 0U;
            } else {
              pfield_buffer->kount = 1U;
            }
            pfield_buffer->input = (u16 )(((int )((short )peasycap->input) & 7) | 8);
            if (easycap_debug > 7) {
              printk("<7>easycap::%i%s: end-of-field: 0x%02X=kount\n", peasycap->isdongle,
                     "easycap_complete", (int )pfield_buffer->kount & 255);
            } else {
            }
          } else {
          }
        } else {
        }
        pu = pu + (unsigned long )leap;
        more = more - leap;
        if (peasycap->field_fill > 3) {
          printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->field_fill\n", peasycap->isdongle,
                 "easycap_complete");
          return;
        } else {
        }
        if ((unsigned int )peasycap->field_page > 202U) {
          printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->field_page\n", peasycap->isdongle,
                 "easycap_complete");
          return;
        } else {
        }
        pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
        goto ldv_33363;
        ldv_33362:
        pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
        if ((unsigned long )((long )pfield_buffer->pto - (long )pfield_buffer->pgo) > 4096UL) {
          printk("<7>easycap::%i%s: OLD_ERROR: bad pfield_buffer->pto\n", peasycap->isdongle,
                 "easycap_complete");
          return;
        } else {
        }
        if ((long )pfield_buffer->pto - (long )pfield_buffer->pgo == 4096L) {
          peasycap->field_page = peasycap->field_page + 1;
          if ((unsigned int )peasycap->field_page > 202U) {
            if (easycap_debug > 15) {
              printk("<7>easycap::%i%s: wrapping peasycap->field_page\n", peasycap->isdongle,
                     "easycap_complete");
            } else {
            }
            peasycap->field_page = 0;
          } else {
          }
          pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )peasycap->field_fill + (unsigned long )peasycap->field_page);
          pfield_buffer->pto = pfield_buffer->pgo;
          pfield_buffer->input = (u16 )(((int )((short )peasycap->input) & 7) | 8);
          if ((int )peasycap->field_buffer[peasycap->field_fill][0].input != (int )pfield_buffer->input) {
            peasycap->field_buffer[peasycap->field_fill][0].kount = (u16 )((unsigned int )peasycap->field_buffer[peasycap->field_fill][0].kount | 4096U);
          } else {
          }
        } else {
        }
        much = (int )(((unsigned int )((long )pfield_buffer->pgo) - (unsigned int )((long )pfield_buffer->pto)) + 4096U);
        if (much > more) {
          much = more;
        } else {
        }
        __len = (size_t )much;
        __ret = memcpy(pfield_buffer->pto, (void const *)pu, __len);
        pu = pu + (unsigned long )much;
        pfield_buffer->pto = pfield_buffer->pto + (unsigned long )much;
        more = more - much;
        ldv_33363: ;
        if (more != 0) {
          goto ldv_33362;
        } else {
        }
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_33366: ;
    if (purb->number_of_packets > i) {
      goto ldv_33365;
    } else {
    }
  }
  if (peasycap->video_junk > 15) {
    printk("<7>easycap::%i%s: easycap driver shutting down on condition green\n",
           peasycap->isdongle, "easycap_complete");
    peasycap->status = 1;
    peasycap->video_eof = 1;
    peasycap->video_junk = 0;
    __wake_up(& peasycap->wq_video, 1U, 1, (void *)0);
    return;
  } else {
  }
  if (peasycap->video_isoc_streaming != 0) {
    rc = ldv_usb_submit_urb_6(purb, 32U);
    if (rc != 0) {
      tmp___3 = ldv_strerror(rc);
      printk("<7>easycap::%i%s: %s: %d\n", peasycap->isdongle, "easycap_complete",
             tmp___3, rc);
      if (rc != -19) {
        printk("<7>easycap::%i%s: OLD_ERROR: while %i=video_idle, usb_submit_urb() failed with rc:\n",
               peasycap->isdongle, "easycap_complete", peasycap->video_idle);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static struct v4l2_file_operations const v4l2_fops =
     {& __this_module, 0, 0, & easycap_poll, 0, & easycap_unlocked_ioctl, 0, & easycap_mmap,
    & easycap_open_noinode, 0};
static int easycap_usb_probe(struct usb_interface *intf , struct usb_device_id const *id )
{
  struct usb_device *usbdev ;
  struct usb_host_interface *alt ;
  struct usb_endpoint_descriptor *ep ;
  struct usb_interface_descriptor *interface ;
  struct urb *purb ;
  struct easycap *peasycap ;
  int ndong ;
  struct data_urb *pdata_urb ;
  int i ;
  int j ;
  int k ;
  int m ;
  int rc ;
  u8 bInterfaceNumber ;
  u8 bInterfaceClass ;
  u8 bInterfaceSubClass ;
  void *pbuf ;
  int okalt[8U] ;
  int isokalt ;
  int okepn[8U] ;
  int okmps[8U] ;
  int maxpacketsize ;
  u16 mask ;
  s32 value ;
  struct easycap_format *peasycap_format ;
  int fmtidx ;
  struct inputset *inputset ;
  void *tmp ;
  int __val ;
  int __min ;
  int __max ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct v4l2_pix_format *pix ;
  int tmp___3 ;
  int tmp___4 ;
  int _min1 ;
  int _min2 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  unsigned long tmp___7 ;
  void *tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  unsigned long tmp___12 ;
  void *tmp___13 ;
  unsigned int tmp___14 ;
  {
  usbdev = interface_to_usbdev(intf);
  alt = usb_altnum_to_altsetting((struct usb_interface const *)intf, 0U);
  if ((unsigned long )alt == (unsigned long )((struct usb_host_interface *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: usb_host_interface not found\n", "easycap_usb_probe");
    return (-14);
  } else {
  }
  interface = & alt->desc;
  if ((unsigned long )interface == (unsigned long )((struct usb_interface_descriptor *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: intf_descriptor is NULL\n", "easycap_usb_probe");
    return (-14);
  } else {
  }
  bInterfaceNumber = interface->bInterfaceNumber;
  bInterfaceClass = interface->bInterfaceClass;
  bInterfaceSubClass = interface->bInterfaceSubClass;
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: intf[%i]: num_altsetting=%i\n", "easycap_usb_probe",
           (int )bInterfaceNumber, intf->num_altsetting);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: intf[%i]: cur_altsetting - altsetting=%li\n", "easycap_usb_probe",
           (int )bInterfaceNumber, ((long )intf->cur_altsetting - (long )intf->altsetting) / 48L);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: intf[%i]: bInterfaceClass=0x%02X bInterfaceSubClass=0x%02X\n",
           "easycap_usb_probe", (int )bInterfaceNumber, (int )bInterfaceClass, (int )bInterfaceSubClass);
  } else {
  }
  if ((unsigned int )bInterfaceNumber == 0U) {
    tmp = kzalloc(134768UL, 208U);
    peasycap = (struct easycap *)tmp;
    if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR: Could not allocate peasycap\n", "easycap_usb_probe");
      return (-12);
    } else {
    }
    peasycap->minor = -1;
    kref_init(& peasycap->kref);
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: intf[%i]: after kref_init(..._video) %i=peasycap->kref.refcount.counter\n",
             peasycap->isdongle, "easycap_usb_probe", (int )bInterfaceNumber, peasycap->kref.refcount.counter);
    } else {
    }
    __val = easycap_gain;
    __min = 0;
    __max = 31;
    __val = __min > __val ? __min : __val;
    peasycap->gain = (signed char )(__max < __val ? __max : __val);
    __init_waitqueue_head(& peasycap->wq_video, "&peasycap->wq_video", & __key);
    __init_waitqueue_head(& peasycap->wq_audio, "&peasycap->wq_audio", & __key___0);
    __init_waitqueue_head(& peasycap->wq_trigger, "&peasycap->wq_trigger", & __key___1);
    tmp___0 = mutex_lock_interruptible_nested(& mutex_dongle, 0U);
    if (tmp___0 != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot down mutex_dongle\n", "easycap_usb_probe");
      return (-512);
    } else {
    }
    ndong = 0;
    goto ldv_33410;
    ldv_33409: ;
    if ((unsigned long )easycapdc60_dongle[ndong].peasycap == (unsigned long )((struct easycap *)0)) {
      tmp___1 = mutex_is_locked(& easycapdc60_dongle[ndong].mutex_video);
      if (tmp___1 == 0) {
        tmp___2 = mutex_is_locked(& easycapdc60_dongle[ndong].mutex_audio);
        if (tmp___2 == 0) {
          easycapdc60_dongle[ndong].peasycap = peasycap;
          peasycap->isdongle = ndong;
          if (easycap_debug > 7) {
            printk("<7>easycap::%i%s: intf[%i]: peasycap-->easycap_dongle[%i].peasycap\n",
                   peasycap->isdongle, "easycap_usb_probe", (int )bInterfaceNumber,
                   ndong);
          } else {
          }
          goto ldv_33408;
        } else {
        }
      } else {
      }
    } else {
    }
    ndong = ndong + 1;
    ldv_33410: ;
    if (ndong <= 7) {
      goto ldv_33409;
    } else {
    }
    ldv_33408: ;
    if (ndong > 7) {
      printk("<7>easycap::%i%s: OLD_ERROR: too many dongles\n", peasycap->isdongle, "easycap_usb_probe");
      mutex_unlock(& mutex_dongle);
      return (-12);
    } else {
    }
    mutex_unlock(& mutex_dongle);
    peasycap->allocation_video_struct = 134768;
    peasycap->pusb_device = usbdev;
    peasycap->pusb_interface = intf;
    peasycap->microphone = 0;
    peasycap->video_interface = -1;
    peasycap->video_altsetting_on = -1;
    peasycap->video_altsetting_off = -1;
    peasycap->video_endpointnumber = -1;
    peasycap->video_isoc_maxframesize = -1;
    peasycap->video_isoc_buffer_size = -1;
    peasycap->audio_interface = -1;
    peasycap->audio_altsetting_on = -1;
    peasycap->audio_altsetting_off = -1;
    peasycap->audio_endpointnumber = -1;
    peasycap->audio_isoc_maxframesize = -1;
    peasycap->audio_isoc_buffer_size = -1;
    peasycap->frame_buffer_many = 6;
    rc = easycap_video_fillin_formats();
    if (rc < 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: fillin_formats() rc = %i\n", peasycap->isdongle,
             "easycap_usb_probe", rc);
      return (-14);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i formats available\n", peasycap->isdongle, "easycap_usb_probe",
             rc);
    } else {
    }
    inputset = (struct inputset *)(& peasycap->inputset);
    fmtidx = (int )peasycap->ntsc;
    m = 0;
    mask = 0U;
    i = 0;
    goto ldv_33415;
    ldv_33414: ;
    if ((unsigned int )fmtidx == (unsigned int )easycap_standard[i].v4l2_standard.index) {
      m = m + 1;
      k = 0;
      goto ldv_33412;
      ldv_33411:
      (inputset + (unsigned long )k)->standard_offset = i;
      k = k + 1;
      ldv_33412: ;
      if (k <= 5) {
        goto ldv_33411;
      } else {
      }
      mask = easycap_standard[i].mask;
    } else {
    }
    i = i + 1;
    ldv_33415: ;
    if ((unsigned int )((unsigned short )easycap_standard[i].mask) != 65535U) {
      goto ldv_33414;
    } else {
    }
    if (m != 1) {
      printk("<7>easycap::%i%s: OLD_ERROR: inputset->standard_offset unpopulated, %i=m\n",
             peasycap->isdongle, "easycap_usb_probe", m);
      return (-2);
    } else {
    }
    peasycap_format = (struct easycap_format *)(& easycap_format);
    m = 0;
    i = 0;
    goto ldv_33423;
    ldv_33422:
    pix = & peasycap_format->v4l2_format.fmt.pix;
    if (((((((int )peasycap_format->mask ^ (int )mask) & 15) == 0 && (unsigned int )pix->field == 1U) && pix->pixelformat == 1498831189U) && pix->width == 640U) && pix->height == 480U) {
      m = m + 1;
      k = 0;
      goto ldv_33419;
      ldv_33418:
      (inputset + (unsigned long )k)->format_offset = i;
      k = k + 1;
      ldv_33419: ;
      if (k <= 5) {
        goto ldv_33418;
      } else {
      }
      goto ldv_33421;
    } else {
    }
    peasycap_format = peasycap_format + 1;
    i = i + 1;
    ldv_33423: ;
    if (peasycap_format->v4l2_format.fmt.pix.width != 0U) {
      goto ldv_33422;
    } else {
    }
    ldv_33421: ;
    if (m != 1) {
      printk("<7>easycap::%i%s: OLD_ERROR: inputset[]->format_offset unpopulated\n", peasycap->isdongle,
             "easycap_usb_probe");
      return (-2);
    } else {
    }
    m = 0;
    i = 0;
    goto ldv_33437;
    ldv_33436:
    value = easycap_control[i].default_value;
    if (easycap_control[i].id == 9963776U) {
      m = m + 1;
      k = 0;
      goto ldv_33425;
      ldv_33424:
      (inputset + (unsigned long )k)->brightness = value;
      k = k + 1;
      ldv_33425: ;
      if (k <= 5) {
        goto ldv_33424;
      } else {
      }
    } else
    if (easycap_control[i].id == 9963777U) {
      m = m + 1;
      k = 0;
      goto ldv_33428;
      ldv_33427:
      (inputset + (unsigned long )k)->contrast = value;
      k = k + 1;
      ldv_33428: ;
      if (k <= 5) {
        goto ldv_33427;
      } else {
      }
    } else
    if (easycap_control[i].id == 9963778U) {
      m = m + 1;
      k = 0;
      goto ldv_33431;
      ldv_33430:
      (inputset + (unsigned long )k)->saturation = value;
      k = k + 1;
      ldv_33431: ;
      if (k <= 5) {
        goto ldv_33430;
      } else {
      }
    } else
    if (easycap_control[i].id == 9963779U) {
      m = m + 1;
      k = 0;
      goto ldv_33434;
      ldv_33433:
      (inputset + (unsigned long )k)->hue = value;
      k = k + 1;
      ldv_33434: ;
      if (k <= 5) {
        goto ldv_33433;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_33437: ;
    if (easycap_control[i].id != 4294967295U) {
      goto ldv_33436;
    } else {
    }
    if (m != 4) {
      printk("<7>easycap::%i%s: OLD_ERROR: inputset[]->brightness underpopulated\n", peasycap->isdongle,
             "easycap_usb_probe");
      return (-2);
    } else {
    }
    k = 0;
    goto ldv_33440;
    ldv_33439:
    (inputset + (unsigned long )k)->input = k;
    k = k + 1;
    ldv_33440: ;
    if (k <= 5) {
      goto ldv_33439;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: populated inputset[]\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: finished initialization\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
  } else {
    ndong = 0;
    goto ldv_33444;
    ldv_33443: ;
    if ((unsigned long )(easycapdc60_dongle[ndong].peasycap)->pusb_device == (unsigned long )usbdev) {
      peasycap = easycapdc60_dongle[ndong].peasycap;
      if (easycap_debug > 7) {
        printk("<7>easycap:: %s: intf[%i]: dongle[%i].peasycap\n", "easycap_usb_probe",
               (int )bInterfaceNumber, ndong);
      } else {
      }
      goto ldv_33442;
    } else {
    }
    ndong = ndong + 1;
    ldv_33444: ;
    if (ndong <= 7) {
      goto ldv_33443;
    } else {
    }
    ldv_33442: ;
    if (ndong > 7) {
      printk("<7>easycap:: %s: OLD_ERROR: peasycap is unknown when probing interface %i\n",
             "easycap_usb_probe", (int )bInterfaceNumber);
      return (-19);
    } else {
    }
    if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL when probing interface %i\n",
             "easycap_usb_probe", (int )bInterfaceNumber);
      return (-19);
    } else {
    }
  }
  if ((unsigned int )bInterfaceClass == 14U || (unsigned int )bInterfaceClass == 255U) {
    if (peasycap->video_interface == -1) {
      peasycap->video_interface = (int )bInterfaceNumber;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: setting peasycap->video_interface=%i\n", peasycap->isdongle,
               "easycap_usb_probe", peasycap->video_interface);
      } else {
      }
    } else
    if (peasycap->video_interface != (int )bInterfaceNumber) {
      printk("<7>easycap::%i%s: OLD_ERROR: attempting to reset peasycap->video_interface\n",
             peasycap->isdongle, "easycap_usb_probe");
      printk("<7>easycap::%i%s: ...... continuing with %i=peasycap->video_interface\n",
             peasycap->isdongle, "easycap_usb_probe", peasycap->video_interface);
    } else {
    }
  } else
  if ((unsigned int )bInterfaceClass == 1U && (unsigned int )bInterfaceSubClass == 2U) {
    if (peasycap->audio_interface == -1) {
      peasycap->audio_interface = (int )bInterfaceNumber;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: setting peasycap->audio_interface=%i\n", peasycap->isdongle,
               "easycap_usb_probe", peasycap->audio_interface);
      } else {
      }
    } else
    if (peasycap->audio_interface != (int )bInterfaceNumber) {
      printk("<7>easycap::%i%s: OLD_ERROR: attempting to reset peasycap->audio_interface\n",
             peasycap->isdongle, "easycap_usb_probe");
      printk("<7>easycap::%i%s: ...... continuing with %i=peasycap->audio_interface\n",
             peasycap->isdongle, "easycap_usb_probe", peasycap->audio_interface);
    } else {
    }
  } else {
  }
  isokalt = 0;
  i = 0;
  goto ldv_33455;
  ldv_33454:
  alt = usb_altnum_to_altsetting((struct usb_interface const *)intf, (unsigned int )i);
  if ((unsigned long )alt == (unsigned long )((struct usb_host_interface *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: alt is NULL\n", peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  interface = & alt->desc;
  if ((unsigned long )interface == (unsigned long )((struct usb_interface_descriptor *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: intf_descriptor is NULL\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if ((unsigned int )interface->bNumEndpoints == 0U) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: intf[%i]alt[%i] has no endpoints\n", peasycap->isdongle,
             "easycap_usb_probe", (int )bInterfaceNumber, i);
    } else {
    }
  } else {
  }
  j = 0;
  goto ldv_33452;
  ldv_33451:
  ep = & (alt->endpoint + (unsigned long )j)->desc;
  if ((unsigned long )ep == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR:  ep is NULL.\n", peasycap->isdongle, "easycap_usb_probe");
    printk("<7>easycap::%i%s: ...... skipping\n", peasycap->isdongle, "easycap_usb_probe");
    goto ldv_33445;
  } else {
  }
  tmp___4 = usb_endpoint_is_isoc_in((struct usb_endpoint_descriptor const *)ep);
  if (tmp___4 == 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: intf[%i]alt[%i]end[%i] is a %d endpoint\n", peasycap->isdongle,
             "easycap_usb_probe", (int )bInterfaceNumber, i, j, (int )ep->bmAttributes);
    } else {
    }
    tmp___3 = usb_endpoint_dir_out((struct usb_endpoint_descriptor const *)ep);
    if (tmp___3 != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: OUT endpoint unexpected\n", peasycap->isdongle,
             "easycap_usb_probe");
      printk("<7>easycap::%i%s: ...... continuing\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    goto ldv_33445;
  } else {
  }
  switch ((int )bInterfaceClass) {
  case 14: ;
  case 255: ;
  if ((unsigned int )ep->wMaxPacketSize != 0U) {
    if (isokalt <= 7) {
      okalt[isokalt] = i;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okalt[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okalt[isokalt], isokalt);
      } else {
      }
      okepn[isokalt] = (int )ep->bEndpointAddress & 15;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okepn[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okepn[isokalt], isokalt);
      } else {
      }
      okmps[isokalt] = (int )ep->wMaxPacketSize;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okmps[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okmps[isokalt], isokalt);
      } else {
      }
      isokalt = isokalt + 1;
    } else {
    }
  } else
  if (peasycap->video_altsetting_off == -1) {
    peasycap->video_altsetting_off = i;
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i=video_altsetting_off <====\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_altsetting_off);
    } else {
    }
  } else {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->video_altsetting_off already set\n",
           peasycap->isdongle, "easycap_usb_probe");
    printk("<7>easycap::%i%s: ...... continuing with %i=peasycap->video_altsetting_off\n",
           peasycap->isdongle, "easycap_usb_probe", peasycap->video_altsetting_off);
  }
  goto ldv_33448;
  case 1: ;
  if ((unsigned int )bInterfaceSubClass != 2U) {
    goto ldv_33448;
  } else {
  }
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap is NULL\n", peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  if ((unsigned int )ep->wMaxPacketSize != 0U) {
    if (isokalt <= 7) {
      okalt[isokalt] = i;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okalt[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okalt[isokalt], isokalt);
      } else {
      }
      okepn[isokalt] = (int )ep->bEndpointAddress & 15;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okepn[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okepn[isokalt], isokalt);
      } else {
      }
      okmps[isokalt] = (int )ep->wMaxPacketSize;
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: %i=okmps[%i]\n", peasycap->isdongle, "easycap_usb_probe",
               okmps[isokalt], isokalt);
      } else {
      }
      isokalt = isokalt + 1;
    } else {
    }
  } else
  if (peasycap->audio_altsetting_off == -1) {
    peasycap->audio_altsetting_off = i;
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: %i=audio_altsetting_off <====\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_altsetting_off);
    } else {
    }
  } else {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->audio_altsetting_off already set\n",
           peasycap->isdongle, "easycap_usb_probe");
    printk("<7>easycap::%i%s: ...... continuing with %i=peasycap->audio_altsetting_off\n",
           peasycap->isdongle, "easycap_usb_probe", peasycap->audio_altsetting_off);
  }
  goto ldv_33448;
  default: ;
  goto ldv_33448;
  }
  ldv_33448: ;
  if ((unsigned int )ep->wMaxPacketSize == 0U) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: intf[%i]alt[%i]end[%i] has zero packet size\n", peasycap->isdongle,
             "easycap_usb_probe", (int )bInterfaceNumber, i, j);
    } else {
    }
  } else {
  }
  ldv_33445:
  j = j + 1;
  ldv_33452: ;
  if ((int )interface->bNumEndpoints > j) {
    goto ldv_33451;
  } else {
  }
  i = i + 1;
  ldv_33455: ;
  if ((unsigned int )i < intf->num_altsetting) {
    goto ldv_33454;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: initialization begins for interface %i\n", peasycap->isdongle,
           "easycap_usb_probe", (int )interface->bInterfaceNumber);
  } else {
  }
  switch ((int )bInterfaceNumber) {
  case 0: ;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap is NULL\n", peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (isokalt == 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  no viable video_altsetting_on\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  peasycap->video_altsetting_on = okalt[isokalt + -1];
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=video_altsetting_on <====\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->video_altsetting_on);
  } else {
  }
  peasycap->video_endpointnumber = okepn[isokalt + -1];
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=video_endpointnumber\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->video_endpointnumber);
  } else {
  }
  maxpacketsize = okmps[isokalt + -1];
  _min1 = maxpacketsize;
  _min2 = 3072;
  peasycap->video_isoc_maxframesize = _min1 < _min2 ? _min1 : _min2;
  if (peasycap->video_isoc_maxframesize <= 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad video_isoc_maxframesize\n", peasycap->isdongle,
           "easycap_usb_probe");
    printk("<7>easycap::%i%s:         possibly because port is USB 1.1\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=video_isoc_maxframesize\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->video_isoc_maxframesize);
  } else {
  }
  peasycap->video_isoc_framesperdesc = 8;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=video_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->video_isoc_framesperdesc);
  } else {
  }
  if (peasycap->video_isoc_framesperdesc <= 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad video_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  peasycap->video_isoc_buffer_size = peasycap->video_isoc_maxframesize * peasycap->video_isoc_framesperdesc;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=video_isoc_buffer_size\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->video_isoc_buffer_size);
  } else {
  }
  if ((unsigned int )peasycap->video_isoc_buffer_size > 32768U) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap->video_isoc_buffer_size too big\n",
           peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_interface == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_interface is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_altsetting_on == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_altsetting_on is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_altsetting_off == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_interface_off is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_endpointnumber == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_endpointnumber is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_isoc_maxframesize == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_isoc_maxframesize is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->video_isoc_buffer_size == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  video_isoc_buffer_size is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  INIT_LIST_HEAD(& peasycap->urb_video_head);
  peasycap->purb_video_head = & peasycap->urb_video_head;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i frame buffers of size %li\n", peasycap->isdongle,
           "easycap_usb_probe", 6, 1658880L);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: .... each scattered over %li pages\n", peasycap->isdongle,
           "easycap_usb_probe", 405UL);
  } else {
  }
  k = 0;
  goto ldv_33465;
  ldv_33464:
  m = 0;
  goto ldv_33462;
  ldv_33461: ;
  if ((unsigned long )peasycap->frame_buffer[k][m].pgo != (unsigned long )((void *)0)) {
    printk("<7>easycap::%i%s: attempting to reallocate frame  buffers\n", peasycap->isdongle,
           "easycap_usb_probe");
  } else {
    tmp___5 = __get_free_pages(208U, 0U);
    pbuf = (void *)tmp___5;
    if ((unsigned long )pbuf == (unsigned long )((void *)0)) {
      printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate frame buffer %i page %i\n",
             peasycap->isdongle, "easycap_usb_probe", k, m);
      return (-12);
    } else {
    }
    peasycap->allocation_video_page = peasycap->allocation_video_page + 1;
    peasycap->frame_buffer[k][m].pgo = pbuf;
  }
  peasycap->frame_buffer[k][m].pto = peasycap->frame_buffer[k][m].pgo;
  m = m + 1;
  ldv_33462: ;
  if ((unsigned int )m <= 404U) {
    goto ldv_33461;
  } else {
  }
  k = k + 1;
  ldv_33465: ;
  if (k <= 5) {
    goto ldv_33464;
  } else {
  }
  peasycap->frame_fill = 0;
  peasycap->frame_read = 0;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of frame buffers done:  %i pages\n", peasycap->isdongle,
           "easycap_usb_probe", k * m);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i field buffers of size %li\n", peasycap->isdongle,
           "easycap_usb_probe", 4, 831488L);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: .... each scattered over %li pages\n", peasycap->isdongle,
           "easycap_usb_probe", 203UL);
  } else {
  }
  k = 0;
  goto ldv_33471;
  ldv_33470:
  m = 0;
  goto ldv_33468;
  ldv_33467: ;
  if ((unsigned long )peasycap->field_buffer[k][m].pgo != (unsigned long )((void *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: attempting to reallocate field buffers\n", peasycap->isdongle,
           "easycap_usb_probe");
  } else {
    tmp___6 = __get_free_pages(208U, 0U);
    pbuf = (void *)tmp___6;
    if ((unsigned long )pbuf == (unsigned long )((void *)0)) {
      printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate field buffer %i page %i\n",
             peasycap->isdongle, "easycap_usb_probe", k, m);
      return (-12);
    } else {
    }
    peasycap->allocation_video_page = peasycap->allocation_video_page + 1;
    peasycap->field_buffer[k][m].pgo = pbuf;
  }
  peasycap->field_buffer[k][m].pto = peasycap->field_buffer[k][m].pgo;
  m = m + 1;
  ldv_33468: ;
  if ((unsigned int )m <= 202U) {
    goto ldv_33467;
  } else {
  }
  peasycap->field_buffer[k][0].kount = 512U;
  k = k + 1;
  ldv_33471: ;
  if (k <= 3) {
    goto ldv_33470;
  } else {
  }
  peasycap->field_fill = 0;
  peasycap->field_page = 0;
  peasycap->field_read = 0;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of field buffers done:  %i pages\n", peasycap->isdongle,
           "easycap_usb_probe", k * m);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i isoc video buffers of size %i\n", peasycap->isdongle,
           "easycap_usb_probe", 16, peasycap->video_isoc_buffer_size);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: .... each occupying contiguous memory pages\n", peasycap->isdongle,
           "easycap_usb_probe");
  } else {
  }
  k = 0;
  goto ldv_33474;
  ldv_33473:
  tmp___7 = __get_free_pages(208U, 3U);
  pbuf = (void *)tmp___7;
  if ((unsigned long )pbuf == (unsigned long )((void *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate isoc video buffer %i\n", peasycap->isdongle,
           "easycap_usb_probe", k);
    return (-12);
  } else {
  }
  peasycap->allocation_video_page = (int )((unsigned int )peasycap->allocation_video_page + 8U);
  peasycap->video_isoc_buffer[k].pgo = pbuf;
  peasycap->video_isoc_buffer[k].pto = pbuf + (unsigned long )peasycap->video_isoc_buffer_size;
  peasycap->video_isoc_buffer[k].kount = (u16 )k;
  k = k + 1;
  ldv_33474: ;
  if (k <= 15) {
    goto ldv_33473;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of isoc video buffers done: %i pages\n",
           peasycap->isdongle, "easycap_usb_probe", k * 8);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i struct urb.\n", peasycap->isdongle, "easycap_usb_probe",
           16);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->video_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->video_isoc_framesperdesc);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->video_isoc_maxframesize\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->video_isoc_maxframesize);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->video_isoc_buffer_sizen", peasycap->isdongle,
           "easycap_usb_probe", peasycap->video_isoc_buffer_size);
  } else {
  }
  k = 0;
  goto ldv_33480;
  ldv_33479:
  purb = ldv_usb_alloc_urb_7(peasycap->video_isoc_framesperdesc, 208U);
  if ((unsigned long )purb == (unsigned long )((struct urb *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: usb_alloc_urb returned NULL for buffer %i\n",
           peasycap->isdongle, "easycap_usb_probe", k);
    return (-12);
  } else {
  }
  peasycap->allocation_video_urb = peasycap->allocation_video_urb + 1;
  tmp___8 = kzalloc(32UL, 208U);
  pdata_urb = (struct data_urb *)tmp___8;
  if ((unsigned long )pdata_urb == (unsigned long )((struct data_urb *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate struct data_urb.\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-12);
  } else {
  }
  peasycap->allocation_video_struct = (int )((unsigned int )peasycap->allocation_video_struct + 32U);
  pdata_urb->purb = purb;
  pdata_urb->isbuf = k;
  pdata_urb->length = 0;
  list_add_tail(& pdata_urb->list_head, peasycap->purb_video_head);
  if (k == 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: initializing video urbs thus:\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->interval = 1;\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->dev = peasycap->pusb_device;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->pipe = usb_rcvisocpipe(peasycap->pusb_device,%i);\n",
             peasycap->isdongle, "easycap_usb_probe", peasycap->video_endpointnumber);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_flags = URB_ISO_ASAP;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_buffer = peasycap->video_isoc_buffer[.].pgo;\n",
             peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_buffer_length = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_isoc_buffer_size);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->complete = easycap_complete;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->context = peasycap;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->start_frame = 0;\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->number_of_packets = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_isoc_framesperdesc);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   for (j = 0; j < %i; j++)\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_isoc_framesperdesc);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     {\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     purb->iso_frame_desc[j].offset = j*%i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_isoc_maxframesize);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     purb->iso_frame_desc[j].length = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->video_isoc_maxframesize);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     }\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
  } else {
  }
  purb->interval = 1;
  purb->dev = peasycap->pusb_device;
  tmp___9 = __create_pipe(peasycap->pusb_device, (unsigned int )peasycap->video_endpointnumber);
  purb->pipe = tmp___9 | 128U;
  purb->transfer_flags = 2U;
  purb->transfer_buffer = peasycap->video_isoc_buffer[k].pgo;
  purb->transfer_buffer_length = (u32 )peasycap->video_isoc_buffer_size;
  purb->complete = & easycap_complete;
  purb->context = (void *)peasycap;
  purb->start_frame = 0;
  purb->number_of_packets = peasycap->video_isoc_framesperdesc;
  j = 0;
  goto ldv_33477;
  ldv_33476:
  purb->iso_frame_desc[j].offset = (unsigned int )(peasycap->video_isoc_maxframesize * j);
  purb->iso_frame_desc[j].length = (unsigned int )peasycap->video_isoc_maxframesize;
  j = j + 1;
  ldv_33477: ;
  if (peasycap->video_isoc_framesperdesc > j) {
    goto ldv_33476;
  } else {
  }
  k = k + 1;
  ldv_33480: ;
  if (k <= 15) {
    goto ldv_33479;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of %i struct urb done.\n", peasycap->isdongle,
           "easycap_usb_probe", k);
  } else {
  }
  ldv_usb_set_intfdata_8(intf, (void *)peasycap);
  peasycap->ntsc = easycap_ntsc;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: defaulting initially to %s\n", peasycap->isdongle, "easycap_usb_probe",
           (int )easycap_ntsc ? (char *)"NTSC" : (char *)"PAL");
  } else {
  }
  rc = reset(peasycap);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: reset() rc = %i\n", peasycap->isdongle, "easycap_usb_probe",
           rc);
    return (-14);
  } else {
  }
  tmp___10 = v4l2_device_register(& intf->dev, & peasycap->v4l2_device);
  if (tmp___10 != 0) {
    printk("<7>easycap::%i%s: v4l2_device_register() failed\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-19);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: registered device instance: %s\n", peasycap->isdongle,
           "easycap_usb_probe", (char *)(& peasycap->v4l2_device.name));
  } else {
  }
  peasycap->video_device.v4l2_dev = (struct v4l2_device *)0;
  strcpy((char *)(& peasycap->video_device.name), "easycapdc60");
  peasycap->video_device.fops = & v4l2_fops;
  peasycap->video_device.minor = -1;
  peasycap->video_device.release = (void (*)(struct video_device * ))(& videodev_release);
  video_set_drvdata(& peasycap->video_device, (void *)peasycap);
  tmp___11 = video_register_device(& peasycap->video_device, 0, -1);
  if (tmp___11 != 0) {
    printk("<3>easycap: Not able to register with videodev\n");
    videodev_release(& peasycap->video_device);
    return (-19);
  } else {
  }
  peasycap->registered_video = peasycap->registered_video + 1;
  printk("<7>easycap::%i%s: registered with videodev: %i=minor\n", peasycap->isdongle,
         "easycap_usb_probe", peasycap->video_device.minor);
  peasycap->minor = peasycap->video_device.minor;
  goto ldv_33482;
  case 1: ;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap is NULL\n", peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  ldv_usb_set_intfdata_8(intf, (void *)peasycap);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: no initialization required for interface %i\n", peasycap->isdongle,
           "easycap_usb_probe", (int )interface->bInterfaceNumber);
  } else {
  }
  goto ldv_33482;
  case 2: ;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap is NULL\n", peasycap->isdongle, "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (isokalt == 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  no viable audio_altsetting_on\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  peasycap->audio_altsetting_on = okalt[isokalt + -1];
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=audio_altsetting_on <====\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_altsetting_on);
  } else {
  }
  peasycap->audio_endpointnumber = okepn[isokalt + -1];
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=audio_endpointnumber\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->audio_endpointnumber);
  } else {
  }
  peasycap->audio_isoc_maxframesize = okmps[isokalt + -1];
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=audio_isoc_maxframesize\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->audio_isoc_maxframesize);
  } else {
  }
  if (peasycap->audio_isoc_maxframesize <= 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad audio_isoc_maxframesize\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  if (peasycap->audio_isoc_maxframesize == 9) {
    peasycap->ilk = peasycap->ilk | 2;
    printk("<7>easycap::%i%s: audio hardware is microphone\n", peasycap->isdongle,
           "easycap_usb_probe");
    peasycap->microphone = 1;
    peasycap->audio_pages_per_fragment = 4U;
  } else
  if (peasycap->audio_isoc_maxframesize == 256) {
    peasycap->ilk = peasycap->ilk & -3;
    printk("<7>easycap::%i%s: audio hardware is AC\'97\n", peasycap->isdongle, "easycap_usb_probe");
    peasycap->microphone = 0;
    peasycap->audio_pages_per_fragment = 4U;
  } else {
    printk("<7>easycap::%i%s: hardware is unidentified:\n", peasycap->isdongle, "easycap_usb_probe");
    printk("<7>easycap::%i%s: %i=audio_isoc_maxframesize\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->audio_isoc_maxframesize);
    return (-2);
  }
  peasycap->audio_bytes_per_fragment = peasycap->audio_pages_per_fragment * 4096U;
  peasycap->audio_buffer_page_many = peasycap->audio_pages_per_fragment * 32U;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %6i=AUDIO_FRAGMENT_MANY\n", peasycap->isdongle, "easycap_usb_probe",
           32);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %6i=audio_pages_per_fragment\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_pages_per_fragment);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %6i=audio_bytes_per_fragment\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_bytes_per_fragment);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %6i=audio_buffer_page_many\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->audio_buffer_page_many);
  } else {
  }
  peasycap->audio_isoc_framesperdesc = 32;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=audio_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_isoc_framesperdesc);
  } else {
  }
  if (peasycap->audio_isoc_framesperdesc <= 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad audio_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-2);
  } else {
  }
  peasycap->audio_isoc_buffer_size = peasycap->audio_isoc_maxframesize * peasycap->audio_isoc_framesperdesc;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: %i=audio_isoc_buffer_size\n", peasycap->isdongle, "easycap_usb_probe",
           peasycap->audio_isoc_buffer_size);
  } else {
  }
  if ((unsigned int )peasycap->audio_isoc_buffer_size > 8192U) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_isoc_buffer_size bigger than %li=AUDIO_ISOC_BUFFER_SIZE\n",
           peasycap->isdongle, "easycap_usb_probe", 8192UL);
    return (-14);
  } else {
  }
  if (peasycap->audio_interface == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_interface is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->audio_altsetting_on == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_altsetting_on is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->audio_altsetting_off == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_interface_off is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->audio_endpointnumber == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_endpointnumber is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->audio_isoc_maxframesize == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_isoc_maxframesize is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  if (peasycap->audio_isoc_buffer_size == -1) {
    printk("<7>easycap::%i%s: MISTAKE:  audio_isoc_buffer_size is unset\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-14);
  } else {
  }
  INIT_LIST_HEAD(& peasycap->urb_audio_head);
  peasycap->purb_audio_head = & peasycap->urb_audio_head;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i isoc audio buffers of size %i\n", peasycap->isdongle,
           "easycap_usb_probe", 16, peasycap->audio_isoc_buffer_size);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: .... each occupying contiguous memory pages\n", peasycap->isdongle,
           "easycap_usb_probe");
  } else {
  }
  k = 0;
  goto ldv_33486;
  ldv_33485:
  tmp___12 = __get_free_pages(208U, 1U);
  pbuf = (void *)tmp___12;
  if ((unsigned long )pbuf == (unsigned long )((void *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate isoc audio buffer %i\n", peasycap->isdongle,
           "easycap_usb_probe", k);
    return (-12);
  } else {
  }
  peasycap->allocation_audio_page = (int )((unsigned int )peasycap->allocation_audio_page + 2U);
  peasycap->audio_isoc_buffer[k].pgo = pbuf;
  peasycap->audio_isoc_buffer[k].pto = pbuf + (unsigned long )peasycap->audio_isoc_buffer_size;
  peasycap->audio_isoc_buffer[k].kount = (u16 )k;
  k = k + 1;
  ldv_33486: ;
  if (k <= 15) {
    goto ldv_33485;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of isoc audio buffers done.\n", peasycap->isdongle,
           "easycap_usb_probe");
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocating %i struct urb.\n", peasycap->isdongle, "easycap_usb_probe",
           16);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->audio_isoc_framesperdesc\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_isoc_framesperdesc);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->audio_isoc_maxframesize\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_isoc_maxframesize);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: using %i=peasycap->audio_isoc_buffer_size\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->audio_isoc_buffer_size);
  } else {
  }
  k = 0;
  goto ldv_33492;
  ldv_33491:
  purb = ldv_usb_alloc_urb_10(peasycap->audio_isoc_framesperdesc, 208U);
  if ((unsigned long )purb == (unsigned long )((struct urb *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: usb_alloc_urb returned NULL for buffer %i\n",
           peasycap->isdongle, "easycap_usb_probe", k);
    return (-12);
  } else {
  }
  peasycap->allocation_audio_urb = peasycap->allocation_audio_urb + 1;
  tmp___13 = kzalloc(32UL, 208U);
  pdata_urb = (struct data_urb *)tmp___13;
  if ((unsigned long )pdata_urb == (unsigned long )((struct data_urb *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: Could not allocate struct data_urb.\n", peasycap->isdongle,
           "easycap_usb_probe");
    return (-12);
  } else {
  }
  peasycap->allocation_audio_struct = (int )((unsigned int )peasycap->allocation_audio_struct + 32U);
  pdata_urb->purb = purb;
  pdata_urb->isbuf = k;
  pdata_urb->length = 0;
  list_add_tail(& pdata_urb->list_head, peasycap->purb_audio_head);
  if (k == 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: initializing audio urbs thus:\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->interval = 1;\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->dev = peasycap->pusb_device;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->pipe = usb_rcvisocpipe(peasycap->pusb_device,%i);\n",
             peasycap->isdongle, "easycap_usb_probe", peasycap->audio_endpointnumber);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_flags = URB_ISO_ASAP;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_buffer = peasycap->audio_isoc_buffer[.].pgo;\n",
             peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->transfer_buffer_length = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_isoc_buffer_size);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->complete = easycap_alsa_complete;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->context = peasycap;\n", peasycap->isdongle,
             "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->start_frame = 0;\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   purb->number_of_packets = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_isoc_framesperdesc);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:   for (j = 0; j < %i; j++)\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_isoc_framesperdesc);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     {\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     purb->iso_frame_desc[j].offset = j*%i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_isoc_maxframesize);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     purb->iso_frame_desc[j].length = %i;\n", peasycap->isdongle,
             "easycap_usb_probe", peasycap->audio_isoc_maxframesize);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s:     }\n", peasycap->isdongle, "easycap_usb_probe");
    } else {
    }
  } else {
  }
  purb->interval = 1;
  purb->dev = peasycap->pusb_device;
  tmp___14 = __create_pipe(peasycap->pusb_device, (unsigned int )peasycap->audio_endpointnumber);
  purb->pipe = tmp___14 | 128U;
  purb->transfer_flags = 2U;
  purb->transfer_buffer = peasycap->audio_isoc_buffer[k].pgo;
  purb->transfer_buffer_length = (u32 )peasycap->audio_isoc_buffer_size;
  purb->complete = & easycap_alsa_complete;
  purb->context = (void *)peasycap;
  purb->start_frame = 0;
  purb->number_of_packets = peasycap->audio_isoc_framesperdesc;
  j = 0;
  goto ldv_33489;
  ldv_33488:
  purb->iso_frame_desc[j].offset = (unsigned int )(peasycap->audio_isoc_maxframesize * j);
  purb->iso_frame_desc[j].length = (unsigned int )peasycap->audio_isoc_maxframesize;
  j = j + 1;
  ldv_33489: ;
  if (peasycap->audio_isoc_framesperdesc > j) {
    goto ldv_33488;
  } else {
  }
  k = k + 1;
  ldv_33492: ;
  if (k <= 15) {
    goto ldv_33491;
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: allocation of %i struct urb done.\n", peasycap->isdongle,
           "easycap_usb_probe", k);
  } else {
  }
  ldv_usb_set_intfdata_8(intf, (void *)peasycap);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: initializing ALSA card\n", peasycap->isdongle, "easycap_usb_probe");
  } else {
  }
  rc = easycap_alsa_probe(peasycap);
  if (rc != 0) {
    printk("<3>easycap: easycap_alsa_probe() rc = %i\n\n", rc);
    return (-19);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: kref_get() with %i=kref.refcount.counter\n", peasycap->isdongle,
           "easycap_usb_probe", peasycap->kref.refcount.counter);
  } else {
  }
  kref_get(& peasycap->kref);
  peasycap->registered_audio = peasycap->registered_audio + 1;
  goto ldv_33482;
  default: ;
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: OLD_ERROR: unexpected interface %i\n", peasycap->isdongle,
           "easycap_usb_probe", (int )bInterfaceNumber);
  } else {
  }
  return (-22);
  }
  ldv_33482:
  printk("<7>easycap::%i%s: ends successfully for interface %i\n", peasycap->isdongle,
         "easycap_usb_probe", (int )bInterfaceNumber);
  return (0);
}
}
static void easycap_usb_disconnect(struct usb_interface *pusb_interface )
{
  struct usb_host_interface *pusb_host_interface ;
  struct usb_interface_descriptor *pusb_interface_descriptor ;
  struct easycap *peasycap ;
  int minor ;
  int kd ;
  u8 bInterfaceNumber ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_usb_disconnect");
  } else {
  }
  pusb_host_interface = pusb_interface->cur_altsetting;
  if ((unsigned long )pusb_host_interface == (unsigned long )((struct usb_host_interface *)0)) {
    if (easycap_debug > 3) {
      printk("<7>easycap:: %s: OLD_ERROR: pusb_host_interface is NULL\n", "easycap_usb_disconnect");
    } else {
    }
    return;
  } else {
  }
  pusb_interface_descriptor = & pusb_host_interface->desc;
  if ((unsigned long )pusb_interface_descriptor == (unsigned long )((struct usb_interface_descriptor *)0)) {
    if (easycap_debug > 3) {
      printk("<7>easycap:: %s: OLD_ERROR: pusb_interface_descriptor is NULL\n", "easycap_usb_disconnect");
    } else {
    }
    return;
  } else {
  }
  bInterfaceNumber = pusb_interface_descriptor->bInterfaceNumber;
  minor = pusb_interface->minor;
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: intf[%i]: minor=%i\n", "easycap_usb_disconnect", (int )bInterfaceNumber,
           minor);
  } else {
  }
  if ((unsigned int )bInterfaceNumber == 1U) {
    return;
  } else {
  }
  tmp = ldv_usb_get_intfdata_12(pusb_interface);
  peasycap = (struct easycap *)tmp;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_usb_disconnect");
    return;
  } else {
  }
  peasycap->video_eof = 1;
  peasycap->audio_eof = 1;
  __wake_up(& peasycap->wq_video, 1U, 1, (void *)0);
  __wake_up(& peasycap->wq_audio, 1U, 1, (void *)0);
  switch ((int )bInterfaceNumber) {
  case 0:
  easycap_video_kill_urbs(peasycap);
  goto ldv_33506;
  case 2:
  easycap_audio_kill_urbs(peasycap);
  goto ldv_33506;
  default: ;
  goto ldv_33506;
  }
  ldv_33506:
  kd = easycap_isdongle(peasycap);
  switch ((int )bInterfaceNumber) {
  case 0: ;
  if (kd >= 0 && kd <= 7) {
    __wake_up(& peasycap->wq_video, 1U, 1, (void *)0);
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: about to lock dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
    tmp___0 = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_video,
                                              0U);
    if (tmp___0 != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot lock dongle[%i].mutex_video\n", "easycap_usb_disconnect",
             kd);
      return;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
  } else {
    printk("<7>easycap:: %s: OLD_ERROR: %i=kd is bad: cannot lock dongle\n", "easycap_usb_disconnect",
           kd);
  }
  if ((int )((signed char )peasycap->v4l2_device.name[0]) == 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->v4l2_device.name is empty\n", peasycap->isdongle,
           "easycap_usb_disconnect");
    if (kd >= 0 && kd <= 7) {
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    } else {
    }
    return;
  } else {
  }
  v4l2_device_disconnect(& peasycap->v4l2_device);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: v4l2_device_disconnect() OK\n", peasycap->isdongle,
           "easycap_usb_disconnect");
  } else {
  }
  v4l2_device_unregister(& peasycap->v4l2_device);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: v4l2_device_unregister() OK\n", peasycap->isdongle,
           "easycap_usb_disconnect");
  } else {
  }
  video_unregister_device(& peasycap->video_device);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: intf[%i]: video_unregister_device() minor=%i\n", peasycap->isdongle,
           "easycap_usb_disconnect", (int )bInterfaceNumber, minor);
  } else {
  }
  peasycap->registered_video = peasycap->registered_video - 1;
  if (kd >= 0 && kd <= 7) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: unlocked dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
  } else {
  }
  goto ldv_33510;
  case 2: ;
  if (kd >= 0 && kd <= 7) {
    __wake_up(& peasycap->wq_audio, 1U, 1, (void *)0);
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: about to lock dongle[%i].mutex_audio\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
    tmp___1 = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_audio,
                                              0U);
    if (tmp___1 != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot lock dongle[%i].mutex_audio\n", "easycap_usb_disconnect",
             kd);
      return;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked dongle[%i].mutex_audio\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
  } else {
    printk("<7>easycap:: %s: OLD_ERROR: %i=kd is bad: cannot lock dongle\n", "easycap_usb_disconnect",
           kd);
  }
  tmp___2 = snd_card_free(peasycap->psnd_card);
  if (tmp___2 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: snd_card_free() failed\n", "easycap_usb_disconnect");
  } else {
    peasycap->psnd_card = (struct snd_card *)0;
    peasycap->registered_audio = peasycap->registered_audio - 1;
  }
  if (kd >= 0 && kd <= 7) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_audio);
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: unlocked dongle[%i].mutex_audio\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
  } else {
  }
  goto ldv_33510;
  default: ;
  goto ldv_33510;
  }
  ldv_33510: ;
  if (peasycap->kref.refcount.counter == 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->kref.refcount.counter is zero so cannot call kref_put()\n",
           peasycap->isdongle, "easycap_usb_disconnect");
    printk("<7>easycap::%i%s: ending unsuccessfully: may cause memory leak\n", peasycap->isdongle,
           "easycap_usb_disconnect");
    return;
  } else {
  }
  if (kd >= 0 && kd <= 7) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: about to lock dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
    tmp___3 = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_video,
                                              0U);
    if (tmp___3 != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot lock dongle[%i].mutex_video\n", "easycap_usb_disconnect",
             kd);
      printk("<7>easycap::%i%s: ending unsuccessfully: may cause memory leak\n", peasycap->isdongle,
             "easycap_usb_disconnect");
      return;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: about to lock dongle[%i].mutex_audio\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
    tmp___4 = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_audio,
                                              0U);
    if (tmp___4 != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot lock dongle[%i].mutex_audio\n", "easycap_usb_disconnect",
             kd);
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      if (easycap_debug > 3) {
        printk("<7>easycap::%i%s: unlocked dongle[%i].mutex_video\n", peasycap->isdongle,
               "easycap_usb_disconnect", kd);
      } else {
      }
      printk("<7>easycap::%i%s: ending unsuccessfully: may cause memory leak\n", peasycap->isdongle,
             "easycap_usb_disconnect");
      return;
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked dongle[%i].mutex_audio\n", peasycap->isdongle,
             "easycap_usb_disconnect", kd);
    } else {
    }
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: intf[%i]: %i=peasycap->kref.refcount.counter\n", peasycap->isdongle,
           "easycap_usb_disconnect", (int )bInterfaceNumber, peasycap->kref.refcount.counter);
  } else {
  }
  ldv_kref_put_13(& peasycap->kref, & easycap_delete);
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: intf[%i]: kref_put() done.\n", "easycap_usb_disconnect",
           (int )bInterfaceNumber);
  } else {
  }
  if (kd >= 0 && kd <= 7) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_audio);
    if (easycap_debug > 3) {
      printk("<7>easycap:: %s: unlocked dongle[%i].mutex_audio\n", "easycap_usb_disconnect",
             kd);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    if (easycap_debug > 3) {
      printk("<7>easycap:: %s: unlocked dongle[%i].mutex_video\n", "easycap_usb_disconnect",
             kd);
    } else {
    }
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: ends\n", peasycap->isdongle, "easycap_usb_disconnect");
  } else {
  }
  return;
}
}
static struct usb_device_id easycap_usb_device_id_table[2U] = { {3U, 1505U, 1032U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 0UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct usb_driver easycap_usb_driver =
     {"easycap", & easycap_usb_probe, & easycap_usb_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& easycap_usb_device_id_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0}, 0}, (unsigned char)0,
    (unsigned char)0, (unsigned char)0};
static int easycap_module_init(void)
{
  int k ;
  int rc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  printk("<6>Easycap version: 0.9.01\n");
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: begins.  %i=debug %i=bars %i=gain\n", "easycap_module_init",
           easycap_debug, easycap_bars, easycap_gain);
  } else {
  }
  __mutex_init(& mutex_dongle, "&mutex_dongle", & __key);
  k = 0;
  goto ldv_33526;
  ldv_33525:
  easycapdc60_dongle[k].peasycap = (struct easycap *)0;
  __mutex_init(& easycapdc60_dongle[k].mutex_video, "&easycapdc60_dongle[k].mutex_video",
               & __key___0);
  __mutex_init(& easycapdc60_dongle[k].mutex_audio, "&easycapdc60_dongle[k].mutex_audio",
               & __key___1);
  k = k + 1;
  ldv_33526: ;
  if (k <= 7) {
    goto ldv_33525;
  } else {
  }
  rc = ldv_usb_register_driver_14(& easycap_usb_driver, & __this_module, "easycap");
  if (rc != 0) {
    printk("<3>Easycap: usb_register failed rc=%d\n", rc);
  } else {
  }
  return (rc);
}
}
static void easycap_module_exit(void)
{
  {
  ldv_usb_deregister_15(& easycap_usb_driver);
  return;
}
}
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
extern int ldv_release_3(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
void ldv_usb_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1288UL);
  easycap_usb_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_initialize_v4l2_file_operations_3(void)
{
  {
  v4l2_fops_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void ldv_initialize_vm_operations_struct_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(176UL);
  easycap_vm_ops_group0 = (struct vm_area_struct *)tmp;
  return;
}
}
void ldv_main_exported_1(void) ;
int main(void)
{
  struct vm_fault *ldvarg0 ;
  void *tmp ;
  struct poll_table_struct *ldvarg8 ;
  void *tmp___0 ;
  unsigned int ldvarg7 ;
  struct vm_area_struct *ldvarg9 ;
  void *tmp___1 ;
  unsigned long ldvarg6 ;
  struct usb_device_id *ldvarg10 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct vm_fault *)tmp;
  tmp___0 = ldv_init_zalloc(16UL);
  ldvarg8 = (struct poll_table_struct *)tmp___0;
  tmp___1 = ldv_init_zalloc(176UL);
  ldvarg9 = (struct vm_area_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(24UL);
  ldvarg10 = (struct usb_device_id *)tmp___2;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg7), 0, 4UL);
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_33608:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      easycap_vma_fault(easycap_vm_ops_group0, ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      easycap_vma_fault(easycap_vm_ops_group0, ldvarg0);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_33582;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      easycap_vma_close(easycap_vm_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_33582;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      easycap_vma_open(easycap_vm_ops_group0);
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_33582;
    default:
    ldv_stop();
    }
    ldv_33582: ;
  } else {
  }
  goto ldv_33586;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_33586;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      easycap_module_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_33591;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = easycap_module_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_3 = 1;
        ldv_initialize_v4l2_file_operations_3();
        ldv_state_variable_1 = 1;
        ldv_initialize_snd_pcm_ops_1();
        ldv_state_variable_4 = 1;
        ldv_initialize_vm_operations_struct_4();
      } else {
      }
    } else {
    }
    goto ldv_33591;
    default:
    ldv_stop();
    }
    ldv_33591: ;
  } else {
  }
  goto ldv_33586;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      easycap_mmap(v4l2_fops_group0, ldvarg9);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      easycap_mmap(v4l2_fops_group0, ldvarg9);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_33596;
    case 1: ;
    if (ldv_state_variable_3 == 1) {
      easycap_poll(v4l2_fops_group0, ldvarg8);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      easycap_poll(v4l2_fops_group0, ldvarg8);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_33596;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_3 = easycap_open_noinode(v4l2_fops_group0);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33596;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      easycap_unlocked_ioctl(v4l2_fops_group0, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      easycap_unlocked_ioctl(v4l2_fops_group0, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_33596;
    case 4: ;
    if (ldv_state_variable_3 == 2) {
      ldv_release_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33596;
    default:
    ldv_stop();
    }
    ldv_33596: ;
  } else {
  }
  goto ldv_33586;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___7 = __VERIFIER_nondet_int();
    switch (tmp___7) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_4 = easycap_usb_probe(easycap_usb_driver_group1, (struct usb_device_id const *)ldvarg10);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_33604;
    case 1: ;
    if (ldv_state_variable_2 == 2 && usb_counter == 0) {
      easycap_usb_disconnect(easycap_usb_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_33604;
    default:
    ldv_stop();
    }
    ldv_33604: ;
  } else {
  }
  goto ldv_33586;
  default:
  ldv_stop();
  }
  ldv_33586: ;
  goto ldv_33608;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct usb_device *tmp ;
  {
  tmp = ldv_interface_to_usbdev();
  return (tmp);
}
}
int ldv_usb_submit_urb_2(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
void ldv_usb_free_urb_3(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
void ldv_usb_free_urb_4(struct urb *urb )
{
  {
  ldv_free_urb(urb);
  return;
}
}
int ldv_usb_submit_urb_5(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_6(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_7(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
__inline static void ldv_usb_set_intfdata_8(struct usb_interface *intf , void *data )
{
  {
  ldv_usb_set_intfdata(data);
  return;
}
}
struct urb *ldv_usb_alloc_urb_10(int iso_packets , gfp_t mem_flags )
{
  struct urb *tmp ;
  {
  tmp = ldv_alloc_urb();
  return (tmp);
}
}
__inline static void *ldv_usb_get_intfdata_12(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = ldv_usb_get_intfdata();
  return (tmp);
}
}
__inline static int ldv_kref_put_13(struct kref *kref , void (*release)(struct kref * ) )
{
  {
  easycap_delete(kref);
  return (0);
}
}
int ldv_usb_register_driver_14(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  usb_counter = 0;
  ldv_usb_driver_2();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_15(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_2 = 0;
  return;
}
}
extern void msleep(unsigned int ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
int easycap_audio_gainset(struct usb_device *pusb_device , s8 loud ) ;
int easycap_audio_setup(struct easycap *peasycap ) ;
int merit_saa(struct usb_device *p ) ;
int check_vt(struct usb_device *pusb_device ) ;
int set_resolution(struct usb_device *p , u16 set0 , u16 set1 , u16 set2 , u16 set3 ) ;
int write_saa(struct usb_device *p , u16 reg0 , u16 set0 ) ;
static struct stk1160config const stk1160configPAL[28U] =
  { {0U, 152U},
        {2U, 147U},
        {1U, 3U},
        {3U, 128U},
        {13U, 0U},
        {15U, 2U},
        {24U, 16U},
        {25U, 0U},
        {26U, 20U},
        {27U, 14U},
        {28U, 70U},
        {256U, 51U},
        {259U, 0U},
        {260U, 0U},
        {261U, 0U},
        {262U, 0U},
        {272U, 8U},
        {273U, 0U},
        {274U, 32U},
        {275U, 0U},
        {276U, 1288U},
        {277U, 5U},
        {278U, 272U},
        {279U, 1U},
        {514U, 15U},
        {515U, 74U},
        {767U, 0U},
        {4095U, 65535U}};
static struct stk1160config const stk1160configNTSC[28U] =
  { {0U, 152U},
        {2U, 147U},
        {1U, 3U},
        {3U, 128U},
        {13U, 0U},
        {15U, 2U},
        {24U, 16U},
        {25U, 0U},
        {26U, 20U},
        {27U, 14U},
        {28U, 70U},
        {256U, 51U},
        {259U, 0U},
        {260U, 0U},
        {261U, 0U},
        {262U, 0U},
        {272U, 8U},
        {273U, 0U},
        {274U, 3U},
        {275U, 0U},
        {276U, 1288U},
        {277U, 5U},
        {278U, 243U},
        {279U, 0U},
        {514U, 15U},
        {515U, 74U},
        {767U, 0U},
        {4095U, 65535U}};
static struct saa7113config const saa7113configPAL[50U] =
  { {1U, 8U},
        {2U, 128U},
        {3U, 51U},
        {4U, 0U},
        {5U, 0U},
        {6U, 233U},
        {7U, 13U},
        {8U, 56U},
        {9U, 0U},
        {10U, 127U},
        {11U, 63U},
        {12U, 47U},
        {13U, 0U},
        {14U, 1U},
        {15U, 54U},
        {16U, 0U},
        {17U, 12U},
        {18U, 231U},
        {19U, 0U},
        {21U, 0U},
        {22U, 0U},
        {64U, 2U},
        {65U, 255U},
        {66U, 255U},
        {67U, 255U},
        {68U, 255U},
        {69U, 255U},
        {70U, 255U},
        {71U, 255U},
        {72U, 255U},
        {73U, 255U},
        {74U, 255U},
        {75U, 255U},
        {76U, 255U},
        {77U, 255U},
        {78U, 255U},
        {79U, 255U},
        {80U, 255U},
        {81U, 255U},
        {82U, 255U},
        {83U, 255U},
        {84U, 255U},
        {85U, 255U},
        {86U, 255U},
        {87U, 255U},
        {88U, 64U},
        {89U, 84U},
        {90U, 7U},
        {91U, 131U},
        {255U, 255U}};
static struct saa7113config const saa7113configNTSC[50U] =
  { {1U, 8U},
        {2U, 128U},
        {3U, 51U},
        {4U, 0U},
        {5U, 0U},
        {6U, 233U},
        {7U, 13U},
        {8U, 120U},
        {9U, 0U},
        {10U, 127U},
        {11U, 63U},
        {12U, 47U},
        {13U, 0U},
        {14U, 1U},
        {15U, 54U},
        {16U, 0U},
        {17U, 12U},
        {18U, 231U},
        {19U, 0U},
        {21U, 0U},
        {22U, 0U},
        {64U, 130U},
        {65U, 255U},
        {66U, 255U},
        {67U, 255U},
        {68U, 255U},
        {69U, 255U},
        {70U, 255U},
        {71U, 255U},
        {72U, 255U},
        {73U, 255U},
        {74U, 255U},
        {75U, 255U},
        {76U, 255U},
        {77U, 255U},
        {78U, 255U},
        {79U, 255U},
        {80U, 255U},
        {81U, 255U},
        {82U, 255U},
        {83U, 255U},
        {84U, 255U},
        {85U, 255U},
        {86U, 255U},
        {87U, 255U},
        {88U, 64U},
        {89U, 84U},
        {90U, 10U},
        {91U, 131U},
        {255U, 255U}};
static int regget(struct usb_device *pusb_device , u16 index , void *reg , int reg_size )
{
  int rc ;
  unsigned int tmp ;
  {
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  tmp = __create_pipe(pusb_device, 0U);
  rc = usb_control_msg(pusb_device, tmp | 2147483776U, 0, 192, 0, (int )index, reg,
                       (int )((__u16 )reg_size), 50000);
  return (rc);
}
}
static int regset(struct usb_device *pusb_device , u16 index , u16 value )
{
  int rc ;
  unsigned int tmp ;
  u16 igot ;
  {
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  tmp = __create_pipe(pusb_device, 0U);
  rc = usb_control_msg(pusb_device, tmp | 2147483648U, 1, 64, (int )value, (int )index,
                       (void *)0, 0, 500);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((int )easycap_readback) {
    igot = 0U;
    rc = regget(pusb_device, (int )index, (void *)(& igot), 2);
    igot = (unsigned int )igot & 255U;
    switch ((int )index) {
    case 0: ;
    case 1280: ;
    case 1282: ;
    case 1283: ;
    case 1284: ;
    case 1286: ;
    case 1287: ;
    goto ldv_32543;
    case 516: ;
    case 517: ;
    case 848: ;
    case 849: ;
    if ((unsigned int )igot != 0U) {
      if (easycap_debug > 7) {
        printk("<7>easycap:: %s: unexpected 0x%02X for STK register 0x%03X\n", "regset",
               (int )igot, (int )index);
      } else {
      }
    } else {
    }
    goto ldv_32543;
    default: ;
    if (((unsigned int )value & 255U) != (unsigned int )igot) {
      if (easycap_debug > 7) {
        printk("<7>easycap:: %s: unexpected 0x%02X != 0x%02X for STK register 0x%03X\n",
               "regset", (int )igot, (int )value, (int )index);
      } else {
      }
    } else {
    }
    goto ldv_32543;
    }
    ldv_32543: ;
  } else {
  }
  return (rc);
}
}
static int wait_i2c(struct usb_device *p )
{
  u16 get0 ;
  u8 igot ;
  int max ;
  int k ;
  int __rc ;
  {
  max = 2;
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  k = 0;
  goto ldv_32565;
  ldv_32564:
  igot = 0U;
  __rc = regget(p, 513, (void *)(& igot), 1);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "wait_i2c", 343);
    } else {
    }
    return (__rc);
  } else {
  }
  get0 = (u16 )igot;
  switch ((int )get0) {
  case 4: ;
  case 1: ;
  return (0);
  case 0:
  msleep(20U);
  goto ldv_32562;
  default: ;
  return ((int )get0 + -1);
  }
  ldv_32562:
  k = k + 1;
  ldv_32565: ;
  if (k < max) {
    goto ldv_32564;
  } else {
  }
  return (-1);
}
}
int write_saa(struct usb_device *p , u16 reg0 , u16 set0 )
{
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int tmp ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  __rc = regset(p, 512, 0);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_saa", 363);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 516, (int )reg0);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_saa", 364);
    } else {
    }
    return (__rc___0);
  } else {
  }
  __rc___1 = regset(p, 517, (int )set0);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_saa", 365);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(p, 512, 1);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_saa", 366);
    } else {
    }
    return (__rc___2);
  } else {
  }
  tmp = wait_i2c(p);
  return (tmp);
}
}
static int write_vt(struct usb_device *p , u16 reg0 , u16 set0 )
{
  u8 igot ;
  u16 got502 ;
  u16 got503 ;
  u16 set502 ;
  u16 set503 ;
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int __rc___3 ;
  int __rc___4 ;
  int __rc___5 ;
  int __rc___6 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  __rc = regset(p, 1284, (int )reg0);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 387);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 1280, 139);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 388);
    } else {
    }
    return (__rc___0);
  } else {
  }
  igot = 0U;
  __rc___1 = regget(p, 1282, (void *)(& igot), 1);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 390);
    } else {
    }
    return (__rc___1);
  } else {
  }
  got502 = (u16 )igot;
  igot = 0U;
  __rc___2 = regget(p, 1283, (void *)(& igot), 1);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 391);
    } else {
    }
    return (__rc___2);
  } else {
  }
  got503 = (u16 )igot;
  if (easycap_debug > 15) {
    printk("<7>easycap:: %s: write_vt(., 0x%04X, 0x%04X): was 0x%04X\n", "write_vt",
           (int )reg0, (int )set0, ((int )got503 << 8) | (int )got502);
  } else {
  }
  set502 = (unsigned int )set0 & 255U;
  set503 = (u16 )((int )set0 >> 8);
  __rc___3 = regset(p, 1284, (int )reg0);
  if (__rc___3 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 399);
    } else {
    }
    return (__rc___3);
  } else {
  }
  __rc___4 = regset(p, 1282, (int )set502);
  if (__rc___4 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 400);
    } else {
    }
    return (__rc___4);
  } else {
  }
  __rc___5 = regset(p, 1283, (int )set503);
  if (__rc___5 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 401);
    } else {
    }
    return (__rc___5);
  } else {
  }
  __rc___6 = regset(p, 1280, 140);
  if (__rc___6 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_vt", 402);
    } else {
    }
    return (__rc___6);
  } else {
  }
  return (0);
}
}
static int read_vt(struct usb_device *p , u16 reg0 )
{
  u8 igot ;
  u16 got502 ;
  u16 got503 ;
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  __rc = regset(p, 1284, (int )reg0);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_vt", 423);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 1280, 139);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_vt", 424);
    } else {
    }
    return (__rc___0);
  } else {
  }
  igot = 0U;
  __rc___1 = regget(p, 1282, (void *)(& igot), 1);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_vt", 426);
    } else {
    }
    return (__rc___1);
  } else {
  }
  got502 = (u16 )igot;
  igot = 0U;
  __rc___2 = regget(p, 1283, (void *)(& igot), 1);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_vt", 427);
    } else {
    }
    return (__rc___2);
  } else {
  }
  got503 = (u16 )igot;
  if (easycap_debug > 15) {
    printk("<7>easycap:: %s: read_vt(., 0x%04X): has 0x%04X\n", "read_vt", (int )reg0,
           ((int )got503 << 8) | (int )got502);
  } else {
  }
  return (((int )got503 << 8) | (int )got502);
}
}
static int write_300(struct usb_device *p )
{
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int __rc___3 ;
  int __rc___4 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  __rc = regset(p, 768, 18);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 444);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 848, 45);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 445);
    } else {
    }
    return (__rc___0);
  } else {
  }
  __rc___1 = regset(p, 849, 1);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 446);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(p, 850, 0);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 447);
    } else {
    }
    return (__rc___2);
  } else {
  }
  __rc___3 = regset(p, 851, 0);
  if (__rc___3 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 448);
    } else {
    }
    return (__rc___3);
  } else {
  }
  __rc___4 = regset(p, 768, 128);
  if (__rc___4 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "write_300", 449);
    } else {
    }
    return (__rc___4);
  } else {
  }
  return (0);
}
}
int setup_stk(struct usb_device *p , bool ntsc )
{
  int i ;
  struct stk1160config const *cfg ;
  int __rc ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  cfg = (int )ntsc ? (struct stk1160config const *)(& stk1160configNTSC) : (struct stk1160config const *)(& stk1160configPAL);
  i = 0;
  goto ldv_32627;
  ldv_32626:
  __rc = regset(p, (int )(cfg + (unsigned long )i)->reg, (int )(cfg + (unsigned long )i)->set);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "setup_stk", 462);
    } else {
    }
    return (__rc);
  } else {
  }
  i = i + 1;
  ldv_32627: ;
  if ((unsigned int )((unsigned short )(cfg + (unsigned long )i)->reg) != 4095U) {
    goto ldv_32626;
  } else {
  }
  write_300(p);
  return (0);
}
}
int setup_saa(struct usb_device *p , bool ntsc )
{
  int i ;
  int rc ;
  struct saa7113config const *cfg ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  cfg = (int )ntsc ? (struct saa7113config const *)(& saa7113configNTSC) : (struct saa7113config const *)(& saa7113configPAL);
  i = 0;
  goto ldv_32637;
  ldv_32636:
  rc = write_saa(p, (int )(cfg + (unsigned long )i)->reg, (int )(cfg + (unsigned long )i)->set);
  if (rc != 0) {
    dev_err((struct device const *)(& p->dev), "Failed to set SAA register %d",
            (int )(cfg + (unsigned long )i)->reg);
  } else {
  }
  i = i + 1;
  ldv_32637: ;
  if ((unsigned int )((unsigned char )(cfg + (unsigned long )i)->reg) != 255U) {
    goto ldv_32636;
  } else {
  }
  return (0);
}
}
int merit_saa(struct usb_device *p )
{
  int rc ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  rc = read_saa(p, 31);
  return (rc < 0 || (rc & 2) != 0);
}
}
int ready_saa(struct usb_device *p )
{
  int j ;
  int rc ;
  int rate ;
  int max ;
  int marktime ;
  {
  max = 5;
  marktime = 100;
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  j = 0;
  goto ldv_32653;
  ldv_32652:
  rc = read_saa(p, 31);
  if (rc >= 0) {
    if ((rc & 64) == 0) {
      goto ldv_32651;
    } else {
    }
    if (rc & 1) {
      goto ldv_32651;
    } else {
    }
  } else {
  }
  msleep((unsigned int )marktime);
  j = j + 1;
  ldv_32653: ;
  if (max > j) {
    goto ldv_32652;
  } else {
  }
  ldv_32651: ;
  if (max == j) {
    return (-1);
  } else {
  }
  if ((rc & 32) != 0) {
    rate = 2;
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: hardware detects 60 Hz\n", "ready_saa");
    } else {
    }
  } else {
    rate = 0;
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: hardware detects 50 Hz\n", "ready_saa");
    } else {
    }
  }
  if ((rc & 128) != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: hardware detects interlacing\n", "ready_saa");
    } else {
    }
  } else {
    rate = rate + 1;
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: hardware detects no interlacing\n", "ready_saa");
    } else {
    }
  }
  return (0);
}
}
int read_saa(struct usb_device *p , u16 reg0 )
{
  u8 igot ;
  int __rc ;
  int __rc___0 ;
  int tmp ;
  int __rc___1 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  __rc = regset(p, 520, (int )reg0);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_saa", 547);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 512, 32);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_saa", 548);
    } else {
    }
    return (__rc___0);
  } else {
  }
  tmp = wait_i2c(p);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  igot = 0U;
  igot = 0U;
  __rc___1 = regget(p, 521, (void *)(& igot), 1);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_saa", 552);
    } else {
    }
    return (__rc___1);
  } else {
  }
  return ((int )igot);
}
}
static int read_stk(struct usb_device *p , u32 reg0 )
{
  u8 igot ;
  int __rc ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  igot = 0U;
  igot = 0U;
  __rc = regget(p, (int )((u16 )reg0), (void *)(& igot), 1);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "read_stk", 563);
    } else {
    }
    return (__rc);
  } else {
  }
  return ((int )igot);
}
}
int select_input(struct usb_device *p , int input , int mode )
{
  int ir ;
  int tmp ;
  int __rc ;
  int __rc___0 ;
  int tmp___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int tmp___1 ;
  int __rc___3 ;
  int __rc___4 ;
  int tmp___2 ;
  int __rc___5 ;
  int __rc___6 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int __rc___7 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  stop_100(p);
  switch (input) {
  case 0: ;
  case 1:
  tmp = write_saa(p, 2, 128);
  if (tmp != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02 for input %i\n",
           "select_input", input);
  } else {
  }
  __rc = regset(p, 0, 152);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 580);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 2, 120);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 581);
    } else {
    }
    return (__rc___0);
  } else {
  }
  goto ldv_32682;
  case 2:
  tmp___0 = write_saa(p, 2, 128);
  if (tmp___0 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02 for input %i\n",
           "select_input", input);
  } else {
  }
  __rc___1 = regset(p, 0, 144);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 589);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(p, 2, 120);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 590);
    } else {
    }
    return (__rc___2);
  } else {
  }
  goto ldv_32682;
  case 3:
  tmp___1 = write_saa(p, 2, 128);
  if (tmp___1 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02  for input %i\n",
           "select_input", input);
  } else {
  }
  __rc___3 = regset(p, 0, 136);
  if (__rc___3 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 598);
    } else {
    }
    return (__rc___3);
  } else {
  }
  __rc___4 = regset(p, 2, 120);
  if (__rc___4 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 599);
    } else {
    }
    return (__rc___4);
  } else {
  }
  goto ldv_32682;
  case 4:
  tmp___2 = write_saa(p, 2, 128);
  if (tmp___2 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02 for input %i\n",
           "select_input", input);
  } else {
  }
  __rc___5 = regset(p, 0, 128);
  if (__rc___5 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 607);
    } else {
    }
    return (__rc___5);
  } else {
  }
  __rc___6 = regset(p, 2, 120);
  if (__rc___6 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 608);
    } else {
    }
    return (__rc___6);
  } else {
  }
  goto ldv_32682;
  case 5: ;
  if (mode != 9) {
    mode = 7;
  } else {
  }
  switch (mode) {
  case 7:
  tmp___3 = write_saa(p, 2, 135);
  if (tmp___3 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02 for input %i\n",
           "select_input", input);
  } else {
  }
  tmp___4 = write_saa(p, 5, 255);
  if (tmp___4 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x05 for input %i\n",
           "select_input", input);
  } else {
  }
  goto ldv_32694;
  case 9:
  tmp___5 = write_saa(p, 2, 137);
  if (tmp___5 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x02 for input %i\n",
           "select_input", input);
  } else {
  }
  tmp___6 = write_saa(p, 5, 0);
  if (tmp___6 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x05 for input %i\n",
           "select_input", input);
  } else {
  }
  goto ldv_32694;
  default:
  printk("<7>easycap:: %s: MISTAKE:  bad mode: %i\n", "select_input", mode);
  return (-1);
  }
  ldv_32694:
  tmp___7 = write_saa(p, 4, 0);
  if (tmp___7 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x04 for input %i\n",
           "select_input", input);
  } else {
  }
  tmp___8 = write_saa(p, 9, 128);
  if (tmp___8 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to set SAA register 0x09 for input %i\n",
           "select_input", input);
  } else {
  }
  __rc___7 = regset(p, 2, 147);
  if (__rc___7 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "select_input", 650);
    } else {
    }
    return (__rc___7);
  } else {
  }
  goto ldv_32682;
  default:
  printk("<7>easycap:: %s: OLD_ERROR:  bad input: %i\n", "select_input", input);
  return (-1);
  }
  ldv_32682:
  ir = read_stk(p, 0U);
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: STK register 0x00 has 0x%02X\n", "select_input", ir);
  } else {
  }
  ir = read_saa(p, 2);
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: SAA register 0x02 has 0x%02X\n", "select_input", ir);
  } else {
  }
  start_100(p);
  return (0);
}
}
int set_resolution(struct usb_device *p , u16 set0 , u16 set1 , u16 set2 , u16 set3 )
{
  u16 u0x0111 ;
  u16 u0x0113 ;
  u16 u0x0115 ;
  u16 u0x0117 ;
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int __rc___3 ;
  int __rc___4 ;
  int __rc___5 ;
  int __rc___6 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  u0x0111 = (u16 )((int )set0 >> 8);
  u0x0113 = (u16 )((int )set1 >> 8);
  u0x0115 = (u16 )((int )set2 >> 8);
  u0x0117 = (u16 )((int )set3 >> 8);
  __rc = regset(p, 272, (int )set0 & 255);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 680);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(p, 273, (int )u0x0111);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 681);
    } else {
    }
    return (__rc___0);
  } else {
  }
  __rc___1 = regset(p, 274, (int )set1 & 255);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 682);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(p, 275, (int )u0x0113);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 683);
    } else {
    }
    return (__rc___2);
  } else {
  }
  __rc___3 = regset(p, 276, (int )set2 & 255);
  if (__rc___3 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 684);
    } else {
    }
    return (__rc___3);
  } else {
  }
  __rc___4 = regset(p, 277, (int )u0x0115);
  if (__rc___4 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 685);
    } else {
    }
    return (__rc___4);
  } else {
  }
  __rc___5 = regset(p, 278, (int )set3 & 255);
  if (__rc___5 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 686);
    } else {
    }
    return (__rc___5);
  } else {
  }
  __rc___6 = regset(p, 279, (int )u0x0117);
  if (__rc___6 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "set_resolution", 687);
    } else {
    }
    return (__rc___6);
  } else {
  }
  return (0);
}
}
int start_100(struct usb_device *p )
{
  u16 get116 ;
  u16 get117 ;
  u16 get0 ;
  u8 igot116 ;
  u8 igot117 ;
  u8 igot ;
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int __rc___3 ;
  int __rc___4 ;
  int __rc___5 ;
  int __rc___6 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  igot116 = 0U;
  __rc = regget(p, 278, (void *)(& igot116), 1);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 699);
    } else {
    }
    return (__rc);
  } else {
  }
  get116 = (u16 )igot116;
  igot117 = 0U;
  __rc___0 = regget(p, 279, (void *)(& igot117), 1);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 701);
    } else {
    }
    return (__rc___0);
  } else {
  }
  get117 = (u16 )igot117;
  __rc___1 = regset(p, 278, 0);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 703);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(p, 279, 0);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 704);
    } else {
    }
    return (__rc___2);
  } else {
  }
  igot = 0U;
  __rc___3 = regget(p, 256, (void *)(& igot), 1);
  if (__rc___3 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 706);
    } else {
    }
    return (__rc___3);
  } else {
  }
  get0 = (u16 )igot;
  __rc___4 = regset(p, 256, (int )((unsigned int )get0 | 128U));
  if (__rc___4 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 708);
    } else {
    }
    return (__rc___4);
  } else {
  }
  __rc___5 = regset(p, 278, (int )get116);
  if (__rc___5 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 710);
    } else {
    }
    return (__rc___5);
  } else {
  }
  __rc___6 = regset(p, 279, (int )get117);
  if (__rc___6 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "start_100", 711);
    } else {
    }
    return (__rc___6);
  } else {
  }
  return (0);
}
}
int stop_100(struct usb_device *p )
{
  u16 get0 ;
  u8 igot ;
  int __rc ;
  int __rc___0 ;
  {
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  igot = 0U;
  __rc = regget(p, 256, (void *)(& igot), 1);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "stop_100", 723);
    } else {
    }
    return (__rc);
  } else {
  }
  get0 = (u16 )igot;
  __rc___0 = regset(p, 256, (int )get0 & 127);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "stop_100", 725);
    } else {
    }
    return (__rc___0);
  } else {
  }
  return (0);
}
}
int easycap_wakeup_device(struct usb_device *pusb_device )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  tmp = __create_pipe(pusb_device, 0U);
  tmp___0 = usb_control_msg(pusb_device, tmp | 2147483648U, 3, 0, 1, 0, (void *)0,
                            0, 50000);
  return (tmp___0);
}
}
int easycap_audio_setup(struct easycap *peasycap )
{
  struct usb_device *pusb_device ;
  u8 buffer[1U] ;
  int rc ;
  int id1 ;
  int id2 ;
  u8 request ;
  u8 requesttype ;
  u16 value_unmute ;
  u16 index ;
  u16 length ;
  unsigned int tmp ;
  int __rc ;
  int __rc___0 ;
  int __rc___1 ;
  int __rc___2 ;
  int tmp___0 ;
  {
  request = 1U;
  requesttype = 33U;
  value_unmute = 512U;
  index = 769U;
  length = 1U;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    return (-14);
  } else {
  }
  pusb_device = peasycap->pusb_device;
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %02X %02X %02X %02X %02X %02X %02X %02X\n", peasycap->isdongle,
           "easycap_audio_setup", (int )requesttype, (int )request, (int )value_unmute & 255,
           (int )value_unmute >> 8, (int )index & 255, (int )index >> 8, (int )length & 255,
           (int )length >> 8);
  } else {
  }
  buffer[0] = 1U;
  tmp = __create_pipe(pusb_device, 0U);
  rc = usb_control_msg(pusb_device, tmp | 2147483648U, (int )request, (int )requesttype,
                       (int )value_unmute, (int )index, (void *)(& buffer), (int )length,
                       50000);
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: 0x%02X=buffer\n", "easycap_audio_setup", (int )buffer[0]);
  } else {
  }
  if ((int )length != rc) {
    switch (rc) {
    case -32:
    printk("<7>easycap:: %s: usb_control_msg returned -EPIPE\n", "easycap_audio_setup");
    goto ldv_32763;
    default:
    printk("<7>easycap:: %s: OLD_ERROR: usb_control_msg returned %i\n", "easycap_audio_setup",
           rc);
    goto ldv_32763;
    }
    ldv_32763: ;
  } else {
  }
  __rc = regset(pusb_device, 1280, 148);
  if (__rc < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "easycap_audio_setup", 812);
    } else {
    }
    return (__rc);
  } else {
  }
  __rc___0 = regset(pusb_device, 1280, 140);
  if (__rc___0 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "easycap_audio_setup", 813);
    } else {
    }
    return (__rc___0);
  } else {
  }
  __rc___1 = regset(pusb_device, 1286, 1);
  if (__rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "easycap_audio_setup", 814);
    } else {
    }
    return (__rc___1);
  } else {
  }
  __rc___2 = regset(pusb_device, 1287, 0);
  if (__rc___2 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: :-(%i\n", "easycap_audio_setup", 815);
    } else {
    }
    return (__rc___2);
  } else {
  }
  id1 = read_vt(pusb_device, 124);
  id2 = read_vt(pusb_device, 126);
  printk("<7>easycap::%i%s: 0x%04X:0x%04X is audio vendor id\n", peasycap->isdongle,
         "easycap_audio_setup", id1, id2);
  tmp___0 = easycap_audio_gainset(pusb_device, (int )peasycap->gain);
  if (tmp___0 != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: audio_gainset() failed\n", "easycap_audio_setup");
  } else {
  }
  check_vt(pusb_device);
  return (0);
}
}
int check_vt(struct usb_device *pusb_device )
{
  int igot ;
  {
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  igot = read_vt(pusb_device, 2);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x02\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 2);
  } else {
  }
  igot = read_vt(pusb_device, 14);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x0E\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 14);
  } else {
  }
  igot = read_vt(pusb_device, 16);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x10\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 16);
  } else {
  }
  igot = read_vt(pusb_device, 18);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x12\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 18);
  } else {
  }
  igot = read_vt(pusb_device, 20);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x14\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 20);
  } else {
  }
  igot = read_vt(pusb_device, 22);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x16\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 22);
  } else {
  }
  igot = read_vt(pusb_device, 24);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x18\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 24);
  } else {
  }
  igot = read_vt(pusb_device, 28);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x1C\n", "check_vt");
  } else {
  }
  if ((igot & 32768) != 0) {
    printk("<7>easycap:: %s: register 0x%02X muted\n", "check_vt", 28);
  } else {
  }
  return (0);
}
}
int easycap_audio_gainset(struct usb_device *pusb_device , s8 loud )
{
  int igot ;
  u8 tmp ;
  u16 mute ;
  {
  if ((unsigned long )pusb_device == (unsigned long )((struct usb_device *)0)) {
    return (-19);
  } else {
  }
  if ((int )loud < 0) {
    loud = 0;
  } else {
  }
  if ((int )loud > 31) {
    loud = 31;
  } else {
  }
  write_vt(pusb_device, 2, 32768);
  igot = read_vt(pusb_device, 14);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x0E\n", "easycap_audio_gainset");
    mute = 0U;
  } else {
    mute = (unsigned int )((u16 )igot) & 32768U;
  }
  mute = 0U;
  if ((int )loud <= 15) {
    tmp = (u8 )(((int )((signed char )((int )(15U - (unsigned int )((unsigned char )loud)) << 1)) & 30) | 1);
  } else {
    tmp = 0U;
  }
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: 0x%04X=(mute|tmp) for VT1612A register 0x0E\n", "easycap_audio_gainset",
           (int )mute | (int )tmp);
  } else {
  }
  write_vt(pusb_device, 14, (int )((u16 )tmp) | (int )mute);
  igot = read_vt(pusb_device, 16);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x10\n", "easycap_audio_gainset");
    mute = 0U;
  } else {
    mute = (unsigned int )((u16 )igot) & 32768U;
  }
  mute = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: 0x%04X=(mute|tmp|(tmp<<8)) for VT1612A register 0x10,...0x18\n",
           "easycap_audio_gainset", ((int )mute | (int )tmp) | ((int )tmp << 8));
  } else {
  }
  write_vt(pusb_device, 16, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  write_vt(pusb_device, 18, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  write_vt(pusb_device, 20, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  write_vt(pusb_device, 22, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  write_vt(pusb_device, 24, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  igot = read_vt(pusb_device, 28);
  if (igot < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: failed to read VT1612A register 0x1C\n", "easycap_audio_gainset");
    mute = 0U;
  } else {
    mute = (unsigned int )((u16 )igot) & 32768U;
  }
  mute = 0U;
  if ((int )loud > 15) {
    tmp = (unsigned int )((u8 )((unsigned int )((unsigned char )loud) - 16U)) & 15U;
  } else {
    tmp = 0U;
  }
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: 0x%04X=(mute|tmp|(tmp<<8)) for VT1612A register 0x1C\n",
           "easycap_audio_gainset", ((int )mute | (int )tmp) | ((int )tmp << 8));
  } else {
  }
  write_vt(pusb_device, 28, (int )((u16 )((int )((short )((int )((unsigned short )tmp) | (int )mute)) | (int )((short )((int )tmp << 8)))));
  write_vt(pusb_device, 26, 1028);
  write_vt(pusb_device, 2, 0);
  return (0);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void might_fault(void) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern void *memdup_user(void const * , size_t ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
extern void do_gettimeofday(struct timeval * ) ;
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
        warn_slowpath_fmt("/home/ldvuser/andrianov/commit-tester-work/task-233--linux-stable--dir/inst/current/envs/linux-stable-8817633-1/linux-stable-8817633-1/arch/x86/include/asm/uaccess_64.h",
                          57, "Buffer overflow detected!\n");
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
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern void snd_pcm_period_elapsed(struct snd_pcm_substream * ) ;
int adjust_standard(struct easycap *peasycap , v4l2_std_id std_id )
{
  struct easycap_standard const *peasycap_standard ;
  u16 reg ;
  u16 set ;
  int ir ;
  int rc ;
  int need ;
  int k ;
  unsigned int itwas ;
  unsigned int isnow ;
  bool resubmit ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_standard");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_standard");
    return (-14);
  } else {
  }
  peasycap_standard = (struct easycap_standard const *)(& easycap_standard);
  goto ldv_32529;
  ldv_32528: ;
  if ((unsigned long long )peasycap_standard->v4l2_standard.id == std_id) {
    goto ldv_32527;
  } else {
  }
  peasycap_standard = peasycap_standard + 1;
  ldv_32529: ;
  if ((unsigned int )((unsigned short )peasycap_standard->mask) != 65535U) {
    goto ldv_32528;
  } else {
  }
  ldv_32527: ;
  if ((unsigned int )((unsigned short )peasycap_standard->mask) == 65535U) {
    peasycap_standard = (struct easycap_standard const *)(& easycap_standard);
    goto ldv_32532;
    ldv_32531: ;
    if (((unsigned long long )peasycap_standard->v4l2_standard.id & std_id) != 0ULL) {
      goto ldv_32530;
    } else {
    }
    peasycap_standard = peasycap_standard + 1;
    ldv_32532: ;
    if ((unsigned int )((unsigned short )peasycap_standard->mask) != 65535U) {
      goto ldv_32531;
    } else {
    }
    ldv_32530: ;
  } else {
  }
  if ((unsigned int )((unsigned short )peasycap_standard->mask) == 65535U) {
    printk("<7>easycap::%i%s: OLD_ERROR: 0x%08X=std_id: standard not found\n", peasycap->isdongle,
           "adjust_standard", (unsigned int )std_id);
    return (-22);
  } else {
  }
  printk("<7>easycap::%i%s: selected standard: %s\n", peasycap->isdongle, "adjust_standard",
         (__u8 const *)(& peasycap_standard->v4l2_standard.name));
  if ((long )peasycap->standard_offset == ((long )peasycap_standard - (long )(& easycap_standard)) / 80L) {
    printk("<7>easycap::%i%s: requested standard already in effect\n", peasycap->isdongle,
           "adjust_standard");
    return (0);
  } else {
  }
  peasycap->standard_offset = (int )(((long )peasycap_standard - (long )(& easycap_standard)) / 80L);
  k = 0;
  goto ldv_32534;
  ldv_32533: ;
  if (peasycap->inputset[k].standard_offset_ok == 0) {
    peasycap->inputset[k].standard_offset = peasycap->standard_offset;
  } else {
  }
  k = k + 1;
  ldv_32534: ;
  if (k <= 5) {
    goto ldv_32533;
  } else {
  }
  if (peasycap->input >= 0 && peasycap->input <= 5) {
    peasycap->inputset[peasycap->input].standard_offset = peasycap->standard_offset;
    peasycap->inputset[peasycap->input].standard_offset_ok = 1;
  } else
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_standard",
           peasycap->input);
  } else {
  }
  peasycap->fps = (int )((unsigned int )peasycap_standard->v4l2_standard.frameperiod.denominator / (unsigned int )peasycap_standard->v4l2_standard.frameperiod.numerator);
  switch (peasycap->fps) {
  case 6: ;
  case 30:
  peasycap->ntsc = 1;
  goto ldv_32538;
  case 5: ;
  case 25:
  peasycap->ntsc = 0;
  goto ldv_32538;
  default:
  printk("<7>easycap::%i%s: MISTAKE: %i=frames-per-second\n", peasycap->isdongle,
         "adjust_standard", peasycap->fps);
  return (-2);
  }
  ldv_32538: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i frames-per-second\n", peasycap->isdongle, "adjust_standard",
           peasycap->fps);
  } else {
  }
  if ((int )((short )peasycap_standard->mask) < 0) {
    peasycap->skip = 5;
    peasycap->usec = 1000000 / (peasycap->fps * 10);
    peasycap->tolerate = (25 / (peasycap->fps * 5)) * 1000;
  } else {
    peasycap->skip = 0;
    peasycap->usec = 1000000 / (peasycap->fps * 2);
    peasycap->tolerate = (25 / peasycap->fps) * 1000;
  }
  if (peasycap->video_isoc_streaming != 0) {
    resubmit = 1;
    easycap_video_kill_urbs(peasycap);
  } else {
    resubmit = 0;
  }
  need = 0;
  itwas = 0U;
  reg = 0U;
  set = 0U;
  switch ((int )peasycap_standard->mask & 15) {
  case 5:
  reg = 10U;
  set = 149U;
  ir = read_saa(peasycap->pusb_device, (int )reg);
  if (ir < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: cannot read SAA register 0x%02X\n", peasycap->isdongle,
           "adjust_standard", (int )reg);
  } else {
    itwas = (unsigned int )ir;
  }
  rc = write_saa(peasycap->pusb_device, (int )reg, (int )set);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X for JP standard\n",
           peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
  } else {
    tmp = read_saa(peasycap->pusb_device, (int )reg);
    isnow = (unsigned int )tmp;
    if (ir < 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
               "adjust_standard", (int )reg, isnow);
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
             peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
    } else {
    }
  }
  reg = 11U;
  set = 72U;
  ir = read_saa(peasycap->pusb_device, (int )reg);
  if (ir < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: cannot read SAA register 0x%02X\n", peasycap->isdongle,
           "adjust_standard", (int )reg);
  } else {
    itwas = (unsigned int )ir;
  }
  rc = write_saa(peasycap->pusb_device, (int )reg, (int )set);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X for JP standard\n",
           peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
  } else {
    tmp___0 = read_saa(peasycap->pusb_device, (int )reg);
    isnow = (unsigned int )tmp___0;
    if (ir < 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
               "adjust_standard", (int )reg, isnow);
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
             peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
    } else {
    }
  }
  case 1: ;
  case 0:
  reg = 14U;
  set = 1U;
  need = 1;
  goto ldv_32545;
  case 8: ;
  case 7:
  reg = 14U;
  set = 17U;
  need = 1;
  goto ldv_32545;
  case 3: ;
  case 2:
  reg = 14U;
  set = 33U;
  need = 1;
  goto ldv_32545;
  case 6: ;
  case 9:
  reg = 14U;
  set = 49U;
  need = 1;
  goto ldv_32545;
  case 4:
  reg = 14U;
  set = 81U;
  need = 1;
  goto ldv_32545;
  default: ;
  goto ldv_32545;
  }
  ldv_32545: ;
  if (need != 0) {
    ir = read_saa(peasycap->pusb_device, (int )reg);
    if (ir < 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: failed to read SAA register 0x%02X\n", peasycap->isdongle,
             "adjust_standard", (int )reg);
    } else {
      itwas = (unsigned int )ir;
    }
    rc = write_saa(peasycap->pusb_device, (int )reg, (int )set);
    tmp___2 = write_saa(peasycap->pusb_device, (int )reg, (int )set);
    if (tmp___2 != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X for table 42\n",
             peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
    } else {
      tmp___1 = read_saa(peasycap->pusb_device, (int )reg);
      isnow = (unsigned int )tmp___1;
      if (ir < 0) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
                 "adjust_standard", (int )reg, isnow);
        } else {
        }
      } else
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
               peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
      } else {
      }
    }
  } else {
  }
  reg = 8U;
  ir = read_saa(peasycap->pusb_device, (int )reg);
  if (ir < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to read SAA register 0x%02X so cannot reset\n",
           peasycap->isdongle, "adjust_standard", (int )reg);
  } else {
    itwas = (unsigned int )ir;
    if ((int )peasycap_standard->mask & 1) {
      set = (unsigned int )((u16 )itwas) | 64U;
    } else {
      set = (unsigned int )((u16 )itwas) & 65471U;
    }
    rc = write_saa(peasycap->pusb_device, (int )reg, (int )set);
    if (rc != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X\n",
             peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
    } else {
      tmp___3 = read_saa(peasycap->pusb_device, (int )reg);
      isnow = (unsigned int )tmp___3;
      if (ir < 0) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
                 "adjust_standard", (int )reg, isnow);
        } else {
        }
      } else
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
               peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
      } else {
      }
    }
  }
  reg = 64U;
  ir = read_saa(peasycap->pusb_device, (int )reg);
  if (ir < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to read SAA register 0x%02X so cannot reset\n",
           peasycap->isdongle, "adjust_standard", (int )reg);
  } else {
    itwas = (unsigned int )ir;
    if ((int )peasycap_standard->mask & 1) {
      set = (unsigned int )((u16 )itwas) | 128U;
    } else {
      set = (unsigned int )((u16 )itwas) & 65407U;
    }
    rc = write_saa(peasycap->pusb_device, (int )reg, (int )set);
    if (rc != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X\n",
             peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
    } else {
      tmp___4 = read_saa(peasycap->pusb_device, (int )reg);
      isnow = (unsigned int )tmp___4;
      if (ir < 0) {
        if (easycap_debug > 7) {
          printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
                 "adjust_standard", (int )reg, isnow);
        } else {
        }
      } else
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
               peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
      } else {
      }
    }
  }
  reg = 90U;
  ir = read_saa(peasycap->pusb_device, (int )reg);
  if (ir < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to read SAA register 0x%02X but continuing\n",
           peasycap->isdongle, "adjust_standard", (int )reg);
  } else {
  }
  itwas = (unsigned int )ir;
  if ((int )peasycap_standard->mask & 1) {
    set = 10U;
  } else {
    set = 7U;
  }
  tmp___6 = write_saa(peasycap->pusb_device, (int )reg, (int )set);
  if (tmp___6 != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: failed to set SAA register 0x%02X to 0x%02X\n",
           peasycap->isdongle, "adjust_standard", (int )reg, (int )set);
  } else {
    tmp___5 = read_saa(peasycap->pusb_device, (int )reg);
    isnow = (unsigned int )tmp___5;
    if (ir < 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: SAA register 0x%02X changed to 0x%02X\n", peasycap->isdongle,
               "adjust_standard", (int )reg, isnow);
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: SAA register 0x%02X changed from 0x%02X to 0x%02X\n",
             peasycap->isdongle, "adjust_standard", (int )reg, itwas, isnow);
    } else {
    }
  }
  if ((int )resubmit) {
    easycap_video_submit_urbs(peasycap);
  } else {
  }
  return (0);
}
}
int adjust_format(struct easycap *peasycap , u32 width , u32 height , u32 pixelformat ,
                  int field , bool try )
{
  struct easycap_format *peasycap_format ;
  struct easycap_format *peasycap_best_format ;
  u16 mask ;
  struct usb_device *p ;
  int miss ;
  int multiplier ;
  int best ;
  int k ;
  char bf[5U] ;
  char fo[32U] ;
  char *pc ;
  u32 uc ;
  bool resubmit ;
  size_t __len ;
  void *__ret ;
  long ret ;
  int __x___0 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_format");
    return (-14);
  } else {
  }
  if (peasycap->standard_offset < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->standard_offset\n", peasycap->isdongle,
             "adjust_format", peasycap->standard_offset);
    } else {
    }
    return (-16);
  } else {
  }
  p = peasycap->pusb_device;
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peaycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_format");
    return (-14);
  } else {
  }
  pc = (char *)(& bf);
  uc = pixelformat;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)pc, (void const *)(& uc), __len);
  } else {
    __ret = memcpy((void *)pc, (void const *)(& uc), __len);
  }
  bf[4] = 0;
  mask = (unsigned int )((u16 )easycap_standard[peasycap->standard_offset].mask) & 255U;
  printk("<7>easycap::%i%s: sought:    %ix%i,%s(0x%08X),%i=field,0x%02X=std mask\n",
         peasycap->isdongle, "adjust_format", width, height, pc, pixelformat, field,
         (int )mask);
  switch (field) {
  case 0:
  strcpy((char *)(& fo), "V4L2_FIELD_ANY ");
  goto ldv_32580;
  case 1:
  strcpy((char *)(& fo), "V4L2_FIELD_NONE");
  goto ldv_32580;
  case 2:
  strcpy((char *)(& fo), "V4L2_FIELD_TOP");
  goto ldv_32580;
  case 3:
  strcpy((char *)(& fo), "V4L2_FIELD_BOTTOM");
  goto ldv_32580;
  case 4:
  strcpy((char *)(& fo), "V4L2_FIELD_INTERLACED");
  goto ldv_32580;
  case 5:
  strcpy((char *)(& fo), "V4L2_FIELD_SEQ_TB");
  goto ldv_32580;
  case 6:
  strcpy((char *)(& fo), "V4L2_FIELD_SEQ_BT");
  goto ldv_32580;
  case 7:
  strcpy((char *)(& fo), "V4L2_FIELD_ALTERNATE");
  goto ldv_32580;
  case 8:
  strcpy((char *)(& fo), "V4L2_FIELD_INTERLACED_TB");
  goto ldv_32580;
  case 9:
  strcpy((char *)(& fo), "V4L2_FIELD_INTERLACED_BT");
  goto ldv_32580;
  default:
  strcpy((char *)(& fo), "V4L2_FIELD_... UNKNOWN  ");
  goto ldv_32580;
  }
  ldv_32580:
  printk("<7>easycap::%i%s: sought:    %s\n", peasycap->isdongle, "adjust_format",
         (char *)(& fo));
  if (field == 0) {
    field = 1;
    printk("<7>easycap::%i%s: prefer:    V4L2_FIELD_NONE=field, was V4L2_FIELD_ANY\n",
           peasycap->isdongle, "adjust_format");
  } else {
  }
  peasycap_best_format = (struct easycap_format *)0;
  peasycap_format = (struct easycap_format *)(& easycap_format);
  goto ldv_32593;
  ldv_32592: ;
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: .> %i %i 0x%08X %ix%i\n", peasycap->isdongle, "adjust_format",
           (int )peasycap_format->mask & 1, (unsigned int )peasycap_format->v4l2_format.fmt.pix.field,
           peasycap_format->v4l2_format.fmt.pix.pixelformat, peasycap_format->v4l2_format.fmt.pix.width,
           peasycap_format->v4l2_format.fmt.pix.height);
  } else {
  }
  if (((((((int )peasycap_format->mask ^ (int )mask) & 31) == 0 && (unsigned int )peasycap_format->v4l2_format.fmt.pix.field == (unsigned int )field) && peasycap_format->v4l2_format.fmt.pix.pixelformat == pixelformat) && peasycap_format->v4l2_format.fmt.pix.width == width) && peasycap_format->v4l2_format.fmt.pix.height == height) {
    peasycap_best_format = peasycap_format;
    goto ldv_32591;
  } else {
  }
  peasycap_format = peasycap_format + 1;
  ldv_32593: ;
  if (peasycap_format->v4l2_format.fmt.pix.width != 0U) {
    goto ldv_32592;
  } else {
  }
  ldv_32591: ;
  if (peasycap_format->v4l2_format.fmt.pix.width == 0U) {
    printk("<7>easycap::%i%s: cannot do: %ix%i with standard mask 0x%02X\n", peasycap->isdongle,
           "adjust_format", width, height, (int )mask);
    peasycap_format = (struct easycap_format *)(& easycap_format);
    best = -1;
    goto ldv_32600;
    ldv_32599: ;
    if (((((int )peasycap_format->mask ^ (int )mask) & 31) == 0 && (unsigned int )peasycap_format->v4l2_format.fmt.pix.field == (unsigned int )field) && peasycap_format->v4l2_format.fmt.pix.pixelformat == pixelformat) {
      __x___0 = (int )(peasycap_format->v4l2_format.fmt.pix.width - width);
      ret = (long )(__x___0 < 0 ? - __x___0 : __x___0);
      miss = (int )ret;
      if (best > miss || best < 0) {
        best = miss;
        peasycap_best_format = peasycap_format;
        if (miss == 0) {
          goto ldv_32598;
        } else {
        }
      } else {
      }
    } else {
    }
    peasycap_format = peasycap_format + 1;
    ldv_32600: ;
    if (peasycap_format->v4l2_format.fmt.pix.width != 0U) {
      goto ldv_32599;
    } else {
    }
    ldv_32598: ;
    if (best == -1) {
      printk("<7>easycap::%i%s: cannot do %ix... with standard mask 0x%02X\n", peasycap->isdongle,
             "adjust_format", width, (int )mask);
      printk("<7>easycap::%i%s: cannot do ...x%i with standard mask 0x%02X\n", peasycap->isdongle,
             "adjust_format", height, (int )mask);
      printk("<7>easycap::%i%s:            %ix%i unmatched\n", peasycap->isdongle,
             "adjust_format", width, height);
      return (peasycap->format_offset);
    } else {
    }
  } else {
  }
  if ((unsigned long )peasycap_best_format == (unsigned long )((struct easycap_format *)0)) {
    printk("<7>easycap::%i%s: MISTAKE: peasycap_best_format is NULL", peasycap->isdongle,
           "adjust_format");
    return (-22);
  } else {
  }
  peasycap_format = peasycap_best_format;
  if ((int )try) {
    return ((int )(((long )peasycap_best_format - (long )(& easycap_format)) / 344L));
  } else {
  }
  if ((int )try) {
    printk("<7>easycap::%i%s: MISTAKE: true==try where is should be false\n", peasycap->isdongle,
           "adjust_format");
    return (-22);
  } else {
  }
  printk("<7>easycap::%i%s: actioning: %ix%i %s\n", peasycap->isdongle, "adjust_format",
         peasycap_format->v4l2_format.fmt.pix.width, peasycap_format->v4l2_format.fmt.pix.height,
         (char *)(& peasycap_format->name));
  peasycap->height = (int )peasycap_format->v4l2_format.fmt.pix.height;
  peasycap->width = (int )peasycap_format->v4l2_format.fmt.pix.width;
  peasycap->pixelformat = peasycap_format->v4l2_format.fmt.pix.pixelformat;
  peasycap->format_offset = (int )(((long )peasycap_format - (long )(& easycap_format)) / 344L);
  k = 0;
  goto ldv_32602;
  ldv_32601: ;
  if (peasycap->inputset[k].format_offset_ok == 0) {
    peasycap->inputset[k].format_offset = peasycap->format_offset;
  } else {
  }
  k = k + 1;
  ldv_32602: ;
  if (k <= 5) {
    goto ldv_32601;
  } else {
  }
  if (peasycap->input >= 0 && peasycap->input <= 5) {
    peasycap->inputset[peasycap->input].format_offset = peasycap->format_offset;
    peasycap->inputset[peasycap->input].format_offset_ok = 1;
  } else
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_format",
           peasycap->input);
  } else {
  }
  peasycap->bytesperpixel = (int )(((unsigned int )peasycap_format->mask & 224U) >> 5);
  if (((unsigned int )peasycap_format->mask & 256U) != 0U) {
    peasycap->byteswaporder = 1;
  } else {
    peasycap->byteswaporder = 0;
  }
  if (((unsigned int )peasycap_format->mask & 512U) != 0U) {
    peasycap->skip = 5;
  } else {
    peasycap->skip = 0;
  }
  if (((unsigned int )peasycap_format->mask & 2048U) != 0U) {
    peasycap->decimatepixel = 1;
  } else {
    peasycap->decimatepixel = 0;
  }
  if (((unsigned int )peasycap_format->mask & 4096U) != 0U) {
    peasycap->offerfields = 1;
  } else {
    peasycap->offerfields = 0;
  }
  if ((int )peasycap->decimatepixel) {
    multiplier = 2;
  } else {
    multiplier = 1;
  }
  peasycap->videofieldamount = ((peasycap->width * multiplier) * multiplier) * peasycap->height;
  peasycap->frame_buffer_used = (peasycap->bytesperpixel * peasycap->width) * peasycap->height;
  if (peasycap->video_isoc_streaming != 0) {
    resubmit = 1;
    easycap_video_kill_urbs(peasycap);
  } else {
    resubmit = 0;
  }
  if (((unsigned int )peasycap_format->mask & 1U) == 0U) {
    if ((peasycap_format->v4l2_format.fmt.pix.width == 720U && peasycap_format->v4l2_format.fmt.pix.height == 576U) || (peasycap_format->v4l2_format.fmt.pix.width == 360U && peasycap_format->v4l2_format.fmt.pix.height == 288U)) {
      tmp = set_resolution(p, 0, 1, 1440, 289);
      if (tmp != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: set_resolution() failed\n", peasycap->isdongle,
               "adjust_format");
        return (-22);
      } else {
      }
    } else
    if (peasycap_format->v4l2_format.fmt.pix.width == 704U && peasycap_format->v4l2_format.fmt.pix.height == 576U) {
      tmp___0 = set_resolution(p, 4, 1, 1412, 289);
      if (tmp___0 != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: set_resolution() failed\n", peasycap->isdongle,
               "adjust_format");
        return (-22);
      } else {
      }
    } else
    if ((peasycap_format->v4l2_format.fmt.pix.width == 640U && peasycap_format->v4l2_format.fmt.pix.height == 480U) || (peasycap_format->v4l2_format.fmt.pix.width == 320U && peasycap_format->v4l2_format.fmt.pix.height == 240U)) {
      tmp___1 = set_resolution(p, 20, 32, 1300, 272);
      if (tmp___1 != 0) {
        printk("<7>easycap::%i%s: OLD_ERROR: set_resolution() failed\n", peasycap->isdongle,
               "adjust_format");
        return (-22);
      } else {
      }
    } else {
      printk("<7>easycap::%i%s: MISTAKE: bad format, cannot set resolution\n", peasycap->isdongle,
             "adjust_format");
      return (-22);
    }
  } else
  if ((peasycap_format->v4l2_format.fmt.pix.width == 720U && peasycap_format->v4l2_format.fmt.pix.height == 480U) || (peasycap_format->v4l2_format.fmt.pix.width == 360U && peasycap_format->v4l2_format.fmt.pix.height == 240U)) {
    tmp___2 = set_resolution(p, 0, 3, 1440, 243);
    if (tmp___2 != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: set_resolution() failed\n", peasycap->isdongle,
             "adjust_format");
      return (-22);
    } else {
    }
  } else
  if ((peasycap_format->v4l2_format.fmt.pix.width == 640U && peasycap_format->v4l2_format.fmt.pix.height == 480U) || (peasycap_format->v4l2_format.fmt.pix.width == 320U && peasycap_format->v4l2_format.fmt.pix.height == 240U)) {
    tmp___3 = set_resolution(p, 20, 3, 1300, 243);
    if (tmp___3 != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: set_resolution() failed\n", peasycap->isdongle,
             "adjust_format");
      return (-22);
    } else {
    }
  } else {
    printk("<7>easycap::%i%s: MISTAKE: bad format, cannot set resolution\n", peasycap->isdongle,
           "adjust_format");
    return (-22);
  }
  if ((int )resubmit) {
    easycap_video_submit_urbs(peasycap);
  } else {
  }
  return ((int )(((long )peasycap_best_format - (long )(& easycap_format)) / 344L));
}
}
int adjust_brightness(struct easycap *peasycap , int value )
{
  unsigned int mood ;
  int i1 ;
  int k ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_brightness");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_brightness");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32616;
  ldv_32615: ;
  if (easycap_control[i1].id == 9963776U) {
    if (easycap_control[i1].minimum > value || easycap_control[i1].maximum < value) {
      value = easycap_control[i1].default_value;
    } else {
    }
    if (easycap_control[i1].minimum <= peasycap->brightness && easycap_control[i1].maximum >= peasycap->brightness) {
      if (peasycap->brightness == value) {
        printk("<7>easycap::%i%s: unchanged brightness at  0x%02X\n", peasycap->isdongle,
               "adjust_brightness", value);
        return (0);
      } else {
      }
    } else {
    }
    peasycap->brightness = value;
    k = 0;
    goto ldv_32613;
    ldv_32612: ;
    if (peasycap->inputset[k].brightness_ok == 0) {
      peasycap->inputset[k].brightness = peasycap->brightness;
    } else {
    }
    k = k + 1;
    ldv_32613: ;
    if (k <= 5) {
      goto ldv_32612;
    } else {
    }
    if (peasycap->input >= 0 && peasycap->input <= 5) {
      peasycap->inputset[peasycap->input].brightness = peasycap->brightness;
      peasycap->inputset[peasycap->input].brightness_ok = 1;
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_brightness",
             peasycap->input);
    } else {
    }
    mood = (unsigned int )peasycap->brightness & 255U;
    tmp = write_saa(peasycap->pusb_device, 10, (int )((u16 )mood));
    if (tmp != 0) {
      printk("<7>easycap::%i%s: WARNING: failed to adjust brightness to 0x%02X\n",
             peasycap->isdongle, "adjust_brightness", mood);
      return (-2);
    } else {
    }
    printk("<7>easycap::%i%s: adjusting brightness to  0x%02X\n", peasycap->isdongle,
           "adjust_brightness", mood);
    return (0);
  } else {
  }
  i1 = i1 + 1;
  ldv_32616: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32615;
  } else {
  }
  printk("<7>easycap::%i%s: WARNING: failed to adjust brightness: control not found\n",
         peasycap->isdongle, "adjust_brightness");
  return (-2);
}
}
int adjust_contrast(struct easycap *peasycap , int value )
{
  unsigned int mood ;
  int i1 ;
  int k ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_contrast");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_contrast");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32630;
  ldv_32629: ;
  if (easycap_control[i1].id == 9963777U) {
    if (easycap_control[i1].minimum > value || easycap_control[i1].maximum < value) {
      value = easycap_control[i1].default_value;
    } else {
    }
    if (easycap_control[i1].minimum <= peasycap->contrast && easycap_control[i1].maximum >= peasycap->contrast) {
      if (peasycap->contrast == value) {
        printk("<7>easycap::%i%s: unchanged contrast at  0x%02X\n", peasycap->isdongle,
               "adjust_contrast", value);
        return (0);
      } else {
      }
    } else {
    }
    peasycap->contrast = value;
    k = 0;
    goto ldv_32627;
    ldv_32626: ;
    if (peasycap->inputset[k].contrast_ok == 0) {
      peasycap->inputset[k].contrast = peasycap->contrast;
    } else {
    }
    k = k + 1;
    ldv_32627: ;
    if (k <= 5) {
      goto ldv_32626;
    } else {
    }
    if (peasycap->input >= 0 && peasycap->input <= 5) {
      peasycap->inputset[peasycap->input].contrast = peasycap->contrast;
      peasycap->inputset[peasycap->input].contrast_ok = 1;
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_contrast",
             peasycap->input);
    } else {
    }
    mood = (unsigned int )(peasycap->contrast + -128) & 255U;
    tmp = write_saa(peasycap->pusb_device, 11, (int )((u16 )mood));
    if (tmp != 0) {
      printk("<7>easycap::%i%s: WARNING: failed to adjust contrast to 0x%02X\n", peasycap->isdongle,
             "adjust_contrast", mood);
      return (-2);
    } else {
    }
    printk("<7>easycap::%i%s: adjusting contrast to  0x%02X\n", peasycap->isdongle,
           "adjust_contrast", mood);
    return (0);
  } else {
  }
  i1 = i1 + 1;
  ldv_32630: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32629;
  } else {
  }
  printk("<7>easycap::%i%s: WARNING: failed to adjust contrast: control not found\n",
         peasycap->isdongle, "adjust_contrast");
  return (-2);
}
}
int adjust_saturation(struct easycap *peasycap , int value )
{
  unsigned int mood ;
  int i1 ;
  int k ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_saturation");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_saturation");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32644;
  ldv_32643: ;
  if (easycap_control[i1].id == 9963778U) {
    if (easycap_control[i1].minimum > value || easycap_control[i1].maximum < value) {
      value = easycap_control[i1].default_value;
    } else {
    }
    if (easycap_control[i1].minimum <= peasycap->saturation && easycap_control[i1].maximum >= peasycap->saturation) {
      if (peasycap->saturation == value) {
        printk("<7>easycap::%i%s: unchanged saturation at  0x%02X\n", peasycap->isdongle,
               "adjust_saturation", value);
        return (0);
      } else {
      }
    } else {
    }
    peasycap->saturation = value;
    k = 0;
    goto ldv_32641;
    ldv_32640: ;
    if (peasycap->inputset[k].saturation_ok == 0) {
      peasycap->inputset[k].saturation = peasycap->saturation;
    } else {
    }
    k = k + 1;
    ldv_32641: ;
    if (k <= 5) {
      goto ldv_32640;
    } else {
    }
    if (peasycap->input >= 0 && peasycap->input <= 5) {
      peasycap->inputset[peasycap->input].saturation = peasycap->saturation;
      peasycap->inputset[peasycap->input].saturation_ok = 1;
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_saturation",
             peasycap->input);
    } else {
    }
    mood = (unsigned int )(peasycap->saturation + -128) & 255U;
    tmp = write_saa(peasycap->pusb_device, 12, (int )((u16 )mood));
    if (tmp != 0) {
      printk("<7>easycap::%i%s: WARNING: failed to adjust saturation to 0x%02X\n",
             peasycap->isdongle, "adjust_saturation", mood);
      return (-2);
    } else {
    }
    printk("<7>easycap::%i%s: adjusting saturation to  0x%02X\n", peasycap->isdongle,
           "adjust_saturation", mood);
    return (0);
  } else {
  }
  i1 = i1 + 1;
  ldv_32644: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32643;
  } else {
  }
  printk("<7>easycap::%i%s: WARNING: failed to adjust saturation: control not found\n",
         peasycap->isdongle, "adjust_saturation");
  return (-2);
}
}
int adjust_hue(struct easycap *peasycap , int value )
{
  unsigned int mood ;
  int i1 ;
  int i2 ;
  int k ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_hue");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_hue");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32659;
  ldv_32658: ;
  if (easycap_control[i1].id == 9963779U) {
    if (easycap_control[i1].minimum > value || easycap_control[i1].maximum < value) {
      value = easycap_control[i1].default_value;
    } else {
    }
    if (easycap_control[i1].minimum <= peasycap->hue && easycap_control[i1].maximum >= peasycap->hue) {
      if (peasycap->hue == value) {
        printk("<7>easycap::%i%s: unchanged hue at  0x%02X\n", peasycap->isdongle,
               "adjust_hue", value);
        return (0);
      } else {
      }
    } else {
    }
    peasycap->hue = value;
    k = 0;
    goto ldv_32656;
    ldv_32655: ;
    if (peasycap->inputset[k].hue_ok == 0) {
      peasycap->inputset[k].hue = peasycap->hue;
    } else {
    }
    k = k + 1;
    ldv_32656: ;
    if (k <= 5) {
      goto ldv_32655;
    } else {
    }
    if (peasycap->input >= 0 && peasycap->input <= 5) {
      peasycap->inputset[peasycap->input].hue = peasycap->hue;
      peasycap->inputset[peasycap->input].hue_ok = 1;
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->input\n", peasycap->isdongle, "adjust_hue",
             peasycap->input);
    } else {
    }
    i2 = peasycap->hue + -128;
    mood = (unsigned int )i2 & 255U;
    tmp = write_saa(peasycap->pusb_device, 13, (int )((u16 )mood));
    if (tmp != 0) {
      printk("<7>easycap::%i%s: WARNING: failed to adjust hue to 0x%02X\n", peasycap->isdongle,
             "adjust_hue", mood);
      return (-2);
    } else {
    }
    printk("<7>easycap::%i%s: adjusting hue to  0x%02X\n", peasycap->isdongle, "adjust_hue",
           mood);
    return (0);
  } else {
  }
  i1 = i1 + 1;
  ldv_32659: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32658;
  } else {
  }
  printk("<7>easycap::%i%s: WARNING: failed to adjust hue: control not found\n", peasycap->isdongle,
         "adjust_hue");
  return (-2);
}
}
static int adjust_volume(struct easycap *peasycap , int value )
{
  s8 mood ;
  int i1 ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_volume");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_volume");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32669;
  ldv_32668: ;
  if (easycap_control[i1].id == 9963781U) {
    if (easycap_control[i1].minimum > value || easycap_control[i1].maximum < value) {
      value = easycap_control[i1].default_value;
    } else {
    }
    if (easycap_control[i1].minimum <= peasycap->volume && easycap_control[i1].maximum >= peasycap->volume) {
      if (peasycap->volume == value) {
        printk("<7>easycap::%i%s: unchanged volume at  0x%02X\n", peasycap->isdongle,
               "adjust_volume", value);
        return (0);
      } else {
      }
    } else {
    }
    peasycap->volume = value;
    mood = peasycap->volume > 15 ? (peasycap->volume <= 31 ? (s8 )peasycap->volume : 31) : 16;
    tmp = easycap_audio_gainset(peasycap->pusb_device, (int )mood);
    if (tmp == 0) {
      printk("<7>easycap::%i%s: WARNING: failed to adjust volume to 0x%2X\n", peasycap->isdongle,
             "adjust_volume", (int )mood);
      return (-2);
    } else {
    }
    printk("<7>easycap::%i%s: adjusting volume to 0x%02X\n", peasycap->isdongle, "adjust_volume",
           (int )mood);
    return (0);
  } else {
  }
  i1 = i1 + 1;
  ldv_32669: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32668;
  } else {
  }
  printk("<7>easycap::%i%s: WARNING: failed to adjust volume: control not found\n",
         peasycap->isdongle, "adjust_volume");
  return (-2);
}
}
static int adjust_mute(struct easycap *peasycap , int value )
{
  int i1 ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "adjust_mute");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "adjust_mute");
    return (-14);
  } else {
  }
  i1 = 0;
  goto ldv_32681;
  ldv_32680: ;
  if (easycap_control[i1].id == 9963785U) {
    peasycap->mute = value;
    switch (peasycap->mute) {
    case 1:
    peasycap->audio_idle = 1;
    printk("<7>easycap::%i%s: adjusting mute: %i=peasycap->audio_idle\n", peasycap->isdongle,
           "adjust_mute", peasycap->audio_idle);
    return (0);
    default:
    peasycap->audio_idle = 0;
    printk("<7>easycap::%i%s: adjusting mute: %i=peasycap->audio_idle\n", peasycap->isdongle,
           "adjust_mute", peasycap->audio_idle);
    return (0);
    }
    goto ldv_32679;
  } else {
  }
  i1 = i1 + 1;
  ldv_32681: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32680;
  } else {
  }
  ldv_32679:
  printk("<7>easycap::%i%s: WARNING: failed to adjust mute: control not found\n",
         peasycap->isdongle, "adjust_mute");
  return (-2);
}
}
long easycap_unlocked_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct easycap *peasycap ;
  struct usb_device *p ;
  int kd ;
  int tmp ;
  int tmp___0 ;
  struct v4l2_capability v4l2_capability ;
  char version[16U] ;
  char *p1 ;
  char *p2 ;
  int i ;
  int rc ;
  int k[3U] ;
  long lng ;
  size_t tmp___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct v4l2_input v4l2_input ;
  u32 index ;
  unsigned long tmp___5 ;
  int tmp___6 ;
  u32 index___0 ;
  int tmp___7 ;
  u32 index___1 ;
  int rc___0 ;
  unsigned long tmp___8 ;
  struct v4l2_audioout v4l2_audioout ;
  unsigned long tmp___9 ;
  int tmp___10 ;
  int i1 ;
  struct v4l2_queryctrl v4l2_queryctrl ;
  unsigned long tmp___11 ;
  size_t __len ;
  void *__ret ;
  int tmp___12 ;
  struct v4l2_control *pv4l2_control ;
  void *tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  int tmp___16 ;
  struct v4l2_control v4l2_control ;
  unsigned long tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int mute ;
  int tmp___23 ;
  u32 index___2 ;
  struct v4l2_fmtdesc v4l2_fmtdesc ;
  unsigned long tmp___24 ;
  int tmp___25 ;
  u32 index___3 ;
  struct v4l2_frmsizeenum v4l2_frmsizeenum ;
  unsigned long tmp___26 ;
  int tmp___27 ;
  u32 index___4 ;
  int denominator ;
  struct v4l2_frmivalenum v4l2_frmivalenum ;
  unsigned long tmp___28 ;
  int tmp___29 ;
  struct v4l2_format *pv4l2_format ;
  struct v4l2_pix_format *pv4l2_pix_format ;
  void *tmp___30 ;
  void *tmp___31 ;
  unsigned long tmp___32 ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___33 ;
  struct v4l2_format v4l2_format ;
  struct v4l2_pix_format v4l2_pix_format ;
  bool try ;
  int best_format ;
  unsigned long tmp___34 ;
  size_t __len___1 ;
  void *__ret___1 ;
  int tmp___35 ;
  struct v4l2_cropcap v4l2_cropcap ;
  unsigned long tmp___36 ;
  int tmp___37 ;
  int last0 ;
  int last1 ;
  int last2 ;
  int last3 ;
  struct v4l2_standard v4l2_standard ;
  u32 index___5 ;
  struct easycap_standard const *peasycap_standard ;
  unsigned long tmp___38 ;
  size_t __len___2 ;
  void *__ret___2 ;
  int tmp___39 ;
  v4l2_std_id std_id ;
  struct easycap_standard const *peasycap_standard___0 ;
  unsigned long tmp___40 ;
  int tmp___41 ;
  v4l2_std_id std_id___0 ;
  int rc___1 ;
  unsigned long tmp___42 ;
  int nbuffers ;
  struct v4l2_requestbuffers v4l2_requestbuffers ;
  unsigned long tmp___43 ;
  int tmp___44 ;
  u32 index___6 ;
  struct v4l2_buffer v4l2_buffer ;
  unsigned long tmp___45 ;
  int tmp___46 ;
  struct v4l2_buffer v4l2_buffer___0 ;
  unsigned long tmp___47 ;
  int tmp___48 ;
  struct timeval timeval ;
  struct timeval timeval2 ;
  int i___0 ;
  int j ;
  struct v4l2_buffer v4l2_buffer___1 ;
  int rcdq ;
  u16 input ;
  unsigned long tmp___49 ;
  u32 tmp___50 ;
  int tmp___51 ;
  int i___1 ;
  struct v4l2_streamparm *pv4l2_streamparm ;
  void *tmp___52 ;
  long tmp___53 ;
  long tmp___54 ;
  int tmp___55 ;
  {
  if ((unsigned long )file == (unsigned long )((struct file *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  file is NULL\n", "easycap_unlocked_ioctl");
    return (-512L);
  } else {
  }
  peasycap = (struct easycap *)file->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_unlocked_ioctl");
    return (-1L);
  } else {
  }
  p = peasycap->pusb_device;
  if ((unsigned long )p == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    return (-14L);
  } else {
  }
  kd = easycap_isdongle(peasycap);
  if (kd >= 0 && kd <= 7) {
    tmp = mutex_lock_interruptible_nested(& easycapdc60_dongle[kd].mutex_video, 0U);
    if (tmp != 0) {
      printk("<7>easycap:: %s: OLD_ERROR: cannot lock easycapdc60_dongle[%i].mutex_video\n",
             "easycap_unlocked_ioctl", kd);
      return (-512L);
    } else {
    }
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: locked easycapdc60_dongle[%i].mutex_video\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", kd);
    } else {
    }
    tmp___0 = easycap_isdongle(peasycap);
    if (tmp___0 != kd) {
      return (-512L);
    } else {
    }
    if ((unsigned long )file == (unsigned long )((struct file *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR:  file is NULL\n", "easycap_unlocked_ioctl");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-512L);
    } else {
    }
    peasycap = (struct easycap *)file->private_data;
    if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
      printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_unlocked_ioctl");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-512L);
    } else {
    }
    if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
      printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
             "easycap_unlocked_ioctl");
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-512L);
    } else {
    }
  } else {
    return (-512L);
  }
  switch (cmd) {
  case 2154321408U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QUERYCAP\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___1 = strlen("0.9.01");
  if (tmp___1 > 15UL) {
    printk("<7>easycap::%i%s: OLD_ERROR: bad driver version string\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  strcpy((char *)(& version), "0.9.01");
  i = 0;
  goto ldv_32701;
  ldv_32700:
  k[i] = 0;
  i = i + 1;
  ldv_32701: ;
  if (i <= 2) {
    goto ldv_32700;
  } else {
  }
  p2 = (char *)(& version);
  i = 0;
  goto ldv_32707;
  ldv_32706:
  p1 = p2;
  goto ldv_32704;
  ldv_32703:
  p2 = p2 + 1;
  ldv_32704: ;
  if ((int )((signed char )*p2) != 0 && (int )((signed char )*p2) != 46) {
    goto ldv_32703;
  } else {
  }
  if ((int )((signed char )*p2) != 0) {
    tmp___2 = p2;
    p2 = p2 + 1;
    *tmp___2 = 0;
  } else {
  }
  if (i <= 2) {
    rc = kstrtol((char const *)p1, 10U, & lng);
    if (rc != 0) {
      printk("<7>easycap::%i%s: OLD_ERROR: %i=strict_strtol(%s,.,,)\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", rc, p1);
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-22L);
    } else {
    }
    k[i] = (int )lng;
  } else {
  }
  i = i + 1;
  ldv_32707: ;
  if ((int )((signed char )*p2) != 0) {
    goto ldv_32706;
  } else {
  }
  memset((void *)(& v4l2_capability), 0, 104UL);
  strlcpy((char *)(& v4l2_capability.driver), "easycap", 16UL);
  v4l2_capability.capabilities = 84017153U;
  v4l2_capability.version = (__u32 )(((k[0] << 16) + (k[1] << 8)) + k[2]);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: v4l2_capability.version=(%i,%i,%i)\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", k[0], k[1], k[2]);
  } else {
  }
  strlcpy((char *)(& v4l2_capability.card), "EasyCAP DC60", 32UL);
  tmp___3 = usb_make_path(peasycap->pusb_device, (char *)(& v4l2_capability.bus_info),
                          32UL);
  if (tmp___3 < 0) {
    strlcpy((char *)(& v4l2_capability.bus_info), "EasyCAP bus_info", 32UL);
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %s=v4l2_capability.bus_info\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", (__u8 *)(& v4l2_capability.bus_info));
    } else {
    }
  } else {
  }
  tmp___4 = copy_to_user((void *)arg, (void const *)(& v4l2_capability), 104U);
  if (tmp___4 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3226490394U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUMINPUT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___5 = copy_from_user((void *)(& v4l2_input), (void const *)arg, 80UL);
  if (tmp___5 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  index = v4l2_input.index;
  memset((void *)(& v4l2_input), 0, 80UL);
  switch (index) {
  case 0U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "CVBS0");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  case 1U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "CVBS1");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  case 2U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "CVBS2");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  case 3U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "CVBS3");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  case 4U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "CVBS4");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  case 5U:
  v4l2_input.index = index;
  strcpy((char *)(& v4l2_input.name), "S-VIDEO");
  v4l2_input.type = 2U;
  v4l2_input.audioset = 1U;
  v4l2_input.tuner = 0U;
  v4l2_input.std = 16756991ULL;
  v4l2_input.status = 0U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index, (__u8 *)(& v4l2_input.name));
  } else {
  }
  goto ldv_32714;
  default: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: exhausts inputs\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index);
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  }
  ldv_32714:
  tmp___6 = copy_to_user((void *)arg, (void const *)(& v4l2_input), 80U);
  if (tmp___6 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 2147767846U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_INPUT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  index___0 = (unsigned int )peasycap->input;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is told: %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___0);
  } else {
  }
  tmp___7 = copy_to_user((void *)arg, (void const *)(& index___0), 4U);
  if (tmp___7 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3221509671U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_INPUT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___8 = copy_from_user((void *)(& index___1), (void const *)arg, 4UL);
  if (tmp___8 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests input %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___1);
  } else {
  }
  if ((int )index___1 == peasycap->input) {
    printk("<7>easycap::%i%s: requested input already in effect\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    goto ldv_32709;
  } else {
  }
  if (index___1 > 5U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: OLD_ERROR:  bad requested input: %i\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", index___1);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  rc___0 = easycap_newinput(peasycap, (int )index___1);
  if (rc___0 == 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: newinput(.,%i) OK\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             (int )index___1);
    } else {
    }
  } else {
    printk("<7>easycap::%i%s: OLD_ERROR: newinput(.,%i) returned %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", (int )index___1, rc___0);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  }
  goto ldv_32709;
  case 3224655425U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUMAUDIO\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3224655426U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUMAUDOUT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___9 = copy_from_user((void *)(& v4l2_audioout), (void const *)arg, 52UL);
  if (tmp___9 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if (v4l2_audioout.index != 0U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  memset((void *)(& v4l2_audioout), 0, 52UL);
  v4l2_audioout.index = 0U;
  strcpy((char *)(& v4l2_audioout.name), "Soundtrack");
  tmp___10 = copy_to_user((void *)arg, (void const *)(& v4l2_audioout), 52U);
  if (tmp___10 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3225703972U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QUERYCTRL\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___11 = copy_from_user((void *)(& v4l2_queryctrl), (void const *)arg, 68UL);
  if (tmp___11 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  i1 = 0;
  goto ldv_32737;
  ldv_32736: ;
  if (easycap_control[i1].id == v4l2_queryctrl.id) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: VIDIOC_QUERYCTRL  %s=easycap_control[%i].name\n",
             peasycap->isdongle, "easycap_unlocked_ioctl", (__u8 *)(& easycap_control[i1].name),
             i1);
    } else {
    }
    __len = 68UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& v4l2_queryctrl), (void const *)(& easycap_control) + (unsigned long )i1,
                       __len);
    } else {
      __ret = memcpy((void *)(& v4l2_queryctrl), (void const *)(& easycap_control) + (unsigned long )i1,
                               __len);
    }
    goto ldv_32735;
  } else {
  }
  i1 = i1 + 1;
  ldv_32737: ;
  if (easycap_control[i1].id != 4294967295U) {
    goto ldv_32736;
  } else {
  }
  ldv_32735: ;
  if (easycap_control[i1].id == 4294967295U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: exhausts controls\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", i1);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  tmp___12 = copy_to_user((void *)arg, (void const *)(& v4l2_queryctrl), 68U);
  if (tmp___12 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3224131109U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QUERYMENU unsupported\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3221771803U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_CTRL\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___13 = memdup_user((void const *)arg, 8UL);
  pv4l2_control = (struct v4l2_control *)tmp___13;
  tmp___15 = IS_ERR((void const *)pv4l2_control);
  if (tmp___15 != 0L) {
    printk("<7>easycap::%i%s: OLD_ERROR: copy from user failed\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    tmp___14 = PTR_ERR((void const *)pv4l2_control);
    return (tmp___14);
  } else {
  }
  switch (pv4l2_control->id) {
  case 9963776U:
  pv4l2_control->value = peasycap->brightness;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires brightness: %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  case 9963777U:
  pv4l2_control->value = peasycap->contrast;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires contrast: %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  case 9963778U:
  pv4l2_control->value = peasycap->saturation;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires saturation: %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  case 9963779U:
  pv4l2_control->value = peasycap->hue;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires hue: %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  case 9963781U:
  pv4l2_control->value = peasycap->volume;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires volume: %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  case 9963785U: ;
  if (peasycap->mute == 1) {
    pv4l2_control->value = 1;
  } else {
    pv4l2_control->value = 0;
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user enquires mute: %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           pv4l2_control->value);
  } else {
  }
  goto ldv_32742;
  default:
  printk("<7>easycap::%i%s: OLD_ERROR: unknown V4L2 control: 0x%08X=id\n", peasycap->isdongle,
         "easycap_unlocked_ioctl", pv4l2_control->id);
  kfree((void const *)pv4l2_control);
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  }
  ldv_32742:
  tmp___16 = copy_to_user((void *)arg, (void const *)pv4l2_control, 8U);
  if (tmp___16 != 0) {
    kfree((void const *)pv4l2_control);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  kfree((void const *)pv4l2_control);
  goto ldv_32709;
  case 3221771804U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_CTRL\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___17 = copy_from_user((void *)(& v4l2_control), (void const *)arg, 8UL);
  if (tmp___17 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  switch (v4l2_control.id) {
  case 9963776U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests brightness %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", v4l2_control.value);
  } else {
  }
  tmp___18 = adjust_brightness(peasycap, v4l2_control.value);
  goto ldv_32752;
  case 9963777U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests contrast %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_control.value);
  } else {
  }
  tmp___19 = adjust_contrast(peasycap, v4l2_control.value);
  goto ldv_32752;
  case 9963778U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests saturation %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", v4l2_control.value);
  } else {
  }
  tmp___20 = adjust_saturation(peasycap, v4l2_control.value);
  goto ldv_32752;
  case 9963779U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests hue %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_control.value);
  } else {
  }
  tmp___21 = adjust_hue(peasycap, v4l2_control.value);
  goto ldv_32752;
  case 9963781U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests volume %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_control.value);
  } else {
  }
  tmp___22 = adjust_volume(peasycap, v4l2_control.value);
  goto ldv_32752;
  case 9963785U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user requests mute %i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_control.value);
  } else {
  }
  if (v4l2_control.value != 0) {
    mute = 1;
  } else {
    mute = 0;
  }
  tmp___23 = adjust_mute(peasycap, mute);
  if (tmp___23 != 0) {
    printk("<7>easycap::%i%s: WARNING: failed to adjust mute to %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", mute);
  } else {
  }
  goto ldv_32752;
  default:
  printk("<7>easycap::%i%s: OLD_ERROR: unknown V4L2 control: 0x%08X=id\n", peasycap->isdongle,
         "easycap_unlocked_ioctl", v4l2_control.id);
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  }
  ldv_32752: ;
  goto ldv_32709;
  case 3223344712U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_EXT_CTRLS unsupported\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3225441794U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUM_FMT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___24 = copy_from_user((void *)(& v4l2_fmtdesc), (void const *)arg, 64UL);
  if (tmp___24 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  index___2 = v4l2_fmtdesc.index;
  memset((void *)(& v4l2_fmtdesc), 0, 64UL);
  v4l2_fmtdesc.index = index___2;
  v4l2_fmtdesc.type = 1;
  switch (index___2) {
  case 0U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "uyvy");
  v4l2_fmtdesc.pixelformat = 1498831189U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  case 1U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "yuy2");
  v4l2_fmtdesc.pixelformat = 1448695129U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  case 2U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "rgb24");
  v4l2_fmtdesc.pixelformat = 859981650U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  case 3U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "rgb32");
  v4l2_fmtdesc.pixelformat = 876758866U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  case 4U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "bgr24");
  v4l2_fmtdesc.pixelformat = 861030210U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  case 5U:
  v4l2_fmtdesc.flags = 0U;
  strcpy((char *)(& v4l2_fmtdesc.description), "bgr32");
  v4l2_fmtdesc.pixelformat = 877807426U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2, (__u8 *)(& v4l2_fmtdesc.description));
  } else {
  }
  goto ldv_32765;
  default: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: exhausts formats\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___2);
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  }
  ldv_32765:
  tmp___25 = copy_to_user((void *)arg, (void const *)(& v4l2_fmtdesc), 64U);
  if (tmp___25 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3224131146U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUM_FRAMESIZES\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___26 = copy_from_user((void *)(& v4l2_frmsizeenum), (void const *)arg, 44UL);
  if (tmp___26 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  index___3 = v4l2_frmsizeenum.index;
  v4l2_frmsizeenum.type = 1U;
  if ((int )peasycap->ntsc) {
    switch (index___3) {
    case 0U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 640U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 480U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32776;
    case 1U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 320U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 240U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32776;
    case 2U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 720U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 480U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32776;
    case 3U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 360U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 240U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32776;
    default: ;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: exhausts framesizes\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", index___3);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
    }
    ldv_32776: ;
  } else {
    switch (index___3) {
    case 0U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 640U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 480U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32782;
    case 1U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 320U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 240U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32782;
    case 2U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 704U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 576U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32782;
    case 3U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 720U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 576U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32782;
    case 4U:
    v4l2_frmsizeenum.__annonCompField48.discrete.width = 360U;
    v4l2_frmsizeenum.__annonCompField48.discrete.height = 288U;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
             index___3, (int )v4l2_frmsizeenum.__annonCompField48.discrete.width,
             (int )v4l2_frmsizeenum.__annonCompField48.discrete.height);
    } else {
    }
    goto ldv_32782;
    default: ;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: exhausts framesizes\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", index___3);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
    }
    ldv_32782: ;
  }
  tmp___27 = copy_to_user((void *)arg, (void const *)(& v4l2_frmsizeenum), 44U);
  if (tmp___27 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3224655435U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUM_FRAMEINTERVALS\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  if (peasycap->fps != 0) {
    denominator = peasycap->fps;
  } else
  if ((int )peasycap->ntsc) {
    denominator = 30;
  } else {
    denominator = 25;
  }
  tmp___28 = copy_from_user((void *)(& v4l2_frmivalenum), (void const *)arg, 52UL);
  if (tmp___28 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  index___4 = v4l2_frmivalenum.index;
  v4l2_frmivalenum.type = 1U;
  switch (index___4) {
  case 0U:
  v4l2_frmivalenum.__annonCompField49.discrete.numerator = 1U;
  v4l2_frmivalenum.__annonCompField49.discrete.denominator = (__u32 )denominator;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %i/%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___4, (int )v4l2_frmivalenum.__annonCompField49.discrete.numerator,
           (int )v4l2_frmivalenum.__annonCompField49.discrete.denominator);
  } else {
  }
  goto ldv_32793;
  case 1U:
  v4l2_frmivalenum.__annonCompField49.discrete.numerator = 1U;
  v4l2_frmivalenum.__annonCompField49.discrete.denominator = (__u32 )(denominator / 5);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %i/%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___4, (int )v4l2_frmivalenum.__annonCompField49.discrete.numerator,
           (int )v4l2_frmivalenum.__annonCompField49.discrete.denominator);
  } else {
  }
  goto ldv_32793;
  default: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: exhausts frameintervals\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", index___4);
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  }
  ldv_32793:
  tmp___29 = copy_to_user((void *)arg, (void const *)(& v4l2_frmivalenum), 52U);
  if (tmp___29 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3234878980U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_FMT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___30 = kzalloc(208UL, 208U);
  pv4l2_format = (struct v4l2_format *)tmp___30;
  if ((unsigned long )pv4l2_format == (unsigned long )((struct v4l2_format *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: out of memory\n", peasycap->isdongle, "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-12L);
  } else {
  }
  tmp___31 = kzalloc(32UL, 208U);
  pv4l2_pix_format = (struct v4l2_pix_format *)tmp___31;
  if ((unsigned long )pv4l2_pix_format == (unsigned long )((struct v4l2_pix_format *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: out of memory\n", peasycap->isdongle, "easycap_unlocked_ioctl");
    kfree((void const *)pv4l2_format);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-12L);
  } else {
  }
  tmp___32 = copy_from_user((void *)pv4l2_format, (void const *)arg, 208UL);
  if (tmp___32 != 0UL) {
    kfree((void const *)pv4l2_format);
    kfree((void const *)pv4l2_pix_format);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )pv4l2_format->type != 1U) {
    kfree((void const *)pv4l2_format);
    kfree((void const *)pv4l2_pix_format);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  memset((void *)pv4l2_pix_format, 0, 32UL);
  pv4l2_format->type = 1;
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& pv4l2_format->fmt.pix), (void const *)(& easycap_format[peasycap->format_offset].v4l2_format.fmt.pix),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& pv4l2_format->fmt.pix), (void const *)(& easycap_format[peasycap->format_offset].v4l2_format.fmt.pix),
                                 __len___0);
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is told: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (char *)(& easycap_format[peasycap->format_offset].name));
  } else {
  }
  tmp___33 = copy_to_user((void *)arg, (void const *)pv4l2_format, 208U);
  if (tmp___33 != 0) {
    kfree((void const *)pv4l2_format);
    kfree((void const *)pv4l2_pix_format);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  kfree((void const *)pv4l2_format);
  kfree((void const *)pv4l2_pix_format);
  goto ldv_32709;
  case 3234879040U: ;
  case 3234878981U: ;
  if (cmd == 3234879040U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: VIDIOC_TRY_FMT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
    } else {
    }
    try = 1;
  } else {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: VIDIOC_S_FMT\n", peasycap->isdongle, "easycap_unlocked_ioctl");
    } else {
    }
    try = 0;
  }
  tmp___34 = copy_from_user((void *)(& v4l2_format), (void const *)arg, 208UL);
  if (tmp___34 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  best_format = adjust_format(peasycap, v4l2_format.fmt.pix.width, v4l2_format.fmt.pix.height,
                              v4l2_format.fmt.pix.pixelformat, (int )v4l2_format.fmt.pix.field,
                              (int )try);
  if (best_format < 0) {
    if (best_format == -16) {
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-16L);
    } else {
    }
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: WARNING: adjust_format() returned %i\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", best_format);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-2L);
  } else {
  }
  memset((void *)(& v4l2_pix_format), 0, 32UL);
  v4l2_format.type = 1;
  __len___1 = 32UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(& v4l2_format.fmt.pix), (void const *)(& easycap_format[best_format].v4l2_format.fmt.pix),
                         __len___1);
  } else {
    __ret___1 = memcpy((void *)(& v4l2_format.fmt.pix), (void const *)(& easycap_format[best_format].v4l2_format.fmt.pix),
                                 __len___1);
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is told: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (char *)(& easycap_format[best_format].name));
  } else {
  }
  tmp___35 = copy_to_user((void *)arg, (void const *)(& v4l2_format), 208U);
  if (tmp___35 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3224131130U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_CROPCAP\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___36 = copy_from_user((void *)(& v4l2_cropcap), (void const *)arg, 44UL);
  if (tmp___36 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )v4l2_cropcap.type != 1U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: v4l2_cropcap.type != V4L2_BUF_TYPE_VIDEO_CAPTURE\n",
             peasycap->isdongle, "easycap_unlocked_ioctl");
    } else {
    }
  } else {
  }
  memset((void *)(& v4l2_cropcap), 0, 44UL);
  v4l2_cropcap.type = 1;
  v4l2_cropcap.bounds.left = 0;
  v4l2_cropcap.bounds.top = 0;
  v4l2_cropcap.bounds.width = peasycap->width;
  v4l2_cropcap.bounds.height = peasycap->height;
  v4l2_cropcap.defrect.left = 0;
  v4l2_cropcap.defrect.top = 0;
  v4l2_cropcap.defrect.width = peasycap->width;
  v4l2_cropcap.defrect.height = peasycap->height;
  v4l2_cropcap.pixelaspect.numerator = 1U;
  v4l2_cropcap.pixelaspect.denominator = 1U;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is told: %ix%i\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           peasycap->width, peasycap->height);
  } else {
  }
  tmp___37 = copy_to_user((void *)arg, (void const *)(& v4l2_cropcap), 44U);
  if (tmp___37 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3222558267U: ;
  case 1075074620U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_CROP|VIDIOC_S_CROP  unsupported\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 2148030015U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QUERYSTD: EasyCAP is incapable of detecting standard\n",
           peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3225966105U:
  last0 = -1;
  last1 = -1;
  last2 = -1;
  last3 = -1;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_ENUMSTD\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___38 = copy_from_user((void *)(& v4l2_standard), (void const *)arg, 72UL);
  if (tmp___38 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  index___5 = v4l2_standard.index;
  last3 = last2;
  last2 = last1;
  last1 = last0;
  last0 = (int )index___5;
  if ((((u32 )last3 == index___5 && (u32 )last2 == index___5) && (u32 )last1 == index___5) && (u32 )last0 == index___5) {
    index___5 = index___5 + 1U;
    last3 = last2;
    last2 = last1;
    last1 = last0;
    last0 = (int )index___5;
  } else {
  }
  memset((void *)(& v4l2_standard), 0, 72UL);
  peasycap_standard = (struct easycap_standard const *)(& easycap_standard);
  goto ldv_32826;
  ldv_32825: ;
  if ((u32 )(((long )peasycap_standard - (long )(& easycap_standard)) / 80L) == index___5) {
    goto ldv_32824;
  } else {
  }
  peasycap_standard = peasycap_standard + 1;
  ldv_32826: ;
  if ((unsigned int )((unsigned short )peasycap_standard->mask) != 65535U) {
    goto ldv_32825;
  } else {
  }
  ldv_32824: ;
  if ((unsigned int )((unsigned short )peasycap_standard->mask) == 65535U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=index: exhausts standards\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", index___5);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=index: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           index___5, (__u8 const *)(& peasycap_standard->v4l2_standard.name));
  } else {
  }
  __len___2 = 72UL;
  if (__len___2 > 63UL) {
    __ret___2 = memcpy((void *)(& v4l2_standard), (void const *)(& peasycap_standard->v4l2_standard),
                         __len___2);
  } else {
    __ret___2 = memcpy((void *)(& v4l2_standard), (void const *)(& peasycap_standard->v4l2_standard),
                                 __len___2);
  }
  v4l2_standard.index = index___5;
  tmp___39 = copy_to_user((void *)arg, (void const *)(& v4l2_standard), 72U);
  if (tmp___39 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 2148029975U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_STD\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  if (peasycap->standard_offset < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: %i=peasycap->standard_offset\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", peasycap->standard_offset);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-16L);
  } else {
  }
  tmp___40 = copy_from_user((void *)(& std_id), (void const *)arg, 8UL);
  if (tmp___40 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  peasycap_standard___0 = (struct easycap_standard const *)(& easycap_standard) + (unsigned long )peasycap->standard_offset;
  std_id = peasycap_standard___0->v4l2_standard.id;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is told: %s\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (__u8 const *)(& peasycap_standard___0->v4l2_standard.name));
  } else {
  }
  tmp___41 = copy_to_user((void *)arg, (void const *)(& std_id), 8U);
  if (tmp___41 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 1074288152U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_STD\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___42 = copy_from_user((void *)(& std_id___0), (void const *)arg, 8UL);
  if (tmp___42 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: User requests standard: 0x%08X%08X\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", (int )(std_id___0 >> 32), (int )std_id___0);
  } else {
  }
  rc___1 = adjust_standard(peasycap, std_id___0);
  if (rc___1 < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: WARNING: adjust_standard() returned %i\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", rc___1);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-2L);
  } else {
  }
  goto ldv_32709;
  case 3222558216U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_REQBUFS\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___43 = copy_from_user((void *)(& v4l2_requestbuffers), (void const *)arg,
                            20UL);
  if (tmp___43 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )v4l2_requestbuffers.type != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  if ((unsigned int )v4l2_requestbuffers.memory != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  nbuffers = (int )v4l2_requestbuffers.count;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s:                    User requests %i buffers ...\n",
           peasycap->isdongle, "easycap_unlocked_ioctl", nbuffers);
  } else {
  }
  if (nbuffers <= 1) {
    nbuffers = 2;
  } else {
  }
  if (nbuffers > 6) {
    nbuffers = 6;
  } else {
  }
  if (v4l2_requestbuffers.count == (__u32 )nbuffers) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s:                    ... agree to  %i buffers\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", nbuffers);
    } else {
    }
  } else {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s:                   ... insist on  %i buffers\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", nbuffers);
    } else {
    }
    v4l2_requestbuffers.count = (__u32 )nbuffers;
  }
  peasycap->frame_buffer_many = nbuffers;
  tmp___44 = copy_to_user((void *)arg, (void const *)(& v4l2_requestbuffers), 20U);
  if (tmp___44 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3227014665U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QUERYBUF\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  if (peasycap->video_eof != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EIO because  %i=video_eof\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", peasycap->video_eof);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-5L);
  } else {
  }
  tmp___45 = copy_from_user((void *)(& v4l2_buffer), (void const *)arg, 88UL);
  if (tmp___45 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )v4l2_buffer.type != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  index___6 = v4l2_buffer.index;
  if ((u32 )peasycap->frame_buffer_many <= index___6) {
    return (-22L);
  } else {
  }
  memset((void *)(& v4l2_buffer), 0, 88UL);
  v4l2_buffer.index = index___6;
  v4l2_buffer.type = 1;
  v4l2_buffer.bytesused = (__u32 )peasycap->frame_buffer_used;
  v4l2_buffer.flags = (__u32 )((peasycap->done[index___6] | 1) | peasycap->queued[index___6]);
  v4l2_buffer.field = 1;
  v4l2_buffer.memory = 1;
  v4l2_buffer.m.offset = index___6 * 1658880U;
  v4l2_buffer.length = 1658880U;
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=index\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.index);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=type\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer.type);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=bytesused\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.bytesused);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=flags\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.flags);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=field\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer.field);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10li=timestamp.tv_usec\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.timestamp.tv_usec);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=sequence\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.sequence);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=memory\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer.memory);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=m.offset\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.m.offset);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=length\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer.length);
  } else {
  }
  tmp___46 = copy_to_user((void *)arg, (void const *)(& v4l2_buffer), 88U);
  if (tmp___46 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  goto ldv_32709;
  case 3227014671U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_QBUF\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___47 = copy_from_user((void *)(& v4l2_buffer___0), (void const *)arg, 88UL);
  if (tmp___47 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )v4l2_buffer___0.type != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  if ((unsigned int )v4l2_buffer___0.memory != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  if (v4l2_buffer___0.index >= (__u32 )peasycap->frame_buffer_many) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  v4l2_buffer___0.flags = 3U;
  peasycap->done[v4l2_buffer___0.index] = 0;
  peasycap->queued[v4l2_buffer___0.index] = 2;
  tmp___48 = copy_to_user((void *)arg, (void const *)(& v4l2_buffer___0), 88U);
  if (tmp___48 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: .....   user queueing frame buffer %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", (int )v4l2_buffer___0.index);
  } else {
  }
  peasycap->frame_lock = 0;
  goto ldv_32709;
  case 3227014673U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_DQBUF\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  if (peasycap->video_idle != 0 || peasycap->video_eof != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EIO because  %i=video_idle  %i=video_eof\n",
             peasycap->isdongle, "easycap_unlocked_ioctl", peasycap->video_idle, peasycap->video_eof);
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-5L);
  } else {
  }
  tmp___49 = copy_from_user((void *)(& v4l2_buffer___1), (void const *)arg, 88UL);
  if (tmp___49 != 0UL) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  if ((unsigned int )v4l2_buffer___1.type != 1U) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  if ((int )peasycap->offerfields) {
    if ((unsigned int )v4l2_buffer___1.field == 2U) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: user wants V4L2_FIELD_TOP\n", peasycap->isdongle,
               "easycap_unlocked_ioctl");
      } else {
      }
    } else
    if ((unsigned int )v4l2_buffer___1.field == 3U) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: user wants V4L2_FIELD_BOTTOM\n", peasycap->isdongle,
               "easycap_unlocked_ioctl");
      } else {
      }
    } else
    if ((unsigned int )v4l2_buffer___1.field == 0U) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: user wants V4L2_FIELD_ANY\n", peasycap->isdongle,
               "easycap_unlocked_ioctl");
      } else {
      }
    } else
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: user wants V4L2_FIELD_...UNKNOWN: %i\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", (unsigned int )v4l2_buffer___1.field);
    } else {
    }
  } else {
  }
  if (peasycap->video_isoc_streaming == 0) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: returning -EIO because video urbs not streaming\n",
             peasycap->isdongle, "easycap_unlocked_ioctl");
    } else {
    }
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-5L);
  } else {
  }
  if (peasycap->polled == 0) {
    ldv_32852:
    rcdq = easycap_video_dqbuf(peasycap, 0);
    if (rcdq == -5) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: returning -EIO because dqbuf() returned -EIO\n",
               peasycap->isdongle, "easycap_unlocked_ioctl");
      } else {
      }
      mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
      return (-5L);
    } else {
    }
    if (rcdq != 0) {
      goto ldv_32852;
    } else {
    }
  } else
  if (peasycap->video_eof != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-5L);
  } else {
  }
  if (peasycap->done[peasycap->frame_read] != 4) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: V4L2_BUF_FLAG_DONE != 0x%08X\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", peasycap->done[peasycap->frame_read]);
    } else {
    }
  } else {
  }
  peasycap->polled = 0;
  if (peasycap->isequence % 10U == 0U) {
    i___0 = 0;
    goto ldv_32855;
    ldv_32854:
    peasycap->merit[i___0] = peasycap->merit[i___0 + 1];
    i___0 = i___0 + 1;
    ldv_32855: ;
    if (i___0 <= 178) {
      goto ldv_32854;
    } else {
    }
    peasycap->merit[179] = merit_saa(peasycap->pusb_device);
    j = 0;
    i___0 = 0;
    goto ldv_32858;
    ldv_32857:
    j = peasycap->merit[i___0] + j;
    i___0 = i___0 + 1;
    ldv_32858: ;
    if (i___0 <= 179) {
      goto ldv_32857;
    } else {
    }
    if (j > 90) {
      printk("<7>easycap::%i%s: easycap driver shutting down on condition blue\n",
             peasycap->isdongle, "easycap_unlocked_ioctl");
      peasycap->video_eof = 1;
      peasycap->audio_eof = 1;
    } else {
    }
  } else {
  }
  v4l2_buffer___1.index = (__u32 )peasycap->frame_read;
  v4l2_buffer___1.type = 1;
  v4l2_buffer___1.bytesused = (__u32 )peasycap->frame_buffer_used;
  v4l2_buffer___1.flags = 5U;
  if ((int )peasycap->offerfields) {
    v4l2_buffer___1.field = 3;
  } else {
    v4l2_buffer___1.field = 1;
  }
  do_gettimeofday(& timeval);
  timeval2 = timeval;
  v4l2_buffer___1.timestamp = timeval2;
  tmp___50 = peasycap->isequence;
  peasycap->isequence = peasycap->isequence + 1U;
  v4l2_buffer___1.sequence = tmp___50;
  v4l2_buffer___1.memory = 1;
  v4l2_buffer___1.m.offset = v4l2_buffer___1.index * 1658880U;
  v4l2_buffer___1.length = 1658880U;
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=index\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.index);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=type\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer___1.type);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=bytesused\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.bytesused);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=flags\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.flags);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=field\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer___1.field);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10li=timestamp.tv_sec\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.timestamp.tv_sec);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10li=timestamp.tv_usec\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.timestamp.tv_usec);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=sequence\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.sequence);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   0x%08X=memory\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           (unsigned int )v4l2_buffer___1.memory);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=m.offset\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.m.offset);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s:   %10i=length\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           v4l2_buffer___1.length);
  } else {
  }
  tmp___51 = copy_to_user((void *)arg, (void const *)(& v4l2_buffer___1), 88U);
  if (tmp___51 != 0) {
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  input = peasycap->frame_buffer[peasycap->frame_read][0].input;
  if (((unsigned int )input & 8U) != 0U) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: user is offered frame buffer %i, input %i\n", peasycap->isdongle,
             "easycap_unlocked_ioctl", peasycap->frame_read, (int )input & 7);
    } else {
    }
  } else
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: user is offered frame buffer %i\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", peasycap->frame_read);
  } else {
  }
  peasycap->frame_lock = 1;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=peasycap->frame_fill\n", peasycap->isdongle, "easycap_unlocked_ioctl",
           peasycap->frame_fill);
  } else {
  }
  if (peasycap->frame_read == peasycap->frame_fill) {
    if (peasycap->frame_lock != 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: WORRY:  filling frame buffer while offered to user\n",
               peasycap->isdongle, "easycap_unlocked_ioctl");
      } else {
      }
    } else {
    }
  } else {
  }
  goto ldv_32709;
  case 1074026002U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_STREAMON\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  peasycap->isequence = 0U;
  i___1 = 0;
  goto ldv_32863;
  ldv_32862:
  peasycap->merit[i___1] = 0;
  i___1 = i___1 + 1;
  ldv_32863: ;
  if (i___1 <= 179) {
    goto ldv_32862;
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  easycap_video_submit_urbs(peasycap);
  peasycap->video_idle = 0;
  peasycap->audio_idle = 0;
  peasycap->video_eof = 0;
  peasycap->audio_eof = 0;
  goto ldv_32709;
  case 1074026003U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_STREAMOFF\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  peasycap->video_idle = 1;
  peasycap->audio_idle = 1;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: calling wake_up on wq_video and wq_audio\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
  } else {
  }
  __wake_up(& peasycap->wq_video, 1U, 1, (void *)0);
  if ((unsigned long )peasycap->psubstream != (unsigned long )((struct snd_pcm_substream *)0)) {
    snd_pcm_period_elapsed(peasycap->psubstream);
  } else {
  }
  goto ldv_32709;
  case 3234616853U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_PARM\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  tmp___52 = memdup_user((void const *)arg, 204UL);
  pv4l2_streamparm = (struct v4l2_streamparm *)tmp___52;
  tmp___54 = IS_ERR((void const *)pv4l2_streamparm);
  if (tmp___54 != 0L) {
    printk("<7>easycap::%i%s: OLD_ERROR: copy from user failed\n", peasycap->isdongle,
           "easycap_unlocked_ioctl");
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    tmp___53 = PTR_ERR((void const *)pv4l2_streamparm);
    return (tmp___53);
  } else {
  }
  if ((unsigned int )pv4l2_streamparm->type != 1U) {
    kfree((void const *)pv4l2_streamparm);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-22L);
  } else {
  }
  pv4l2_streamparm->parm.capture.capability = 0U;
  pv4l2_streamparm->parm.capture.capturemode = 0U;
  pv4l2_streamparm->parm.capture.timeperframe.numerator = 1U;
  if (peasycap->fps != 0) {
    pv4l2_streamparm->parm.capture.timeperframe.denominator = (__u32 )peasycap->fps;
  } else
  if ((int )peasycap->ntsc) {
    pv4l2_streamparm->parm.capture.timeperframe.denominator = 30U;
  } else {
    pv4l2_streamparm->parm.capture.timeperframe.denominator = 25U;
  }
  pv4l2_streamparm->parm.capture.readbuffers = (__u32 )peasycap->frame_buffer_many;
  pv4l2_streamparm->parm.capture.extendedmode = 0U;
  tmp___55 = copy_to_user((void *)arg, (void const *)pv4l2_streamparm, 204U);
  if (tmp___55 != 0) {
    kfree((void const *)pv4l2_streamparm);
    mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
    return (-14L);
  } else {
  }
  kfree((void const *)pv4l2_streamparm);
  goto ldv_32709;
  case 3234616854U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_PARM unsupported\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 2150913569U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_AUDIO unsupported\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 1077171746U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_AUDIO unsupported\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 1079268894U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_S_TUNER unsupported\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 2150651402U: ;
  case 1076909579U: ;
  case 1074025998U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_FBUF|VIDIOC_S_FBUF|VIDIOC_OVERLAY unsupported\n",
           peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3226752541U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_TUNER unsupported\n", peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  case 3224131128U: ;
  case 1076647481U: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: VIDIOC_G_FREQUENCY|VIDIOC_S_FREQUENCY unsupported\n",
           peasycap->isdongle, "easycap_unlocked_ioctl");
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-22L);
  default: ;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: OLD_ERROR: unrecognized V4L2 IOCTL command: 0x%08X\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", cmd);
  } else {
  }
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  return (-515L);
  }
  ldv_32709:
  mutex_unlock(& easycapdc60_dongle[kd].mutex_video);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: unlocked easycapdc60_dongle[%i].mutex_video\n", peasycap->isdongle,
           "easycap_unlocked_ioctl", kd);
  } else {
  }
  return (0L);
}
}
extern char *strcat(char * , char const * ) ;
struct easycap_format easycap_format[3361U] ;
struct easycap_standard const easycap_standard[21U] =
  { {0U, {0U, 541ULL, {'P', 'A', 'L', '_', 'B', 'G', 'H', 'I', 'N', '\000'}, {1U,
                                                                               25U},
           625U, {0U, 0U, 0U, 0U}}},
        {8U, {8U, 0ULL, {'N', 'T', 'S', 'C', '_', 'N', '_', '4', '4', '3', '\000'}, {1U,
                                                                                  25U},
           480U, {0U, 0U, 0U, 0U}}},
        {2U, {2U, 1024ULL, {'P', 'A', 'L', '_', 'N', 'c', '\000'}, {1U, 25U}, 625U, {0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U}}},
        {6U,
      {6U, 0ULL, {'N', 'T', 'S', 'C', '_', 'N', '\000'}, {1U, 25U}, 525U, {0U, 0U,
                                                                           0U, 0U}}},
        {4U,
      {4U, 16711680ULL, {'S', 'E', 'C', 'A', 'M', '\000'}, {1U, 25U}, 625U, {0U, 0U,
                                                                             0U, 0U}}},
        {1U,
      {1U, 4096ULL, {'N', 'T', 'S', 'C', '_', 'M', '\000'}, {1U, 30U}, 525U, {0U,
                                                                              0U,
                                                                              0U,
                                                                              0U}}},
        {5U,
      {5U, 8192ULL, {'N', 'T', 'S', 'C', '_', 'M', '_', 'J', 'P', '\000'}, {1U, 30U},
       525U, {0U, 0U, 0U, 0U}}},
        {7U, {7U, 2048ULL, {'P', 'A', 'L', '_', '6', '0', '\000'}, {1U, 30U}, 525U, {0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U}}},
        {3U,
      {3U, 16384ULL, {'N', 'T', 'S', 'C', '_', '4', '4', '3', '\000'}, {1U, 30U},
       525U, {0U, 0U, 0U, 0U}}},
        {9U, {9U, 256ULL, {'P', 'A', 'L', '_', 'M', '\000'}, {1U, 30U}, 525U, {0U, 0U,
                                                                            0U, 0U}}},
        {32778U,
      {10U, 4294967837ULL, {'P', 'A', 'L', '_', 'B', 'G', 'H', 'I', 'N', '_', 'S',
                            'L', 'O', 'W', '\000'}, {1U, 5U}, 625U, {0U, 0U, 0U, 0U}}},
        {32786U,
      {18U, 73014444032ULL, {'N', 'T', 'S', 'C', '_', 'N', '_', '4', '4', '3', '_',
                             'S', 'L', 'O', 'W', '\000'}, {1U, 5U}, 480U, {0U, 0U,
                                                                           0U, 0U}}},
        {32780U,
      {12U, 4294968320ULL, {'P', 'A', 'L', '_', 'N', 'c', '_', 'S', 'L', 'O', 'W',
                            '\000'}, {1U, 5U}, 625U, {0U, 0U, 0U, 0U}}},
        {32784U, {16U, 141733920768ULL, {'N', 'T', 'S', 'C', '_', 'N', '_', 'S', 'L',
                                      'O', 'W', '\000'}, {1U, 5U}, 525U, {0U, 0U,
                                                                          0U, 0U}}},
        {32782U,
      {14U, 4311678976ULL, {'S', 'E', 'C', 'A', 'M', '_', 'S', 'L', 'O', 'W', '\000'},
       {1U, 5U}, 625U, {0U, 0U, 0U, 0U}}},
        {32779U, {11U, 4294971392ULL, {'N', 'T', 'S', 'C', '_', 'M', '_', 'S', 'L', 'O',
                                    'W', '\000'}, {1U, 6U}, 525U, {0U, 0U, 0U, 0U}}},
        {32783U,
      {15U, 4294975488ULL, {'N', 'T', 'S', 'C', '_', 'M', '_', 'J', 'P', '_', 'S',
                            'L', 'O', 'W', '\000'}, {1U, 6U}, 525U, {0U, 0U, 0U, 0U}}},
        {32785U,
      {17U, 4294969344ULL, {'P', 'A', 'L', '_', '6', '0', '_', 'S', 'L', 'O', 'W',
                            '\000'}, {1U, 6U}, 525U, {0U, 0U, 0U, 0U}}},
        {32781U, {13U, 4294983680ULL, {'N', 'T', 'S', 'C', '_', '4', '4', '3', '_', 'S',
                                    'L', 'O', 'W', '\000'}, {1U, 6U}, 525U, {0U, 0U,
                                                                             0U, 0U}}},
        {32787U,
      {19U, 4294967552ULL, {'P', 'A', 'L', '_', 'M', '_', 'S', 'L', 'O', 'W', '\000'},
       {1U, 6U}, 525U, {0U, 0U, 0U, 0U}}},
        {65535U, {0U, 0ULL, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                          (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
               {0U, 0U}, 0U, {0U, 0U, 0U, 0U}}}};
int easycap_video_fillin_formats(void)
{
  char const *name1 ;
  char const *name2 ;
  char const *name3 ;
  char const *name4 ;
  struct v4l2_format *fmt ;
  int i ;
  int j ;
  int k ;
  int m ;
  int n ;
  u32 width ;
  u32 height ;
  u32 pixelformat ;
  u32 bytesperline ;
  u32 sizeimage ;
  u16 mask1 ;
  u16 mask2 ;
  u16 mask3 ;
  u16 mask4 ;
  enum v4l2_field field ;
  enum v4l2_colorspace colorspace ;
  {
  i = 0;
  n = 0;
  goto ldv_32592;
  ldv_32591:
  mask1 = 0U;
  switch (i) {
  case 0:
  mask1 = 0U;
  name1 = "PAL_BGHIN";
  colorspace = 6;
  goto ldv_32539;
  case 4:
  mask1 = 4U;
  name1 = "SECAM";
  colorspace = 6;
  goto ldv_32539;
  case 2:
  mask1 = 2U;
  name1 = "PAL_Nc";
  colorspace = 6;
  goto ldv_32539;
  case 7:
  mask1 = 7U;
  name1 = "PAL_60";
  colorspace = 6;
  goto ldv_32539;
  case 9:
  mask1 = 9U;
  name1 = "PAL_M";
  colorspace = 6;
  goto ldv_32539;
  case 1:
  mask1 = 1U;
  name1 = "NTSC_M";
  colorspace = 5;
  goto ldv_32539;
  case 3:
  mask1 = 3U;
  name1 = "NTSC_443";
  colorspace = 5;
  goto ldv_32539;
  case 5:
  mask1 = 5U;
  name1 = "NTSC_M_JP";
  colorspace = 5;
  goto ldv_32539;
  case 6:
  mask1 = 1U;
  name1 = "NTSC_N";
  colorspace = 5;
  goto ldv_32539;
  case 8:
  mask1 = 8U;
  name1 = "NTSC_N_443";
  colorspace = 5;
  goto ldv_32539;
  case 10:
  mask1 = 10U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "PAL_BGHIN_SLOW";
  colorspace = 6;
  goto ldv_32539;
  case 14:
  mask1 = 14U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "SECAM_SLOW";
  colorspace = 6;
  goto ldv_32539;
  case 12:
  mask1 = 12U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "PAL_Nc_SLOW";
  colorspace = 6;
  goto ldv_32539;
  case 17:
  mask1 = 17U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "PAL_60_SLOW";
  colorspace = 6;
  goto ldv_32539;
  case 19:
  mask1 = 19U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "PAL_M_SLOW";
  colorspace = 6;
  goto ldv_32539;
  case 11:
  mask1 = 11U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "NTSC_M_SLOW";
  colorspace = 5;
  goto ldv_32539;
  case 13:
  mask1 = 13U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "NTSC_443_SLOW";
  colorspace = 5;
  goto ldv_32539;
  case 15:
  mask1 = 15U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "NTSC_M_JP_SLOW";
  colorspace = 5;
  goto ldv_32539;
  case 16:
  mask1 = 16U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "NTSC_N_SLOW";
  colorspace = 5;
  goto ldv_32539;
  case 18:
  mask1 = 18U;
  mask1 = (u16 )((unsigned int )mask1 | 512U);
  name1 = "NTSC_N_443_SLOW";
  colorspace = 5;
  goto ldv_32539;
  default: ;
  return (-1);
  }
  ldv_32539:
  j = 0;
  goto ldv_32589;
  ldv_32588:
  mask2 = 0U;
  switch (j) {
  case 0: ;
  if ((int )mask1 & 1) {
    goto ldv_32561;
  } else {
  }
  name2 = "_AT_720x576";
  width = 720U;
  height = 576U;
  goto ldv_32562;
  case 1: ;
  if ((int )mask1 & 1) {
    goto ldv_32561;
  } else {
  }
  name2 = "_AT_704x576";
  width = 704U;
  height = 576U;
  goto ldv_32562;
  case 2:
  name2 = "_AT_640x480";
  width = 640U;
  height = 480U;
  goto ldv_32562;
  case 3: ;
  if (((unsigned int )mask1 & 1U) == 0U) {
    goto ldv_32561;
  } else {
  }
  name2 = "_AT_720x480";
  width = 720U;
  height = 480U;
  goto ldv_32562;
  case 4: ;
  if ((int )mask1 & 1) {
    goto ldv_32561;
  } else {
  }
  name2 = "_AT_360x288";
  width = 360U;
  height = 288U;
  mask2 = 2048U;
  goto ldv_32562;
  case 5:
  name2 = "_AT_320x240";
  width = 320U;
  height = 240U;
  mask2 = 2048U;
  goto ldv_32562;
  case 6: ;
  if (((unsigned int )mask1 & 1U) == 0U) {
    goto ldv_32561;
  } else {
  }
  name2 = "_AT_360x240";
  width = 360U;
  height = 240U;
  mask2 = 2048U;
  goto ldv_32562;
  default: ;
  return (-2);
  }
  ldv_32562:
  k = 0;
  goto ldv_32586;
  ldv_32585:
  mask3 = 0U;
  switch (k) {
  case 0:
  name3 = "FMT_UYVY";
  pixelformat = 1498831189U;
  mask3 = (u16 )((unsigned int )mask3 | 64U);
  goto ldv_32571;
  case 1:
  name3 = "FMT_YUY2";
  pixelformat = 1448695129U;
  mask3 = (u16 )((unsigned int )mask3 | 64U);
  mask3 = (u16 )((unsigned int )mask3 | 256U);
  goto ldv_32571;
  case 2:
  name3 = "FMT_RGB24";
  pixelformat = 859981650U;
  mask3 = (u16 )((unsigned int )mask3 | 96U);
  goto ldv_32571;
  case 3:
  name3 = "FMT_RGB32";
  pixelformat = 876758866U;
  mask3 = (u16 )((unsigned int )mask3 | 128U);
  goto ldv_32571;
  case 4:
  name3 = "FMT_BGR24";
  pixelformat = 861030210U;
  mask3 = (u16 )((unsigned int )mask3 | 96U);
  mask3 = (u16 )((unsigned int )mask3 | 256U);
  goto ldv_32571;
  case 5:
  name3 = "FMT_BGR32";
  pixelformat = 877807426U;
  mask3 = (u16 )((unsigned int )mask3 | 128U);
  mask3 = (u16 )((unsigned int )mask3 | 256U);
  goto ldv_32571;
  default: ;
  return (-3);
  }
  ldv_32571:
  bytesperline = (u32 )(((int )mask3 & 224) >> 5) * width;
  sizeimage = bytesperline * height;
  m = 0;
  goto ldv_32583;
  ldv_32582:
  mask4 = 0U;
  switch (m) {
  case 0:
  name4 = "-n";
  field = 1;
  goto ldv_32579;
  case 1:
  name4 = "-i";
  mask4 = (u16 )((unsigned int )mask4 | 4096U);
  field = 4;
  goto ldv_32579;
  default: ;
  return (-4);
  }
  ldv_32579: ;
  if (n > 3359) {
    return (-5);
  } else {
  }
  strcpy((char *)(& easycap_format[n].name), name1);
  strcat((char *)(& easycap_format[n].name), name2);
  strcat((char *)(& easycap_format[n].name), "_");
  strcat((char *)(& easycap_format[n].name), name3);
  strcat((char *)(& easycap_format[n].name), name4);
  easycap_format[n].mask = (u16 )((((int )mask1 | (int )mask2) | (int )mask3) | (int )mask4);
  fmt = & easycap_format[n].v4l2_format;
  fmt->type = 1;
  fmt->fmt.pix.width = width;
  fmt->fmt.pix.height = height;
  fmt->fmt.pix.pixelformat = pixelformat;
  fmt->fmt.pix.field = field;
  fmt->fmt.pix.bytesperline = bytesperline;
  fmt->fmt.pix.sizeimage = sizeimage;
  fmt->fmt.pix.colorspace = colorspace;
  fmt->fmt.pix.priv = 0U;
  n = n + 1;
  m = m + 1;
  ldv_32583: ;
  if (m <= 1) {
    goto ldv_32582;
  } else {
  }
  k = k + 1;
  ldv_32586: ;
  if (k <= 5) {
    goto ldv_32585;
  } else {
  }
  ldv_32561:
  j = j + 1;
  ldv_32589: ;
  if (j <= 6) {
    goto ldv_32588;
  } else {
  }
  i = i + 1;
  ldv_32592: ;
  if (i <= 19) {
    goto ldv_32591;
  } else {
  }
  if (n > 3360) {
    return (-6);
  } else {
  }
  easycap_format[n].mask = 65535U;
  return (n);
}
}
struct v4l2_queryctrl easycap_control[7U] = { {9963776U, 1, {'B', 'r', 'i', 'g', 'h', 't', 'n', 'e', 's', 's', '\000'}, 0,
      255, 1, 127, 0U, {0U, 0U}},
        {9963777U, 1, {'C', 'o', 'n', 't', 'r', 'a', 's', 't', '\000'}, 0, 255, 1, 191,
      0U, {0U, 0U}},
        {9963778U, 1, {'S', 'a', 't', 'u', 'r', 'a', 't', 'i', 'o', 'n', '\000'}, 0,
      255, 1, 175, 0U, {0U, 0U}},
        {9963779U, 1, {'H', 'u', 'e', '\000'}, 0, 255, 1, 128, 0U, {0U, 0U}},
        {9963781U, 1, {'V', 'o', 'l', 'u', 'm', 'e', '\000'}, 0, 31, 1, 16, 0U, {0U,
                                                                              0U}},
        {9963785U,
      2, {'M', 'u', 't', 'e', '\000'}, 0, 0, 0, 1, 0U, {0U, 0U}},
        {4294967295U, 0, {(unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                       (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
      0, 0, 0, 0, 0U, {0U, 0U}}};
void easycap_testcard(struct easycap *peasycap , int field )
{
  int total ;
  int y ;
  int u ;
  int v ;
  int r ;
  int g ;
  int b ;
  unsigned char uyvy[4U] ;
  int i1 ;
  int line ;
  int k ;
  int m ;
  int n ;
  int more ;
  int much ;
  int barwidth ;
  int barheight ;
  unsigned char bfbar[180U] ;
  unsigned char *p1 ;
  unsigned char *p2 ;
  struct data_buffer *pfield_buffer ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  size_t __len ;
  void *__ret ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_testcard");
    return;
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %i=field\n", peasycap->isdongle, "easycap_testcard",
           field);
  } else {
  }
  switch (peasycap->width) {
  case 720: ;
  case 360:
  barwidth = 180;
  goto ldv_32540;
  case 704: ;
  case 352:
  barwidth = 176;
  goto ldv_32540;
  case 640: ;
  case 320:
  barwidth = 160;
  goto ldv_32540;
  default:
  printk("<7>easycap::%i%s: OLD_ERROR:  cannot set barwidth\n", peasycap->isdongle, "easycap_testcard");
  return;
  }
  ldv_32540: ;
  if (barwidth > 1440) {
    printk("<7>easycap::%i%s: OLD_ERROR: barwidth is too large\n", peasycap->isdongle,
           "easycap_testcard");
    return;
  } else {
  }
  switch (peasycap->height) {
  case 576: ;
  case 288:
  barheight = 576;
  goto ldv_32548;
  case 480: ;
  case 240:
  barheight = 480;
  goto ldv_32548;
  default:
  printk("<7>easycap::%i%s: OLD_ERROR: cannot set barheight\n", peasycap->isdongle, "easycap_testcard");
  return;
  }
  ldv_32548:
  total = 0;
  k = field;
  m = 0;
  n = 0;
  line = 0;
  goto ldv_32565;
  ldv_32564:
  i1 = 0;
  goto ldv_32562;
  ldv_32561:
  r = (i1 * 256) / 8;
  g = (i1 * 256) / 8;
  b = (i1 * 256) / 8;
  y = ((r * 299) / 1000 + (g * 587) / 1000) + (b * 114) / 1000;
  u = ((r * -147) / 1000 - (g * 289) / 1000) + (b * 436) / 1000;
  u = u + 128;
  v = ((r * 615) / 1000 - (g * 515) / 1000) - (b * 100) / 1000;
  v = v + 128;
  uyvy[0] = (unsigned char )u;
  uyvy[1] = (unsigned char )y;
  uyvy[2] = (unsigned char )v;
  uyvy[3] = (unsigned char )y;
  p1 = (unsigned char *)(& bfbar);
  goto ldv_32553;
  ldv_32552:
  tmp = p1;
  p1 = p1 + 1;
  *tmp = uyvy[0];
  tmp___0 = p1;
  p1 = p1 + 1;
  *tmp___0 = uyvy[1];
  tmp___1 = p1;
  p1 = p1 + 1;
  *tmp___1 = uyvy[2];
  tmp___2 = p1;
  p1 = p1 + 1;
  *tmp___2 = uyvy[3];
  total = total + 4;
  ldv_32553: ;
  if ((unsigned long )((unsigned char *)(& bfbar) + (unsigned long )barwidth) > (unsigned long )p1) {
    goto ldv_32552;
  } else {
  }
  p1 = (unsigned char *)(& bfbar);
  more = barwidth;
  goto ldv_32559;
  ldv_32558: ;
  if ((unsigned int )m > 202U) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad m reached\n", peasycap->isdongle, "easycap_testcard");
    return;
  } else {
  }
  if ((unsigned int )n > 4096U) {
    printk("<7>easycap::%i%s: OLD_ERROR:  bad n reached\n", peasycap->isdongle, "easycap_testcard");
    return;
  } else {
  }
  if (more < 0) {
    printk("<7>easycap::%i%s: OLD_ERROR:  internal fault\n", peasycap->isdongle, "easycap_testcard");
    return;
  } else {
  }
  much = (int )(4096U - (unsigned int )n);
  if (much > more) {
    much = more;
  } else {
  }
  pfield_buffer = (struct data_buffer *)(& peasycap->field_buffer) + ((unsigned long )k + (unsigned long )m);
  p2 = (unsigned char *)pfield_buffer->pgo + (unsigned long )n;
  __len = (size_t )much;
  __ret = memcpy((void *)p2, (void const *)p1, __len);
  p1 = p1 + (unsigned long )much;
  n = n + much;
  more = more - much;
  if (n == 4096) {
    m = m + 1;
    n = 0;
  } else {
  }
  ldv_32559: ;
  if (more != 0) {
    goto ldv_32558;
  } else {
  }
  i1 = i1 + 1;
  ldv_32562: ;
  if (i1 <= 7) {
    goto ldv_32561;
  } else {
  }
  line = line + 1;
  ldv_32565: ;
  if (barheight / 2 > line) {
    goto ldv_32564;
  } else {
  }
  return;
}
}
extern int sprintf(char * , char const * , ...) ;
extern void *vmalloc(unsigned long ) ;
extern void vfree(void const * ) ;
int ldv_usb_submit_urb_23(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
int ldv_usb_submit_urb_24(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
extern struct page *vmalloc_to_page(void const * ) ;
extern int snd_card_create(int , char const * , struct module * , int , struct snd_card ** ) ;
extern int snd_card_register(struct snd_card * ) ;
extern int snd_pcm_new(struct snd_card * , char const * , int , int , int , struct snd_pcm ** ) ;
__inline static struct snd_interval const *hw_param_interval_c(struct snd_pcm_hw_params const *params ,
                                                                 snd_pcm_hw_param_t var )
{
  {
  return ((struct snd_interval const *)(& params->intervals) + ((unsigned long )var + 0xfffffffffffffff8UL));
}
}
extern void snd_pcm_set_ops(struct snd_pcm * , int , struct snd_pcm_ops * ) ;
extern int snd_pcm_lib_ioctl(struct snd_pcm_substream * , unsigned int , void * ) ;
static struct snd_pcm_hardware const alsa_hardware =
     {65795U, 4ULL, 160U, 32000U, 48000U, 2U, 2U, 524288UL, 16384UL, 32768UL, 32U, 64U,
    0UL};
static int easycap_audio_submit_urbs(struct easycap *peasycap )
{
  struct data_urb *pdata_urb ;
  struct urb *purb ;
  struct list_head *plist_head ;
  int j ;
  int isbad ;
  int nospc ;
  int m ;
  int rc ;
  int isbuf ;
  struct list_head const *__mptr ;
  unsigned int tmp ;
  char const *tmp___0 ;
  {
  if ((unsigned long )peasycap->purb_audio_head == (unsigned long )((struct list_head *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->urb_audio_head uninitialized\n", peasycap->isdongle,
           "easycap_audio_submit_urbs");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_audio_submit_urbs");
    return (-14);
  } else {
  }
  if (peasycap->audio_isoc_streaming != 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: already streaming audio urbs\n", peasycap->isdongle,
             "easycap_audio_submit_urbs");
    } else {
    }
    return (0);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: initial submission of all audio urbs\n", peasycap->isdongle,
           "easycap_audio_submit_urbs");
  } else {
  }
  rc = usb_set_interface(peasycap->pusb_device, peasycap->audio_interface, peasycap->audio_altsetting_on);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: usb_set_interface(.,%i,%i) returned %i\n", peasycap->isdongle,
           "easycap_audio_submit_urbs", peasycap->audio_interface, peasycap->audio_altsetting_on,
           rc);
  } else {
  }
  isbad = 0;
  nospc = 0;
  m = 0;
  plist_head = (peasycap->purb_audio_head)->next;
  goto ldv_32544;
  ldv_32543:
  __mptr = (struct list_head const *)plist_head;
  pdata_urb = (struct data_urb *)__mptr;
  if ((unsigned long )pdata_urb != (unsigned long )((struct data_urb *)0) && (unsigned long )pdata_urb->purb != (unsigned long )((struct urb *)0)) {
    purb = pdata_urb->purb;
    isbuf = pdata_urb->isbuf;
    purb->interval = 1;
    purb->dev = peasycap->pusb_device;
    tmp = __create_pipe(peasycap->pusb_device, (unsigned int )peasycap->audio_endpointnumber);
    purb->pipe = tmp | 128U;
    purb->transfer_flags = 2U;
    purb->transfer_buffer = peasycap->audio_isoc_buffer[isbuf].pgo;
    purb->transfer_buffer_length = (u32 )peasycap->audio_isoc_buffer_size;
    purb->complete = & easycap_alsa_complete;
    purb->context = (void *)peasycap;
    purb->start_frame = 0;
    purb->number_of_packets = peasycap->audio_isoc_framesperdesc;
    j = 0;
    goto ldv_32541;
    ldv_32540:
    purb->iso_frame_desc[j].offset = (unsigned int )(peasycap->audio_isoc_maxframesize * j);
    purb->iso_frame_desc[j].length = (unsigned int )peasycap->audio_isoc_maxframesize;
    j = j + 1;
    ldv_32541: ;
    if (peasycap->audio_isoc_framesperdesc > j) {
      goto ldv_32540;
    } else {
    }
    rc = ldv_usb_submit_urb_23(purb, 208U);
    if (rc != 0) {
      isbad = isbad + 1;
      tmp___0 = ldv_strerror(rc);
      printk("<7>easycap::%i%s: OLD_ERROR: usb_submit_urb() failed for urb with rc: -%s: %d\n",
             peasycap->isdongle, "easycap_audio_submit_urbs", tmp___0, rc);
    } else {
      m = m + 1;
    }
  } else {
    isbad = isbad + 1;
  }
  plist_head = plist_head->next;
  ldv_32544: ;
  if ((unsigned long )peasycap->purb_audio_head != (unsigned long )plist_head) {
    goto ldv_32543;
  } else {
  }
  if (nospc != 0) {
    printk("<7>easycap::%i%s: -ENOSPC=usb_submit_urb() for %i urbs\n", peasycap->isdongle,
           "easycap_audio_submit_urbs", nospc);
    printk("<7>easycap::%i%s: .....  possibly inadequate USB bandwidth\n", peasycap->isdongle,
           "easycap_audio_submit_urbs");
    peasycap->audio_eof = 1;
  } else {
  }
  if (isbad != 0) {
    easycap_audio_kill_urbs(peasycap);
  } else {
    peasycap->audio_isoc_streaming = m;
  }
  return (0);
}
}
static int easycap_sound_setup(struct easycap *peasycap )
{
  int rc ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: starting initialization\n", peasycap->isdongle, "easycap_sound_setup");
  } else {
  }
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL.\n", "easycap_sound_setup");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device is NULL\n", peasycap->isdongle,
           "easycap_sound_setup");
    return (-19);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: 0x%08lX=peasycap->pusb_device\n", peasycap->isdongle,
           "easycap_sound_setup", (long )peasycap->pusb_device);
  } else {
  }
  rc = easycap_audio_setup(peasycap);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: audio_setup() returned %i\n", peasycap->isdongle, "easycap_sound_setup",
           rc);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device has become NULL\n", peasycap->isdongle,
           "easycap_sound_setup");
    return (-19);
  } else {
  }
  if ((unsigned long )peasycap->pusb_device == (unsigned long )((struct usb_device *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: peasycap->pusb_device has become NULL\n", peasycap->isdongle,
           "easycap_sound_setup");
    return (-19);
  } else {
  }
  rc = usb_set_interface(peasycap->pusb_device, peasycap->audio_interface, peasycap->audio_altsetting_on);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: usb_set_interface(.,%i,%i) returned %i\n", peasycap->isdongle,
           "easycap_sound_setup", peasycap->audio_interface, peasycap->audio_altsetting_on,
           rc);
  } else {
  }
  rc = easycap_wakeup_device(peasycap->pusb_device);
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: wakeup_device() returned %i\n", peasycap->isdongle,
           "easycap_sound_setup", rc);
  } else {
  }
  peasycap->audio_eof = 0;
  peasycap->audio_idle = 0;
  easycap_audio_submit_urbs(peasycap);
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: finished initialization\n", peasycap->isdongle, "easycap_sound_setup");
  } else {
  }
  return (0);
}
}
void easycap_alsa_complete(struct urb *purb )
{
  struct easycap *peasycap ;
  struct snd_pcm_substream *pss ;
  struct snd_pcm_runtime *prt ;
  int dma_bytes ;
  int fragment_bytes ;
  int isfragment ;
  u8 *p1 ;
  u8 *p2 ;
  s16 tmp ;
  int i ;
  int j ;
  int more ;
  int much ;
  int rc ;
  int k ;
  s16 oldaudio ;
  s16 newaudio ;
  s16 delta ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  size_t __len ;
  void *__ret ;
  char const *tmp___2 ;
  {
  if (easycap_debug > 15) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_complete");
  } else {
  }
  if ((unsigned long )purb == (unsigned long )((struct urb *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: purb is NULL\n", "easycap_alsa_complete");
    return;
  } else {
  }
  peasycap = (struct easycap *)purb->context;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_alsa_complete");
    return;
  } else {
  }
  much = 0;
  if (peasycap->audio_idle != 0) {
    if (easycap_debug > 15) {
      printk("<7>easycap::%i%s: %i=audio_idle  %i=audio_isoc_streaming\n", peasycap->isdongle,
             "easycap_alsa_complete", peasycap->audio_idle, peasycap->audio_isoc_streaming);
    } else {
    }
    if (peasycap->audio_isoc_streaming != 0) {
      goto resubmit;
    } else {
    }
  } else {
  }
  pss = peasycap->psubstream;
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    goto resubmit;
  } else {
  }
  prt = pss->runtime;
  if ((unsigned long )prt == (unsigned long )((struct snd_pcm_runtime *)0)) {
    goto resubmit;
  } else {
  }
  dma_bytes = (int )prt->dma_bytes;
  if (dma_bytes == 0) {
    goto resubmit;
  } else {
  }
  fragment_bytes = (int )prt->period_size * 4;
  if (fragment_bytes == 0) {
    goto resubmit;
  } else {
  }
  if (purb->status != 0) {
    if (purb->status == -108 || purb->status == -2) {
      if (easycap_debug > 15) {
        printk("<7>easycap::%i%s: urb status -ESHUTDOWN or -ENOENT\n", peasycap->isdongle,
               "easycap_alsa_complete");
      } else {
      }
      return;
    } else {
    }
    tmp___0 = ldv_strerror(purb->status);
    printk("<7>easycap::%i%s: OLD_ERROR: non-zero urb status: -%s: %d\n", peasycap->isdongle,
           "easycap_alsa_complete", tmp___0, purb->status);
    goto resubmit;
  } else {
  }
  oldaudio = peasycap->oldaudio;
  i = 0;
  goto ldv_32588;
  ldv_32587: ;
  if (purb->iso_frame_desc[i].status < 0) {
    tmp___1 = ldv_strerror(purb->iso_frame_desc[i].status);
    printk("<7>easycap::%i%s: -%s: %d\n", peasycap->isdongle, "easycap_alsa_complete",
           tmp___1, purb->iso_frame_desc[i].status);
  } else {
  }
  if (purb->iso_frame_desc[i].status != 0) {
    if (easycap_debug > 11) {
      printk("<7>easycap::%i%s: discarding audio samples because %i=purb->iso_frame_desc[i].status\n",
             peasycap->isdongle, "easycap_alsa_complete", purb->iso_frame_desc[i].status);
    } else {
    }
    goto ldv_32574;
  } else {
  }
  more = (int )purb->iso_frame_desc[i].actual_length;
  if (more == 0) {
    peasycap->audio_mt = peasycap->audio_mt + 1;
    goto ldv_32574;
  } else {
  }
  if (more < 0) {
    printk("<7>easycap::%i%s: MISTAKE: more is negative\n", peasycap->isdongle, "easycap_alsa_complete");
    return;
  } else {
  }
  if (peasycap->audio_mt != 0) {
    if (easycap_debug > 11) {
      printk("<7>easycap::%i%s: %4i empty audio urb frames\n", peasycap->isdongle,
             "easycap_alsa_complete", peasycap->audio_mt);
    } else {
    }
    peasycap->audio_mt = 0;
  } else {
  }
  p1 = (u8 *)purb->transfer_buffer + (unsigned long )purb->iso_frame_desc[i].offset;
  goto ldv_32585;
  ldv_32584:
  much = dma_bytes - peasycap->dma_fill;
  if (much < 0) {
    printk("<7>easycap::%i%s: MISTAKE: much is negative\n", peasycap->isdongle, "easycap_alsa_complete");
    return;
  } else {
  }
  if (much == 0) {
    peasycap->dma_fill = 0;
    peasycap->dma_next = fragment_bytes;
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: wrapped dma buffer\n", peasycap->isdongle, "easycap_alsa_complete");
    } else {
    }
  } else {
  }
  if (! peasycap->microphone) {
    if (much > more) {
      much = more;
    } else {
    }
    __len = (size_t )much;
    __ret = memcpy((void *)prt->dma_area + (unsigned long )peasycap->dma_fill,
                             (void const *)p1, __len);
    p1 = p1 + (unsigned long )much;
    more = more - much;
  } else {
    if (((unsigned int )much & 15U) != 0U) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: MISTAKE? much is not divisible by 16\n", peasycap->isdongle,
               "easycap_alsa_complete");
      } else {
      }
    } else {
    }
    if (more * 16 < much) {
      much = more * 16;
    } else {
    }
    p2 = prt->dma_area + (unsigned long )peasycap->dma_fill;
    j = 0;
    goto ldv_32582;
    ldv_32581:
    newaudio = (s16 )((unsigned int )((unsigned short )*p1) + 65408U);
    newaudio = (s16 )((unsigned int )((unsigned short )newaudio) * 128U);
    delta = (s16 )(((int )newaudio - (int )oldaudio) / 4);
    tmp = (s16 )((int )((unsigned short )oldaudio) + (int )((unsigned short )delta));
    k = 0;
    goto ldv_32579;
    ldv_32578:
    *p2 = (u8 )tmp;
    *(p2 + 1UL) = (u8 )(((int )tmp & 65280) >> 8);
    p2 = p2 + 2UL;
    *p2 = (u8 )tmp;
    *(p2 + 1UL) = (u8 )(((int )tmp & 65280) >> 8);
    p2 = p2 + 2UL;
    tmp = (s16 )((int )((unsigned short )tmp) + (int )((unsigned short )delta));
    k = k + 1;
    ldv_32579: ;
    if (k <= 3) {
      goto ldv_32578;
    } else {
    }
    p1 = p1 + 1;
    more = more - 1;
    oldaudio = tmp;
    j = j + 1;
    ldv_32582: ;
    if (much / 16 > j) {
      goto ldv_32581;
    } else {
    }
  }
  peasycap->dma_fill = peasycap->dma_fill + much;
  if (peasycap->dma_fill >= peasycap->dma_next) {
    isfragment = peasycap->dma_fill / fragment_bytes;
    if (isfragment < 0) {
      printk("<7>easycap::%i%s: MISTAKE: isfragment is negative\n", peasycap->isdongle,
             "easycap_alsa_complete");
      return;
    } else {
    }
    peasycap->dma_read = (isfragment + -1) * fragment_bytes;
    peasycap->dma_next = (isfragment + 1) * fragment_bytes;
    if (peasycap->dma_next > dma_bytes) {
      peasycap->dma_next = fragment_bytes;
    } else {
    }
    if (peasycap->dma_read >= 0) {
      if (easycap_debug > 7) {
        printk("<7>easycap::%i%s: snd_pcm_period_elapsed(), %i=isfragment\n", peasycap->isdongle,
               "easycap_alsa_complete", isfragment);
      } else {
      }
      snd_pcm_period_elapsed(pss);
    } else {
    }
  } else {
  }
  ldv_32585: ;
  if (more != 0) {
    goto ldv_32584;
  } else {
  }
  peasycap->oldaudio = oldaudio;
  ldv_32574:
  i = i + 1;
  ldv_32588: ;
  if (purb->number_of_packets > i) {
    goto ldv_32587;
  } else {
  }
  resubmit: ;
  if (peasycap->audio_isoc_streaming == 0) {
    return;
  } else {
  }
  rc = ldv_usb_submit_urb_24(purb, 32U);
  if (rc != 0) {
    if (rc != -19 && rc != -2) {
      tmp___2 = ldv_strerror(rc);
      printk("<7>easycap::%i%s: OLD_ERROR: while %i=audio_idle, usb_submit_urb failed with rc: -%s :%d\n",
             peasycap->isdongle, "easycap_alsa_complete", peasycap->audio_idle, tmp___2,
             rc);
    } else {
    }
    if (peasycap->audio_isoc_streaming > 0) {
      peasycap->audio_isoc_streaming = peasycap->audio_isoc_streaming - 1;
    } else {
    }
  } else {
  }
  return;
}
}
static int easycap_alsa_open(struct snd_pcm_substream *pss )
{
  struct snd_pcm *psnd_pcm ;
  struct snd_card *psnd_card ;
  struct easycap *peasycap ;
  int tmp ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_open");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_open");
    return (-14);
  } else {
  }
  psnd_pcm = pss->pcm;
  if ((unsigned long )psnd_pcm == (unsigned long )((struct snd_pcm *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  psnd_pcm is NULL\n", "easycap_alsa_open");
    return (-14);
  } else {
  }
  psnd_card = psnd_pcm->card;
  if ((unsigned long )psnd_card == (unsigned long )((struct snd_card *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  psnd_card is NULL\n", "easycap_alsa_open");
    return (-14);
  } else {
  }
  peasycap = (struct easycap *)psnd_card->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_alsa_open");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->psnd_card != (unsigned long )psnd_card) {
    printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->psnd_card\n", peasycap->isdongle,
           "easycap_alsa_open");
    return (-14);
  } else {
  }
  if ((unsigned long )peasycap->psubstream != (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap::%i%s: OLD_ERROR: bad peasycap->psubstream\n", peasycap->isdongle,
           "easycap_alsa_open");
    return (-14);
  } else {
  }
  pss->private_data = (void *)peasycap;
  peasycap->psubstream = pss;
  (pss->runtime)->hw = peasycap->alsa_hardware;
  (pss->runtime)->private_data = (void *)peasycap;
  pss->private_data = (void *)peasycap;
  tmp = easycap_sound_setup(peasycap);
  if (tmp != 0) {
    if (easycap_debug > 3) {
      printk("<7>easycap::%i%s: ending unsuccessfully\n", peasycap->isdongle, "easycap_alsa_open");
    } else {
    }
    return (-14);
  } else {
  }
  if (easycap_debug > 3) {
    printk("<7>easycap::%i%s: ending successfully\n", peasycap->isdongle, "easycap_alsa_open");
  } else {
  }
  return (0);
}
}
static int easycap_alsa_close(struct snd_pcm_substream *pss )
{
  struct easycap *peasycap ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_close");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_close");
    return (-14);
  } else {
  }
  peasycap = (struct easycap *)pss->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_alsa_close");
    return (-14);
  } else {
  }
  pss->private_data = (void *)0;
  peasycap->psubstream = (struct snd_pcm_substream *)0;
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: ending successfully\n", "easycap_alsa_close");
  } else {
  }
  return (0);
}
}
static int easycap_alsa_vmalloc(struct snd_pcm_substream *pss , size_t sz )
{
  struct snd_pcm_runtime *prt ;
  void *tmp ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_vmalloc");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_vmalloc");
    return (-14);
  } else {
  }
  prt = pss->runtime;
  if ((unsigned long )prt == (unsigned long )((struct snd_pcm_runtime *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: substream.runtime is NULL\n", "easycap_alsa_vmalloc");
    return (-14);
  } else {
  }
  if ((unsigned long )prt->dma_area != (unsigned long )((unsigned char *)0U)) {
    if (prt->dma_bytes > sz) {
      return (0);
    } else {
    }
    vfree((void const *)prt->dma_area);
  } else {
  }
  tmp = vmalloc(sz);
  prt->dma_area = (unsigned char *)tmp;
  if ((unsigned long )prt->dma_area == (unsigned long )((unsigned char *)0U)) {
    return (-12);
  } else {
  }
  prt->dma_bytes = sz;
  return (0);
}
}
static int easycap_alsa_hw_params(struct snd_pcm_substream *pss , struct snd_pcm_hw_params *phw )
{
  int rc ;
  struct snd_interval const *tmp ;
  struct snd_interval const *tmp___0 ;
  {
  if (easycap_debug > 3) {
    tmp = hw_param_interval_c((struct snd_pcm_hw_params const *)phw, 18);
    printk("<7>easycap:: %s: %i\n", "easycap_alsa_hw_params", tmp->min);
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_hw_params");
    return (-14);
  } else {
  }
  tmp___0 = hw_param_interval_c((struct snd_pcm_hw_params const *)phw, 18);
  rc = easycap_alsa_vmalloc(pss, (size_t )tmp___0->min);
  if (rc != 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
static int easycap_alsa_hw_free(struct snd_pcm_substream *pss )
{
  struct snd_pcm_runtime *prt ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_hw_free");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_hw_free");
    return (-14);
  } else {
  }
  prt = pss->runtime;
  if ((unsigned long )prt == (unsigned long )((struct snd_pcm_runtime *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: substream.runtime is NULL\n", "easycap_alsa_hw_free");
    return (-14);
  } else {
  }
  if ((unsigned long )prt->dma_area != (unsigned long )((unsigned char *)0U)) {
    if (easycap_debug > 7) {
      printk("<7>easycap:: %s: prt->dma_area = %p\n", "easycap_alsa_hw_free", prt->dma_area);
    } else {
    }
    vfree((void const *)prt->dma_area);
    prt->dma_area = (unsigned char *)0U;
  } else
  if (easycap_debug > 7) {
    printk("<7>easycap:: %s: dma_area already freed\n", "easycap_alsa_hw_free");
  } else {
  }
  return (0);
}
}
static int easycap_alsa_prepare(struct snd_pcm_substream *pss )
{
  struct easycap *peasycap ;
  struct snd_pcm_runtime *prt ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_prepare");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_prepare");
    return (-14);
  } else {
  }
  prt = pss->runtime;
  peasycap = (struct easycap *)pss->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_alsa_prepare");
    return (-14);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8i Hz=rate\n", peasycap->isdongle, "easycap_alsa_prepare",
           (pss->runtime)->rate);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =period_size\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->period_size);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8i =periods\n", peasycap->isdongle, "easycap_alsa_prepare",
           (pss->runtime)->periods);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =buffer_size\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->buffer_size);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8zd =dma_bytes\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->dma_bytes);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =boundary\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->boundary);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8i =period_step\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->period_step);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8i =sample_bits\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->sample_bits);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8i =frame_bits\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->frame_bits);
  } else {
  }
  if (easycap_debug > 15) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =min_align\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->min_align);
  } else {
  }
  if (easycap_debug > 11) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =hw_ptr_base\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->hw_ptr_base);
  } else {
  }
  if (easycap_debug > 11) {
    printk("<7>easycap::%i%s: ALSA decides %8ld =hw_ptr_interrupt\n", peasycap->isdongle,
           "easycap_alsa_prepare", (pss->runtime)->hw_ptr_interrupt);
  } else {
  }
  if (prt->dma_bytes != (size_t )(((int )prt->period_size * 4) * (int )prt->periods)) {
    printk("<7>easycap:: %s: MISTAKE:  unexpected ALSA parameters\n", "easycap_alsa_prepare");
    return (-2);
  } else {
  }
  return (0);
}
}
static int easycap_alsa_ack(struct snd_pcm_substream *pss )
{
  {
  return (0);
}
}
static int easycap_alsa_trigger(struct snd_pcm_substream *pss , int cmd )
{
  struct easycap *peasycap ;
  {
  if (easycap_debug > 3) {
    printk("<7>easycap:: %s: %i=cmd cf %i=START %i=STOP\n", "easycap_alsa_trigger",
           cmd, 1, 0);
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_trigger");
    return (-14);
  } else {
  }
  peasycap = (struct easycap *)pss->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_alsa_trigger");
    return (-14);
  } else {
  }
  switch (cmd) {
  case 1:
  peasycap->audio_idle = 0;
  goto ldv_32635;
  case 0:
  peasycap->audio_idle = 1;
  goto ldv_32635;
  default: ;
  return (-22);
  }
  ldv_32635: ;
  return (0);
}
}
static snd_pcm_uframes_t easycap_alsa_pointer(struct snd_pcm_substream *pss )
{
  struct easycap *peasycap ;
  snd_pcm_uframes_t offset ;
  {
  if (easycap_debug > 15) {
    printk("<7>easycap:: %s: \n", "easycap_alsa_pointer");
  } else {
  }
  if ((unsigned long )pss == (unsigned long )((struct snd_pcm_substream *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  pss is NULL\n", "easycap_alsa_pointer");
    return (0xfffffffffffffff2UL);
  } else {
  }
  peasycap = (struct easycap *)pss->private_data;
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR:  peasycap is NULL\n", "easycap_alsa_pointer");
    return (0xfffffffffffffff2UL);
  } else {
  }
  if (peasycap->audio_eof != 0 || peasycap->audio_idle != 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EIO because  %i=audio_idle  %i=audio_eof\n",
             peasycap->isdongle, "easycap_alsa_pointer", peasycap->audio_idle, peasycap->audio_eof);
    } else {
    }
    return (0xfffffffffffffffbUL);
  } else {
  }
  if (peasycap->dma_read < 0) {
    if (easycap_debug > 7) {
      printk("<7>easycap::%i%s: returning -EBUSY\n", peasycap->isdongle, "easycap_alsa_pointer");
    } else {
    }
    return (0xfffffffffffffff0UL);
  } else {
  }
  offset = (unsigned long )peasycap->dma_read / 4UL;
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: ALSA decides %8i   =hw_ptr_base\n", peasycap->isdongle,
           "easycap_alsa_pointer", (int )(pss->runtime)->hw_ptr_base);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: ALSA decides %8i   =hw_ptr_interrupt\n", peasycap->isdongle,
           "easycap_alsa_pointer", (int )(pss->runtime)->hw_ptr_interrupt);
  } else {
  }
  if (easycap_debug > 7) {
    printk("<7>easycap::%i%s: %7i=offset %7i=dma_read %7i=dma_next\n", peasycap->isdongle,
           "easycap_alsa_pointer", (int )offset, peasycap->dma_read, peasycap->dma_next);
  } else {
  }
  return (offset);
}
}
static struct page *easycap_alsa_page(struct snd_pcm_substream *pss , unsigned long offset )
{
  struct page *tmp ;
  {
  tmp = vmalloc_to_page((void const *)((pss->runtime)->dma_area + offset));
  return (tmp);
}
}
static struct snd_pcm_ops easycap_alsa_pcm_ops =
     {& easycap_alsa_open, & easycap_alsa_close, & snd_pcm_lib_ioctl, & easycap_alsa_hw_params,
    & easycap_alsa_hw_free, & easycap_alsa_prepare, & easycap_alsa_trigger, & easycap_alsa_pointer,
    0, 0, & easycap_alsa_page, 0, & easycap_alsa_ack};
int easycap_alsa_probe(struct easycap *peasycap )
{
  int rc ;
  struct snd_card *psnd_card ;
  struct snd_pcm *psnd_pcm ;
  int tmp ;
  {
  if ((unsigned long )peasycap == (unsigned long )((struct easycap *)0)) {
    printk("<7>easycap:: %s: OLD_ERROR: peasycap is NULL\n", "easycap_alsa_probe");
    return (-19);
  } else {
  }
  if (peasycap->minor < 0) {
    printk("<7>easycap:: %s: OLD_ERROR: no minor\n", "easycap_alsa_probe");
    return (-19);
  } else {
  }
  peasycap->alsa_hardware = alsa_hardware;
  if ((int )peasycap->microphone) {
    peasycap->alsa_hardware.rates = 32U;
    peasycap->alsa_hardware.rate_min = 32000U;
    peasycap->alsa_hardware.rate_max = 32000U;
  } else {
    peasycap->alsa_hardware.rates = 128U;
    peasycap->alsa_hardware.rate_min = 48000U;
    peasycap->alsa_hardware.rate_max = 48000U;
  }
  tmp = snd_card_create(-1, "easycap_alsa", & __this_module, 0, & psnd_card);
  if (tmp != 0) {
    printk("<7>easycap:: %s: OLD_ERROR: Cannot do ALSA snd_card_create()\n", "easycap_alsa_probe");
    return (-14);
  } else {
  }
  sprintf((char *)(& psnd_card->id), "EasyALSA%i", peasycap->minor);
  strcpy((char *)(& psnd_card->driver), "easycapdc60");
  strcpy((char *)(& psnd_card->shortname), "easycap_alsa");
  sprintf((char *)(& psnd_card->longname), "%s", (char *)(& psnd_card->shortname));
  psnd_card->dev = & (peasycap->pusb_device)->dev;
  psnd_card->private_data = (void *)peasycap;
  peasycap->psnd_card = psnd_card;
  rc = snd_pcm_new(psnd_card, "easycap_pcm", 0, 0, 1, & psnd_pcm);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: Cannot do ALSA snd_pcm_new()\n", peasycap->isdongle,
           "easycap_alsa_probe");
    snd_card_free(psnd_card);
    return (-14);
  } else {
  }
  snd_pcm_set_ops(psnd_pcm, 1, & easycap_alsa_pcm_ops);
  psnd_pcm->info_flags = 0U;
  strcpy((char *)(& psnd_pcm->name), (char const *)(& psnd_card->id));
  psnd_pcm->private_data = (void *)peasycap;
  peasycap->psnd_pcm = psnd_pcm;
  peasycap->psubstream = (struct snd_pcm_substream *)0;
  rc = snd_card_register(psnd_card);
  if (rc != 0) {
    printk("<7>easycap::%i%s: OLD_ERROR: Cannot do ALSA snd_card_register()\n", peasycap->isdongle,
           "easycap_alsa_probe");
    snd_card_free(psnd_card);
    return (-14);
  } else {
  }
  printk("<7>easycap::%i%s: registered %s\n", peasycap->isdongle, "easycap_alsa_probe",
         (char *)(& psnd_card->id));
  return (0);
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize_snd_pcm_ops_1(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(488UL);
  easycap_alsa_pcm_ops_group0 = (struct snd_pcm_substream *)tmp;
  return;
}
}
void ldv_main_exported_1(void)
{
  struct snd_pcm_hw_params *ldvarg2 ;
  void *tmp ;
  unsigned int ldvarg5 ;
  unsigned long ldvarg3 ;
  void *ldvarg4 ;
  void *tmp___0 ;
  int ldvarg1 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(608UL);
  ldvarg2 = (struct snd_pcm_hw_params *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg4 = tmp___0;
  ldv_memset((void *)(& ldvarg5), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 8UL);
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_prepare(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_prepare(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 1: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_ack(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_ack(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 2: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_hw_free(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_hw_free(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 3: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_pointer(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_pointer(easycap_alsa_pcm_ops_group0);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 4: ;
  if (ldv_state_variable_1 == 2) {
    ldv_retval_1 = easycap_alsa_close(easycap_alsa_pcm_ops_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_32670;
  case 5: ;
  if (ldv_state_variable_1 == 1) {
    ldv_retval_0 = easycap_alsa_open(easycap_alsa_pcm_ops_group0);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_1 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_32670;
  case 6: ;
  if (ldv_state_variable_1 == 1) {
    snd_pcm_lib_ioctl(easycap_alsa_pcm_ops_group0, ldvarg5, ldvarg4);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    snd_pcm_lib_ioctl(easycap_alsa_pcm_ops_group0, ldvarg5, ldvarg4);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 7: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_page(easycap_alsa_pcm_ops_group0, ldvarg3);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_page(easycap_alsa_pcm_ops_group0, ldvarg3);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 8: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_hw_params(easycap_alsa_pcm_ops_group0, ldvarg2);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_hw_params(easycap_alsa_pcm_ops_group0, ldvarg2);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  case 9: ;
  if (ldv_state_variable_1 == 1) {
    easycap_alsa_trigger(easycap_alsa_pcm_ops_group0, ldvarg1);
    ldv_state_variable_1 = 1;
  } else {
  }
  if (ldv_state_variable_1 == 2) {
    easycap_alsa_trigger(easycap_alsa_pcm_ops_group0, ldvarg1);
    ldv_state_variable_1 = 2;
  } else {
  }
  goto ldv_32670;
  default:
  ldv_stop();
  }
  ldv_32670: ;
  return;
}
}
int ldv_usb_submit_urb_23(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_24(struct urb *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  int tmp ;
  {
  tmp = ldv_submit_urb(ldv_func_arg1);
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
int INTERF_STATE = 0;
int SERIAL_STATE = 0;
void *usb_intfdata = (void *)0;
struct urb *usb_urb = (struct urb *)0;
struct usb_device *usb_dev = (struct usb_device *)0;
int dev_counter = 0;
int completeFnIntCounter = 0;
int completeFnBulkCounter = 0;
void (*completeFnInt)(struct urb * ) ;
void (*completeFnBulk)(struct urb * ) ;
void *ldv_usb_get_intfdata(void)
{
  {
  return (usb_intfdata);
}
}
void ldv_usb_set_intfdata(void *data )
{
  {
  usb_intfdata = data;
  return;
}
}
void ldv_usb_put_intf(void)
{
  {
  usb_intfdata = (void *)0;
  return;
}
}
struct urb *ldv_alloc_urb(void)
{
  struct urb *value ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_malloc(sizeof(struct urb));
  value = (struct urb *)tmp;
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    if ((unsigned long )value != (unsigned long )((struct urb *)0)) {
      usb_urb = value;
    } else {
    }
  } else {
  }
  return (usb_urb);
}
}
void ldv_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb && (unsigned long )usb_urb != (unsigned long )((struct urb *)0)) {
    usb_urb = (struct urb *)0;
  } else {
  }
  return;
}
}
void ldv_fill_int_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnInt = complete_fn;
    completeFnIntCounter = completeFnIntCounter + 1;
  } else {
  }
  return;
}
}
void ldv_fill_bulk_urb(struct urb *urb , void (*complete_fn)(struct urb * ) )
{
  {
  if ((unsigned long )usb_urb == (unsigned long )urb) {
    completeFnBulk = complete_fn;
    completeFnBulkCounter = completeFnBulkCounter + 1;
  } else {
  }
  return;
}
}
int ldv_submit_urb(struct urb *urb )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res > 0) {
    ldv_stop();
  } else {
  }
  if (res == 0) {
    if ((unsigned long )usb_urb == (unsigned long )urb) {
      if (completeFnIntCounter != 0) {
        (*completeFnInt)(usb_urb);
        completeFnIntCounter = 0;
      } else {
      }
      if (completeFnBulkCounter != 0) {
        (*completeFnBulk)(usb_urb);
        completeFnBulkCounter = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  return (res);
}
}
struct usb_device *ldv_interface_to_usbdev(void)
{
  void *result ;
  void *tmp ;
  {
  tmp = ldv_malloc(sizeof(struct usb_device));
  result = tmp;
  if ((unsigned long )result == (unsigned long )((void *)0)) {
    ldv_stop();
  } else {
  }
  return ((struct usb_device *)result);
}
}
struct usb_device *ldv_get_dev(struct usb_device *data )
{
  int tmp ;
  {
  if ((unsigned long )usb_dev == (unsigned long )((struct usb_device *)0)) {
    tmp = ldv_undef_int();
    if (tmp != 0) {
      dev_counter = dev_counter + 1;
      usb_dev = data;
    } else {
    }
  } else
  if ((unsigned long )usb_dev == (unsigned long )data) {
    dev_counter = dev_counter + 1;
  } else {
  }
  return (usb_dev);
}
}
void ldv_put_dev(struct usb_device *data )
{
  {
  if ((unsigned long )usb_dev == (unsigned long )data && (unsigned long )data != (unsigned long )((struct usb_device *)0)) {
    dev_counter = dev_counter + -1;
    if (dev_counter == 0) {
      usb_dev = (struct usb_device *)0;
    } else {
    }
  } else {
  }
  return;
}
}
int ldv_get_interface(struct usb_interface *intf )
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res > 0) {
    ldv_stop();
  } else {
  }
  if (res == 0) {
    INTERF_STATE = INTERF_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_put_interface(void)
{
  {
  if (INTERF_STATE <= 0) {
    ldv_error();
  } else {
  }
  INTERF_STATE = INTERF_STATE + -1;
  return;
}
}
int ldv_serial_register(void)
{
  int res ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  res = tmp;
  if (res > 0) {
    ldv_stop();
  } else {
  }
  if (res == 0) {
    SERIAL_STATE = SERIAL_STATE + 1;
  } else {
  }
  return (res);
}
}
void ldv_serial_deregister(void)
{
  {
  if (SERIAL_STATE <= 0) {
    ldv_error();
  } else {
  }
  SERIAL_STATE = SERIAL_STATE + -1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if ((unsigned long )usb_urb != (unsigned long )((struct urb *)0)) {
    ldv_error();
  } else {
  }
  if ((unsigned long )usb_dev != (unsigned long )((struct usb_device *)0)) {
    ldv_error();
  } else {
  }
  if (dev_counter != 0) {
    ldv_error();
  } else {
  }
  if (INTERF_STATE != 0) {
    ldv_error();
  } else {
  }
  if (SERIAL_STATE != 0) {
    ldv_error();
  } else {
  }
  return;
}
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_3() {
  return __VERIFIER_nondet_int();
}
void *memdup_user(const void *arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
void might_fault() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
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
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int snd_card_create(int arg0, const char *arg1, struct module *arg2, int arg3, struct snd_card **arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_free(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_register(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_ioctl(struct snd_pcm_substream *arg0, unsigned int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_new(struct snd_card *arg0, const char *arg1, int arg2, int arg3, int arg4, struct snd_pcm **arg5) {
  return __VERIFIER_nondet_int();
}
void snd_pcm_period_elapsed(struct snd_pcm_substream *arg0) {
  return;
}
void snd_pcm_set_ops(struct snd_pcm *arg0, int arg1, struct snd_pcm_ops *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
struct usb_host_interface *usb_altnum_to_altsetting(const struct usb_interface *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct usb_host_interface));
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(arg0);
}
struct page *vmalloc_to_page(const void *arg0) {
  return ldv_malloc(sizeof(struct page));
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