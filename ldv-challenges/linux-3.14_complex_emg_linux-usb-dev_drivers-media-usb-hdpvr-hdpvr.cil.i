typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef unsigned int uint;
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
struct device;
struct usb_device;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
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
union __anonunion____missing_field_name_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_18 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct____missing_field_name_20 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
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
union __anonunion____missing_field_name_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_25 __annonCompField10 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct____missing_field_name_30 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_31 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct____missing_field_name_30 __annonCompField14 ;
   struct __anonstruct____missing_field_name_31 __annonCompField15 ;
};
union __anonunion____missing_field_name_32 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_29 __annonCompField16 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_32 __annonCompField17 ;
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
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_101 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_100 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_101 __annonCompField20 ;
};
struct spinlock {
   union __anonunion____missing_field_name_100 __annonCompField21 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_102 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_102 rwlock_t;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
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
struct __anonstruct_nodemask_t_104 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_104 nodemask_t;
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
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kref {
   atomic_t refcount ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
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
union __anonunion_u_134 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_135 {
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
   union __anonunion_u_134 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_135 __annonCompField33 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
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
struct user_namespace;
struct __anonstruct_kuid_t_136 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_136 kuid_t;
struct __anonstruct_kgid_t_137 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_137 kgid_t;
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
   bool ignore_lockdep : 1 ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
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
struct path;
struct inode;
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
   struct dev_pin_info *pins ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_139 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField34 ;
};
struct lockref {
   union __anonunion____missing_field_name_138 __annonCompField35 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_141 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_140 {
   struct __anonstruct____missing_field_name_141 __annonCompField36 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_142 {
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
   union __anonunion_d_u_142 d_u ;
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
struct radix_tree_node;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
struct __anonstruct_kprojid_t_144 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_144 kprojid_t;
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
union __anonunion____missing_field_name_145 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_145 __annonCompField38 ;
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
union __anonunion_arg_147 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_146 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_147 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_146 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
union __anonunion____missing_field_name_148 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_149 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_150 {
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
   union __anonunion____missing_field_name_148 __annonCompField39 ;
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
   union __anonunion____missing_field_name_149 __annonCompField40 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_150 __annonCompField41 ;
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
union __anonunion_f_u_151 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_151 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_153 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_152 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_153 afs ;
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
   union __anonunion_fl_u_152 fl_u ;
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
struct __anonstruct____missing_field_name_156 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_157 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_155 {
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_158 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_160 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_164 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_163 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_164 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_162 {
   union __anonunion____missing_field_name_163 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_161 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_162 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_159 {
   union __anonunion____missing_field_name_160 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_166 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_165 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_166 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_167 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct __anonstruct____missing_field_name_159 __annonCompField52 ;
   union __anonunion____missing_field_name_165 __annonCompField54 ;
   union __anonunion____missing_field_name_167 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_169 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_168 {
   struct __anonstruct_linear_169 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
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
   union __anonunion_shared_168 shared ;
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
   struct vm_area_struct *mmap_cache ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_170 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_170 sigset_t;
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
struct __anonstruct__kill_172 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_173 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_174 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_175 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_176 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_177 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_178 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_171 {
   int _pad[28U] ;
   struct __anonstruct__kill_172 _kill ;
   struct __anonstruct__timer_173 _timer ;
   struct __anonstruct__rt_174 _rt ;
   struct __anonstruct__sigchld_175 _sigchld ;
   struct __anonstruct__sigfault_176 _sigfault ;
   struct __anonstruct__sigpoll_177 _sigpoll ;
   struct __anonstruct__sigsys_178 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_171 _sifields ;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
union __anonunion____missing_field_name_183 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_184 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_186 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_185 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_186 __annonCompField60 ;
};
union __anonunion_type_data_187 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_189 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_188 {
   union __anonunion_payload_189 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_183 __annonCompField58 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_184 __annonCompField59 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   union __anonunion_type_data_187 type_data ;
   union __anonunion____missing_field_name_188 __annonCompField62 ;
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
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
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
   struct hrtimer dl_timer ;
};
struct mem_cgroup;
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
   unsigned int may_oom : 1 ;
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
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
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
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
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
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
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
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
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
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
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
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
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
struct __anonstruct____missing_field_name_192 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_193 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_191 {
   struct __anonstruct____missing_field_name_192 __annonCompField64 ;
   struct __anonstruct____missing_field_name_193 __annonCompField65 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_191 __annonCompField66 ;
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
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_198 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_198 __annonCompField67 ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
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
enum v4l2_mpeg_audio_encoding {
    V4L2_MPEG_AUDIO_ENCODING_LAYER_1 = 0,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = 1,
    V4L2_MPEG_AUDIO_ENCODING_LAYER_3 = 2,
    V4L2_MPEG_AUDIO_ENCODING_AAC = 3,
    V4L2_MPEG_AUDIO_ENCODING_AC3 = 4
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
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
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
union __anonunion____missing_field_name_199 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_199 __annonCompField68 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_200 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_200 __annonCompField69 ;
   __u32 reserved[2U] ;
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
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
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
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_203 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_203 __annonCompField70 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_204 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_204 __annonCompField71 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_205 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_205 __annonCompField72 ;
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
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_206 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_206 __annonCompField73 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
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
   __u32 type ;
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
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
union __anonunion_parm_215 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_215 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_218 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_218 __annonCompField78 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_225 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_226 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_227 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_224 {
   struct __anonstruct_v4l_225 v4l ;
   struct __anonstruct_fb_226 fb ;
   struct __anonstruct_alsa_227 alsa ;
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
   union __anonunion_info_224 info ;
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
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct i2c_adapter;
struct i2c_client;
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
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
   char const *full_name ;
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
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
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
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
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
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
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
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
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
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
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
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_230 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_231 {
   char const *name ;
};
struct __anonstruct_i2c_232 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_233 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_229 {
   struct __anonstruct_of_230 of ;
   struct __anonstruct_device_name_231 device_name ;
   struct __anonstruct_i2c_232 i2c ;
   struct __anonstruct_custom_233 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_229 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
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
   struct v4l2_m2m_ctx *m2m_ctx ;
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
struct v4l2_mbus_frame_desc;
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
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
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
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
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
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
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
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
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
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_234 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_234 *pad ;
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
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_235 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_236 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_237 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_238 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_235 __annonCompField80 ;
   union __anonunion____missing_field_name_236 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_237 cur ;
   union __anonunion____missing_field_name_238 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
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
union __anonunion_u_242 {
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
   union __anonunion_u_242 u ;
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
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protos ;
   u64 enabled_protocols ;
   u32 users ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct hdpvr_options {
   u8 video_std ;
   u8 video_input ;
   u8 audio_input ;
   u8 bitrate ;
   u8 peak_bitrate ;
   u8 bitrate_mode ;
   u8 gop_mode ;
   enum v4l2_mpeg_audio_encoding audio_codec ;
   u8 brightness ;
   u8 contrast ;
   u8 hue ;
   u8 saturation ;
   u8 sharpness ;
};
struct __anonstruct____missing_field_name_245 {
   struct v4l2_ctrl *video_mode ;
   struct v4l2_ctrl *video_bitrate ;
   struct v4l2_ctrl *video_bitrate_peak ;
};
struct hdpvr_device {
   struct video_device *video_dev ;
   struct v4l2_ctrl_handler hdl ;
   struct usb_device *udev ;
   struct v4l2_device v4l2_dev ;
   struct __anonstruct____missing_field_name_245 __annonCompField88 ;
   uint width ;
   uint height ;
   size_t bulk_in_size ;
   __u8 bulk_in_endpointAddr ;
   __u8 status ;
   struct hdpvr_options options ;
   v4l2_std_id cur_std ;
   struct v4l2_dv_timings cur_dv_timings ;
   uint flags ;
   struct mutex io_mutex ;
   struct list_head free_buff_list ;
   struct list_head rec_buff_list ;
   wait_queue_head_t wait_buffer ;
   wait_queue_head_t wait_data ;
   struct workqueue_struct *workqueue ;
   struct work_struct worker ;
   struct v4l2_fh *owner ;
   struct i2c_adapter i2c_adapter ;
   struct mutex i2c_mutex ;
   char i2c_buf[128U] ;
   struct IR_i2c_init_data ir_i2c_init_data ;
   struct mutex usbc_mutex ;
   u8 *usbc_buf ;
   u8 fw_ver ;
};
struct hdpvr_video_info {
   u16 width ;
   u16 height ;
   u8 fps ;
   bool valid ;
};
typedef __u64 __le64;
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
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
enum hrtimer_restart;
struct usb_driver;
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
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
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
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct __anonstruct_raw_208 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct_raw_208 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_207 __annonCompField74 ;
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
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_214 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_214 fmt ;
};
typedef int ldv_func_ret_type;
typedef __kernel_long_t __kernel_suseconds_t;
typedef u64 dma_addr_t;
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
enum hrtimer_restart;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
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
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
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
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_201 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_201 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_202 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_202 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_stop_210 {
   __u64 pts ;
};
struct __anonstruct_start_211 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_212 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_209 {
   struct __anonstruct_stop_210 stop ;
   struct __anonstruct_start_211 start ;
   struct __anonstruct_raw_212 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_209 __annonCompField75 ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
typedef struct poll_table_struct poll_table;
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct hdpvr_buffer {
   struct list_head buff_list ;
   struct urb *urb ;
   struct hdpvr_device *dev ;
   uint pos ;
   __u8 status ;
};
struct hdpvr_fh {
   struct v4l2_fh fh ;
   bool legacy_mode ;
};
enum hrtimer_restart;
struct i2c_board_info;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
typedef int ldv_map;
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
extern void *memset(void * , int , size_t ) ;
extern int printk(char const * , ...) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
int hdpvr_debug ;
int hdpvr_set_options(struct hdpvr_device *dev ) ;
int hdpvr_set_bitrate(struct hdpvr_device *dev ) ;
int hdpvr_set_audio(struct hdpvr_device *dev , u8 input , enum v4l2_mpeg_audio_encoding codec ) ;
int hdpvr_config_call(struct hdpvr_device *dev , uint value , unsigned char valbuf ) ;
int get_video_info(struct hdpvr_device *dev , struct hdpvr_video_info *vidinf ) ;
int get_input_lines_info(struct hdpvr_device *dev ) ;
int hdpvr_config_call(struct hdpvr_device *dev , uint value , unsigned char valbuf )
{
  int ret ;
  char request_type ;
  char snd_request ;
  unsigned int tmp ;
  {
  {
  request_type = 56;
  snd_request = 1;
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  *(dev->usbc_buf) = valbuf;
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483648U, (int )((__u8 )snd_request),
                        (int )((__u8 )request_type), (int )((__u16 )value), 3, (void *)dev->usbc_buf,
                        1, 10000);
  mutex_unlock(& dev->usbc_mutex);
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: config call request for value 0x%x returned %d\n", (char *)(& dev->v4l2_dev.name),
           value, ret);
    }
  } else {
  }
  return (0 < ret ? 0 : ret);
}
}
int get_video_info(struct hdpvr_device *dev , struct hdpvr_video_info *vidinf )
{
  int ret ;
  unsigned int tmp ;
  {
  {
  vidinf->valid = 0;
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483776U, 129, 184, 5120, 3, (void *)dev->usbc_buf,
                        5, 1000);
  mutex_unlock(& dev->usbc_mutex);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  vidinf->width = (u16 )((int )((short )((int )*(dev->usbc_buf + 1UL) << 8)) | (int )((short )*(dev->usbc_buf)));
  vidinf->height = (u16 )((int )((short )((int )*(dev->usbc_buf + 3UL) << 8)) | (int )((short )*(dev->usbc_buf + 2UL)));
  vidinf->fps = *(dev->usbc_buf + 4UL);
  vidinf->valid = (bool )(((unsigned int )vidinf->width != 0U && (unsigned int )vidinf->height != 0U) && (unsigned int )vidinf->fps != 0U);
  return (0);
}
}
int get_input_lines_info(struct hdpvr_device *dev )
{
  int ret ;
  int lines ;
  unsigned int tmp ;
  {
  {
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483776U, 129, 184, 6144, 3, (void *)dev->usbc_buf,
                        3, 1000);
  lines = ((int )*(dev->usbc_buf + 1UL) << 8) | (int )*(dev->usbc_buf);
  mutex_unlock(& dev->usbc_mutex);
  }
  return (lines);
}
}
int hdpvr_set_bitrate(struct hdpvr_device *dev )
{
  int ret ;
  unsigned int tmp ;
  {
  {
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  memset((void *)dev->usbc_buf, 0, 4UL);
  *(dev->usbc_buf) = dev->options.bitrate;
  *(dev->usbc_buf + 2UL) = dev->options.peak_bitrate;
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483648U, 1, 56, 4096, 3, (void *)dev->usbc_buf,
                        4, 1000);
  mutex_unlock(& dev->usbc_mutex);
  }
  return (ret);
}
}
int hdpvr_set_audio(struct hdpvr_device *dev , u8 input , enum v4l2_mpeg_audio_encoding codec )
{
  int ret ;
  unsigned int tmp ;
  {
  ret = 0;
  if ((int )dev->flags & 1) {
    {
    mutex_lock_nested(& dev->usbc_mutex, 0U);
    memset((void *)dev->usbc_buf, 0, 2UL);
    *(dev->usbc_buf) = input;
    }
    if ((unsigned int )codec == 3U) {
      *(dev->usbc_buf + 1UL) = 0U;
    } else
    if ((unsigned int )codec == 4U) {
      *(dev->usbc_buf + 1UL) = 1U;
    } else {
      {
      mutex_unlock(& dev->usbc_mutex);
      printk("\v%s: invalid audio codec %d\n", (char *)(& dev->v4l2_dev.name), (unsigned int )codec);
      ret = -22;
      }
      goto error;
    }
    {
    tmp = __create_pipe(dev->udev, 0U);
    ret = usb_control_msg(dev->udev, tmp | 2147483648U, 1, 56, 9472, 3, (void *)dev->usbc_buf,
                          2, 1000);
    mutex_unlock(& dev->usbc_mutex);
    }
    if (ret == 2) {
      ret = 0;
    } else {
    }
  } else {
    {
    ret = hdpvr_config_call(dev, 9472U, (int )input);
    }
  }
  error: ;
  return (ret);
}
}
int hdpvr_set_options(struct hdpvr_device *dev )
{
  {
  {
  hdpvr_config_call(dev, 5888U, (int )dev->options.video_std);
  hdpvr_config_call(dev, 5376U, (int )((unsigned int )dev->options.video_input + 1U));
  hdpvr_set_audio(dev, (int )((unsigned int )dev->options.audio_input + 1U), dev->options.audio_codec);
  hdpvr_set_bitrate(dev);
  hdpvr_config_call(dev, 4608U, (int )dev->options.bitrate_mode);
  hdpvr_config_call(dev, 4864U, (int )dev->options.gop_mode);
  hdpvr_config_call(dev, 10496U, (int )dev->options.brightness);
  hdpvr_config_call(dev, 10752U, (int )dev->options.contrast);
  hdpvr_config_call(dev, 11008U, (int )dev->options.hue);
  hdpvr_config_call(dev, 11264U, (int )dev->options.saturation);
  hdpvr_config_call(dev, 11520U, (int )dev->options.sharpness);
  }
  return (0);
}
}
void ldv_atomic_dec(atomic_t *v ) ;
int ldv_atomic_add_return(int i , atomic_t *v ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
struct usb_device *ldv_usb_get_dev(struct usb_device *dev ) ;
void ldv_usb_put_dev(struct usb_device *dev ) ;
void ldv_check_return_value_probe(int retval ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_34(int ldv_func_arg1 ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
__inline static __u64 __le64_to_cpup(__le64 const *p )
{
  {
  return ((__u64 )*p);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_is_bulk_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  }
  if (tmp != 0) {
    {
    tmp___0 = usb_endpoint_dir_in(epd);
    }
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
extern struct module __this_module ;
extern void msleep(unsigned int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
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
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_15(struct device const *dev ) ;
extern int dev_err(struct device const * , char const * , ...) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_15((struct device const *)(& intf->dev));
  }
  return (tmp);
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff78UL);
}
}
static struct usb_device *ldv_usb_get_dev_31(struct usb_device *ldv_func_arg1 ) ;
static void ldv_usb_put_dev_30(struct usb_device *ldv_func_arg1 ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_32(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_33(struct usb_driver *ldv_func_arg1 ) ;
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
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
extern void video_unregister_device(struct video_device * ) ;
extern void video_device_release(struct video_device * ) ;
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
int hdpvr_debug ;
__inline static struct hdpvr_device *to_hdpvr_dev(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct hdpvr_device *)__mptr + 0xfffffffffffffef8UL);
}
}
void hdpvr_delete(struct hdpvr_device *dev ) ;
int hdpvr_register_videodev(struct hdpvr_device *dev , struct device *parent , int devnum ) ;
int hdpvr_cancel_queue(struct hdpvr_device *dev ) ;
int hdpvr_register_i2c_adapter(struct hdpvr_device *dev ) ;
struct i2c_client *hdpvr_register_ir_rx_i2c(struct hdpvr_device *dev ) ;
struct i2c_client *hdpvr_register_ir_tx_i2c(struct hdpvr_device *dev ) ;
int hdpvr_free_buffers(struct hdpvr_device *dev ) ;
int hdpvr_alloc_buffers(struct hdpvr_device *dev , uint count ) ;
static int video_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
static atomic_t dev_nr = {-1};
static uint default_video_input = 3U;
static uint default_audio_input = 3U;
static bool boost_audio ;
static struct usb_device_id hdpvr_table[6U] = { {3U, 8256U, 18688U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8256U, 18689U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8256U, 18690U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8256U, 18818U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 8256U, 18691U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb_device_table ;
void hdpvr_delete(struct hdpvr_device *dev )
{
  {
  {
  hdpvr_free_buffers(dev);
  }
  if ((unsigned long )dev->video_dev != (unsigned long )((struct video_device *)0)) {
    {
    video_device_release(dev->video_dev);
    }
  } else {
  }
  {
  ldv_usb_put_dev_30(dev->udev);
  }
  return;
}
}
static void challenge(u8 *bytes )
{
  __le64 *i64P ;
  u64 tmp64 ;
  uint i ;
  uint idx ;
  {
  idx = 0U;
  goto ldv_33892;
  ldv_33891: ;
  if ((idx & 3U) != 0U) {
    *(bytes + (unsigned long )((idx >> 3) + 3U)) = *(bytes + ((unsigned long )(idx >> 2) & 3UL));
  } else {
  }
  {
  if ((idx & 3U) == 3U) {
    goto case_3;
  } else {
  }
  if ((idx & 3U) == 1U) {
    goto case_1;
  } else {
  }
  if ((idx & 3U) == 0U) {
    goto case_0;
  } else {
  }
  if ((idx & 3U) == 2U) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_3:
  *(bytes + 2UL) = (unsigned int )*(bytes + 2UL) + (((unsigned int )*(bytes + 3UL) * 4U + (unsigned int )*(bytes + 4UL)) + (unsigned int )*(bytes + 5UL));
  *(bytes + 4UL) = (unsigned int )*(bytes + 4UL) + (unsigned int )((u8 )((int )*(bytes + (unsigned long )((idx & 1U) * 2U)) + 1)) * 9U;
  goto ldv_33878;
  case_1:
  *bytes = (unsigned int )*bytes * 8U;
  *bytes = ((unsigned int )*bytes + (unsigned int )((u8 )idx) * 7U) + 4U;
  *(bytes + 6UL) = (unsigned int )*(bytes + 6UL) + (unsigned int )*(bytes + 3UL) * 3U;
  goto ldv_33878;
  case_0:
  *(bytes + (unsigned long )(3U - (idx >> 3))) = *(bytes + (unsigned long )(idx >> 2));
  *(bytes + 5UL) = (unsigned int )*(bytes + 5UL) + (unsigned int )*(bytes + 6UL) * 3U;
  i = 0U;
  goto ldv_33882;
  ldv_33881:
  *(bytes + 3UL) = (int )*(bytes + 3UL) * (int )((u8 )((int )*(bytes + 3UL) + 1));
  i = i + 1U;
  ldv_33882: ;
  if (i <= 2U) {
    goto ldv_33881;
  } else {
  }
  goto ldv_33878;
  case_2:
  i = 0U;
  goto ldv_33886;
  ldv_33885:
  *(bytes + 1UL) = (int )*(bytes + 1UL) * (int )((u8 )((int )*(bytes + 6UL) + 1));
  i = i + 1U;
  ldv_33886: ;
  if (i <= 2U) {
    goto ldv_33885;
  } else {
  }
  i = 0U;
  goto ldv_33889;
  ldv_33888:
  {
  i64P = (__le64 *)bytes;
  tmp64 = __le64_to_cpup((__le64 const *)i64P);
  tmp64 = tmp64 + (tmp64 << ((int )*(bytes + 7UL) & 15));
  *i64P = tmp64;
  i = i + 1U;
  }
  ldv_33889: ;
  if (i <= 2U) {
    goto ldv_33888;
  } else {
  }
  goto ldv_33878;
  switch_break: ;
  }
  ldv_33878:
  idx = idx + 1U;
  ldv_33892: ;
  if (idx <= 31U) {
    goto ldv_33891;
  } else {
  }
  return;
}
}
static int device_authorization(struct hdpvr_device *dev )
{
  int ret ;
  int retval ;
  char request_type ;
  char rcv_request ;
  char *response ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  retval = -12;
  request_type = 56;
  rcv_request = -127;
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483776U, (int )((__u8 )rcv_request),
                        (int )((__u8 )((int )((signed char )request_type) | -128)),
                        1024, 3, (void *)dev->usbc_buf, 46, 10000);
  }
  if (ret != 46) {
    {
    printk("\v%s: unexpected answer of status request, len %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
    goto unlock;
  } else {
  }
  {
  dev->fw_ver = *(dev->usbc_buf + 1UL);
  printk("\016%s: firmware version 0x%x dated %s\n", (char *)(& dev->v4l2_dev.name),
         (int )dev->fw_ver, dev->usbc_buf + 2UL);
  }
  if ((unsigned int )dev->fw_ver > 21U) {
    dev->options.brightness = 128U;
    dev->options.contrast = 64U;
    dev->options.hue = 15U;
    dev->options.saturation = 64U;
    dev->options.sharpness = 128U;
  } else {
  }
  {
  if ((int )dev->fw_ver == 8) {
    goto case_8;
  } else {
  }
  if ((int )dev->fw_ver == 13) {
    goto case_13;
  } else {
  }
  if ((int )dev->fw_ver == 18) {
    goto case_18;
  } else {
  }
  if ((int )dev->fw_ver == 21) {
    goto case_21;
  } else {
  }
  if ((int )dev->fw_ver == 30) {
    goto case_30;
  } else {
  }
  goto switch_default;
  case_8:
  dev->flags = dev->flags & 4294967294U;
  goto ldv_33904;
  case_13: ;
  case_18: ;
  case_21: ;
  case_30:
  dev->flags = dev->flags | 1U;
  goto ldv_33904;
  switch_default:
  {
  printk("\016%s: untested firmware, the driver might not work.\n", (char *)(& dev->v4l2_dev.name));
  }
  if ((unsigned int )dev->fw_ver > 12U) {
    dev->flags = dev->flags | 1U;
  } else {
    dev->flags = dev->flags & 4294967294U;
  }
  switch_break: ;
  }
  ldv_33904:
  {
  response = (char *)dev->usbc_buf + 38U;
  challenge((u8 *)response);
  msleep(100U);
  tmp___0 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___0 | 2147483648U, 209, (int )((__u8 )request_type),
                        0, 0, (void *)response, 8, 10000);
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: magic request returned %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
  } else {
  }
  retval = ret != 8;
  unlock:
  {
  mutex_unlock(& dev->usbc_mutex);
  }
  return (retval);
}
}
static int hdpvr_device_init(struct hdpvr_device *dev )
{
  int ret ;
  u8 *buf ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = device_authorization(dev);
  }
  if (tmp != 0) {
    return (-13);
  } else {
  }
  {
  hdpvr_set_options(dev);
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  buf = dev->usbc_buf;
  *buf = 3U;
  *(buf + 1UL) = 3U;
  *(buf + 2UL) = 0U;
  *(buf + 3UL) = 0U;
  tmp___0 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___0 | 2147483648U, 1, 56, 12544, 3, (void *)buf,
                        4, 1000);
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: control request returned %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
  } else {
  }
  {
  mutex_unlock(& dev->usbc_mutex);
  mutex_lock_nested(& dev->usbc_mutex, 0U);
  *buf = 1U;
  tmp___1 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___1 | 2147483648U, 212, 56, 0, 0, (void *)buf,
                        1, 1000);
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: control request returned %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
  } else {
  }
  {
  *buf = (u8 )boost_audio;
  tmp___2 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___2 | 2147483648U, 213, 56, 0, 0, (void *)buf,
                        1, 1000);
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: control request returned %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
  } else {
  }
  {
  mutex_unlock(& dev->usbc_mutex);
  dev->status = 1U;
  }
  return (0);
}
}
static struct hdpvr_options const hdpvr_default_options =
     {0U, 0U, 0U, 65U, 90U, 1U, 1U, 3, 134U, 128U, 128U, 128U, 128U};
static int hdpvr_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct hdpvr_device *dev ;
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  struct i2c_client *client ;
  size_t buffer_size ;
  int i ;
  int retval ;
  void *tmp ;
  int tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  void *tmp___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___2 ;
  struct usb_device *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  char const *tmp___8 ;
  {
  {
  retval = -12;
  tmp = kzalloc(3744UL, 208U);
  dev = (struct hdpvr_device *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct hdpvr_device *)0)) {
    {
    dev_err((struct device const *)(& interface->dev), "Out of memory\n");
    }
    goto error;
  } else {
  }
  {
  INIT_LIST_HEAD(& dev->free_buff_list);
  INIT_LIST_HEAD(& dev->rec_buff_list);
  tmp___0 = v4l2_device_register(& interface->dev, & dev->v4l2_dev);
  }
  if (tmp___0 != 0) {
    {
    dev_err((struct device const *)(& interface->dev), "v4l2_device_register failed\n");
    }
    goto error;
  } else {
  }
  {
  __mutex_init(& dev->io_mutex, "&dev->io_mutex", & __key);
  __mutex_init(& dev->i2c_mutex, "&dev->i2c_mutex", & __key___0);
  __mutex_init(& dev->usbc_mutex, "&dev->usbc_mutex", & __key___1);
  tmp___1 = kmalloc(64UL, 208U);
  dev->usbc_buf = (u8 *)tmp___1;
  }
  if ((unsigned long )dev->usbc_buf == (unsigned long )((u8 *)0U)) {
    {
    printk("\v%s: Out of memory\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  __init_waitqueue_head(& dev->wait_buffer, "&dev->wait_buffer", & __key___2);
  __init_waitqueue_head(& dev->wait_data, "&dev->wait_data", & __key___3);
  __lock_name = "\"%s\"(\"hdpvr_buffer\")";
  tmp___2 = __alloc_workqueue_key("%s", 10U, 1, & __key___4, __lock_name, (char *)"hdpvr_buffer");
  dev->workqueue = tmp___2;
  }
  if ((unsigned long )dev->workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    goto error;
  } else {
  }
  dev->options = hdpvr_default_options;
  if (default_video_input <= 2U) {
    dev->options.video_input = (u8 )default_video_input;
  } else {
  }
  if (default_audio_input <= 2U) {
    dev->options.audio_input = (u8 )default_audio_input;
    if (default_audio_input == 2U) {
      dev->options.audio_codec = 4;
    } else {
    }
  } else {
  }
  {
  tmp___3 = interface_to_usbdev(interface);
  dev->udev = ldv_usb_get_dev_31(tmp___3);
  iface_desc = interface->cur_altsetting;
  i = 0;
  }
  goto ldv_33937;
  ldv_33936:
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  if ((unsigned int )dev->bulk_in_endpointAddr == 0U) {
    {
    tmp___4 = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)endpoint);
    }
    if (tmp___4 != 0) {
      buffer_size = 8192UL;
      dev->bulk_in_size = buffer_size;
      dev->bulk_in_endpointAddr = endpoint->bEndpointAddress;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_33937: ;
  if (i < (int )iface_desc->desc.bNumEndpoints) {
    goto ldv_33936;
  } else {
  }
  if ((unsigned int )dev->bulk_in_endpointAddr == 0U) {
    {
    printk("\v%s: Could not find bulk-in endpoint\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  tmp___5 = hdpvr_device_init(dev);
  }
  if (tmp___5 != 0) {
    {
    printk("\v%s: device init failed\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  mutex_lock_nested(& dev->io_mutex, 0U);
  tmp___6 = hdpvr_alloc_buffers(dev, 64U);
  }
  if (tmp___6 != 0) {
    {
    mutex_unlock(& dev->io_mutex);
    printk("\v%s: allocating transfer buffers failed\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  mutex_unlock(& dev->io_mutex);
  retval = hdpvr_register_i2c_adapter(dev);
  }
  if (retval < 0) {
    {
    printk("\v%s: i2c adapter register failed\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  client = hdpvr_register_ir_rx_i2c(dev);
  }
  if ((unsigned long )client == (unsigned long )((struct i2c_client *)0)) {
    {
    printk("\v%s: i2c IR RX device register failed\n", (char *)(& dev->v4l2_dev.name));
    retval = -19;
    }
    goto reg_fail;
  } else {
  }
  {
  client = hdpvr_register_ir_tx_i2c(dev);
  }
  if ((unsigned long )client == (unsigned long )((struct i2c_client *)0)) {
    {
    printk("\v%s: i2c IR TX device register failed\n", (char *)(& dev->v4l2_dev.name));
    retval = -19;
    }
    goto reg_fail;
  } else {
  }
  {
  tmp___7 = atomic_add_return(1, & dev_nr);
  retval = hdpvr_register_videodev(dev, & interface->dev, video_nr[tmp___7]);
  }
  if (retval < 0) {
    {
    printk("\v%s: registering videodev failed\n", (char *)(& dev->v4l2_dev.name));
    }
    goto reg_fail;
  } else {
  }
  {
  tmp___8 = video_device_node_name(dev->video_dev);
  printk("\016%s: device now attached to %s\n", (char *)(& dev->v4l2_dev.name), tmp___8);
  }
  return (0);
  reg_fail:
  {
  i2c_del_adapter(& dev->i2c_adapter);
  }
  error: ;
  if ((unsigned long )dev != (unsigned long )((struct hdpvr_device *)0)) {
    if ((unsigned long )dev->workqueue != (unsigned long )((struct workqueue_struct *)0)) {
      {
      destroy_workqueue(dev->workqueue);
      }
    } else {
    }
    {
    hdpvr_delete(dev);
    }
  } else {
  }
  return (retval);
}
}
static void hdpvr_disconnect(struct usb_interface *interface )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_device *tmp___0 ;
  char const *tmp___1 ;
  {
  {
  tmp = usb_get_intfdata(interface);
  tmp___0 = to_hdpvr_dev((struct v4l2_device *)tmp);
  dev = tmp___0;
  tmp___1 = video_device_node_name(dev->video_dev);
  printk("\016%s: device %s disconnected\n", (char *)(& dev->v4l2_dev.name), tmp___1);
  mutex_lock_nested(& dev->io_mutex, 0U);
  dev->status = 6U;
  __wake_up(& dev->wait_data, 1U, 1, (void *)0);
  __wake_up(& dev->wait_buffer, 1U, 1, (void *)0);
  mutex_unlock(& dev->io_mutex);
  v4l2_device_disconnect(& dev->v4l2_dev);
  msleep(100U);
  flush_workqueue(dev->workqueue);
  mutex_lock_nested(& dev->io_mutex, 0U);
  hdpvr_cancel_queue(dev);
  mutex_unlock(& dev->io_mutex);
  i2c_del_adapter(& dev->i2c_adapter);
  video_unregister_device(dev->video_dev);
  atomic_dec(& dev_nr);
  }
  return;
}
}
static struct usb_driver hdpvr_usb_driver =
     {"hdpvr", & hdpvr_probe, & hdpvr_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& hdpvr_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    0U, 0U, 0U, 0U};
static int hdpvr_usb_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_32(& hdpvr_usb_driver, & __this_module, "hdpvr");
  }
  return (tmp);
}
}
static void hdpvr_usb_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_33(& hdpvr_usb_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_hdpvr_usb_driver_exit_6_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_hdpvr_usb_driver_init_6_11(int (*arg0)(void) ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_4_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4(void) ;
void ldv_dispatch_deregister_io_instance_6_6_5(void) ;
void ldv_dispatch_instance_deregister_2_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_2_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_5_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_6_6(void) ;
void ldv_dispatch_register_io_instance_6_6_7(void) ;
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_entry_EMGentry_6(void *arg0 ) ;
int main(void) ;
void ldv_initialize_external_data(void) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_0(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_5(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_15(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_4(void) ;
void ldv_switch_automaton_state_3_14(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_2(void *arg0 ) ;
void ldv_usb_instance_post_1_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_1_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_1_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_1_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_1_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_1(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_3(void *arg0 ) ;
int (*ldv_0_callback_s_ctrl)(struct v4l2_ctrl * ) ;
int (*ldv_0_callback_try_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_0_container_struct_v4l2_ctrl_ptr ;
struct usb_driver *ldv_1_container_usb_driver ;
struct usb_device_id *ldv_1_ldv_param_13_1_default ;
int ldv_1_probe_retval_default ;
_Bool ldv_1_reset_flag_default ;
struct usb_interface *ldv_1_resource_usb_interface ;
struct usb_device *ldv_1_usb_device_usb_device ;
struct usb_driver *ldv_2_container_usb_driver ;
int ldv_3_ldv_param_18_2_default ;
char *ldv_3_ldv_param_22_1_default ;
unsigned long ldv_3_ldv_param_22_2_default ;
long long *ldv_3_ldv_param_22_3_default ;
unsigned int ldv_3_ldv_param_25_1_default ;
unsigned long ldv_3_ldv_param_25_2_default ;
unsigned int *ldv_3_ldv_param_37_2_default ;
unsigned long long *ldv_3_ldv_param_40_2_default ;
unsigned long long *ldv_3_ldv_param_46_2_default ;
unsigned int ldv_3_ldv_param_52_2_default ;
unsigned long long ldv_3_ldv_param_55_2_default ;
struct file *ldv_3_resource_file ;
struct i2c_msg *ldv_3_resource_struct_i2c_msg_ptr ;
struct poll_table_struct *ldv_3_resource_struct_poll_table_struct_ptr ;
struct v4l2_audio *ldv_3_resource_struct_v4l2_audio_ptr ;
struct v4l2_capability *ldv_3_resource_struct_v4l2_capability_ptr ;
struct v4l2_dv_timings_cap *ldv_3_resource_struct_v4l2_dv_timings_cap_ptr ;
struct v4l2_dv_timings *ldv_3_resource_struct_v4l2_dv_timings_ptr ;
struct v4l2_encoder_cmd *ldv_3_resource_struct_v4l2_encoder_cmd_ptr ;
struct v4l2_enum_dv_timings *ldv_3_resource_struct_v4l2_enum_dv_timings_ptr ;
struct v4l2_event_subscription *ldv_3_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_3_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_3_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_3_resource_struct_v4l2_format_ptr ;
struct v4l2_input *ldv_3_resource_struct_v4l2_input_ptr ;
int ldv_3_ret_default ;
void (*ldv_6_exit_hdpvr_usb_driver_exit_default)(void) ;
int (*ldv_6_init_hdpvr_usb_driver_init_default)(void) ;
int ldv_6_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_6 ;
void (*ldv_6_exit_hdpvr_usb_driver_exit_default)(void) = & hdpvr_usb_driver_exit;
int (*ldv_6_init_hdpvr_usb_driver_init_default)(void) = & hdpvr_usb_driver_init;
void ldv_EMGentry_exit_hdpvr_usb_driver_exit_6_2(void (*arg0)(void) )
{
  {
  {
  hdpvr_usb_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_hdpvr_usb_driver_init_6_11(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = hdpvr_usb_driver_init();
  }
  return (tmp);
}
}
void ldv_allocate_external_0(void)
{
  {
  {
  ldv_0_container_struct_v4l2_ctrl_ptr = ldv_malloc(sizeof(struct v4l2_ctrl));
  ldv_1_ldv_param_13_1_default = ldv_malloc(sizeof(struct usb_device_id));
  ldv_1_resource_usb_interface = ldv_malloc(sizeof(struct usb_interface));
  ldv_1_usb_device_usb_device = ldv_malloc(sizeof(struct usb_device));
  ldv_3_ldv_param_22_1_default = ldv_malloc(sizeof(char));
  ldv_3_ldv_param_22_3_default = ldv_malloc(sizeof(long long));
  ldv_3_ldv_param_37_2_default = ldv_malloc(sizeof(unsigned int));
  ldv_3_ldv_param_40_2_default = ldv_malloc(sizeof(unsigned long long));
  ldv_3_ldv_param_46_2_default = ldv_malloc(sizeof(unsigned long long));
  ldv_3_resource_file = ldv_malloc(sizeof(struct file));
  ldv_3_resource_struct_i2c_msg_ptr = ldv_malloc(sizeof(struct i2c_msg));
  ldv_3_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_3_resource_struct_v4l2_audio_ptr = ldv_malloc(sizeof(struct v4l2_audio));
  ldv_3_resource_struct_v4l2_capability_ptr = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_3_resource_struct_v4l2_dv_timings_cap_ptr = ldv_malloc(sizeof(struct v4l2_dv_timings_cap));
  ldv_3_resource_struct_v4l2_dv_timings_ptr = ldv_malloc(sizeof(struct v4l2_dv_timings));
  ldv_3_resource_struct_v4l2_encoder_cmd_ptr = ldv_malloc(sizeof(struct v4l2_encoder_cmd));
  ldv_3_resource_struct_v4l2_enum_dv_timings_ptr = ldv_malloc(sizeof(struct v4l2_enum_dv_timings));
  ldv_3_resource_struct_v4l2_event_subscription_ptr = ldv_malloc(sizeof(struct v4l2_event_subscription));
  ldv_3_resource_struct_v4l2_fh_ptr = ldv_malloc(sizeof(struct v4l2_fh));
  ldv_3_resource_struct_v4l2_fmtdesc_ptr = ldv_malloc(sizeof(struct v4l2_fmtdesc));
  ldv_3_resource_struct_v4l2_format_ptr = ldv_malloc(sizeof(struct v4l2_format));
  ldv_3_resource_struct_v4l2_input_ptr = ldv_malloc(sizeof(struct v4l2_input));
  }
  return;
}
}
void ldv_dispatch_deregister_4_1(struct usb_driver *arg0 )
{
  {
  {
  ldv_2_container_usb_driver = arg0;
  ldv_switch_automaton_state_2_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4(void)
{
  {
  {
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_6_6_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_2_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_1_container_usb_driver = arg0;
  ldv_switch_automaton_state_1_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_2_3(struct usb_driver *arg0 )
{
  {
  {
  ldv_1_container_usb_driver = arg0;
  ldv_switch_automaton_state_1_15();
  }
  return;
}
}
void ldv_dispatch_register_5_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_2_container_usb_driver = arg0;
  ldv_switch_automaton_state_2_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_6_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_6_6_7(void)
{
  {
  {
  ldv_switch_automaton_state_3_14();
  }
  return;
}
}
void ldv_entry_EMGentry_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_6 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_6 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_6 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_6 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_6 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_6 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_6 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_6 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_6 == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 2);
  ldv_EMGentry_exit_hdpvr_usb_driver_exit_6_2(ldv_6_exit_hdpvr_usb_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_34273;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 2);
  ldv_EMGentry_exit_hdpvr_usb_driver_exit_6_2(ldv_6_exit_hdpvr_usb_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_34273;
  case_4:
  {
  ldv_assume(ldv_statevar_0 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_3_6_4();
  ldv_statevar_6 = 2;
  }
  goto ldv_34273;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 6);
  ldv_dispatch_deregister_io_instance_6_6_5();
  ldv_statevar_6 = 4;
  }
  goto ldv_34273;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_3_6_6();
  ldv_statevar_6 = 5;
  }
  goto ldv_34273;
  case_7:
  {
  ldv_assume(ldv_statevar_3 == 14);
  ldv_dispatch_register_io_instance_6_6_7();
  ldv_statevar_6 = 6;
  }
  goto ldv_34273;
  case_8:
  {
  ldv_assume(ldv_6_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 3;
  } else {
    ldv_statevar_6 = 7;
  }
  goto ldv_34273;
  case_10:
  {
  ldv_assume(ldv_6_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_6 = 11;
  }
  goto ldv_34273;
  case_11:
  {
  ldv_assume(ldv_statevar_2 == 4);
  ldv_6_ret_default = ldv_EMGentry_init_hdpvr_usb_driver_init_6_11(ldv_6_init_hdpvr_usb_driver_init_default);
  ldv_6_ret_default = ldv_post_init(ldv_6_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 8;
  } else {
    ldv_statevar_6 = 10;
  }
  goto ldv_34273;
  switch_default: ;
  switch_break: ;
  }
  ldv_34273: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_6 = 11;
  ldv_statevar_0 = 5;
  ldv_1_reset_flag_default = 0;
  ldv_statevar_1 = 15;
  ldv_statevar_2 = 4;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  ldv_34292:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_6((void *)0);
  }
  goto ldv_34286;
  case_1:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_0((void *)0);
  }
  goto ldv_34286;
  case_2:
  {
  ldv_usb_usb_instance_1((void *)0);
  }
  goto ldv_34286;
  case_3:
  {
  ldv_usb_dummy_factory_2((void *)0);
  }
  goto ldv_34286;
  case_4:
  {
  ldv_v4l2_file_operations_io_instance_3((void *)0);
  }
  goto ldv_34286;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_34286: ;
  goto ldv_34292;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_0(void *arg0 )
{
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_34299;
  case_2:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_34299;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_s_ctrl, ldv_0_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_34299;
  case_4:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_34299;
  case_5: ;
  goto ldv_34299;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_try_ctrl, ldv_0_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_34299;
  switch_default: ;
  switch_break: ;
  }
  ldv_34299: ;
  return;
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (5);
  case_1: ;
  return (6);
  case_2: ;
  return (8);
  case_3: ;
  return (11);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  case_4: ;
  return (21);
  case_5: ;
  return (23);
  case_6: ;
  return (26);
  case_7: ;
  return (28);
  case_8: ;
  return (29);
  case_9: ;
  return (30);
  case_10: ;
  return (31);
  case_11: ;
  return (32);
  case_12: ;
  return (33);
  case_13: ;
  return (34);
  case_14: ;
  return (35);
  case_15: ;
  return (36);
  case_16: ;
  return (38);
  case_17: ;
  return (41);
  case_18: ;
  return (43);
  case_19: ;
  return (44);
  case_20: ;
  return (45);
  case_21: ;
  return (47);
  case_22: ;
  return (49);
  case_23: ;
  return (50);
  case_24: ;
  return (51);
  case_25: ;
  return (53);
  case_26: ;
  return (56);
  case_27: ;
  return (58);
  case_28: ;
  return (59);
  case_29: ;
  return (60);
  case_30: ;
  return (61);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_0_5(void)
{
  {
  ldv_statevar_0 = 4;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_1_reset_flag_default = 0;
  ldv_statevar_1 = 15;
  return;
}
}
void ldv_switch_automaton_state_1_15(void)
{
  {
  ldv_statevar_1 = 14;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 4;
  return;
}
}
void ldv_switch_automaton_state_2_4(void)
{
  {
  ldv_statevar_2 = 3;
  return;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_4_usb_driver_usb_driver ;
  {
  {
  ldv_4_usb_driver_usb_driver = arg1;
  ldv_assume(ldv_statevar_2 == 2);
  ldv_dispatch_deregister_4_1(ldv_4_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_2(void *arg0 )
{
  {
  {
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 3);
  ldv_dispatch_instance_deregister_2_2(ldv_2_container_usb_driver);
  ldv_statevar_2 = 4;
  }
  goto ldv_34374;
  case_3:
  {
  ldv_assume(ldv_statevar_1 == 15);
  ldv_dispatch_instance_register_2_3(ldv_2_container_usb_driver);
  ldv_statevar_2 = 2;
  }
  goto ldv_34374;
  case_4: ;
  goto ldv_34374;
  switch_default: ;
  switch_break: ;
  }
  ldv_34374: ;
  return;
}
}
void ldv_usb_instance_post_1_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_1_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_1_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = hdpvr_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_1_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  hdpvr_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_1_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_5_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_5_usb_driver_usb_driver = arg1;
    ldv_assume(ldv_statevar_2 == 4);
    ldv_dispatch_register_5_2(ldv_5_usb_driver_usb_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_usb_usb_instance_1(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  {
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_3:
  {
  ldv_assume(ldv_1_probe_retval_default != 0);
  ldv_free((void *)ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_usb_device_usb_device);
  ldv_1_reset_flag_default = 0;
  ldv_statevar_1 = 15;
  }
  goto ldv_34416;
  case_4:
  {
  ldv_usb_instance_release_1_4(ldv_1_container_usb_driver->disconnect, ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_usb_device_usb_device);
  ldv_1_reset_flag_default = 0;
  ldv_statevar_1 = 15;
  }
  goto ldv_34416;
  case_5:
  {
  ldv_usb_instance_release_1_4(ldv_1_container_usb_driver->disconnect, ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_resource_usb_interface);
  ldv_free((void *)ldv_1_usb_device_usb_device);
  ldv_1_reset_flag_default = 0;
  ldv_statevar_1 = 15;
  }
  goto ldv_34416;
  case_6:
  ldv_statevar_1 = 4;
  goto ldv_34416;
  case_7: ;
  if ((unsigned long )ldv_1_container_usb_driver->resume != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_resume_1_7(ldv_1_container_usb_driver->resume, ldv_1_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_1 = 4;
  goto ldv_34416;
  case_8:
  ldv_statevar_1 = 7;
  goto ldv_34416;
  case_9: ;
  if ((unsigned long )ldv_1_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_post_1_9(ldv_1_container_usb_driver->post_reset, ldv_1_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_1 = 4;
  goto ldv_34416;
  case_10: ;
  if ((unsigned long )ldv_1_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_pre_1_10(ldv_1_container_usb_driver->pre_reset, ldv_1_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_1 = 9;
  goto ldv_34416;
  case_11: ;
  goto ldv_34416;
  case_12:
  {
  ldv_assume(ldv_1_probe_retval_default == 0);
  ldv_statevar_1 = ldv_switch_1();
  }
  goto ldv_34416;
  case_14:
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_1_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_1_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_1_resource_usb_interface->dev.parent = & ldv_1_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_1_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_1_probe_retval_default = ldv_usb_instance_probe_1_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_1_container_usb_driver->probe,
                                                           ldv_1_resource_usb_interface,
                                                           ldv_1_ldv_param_13_1_default);
  ldv_1_probe_retval_default = ldv_ldv_post_probe_34(ldv_1_probe_retval_default);
  ldv_free((void *)ldv_1_ldv_param_13_1_default);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_1 = 3;
  } else {
    ldv_statevar_1 = 12;
  }
  goto ldv_34416;
  case_15: ;
  goto ldv_34416;
  switch_default: ;
  switch_break: ;
  }
  ldv_34416: ;
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  {
  ldv_atomic_dec(v);
  }
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_atomic_add_return(i, v);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_15(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void ldv_usb_put_dev_30(struct usb_device *ldv_func_arg1 )
{
  {
  {
  ldv_usb_put_dev(ldv_func_arg1);
  }
  return;
}
}
static struct usb_device *ldv_usb_get_dev_31(struct usb_device *ldv_func_arg1 )
{
  struct usb_device *tmp ;
  {
  {
  tmp = ldv_usb_get_dev(ldv_func_arg1);
  }
  return (tmp);
}
}
static int ldv_usb_register_driver_32(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_usb_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_usb_deregister_33(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_probe_34(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_check_return_value_probe(ldv_func_arg1);
  tmp = ldv_post_probe(ldv_func_arg1);
  }
  return (tmp);
}
}
long ldv__builtin_expect(long exp , long c ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern void might_fault(void) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)list);
  }
  if (tmp == 0) {
    {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
    }
  } else {
  }
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
static void *ldv_dev_get_drvdata_18(struct device const *dev ) ;
static int ldv_dev_set_drvdata_19(struct device *dev , void *data ) ;
extern void schedule(void) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  }
  return (actual < (int )size ? actual : -1);
}
}
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_bulk_msg(struct usb_device * , unsigned int , void * , int , int * ,
                        int ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern struct video_device *video_device_alloc(void) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_18((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_19(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  }
  return (tmp___0);
}
}
extern bool v4l2_match_dv_timings(struct v4l2_dv_timings const * , struct v4l2_dv_timings const * ,
                                  unsigned int ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern int v4l2_fh_release(struct file * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                                u32 , s32 , s32 , s32 ) ;
extern void v4l2_ctrl_cluster(unsigned int , struct v4l2_ctrl ** ) ;
extern void v4l2_ctrl_activate(struct v4l2_ctrl * , bool ) ;
extern int v4l2_ctrl_log_status(struct file * , void * ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
static struct v4l2_dv_timings const hdpvr_dv_timings[8U] =
  { {0U, {{720U, 480U, 1U, 0U, 13500000ULL, 19U, 62U, 57U, 4U, 3U, 15U, 4U, 3U, 16U,
            1U, 8U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U, {{720U, 576U, 1U, 0U, 13500000ULL, 12U, 63U, 69U, 2U, 3U, 19U, 2U, 3U, 20U,
            1U, 8U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U, {{720U, 480U, 0U, 0U, 27000000ULL, 16U, 62U, 60U, 9U, 6U, 30U, 0U, 0U, 0U,
            1U, 0U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U, {{720U, 576U, 0U, 0U, 27000000ULL, 12U, 64U, 68U, 5U, 5U, 39U, 0U, 0U, 0U,
            1U, 0U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U, {{1280U, 720U, 0U, 3U, 74250000ULL, 440U, 40U, 220U, 5U, 5U, 20U, 0U, 0U,
            0U, 1U, 0U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U,
      {{1280U, 720U, 0U, 3U, 74250000ULL, 110U, 40U, 220U, 5U, 5U, 20U, 0U, 0U, 0U,
        1U, 2U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U, {{1920U, 1080U, 1U, 3U, 74250000ULL, 528U, 44U, 148U, 2U, 5U, 15U, 2U, 5U,
            16U, 1U, 8U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}},
        {0U,
      {{1920U, 1080U, 1U, 3U, 74250000ULL, 88U, 44U, 148U, 2U, 5U, 15U, 2U, 5U, 16U,
        1U, 10U, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U}}}}};
static uint list_size(struct list_head *list )
{
  struct list_head *tmp ;
  uint count ;
  {
  count = 0U;
  tmp = list->next;
  goto ldv_34348;
  ldv_34347:
  count = count + 1U;
  tmp = tmp->next;
  ldv_34348: ;
  if ((unsigned long )tmp != (unsigned long )list) {
    goto ldv_34347;
  } else {
  }
  return (count);
}
}
static void hdpvr_read_bulk_callback(struct urb *urb )
{
  struct hdpvr_buffer *buf ;
  struct hdpvr_device *dev ;
  {
  {
  buf = (struct hdpvr_buffer *)urb->context;
  dev = buf->dev;
  buf->status = 3U;
  __wake_up(& dev->wait_data, 1U, 1, (void *)0);
  }
  return;
}
}
int hdpvr_cancel_queue(struct hdpvr_device *dev )
{
  struct hdpvr_buffer *buf ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)dev->rec_buff_list.next;
  buf = (struct hdpvr_buffer *)__mptr;
  goto ldv_34364;
  ldv_34363:
  {
  usb_kill_urb(buf->urb);
  buf->status = 1U;
  __mptr___0 = (struct list_head const *)buf->buff_list.next;
  buf = (struct hdpvr_buffer *)__mptr___0;
  }
  ldv_34364: ;
  if ((unsigned long )(& buf->buff_list) != (unsigned long )(& dev->rec_buff_list)) {
    goto ldv_34363;
  } else {
  }
  {
  list_splice_init(& dev->rec_buff_list, dev->free_buff_list.prev);
  }
  return (0);
}
}
static int hdpvr_free_queue(struct list_head *q )
{
  struct list_head *tmp ;
  struct list_head *p ;
  struct hdpvr_buffer *buf ;
  struct urb *urb ;
  struct list_head const *__mptr ;
  {
  p = q->next;
  goto ldv_34376;
  ldv_34375:
  {
  __mptr = (struct list_head const *)p;
  buf = (struct hdpvr_buffer *)__mptr;
  urb = buf->urb;
  usb_free_coherent(urb->dev, (size_t )urb->transfer_buffer_length, urb->transfer_buffer,
                    urb->transfer_dma);
  usb_free_urb(urb);
  tmp = p->next;
  list_del(p);
  kfree((void const *)buf);
  p = tmp;
  }
  ldv_34376: ;
  if ((unsigned long )p != (unsigned long )q) {
    goto ldv_34375;
  } else {
  }
  return (0);
}
}
int hdpvr_free_buffers(struct hdpvr_device *dev )
{
  {
  {
  hdpvr_cancel_queue(dev);
  hdpvr_free_queue(& dev->free_buff_list);
  hdpvr_free_queue(& dev->rec_buff_list);
  }
  return (0);
}
}
int hdpvr_alloc_buffers(struct hdpvr_device *dev , uint count )
{
  uint i ;
  int retval ;
  u8 *mem ;
  struct hdpvr_buffer *buf ;
  struct urb *urb ;
  void *tmp ;
  void *tmp___0 ;
  unsigned int tmp___1 ;
  {
  retval = -12;
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: allocating %u buffers\n", (char *)(& dev->v4l2_dev.name), count);
    }
  } else {
  }
  i = 0U;
  goto ldv_34394;
  ldv_34393:
  {
  tmp = kzalloc(40UL, 208U);
  buf = (struct hdpvr_buffer *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((struct hdpvr_buffer *)0)) {
    {
    printk("\v%s: cannot allocate buffer\n", (char *)(& dev->v4l2_dev.name));
    }
    goto exit;
  } else {
  }
  {
  buf->dev = dev;
  urb = usb_alloc_urb(0, 208U);
  }
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    {
    printk("\v%s: cannot allocate urb\n", (char *)(& dev->v4l2_dev.name));
    }
    goto exit_urb;
  } else {
  }
  {
  buf->urb = urb;
  tmp___0 = usb_alloc_coherent(dev->udev, dev->bulk_in_size, 208U, & urb->transfer_dma);
  mem = (u8 *)tmp___0;
  }
  if ((unsigned long )mem == (unsigned long )((u8 *)0U)) {
    {
    printk("\v%s: cannot allocate usb transfer buffer\n", (char *)(& dev->v4l2_dev.name));
    }
    goto exit_urb_buffer;
  } else {
  }
  {
  tmp___1 = __create_pipe(dev->udev, (unsigned int )dev->bulk_in_endpointAddr);
  usb_fill_bulk_urb(buf->urb, dev->udev, tmp___1 | 3221225600U, (void *)mem, (int )dev->bulk_in_size,
                    & hdpvr_read_bulk_callback, (void *)buf);
  (buf->urb)->transfer_flags = (buf->urb)->transfer_flags | 4U;
  buf->status = 1U;
  list_add_tail(& buf->buff_list, & dev->free_buff_list);
  i = i + 1U;
  }
  ldv_34394: ;
  if (i < count) {
    goto ldv_34393;
  } else {
  }
  return (0);
  exit_urb_buffer:
  {
  usb_free_urb(urb);
  }
  exit_urb:
  {
  kfree((void const *)buf);
  }
  exit:
  {
  hdpvr_free_buffers(dev);
  }
  return (retval);
}
}
static int hdpvr_submit_buffers(struct hdpvr_device *dev )
{
  struct hdpvr_buffer *buf ;
  struct urb *urb ;
  int ret ;
  int err_count ;
  struct list_head const *__mptr ;
  int tmp ;
  uint tmp___0 ;
  uint tmp___1 ;
  {
  {
  ret = 0;
  err_count = 0;
  mutex_lock_nested(& dev->io_mutex, 0U);
  }
  goto ldv_34408;
  ldv_34409:
  __mptr = (struct list_head const *)dev->free_buff_list.next;
  buf = (struct hdpvr_buffer *)__mptr;
  if ((unsigned int )buf->status != 1U) {
    {
    printk("\v%s: buffer not marked as available\n", (char *)(& dev->v4l2_dev.name));
    ret = -14;
    }
    goto err;
  } else {
  }
  {
  urb = buf->urb;
  urb->status = 0;
  urb->actual_length = 0U;
  ret = usb_submit_urb(urb, 208U);
  }
  if (ret != 0) {
    {
    printk("\v%s: usb_submit_urb in %s returned %d\n", (char *)(& dev->v4l2_dev.name),
           "hdpvr_submit_buffers", ret);
    err_count = err_count + 1;
    }
    if (err_count > 2) {
      goto ldv_34407;
    } else {
    }
    goto ldv_34408;
  } else {
  }
  {
  buf->status = 2U;
  list_move_tail(& buf->buff_list, & dev->rec_buff_list);
  }
  ldv_34408: ;
  if ((unsigned int )dev->status == 4U) {
    {
    tmp = list_empty((struct list_head const *)(& dev->free_buff_list));
    }
    if (tmp == 0) {
      goto ldv_34409;
    } else {
      goto ldv_34407;
    }
  } else {
  }
  ldv_34407: ;
  err: ;
  if (hdpvr_debug > 1) {
    {
    tmp___0 = list_size(& dev->rec_buff_list);
    tmp___1 = list_size(& dev->free_buff_list);
    printk("\017%s: %s:%d buffer stat: %d free, %d proc\n", (char *)(& dev->v4l2_dev.name),
           "hdpvr_submit_buffers", 228, tmp___1, tmp___0);
    }
  } else {
  }
  {
  mutex_unlock(& dev->io_mutex);
  }
  return (ret);
}
}
static struct hdpvr_buffer *hdpvr_get_next_buffer(struct hdpvr_device *dev )
{
  struct hdpvr_buffer *buf ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  {
  mutex_lock_nested(& dev->io_mutex, 0U);
  tmp = list_empty((struct list_head const *)(& dev->rec_buff_list));
  }
  if (tmp != 0) {
    {
    mutex_unlock(& dev->io_mutex);
    }
    return ((struct hdpvr_buffer *)0);
  } else {
  }
  {
  __mptr = (struct list_head const *)dev->rec_buff_list.next;
  buf = (struct hdpvr_buffer *)__mptr;
  mutex_unlock(& dev->io_mutex);
  }
  return (buf);
}
}
static void hdpvr_transmit_buffers(struct work_struct *work )
{
  struct hdpvr_device *dev ;
  struct work_struct const *__mptr ;
  int tmp ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct hdpvr_device *)__mptr + 0xfffffffffffffb40UL;
  goto ldv_34433;
  ldv_34432:
  {
  tmp = hdpvr_submit_buffers(dev);
  }
  if (tmp != 0) {
    {
    printk("\v%s: couldn\'t submit buffers\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  __ret = 0;
  tmp___2 = list_empty((struct list_head const *)(& dev->free_buff_list));
  }
  if (tmp___2 != 0 && (unsigned int )dev->status == 4U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_34429:
    {
    tmp___0 = prepare_to_wait_event(& dev->wait_buffer, & __wait, 1);
    __int = tmp___0;
    tmp___1 = list_empty((struct list_head const *)(& dev->free_buff_list));
    }
    if (tmp___1 == 0 || (unsigned int )dev->status != 4U) {
      goto ldv_34428;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_34428;
    } else {
    }
    {
    schedule();
    }
    goto ldv_34429;
    ldv_34428:
    {
    finish_wait(& dev->wait_buffer, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret != 0) {
    goto error;
  } else {
  }
  ldv_34433: ;
  if ((unsigned int )dev->status == 4U) {
    goto ldv_34432;
  } else {
  }
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: transmit worker exited\n", (char *)(& dev->v4l2_dev.name));
    }
  } else {
  }
  return;
  error: ;
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: transmit buffers errored\n", (char *)(& dev->v4l2_dev.name));
    }
  } else {
  }
  dev->status = 5U;
  return;
}
}
static int hdpvr_start_streaming(struct hdpvr_device *dev )
{
  int ret ;
  struct hdpvr_video_info vidinf ;
  unsigned int tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  if ((unsigned int )dev->status == 4U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->status != 1U) {
    return (-11);
  } else {
  }
  {
  ret = get_video_info(dev, & vidinf);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (! vidinf.valid) {
    {
    msleep(250U);
    }
    if (hdpvr_debug > 0) {
      {
      printk("\017%s: no video signal at input %d\n", (char *)(& dev->v4l2_dev.name),
             (int )dev->options.video_input);
      }
    } else {
    }
    return (-11);
  } else {
  }
  if (hdpvr_debug > 1) {
    {
    printk("\017%s: video signal: %dx%d@%dhz\n", (char *)(& dev->v4l2_dev.name), (int )vidinf.width,
           (int )vidinf.height, (int )vidinf.fps);
    }
  } else {
  }
  {
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483648U, 184, 56, 1, 0, (void *)0, 0,
                        8000);
  }
  if (hdpvr_debug > 1) {
    {
    printk("\017%s: encoder start control request returned %d\n", (char *)(& dev->v4l2_dev.name),
           ret);
    }
  } else {
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = hdpvr_config_call(dev, 1792U, 0);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  dev->status = 4U;
  __init_work(& dev->worker, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->worker.data = __constr_expr_0;
  lockdep_init_map(& dev->worker.lockdep_map, "(&dev->worker)", & __key, 0);
  INIT_LIST_HEAD(& dev->worker.entry);
  dev->worker.func = & hdpvr_transmit_buffers;
  queue_work(dev->workqueue, & dev->worker);
  }
  if (hdpvr_debug > 1) {
    {
    printk("\017%s: streaming started\n", (char *)(& dev->v4l2_dev.name));
    }
  } else {
  }
  return (0);
}
}
static int hdpvr_stop_streaming(struct hdpvr_device *dev )
{
  int actual_length ;
  uint c ;
  u8 *buf ;
  void *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  c = 0U;
  if ((unsigned int )dev->status == 1U) {
    return (0);
  } else
  if ((unsigned int )dev->status != 4U) {
    return (-11);
  } else {
  }
  {
  tmp = kmalloc(dev->bulk_in_size, 208U);
  buf = (u8 *)tmp;
  }
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    {
    printk("\v%s: failed to allocate temporary buffer for emptying the internal device buffer. Next capture start will be slow\n",
           (char *)(& dev->v4l2_dev.name));
    }
  } else {
  }
  {
  dev->status = 3U;
  hdpvr_config_call(dev, 2048U, 0);
  mutex_unlock(& dev->io_mutex);
  __wake_up(& dev->wait_buffer, 1U, 1, (void *)0);
  msleep(50U);
  flush_workqueue(dev->workqueue);
  mutex_lock_nested(& dev->io_mutex, 0U);
  hdpvr_cancel_queue(dev);
  }
  goto ldv_34449;
  ldv_34448: ;
  if (hdpvr_debug > 1) {
    {
    printk("\017%s: %2d: got %d bytes\n", (char *)(& dev->v4l2_dev.name), c, actual_length);
    }
  } else {
  }
  ldv_34449: ;
  if ((unsigned long )buf != (unsigned long )((u8 *)0U)) {
    c = c + 1U;
    if (c <= 499U) {
      {
      tmp___0 = __create_pipe(dev->udev, (unsigned int )dev->bulk_in_endpointAddr);
      tmp___1 = usb_bulk_msg(dev->udev, tmp___0 | 3221225600U, (void *)buf, (int )dev->bulk_in_size,
                             & actual_length, 90);
      }
      if (tmp___1 == 0) {
        goto ldv_34448;
      } else {
        goto ldv_34450;
      }
    } else {
      goto ldv_34450;
    }
  } else {
  }
  ldv_34450:
  {
  kfree((void const *)buf);
  }
  if (hdpvr_debug > 1) {
    {
    printk("\017%s: used %d urbs to empty device buffers\n", (char *)(& dev->v4l2_dev.name),
           c - 1U);
    }
  } else {
  }
  {
  msleep(10U);
  dev->status = 1U;
  }
  return (0);
}
}
static int hdpvr_open(struct file *file )
{
  struct hdpvr_fh *fh ;
  void *tmp ;
  struct video_device *tmp___0 ;
  {
  {
  tmp = kzalloc(184UL, 208U);
  fh = (struct hdpvr_fh *)tmp;
  }
  if ((unsigned long )fh == (unsigned long )((struct hdpvr_fh *)0)) {
    return (-12);
  } else {
  }
  {
  fh->legacy_mode = 1;
  tmp___0 = video_devdata(file);
  v4l2_fh_init(& fh->fh, tmp___0);
  v4l2_fh_add(& fh->fh);
  file->private_data = (void *)fh;
  }
  return (0);
}
}
static int hdpvr_release(struct file *file )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  mutex_lock_nested(& dev->io_mutex, 0U);
  }
  if ((unsigned long )file->private_data == (unsigned long )((void *)dev->owner)) {
    {
    hdpvr_stop_streaming(dev);
    dev->owner = (struct v4l2_fh *)0;
    }
  } else {
  }
  {
  mutex_unlock(& dev->io_mutex);
  tmp___0 = v4l2_fh_release(file);
  }
  return (tmp___0);
}
}
static ssize_t hdpvr_read(struct file *file , char *buffer , size_t count , loff_t *pos )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_buffer *buf ;
  struct urb *urb ;
  unsigned int ret ;
  int rem ;
  int cnt ;
  int tmp___0 ;
  uint tmp___1 ;
  uint tmp___2 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___3 ;
  struct hdpvr_buffer *tmp___4 ;
  struct hdpvr_buffer *tmp___5 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___6 ;
  unsigned long tmp___7 ;
  uint tmp___8 ;
  uint tmp___9 ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  buf = (struct hdpvr_buffer *)0;
  ret = 0U;
  }
  if (*pos != 0LL) {
    return (-29L);
  } else {
  }
  {
  mutex_lock_nested(& dev->io_mutex, 0U);
  }
  if ((unsigned int )dev->status == 1U) {
    {
    tmp___0 = hdpvr_start_streaming(dev);
    }
    if (tmp___0 != 0) {
      if (hdpvr_debug > 0) {
        {
        printk("\017%s: start_streaming failed\n", (char *)(& dev->v4l2_dev.name));
        }
      } else {
      }
      {
      ret = 4294967291U;
      msleep(200U);
      dev->status = 1U;
      mutex_unlock(& dev->io_mutex);
      }
      goto err;
    } else {
    }
    dev->owner = (struct v4l2_fh *)file->private_data;
    if (hdpvr_debug > 1) {
      {
      tmp___1 = list_size(& dev->rec_buff_list);
      tmp___2 = list_size(& dev->free_buff_list);
      printk("\017%s: %s:%d buffer stat: %d free, %d proc\n", (char *)(& dev->v4l2_dev.name),
             "hdpvr_read", 440, tmp___2, tmp___1);
      }
    } else {
    }
  } else {
  }
  {
  mutex_unlock(& dev->io_mutex);
  }
  if ((file->f_flags & 2048U) == 0U) {
    {
    __ret = 0;
    tmp___5 = hdpvr_get_next_buffer(dev);
    }
    if ((unsigned long )tmp___5 == (unsigned long )((struct hdpvr_buffer *)0)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_34479:
      {
      tmp___3 = prepare_to_wait_event(& dev->wait_data, & __wait, 1);
      __int = tmp___3;
      tmp___4 = hdpvr_get_next_buffer(dev);
      }
      if ((unsigned long )tmp___4 != (unsigned long )((struct hdpvr_buffer *)0)) {
        goto ldv_34478;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_34478;
      } else {
      }
      {
      schedule();
      }
      goto ldv_34479;
      ldv_34478:
      {
      finish_wait(& dev->wait_data, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      return (-512L);
    } else {
    }
  } else {
  }
  {
  buf = hdpvr_get_next_buffer(dev);
  }
  goto ldv_34493;
  ldv_34492: ;
  if ((unsigned int )buf->status != 3U && (unsigned int )dev->status != 6U) {
    if ((file->f_flags & 2048U) != 0U) {
      if (ret == 0U) {
        ret = 4294967285U;
      } else {
      }
      goto err;
    } else {
    }
    __ret___1 = 0;
    if ((unsigned int )buf->status != 3U) {
      {
      __ret___2 = 0L;
      INIT_LIST_HEAD(& __wait___0.task_list);
      __wait___0.flags = 0U;
      }
      ldv_34488:
      {
      tmp___6 = prepare_to_wait_event(& dev->wait_data, & __wait___0, 1);
      __int___0 = tmp___6;
      }
      if ((unsigned int )buf->status == 3U) {
        goto ldv_34487;
      } else {
      }
      if (__int___0 != 0L) {
        __ret___2 = __int___0;
        goto ldv_34487;
      } else {
      }
      {
      schedule();
      }
      goto ldv_34488;
      ldv_34487:
      {
      finish_wait(& dev->wait_data, & __wait___0);
      }
      __ret___1 = (int )__ret___2;
    } else {
    }
    if (__ret___1 != 0) {
      ret = 4294966784U;
      goto err;
    } else {
    }
  } else {
  }
  if ((unsigned int )buf->status != 3U) {
    goto ldv_34491;
  } else {
  }
  {
  urb = buf->urb;
  rem = (int )(urb->actual_length - buf->pos);
  cnt = (int )(count < (size_t )rem ? count : (size_t )rem);
  tmp___7 = copy_to_user((void *)buffer, (void const *)urb->transfer_buffer + (unsigned long )buf->pos,
                         (unsigned long )cnt);
  }
  if (tmp___7 != 0UL) {
    {
    printk("\v%s: read: copy_to_user failed\n", (char *)(& dev->v4l2_dev.name));
    }
    if (ret == 0U) {
      ret = 4294967282U;
    } else {
    }
    goto err;
  } else {
  }
  buf->pos = buf->pos + (uint )cnt;
  count = count - (size_t )cnt;
  buffer = buffer + (unsigned long )cnt;
  ret = ret + (unsigned int )cnt;
  if (buf->pos == urb->actual_length) {
    {
    mutex_lock_nested(& dev->io_mutex, 0U);
    buf->pos = 0U;
    buf->status = 1U;
    list_move_tail(& buf->buff_list, & dev->free_buff_list);
    }
    if (hdpvr_debug > 1) {
      {
      tmp___8 = list_size(& dev->rec_buff_list);
      tmp___9 = list_size(& dev->free_buff_list);
      printk("\017%s: %s:%d buffer stat: %d free, %d proc\n", (char *)(& dev->v4l2_dev.name),
             "hdpvr_read", 500, tmp___9, tmp___8);
      }
    } else {
    }
    {
    mutex_unlock(& dev->io_mutex);
    __wake_up(& dev->wait_buffer, 1U, 1, (void *)0);
    buf = hdpvr_get_next_buffer(dev);
    }
  } else {
  }
  ldv_34493: ;
  if (count != 0UL && (unsigned long )buf != (unsigned long )((struct hdpvr_buffer *)0)) {
    goto ldv_34492;
  } else {
  }
  ldv_34491: ;
  err: ;
  if (ret == 0U && (unsigned long )buf == (unsigned long )((struct hdpvr_buffer *)0)) {
    ret = 4294967285U;
  } else {
  }
  return ((ssize_t )ret);
}
}
static unsigned int hdpvr_poll(struct file *filp , poll_table *wait )
{
  unsigned long req_events ;
  unsigned long tmp ;
  struct hdpvr_buffer *buf ;
  struct hdpvr_device *dev ;
  void *tmp___0 ;
  unsigned int mask ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  uint tmp___3 ;
  uint tmp___4 ;
  {
  {
  tmp = poll_requested_events((poll_table const *)wait);
  req_events = tmp;
  buf = (struct hdpvr_buffer *)0;
  tmp___0 = video_drvdata(filp);
  dev = (struct hdpvr_device *)tmp___0;
  tmp___1 = v4l2_ctrl_poll(filp, wait);
  mask = tmp___1;
  }
  if ((req_events & 65UL) == 0UL) {
    return (mask);
  } else {
  }
  {
  mutex_lock_nested(& dev->io_mutex, 0U);
  }
  if ((unsigned int )dev->status == 1U) {
    {
    tmp___2 = hdpvr_start_streaming(dev);
    }
    if (tmp___2 != 0) {
      if (hdpvr_debug > 1) {
        {
        printk("\017%s: start_streaming failed\n", (char *)(& dev->v4l2_dev.name));
        }
      } else {
      }
      dev->status = 1U;
    } else {
      dev->owner = (struct v4l2_fh *)filp->private_data;
    }
    if (hdpvr_debug > 1) {
      {
      tmp___3 = list_size(& dev->rec_buff_list);
      tmp___4 = list_size(& dev->free_buff_list);
      printk("\017%s: %s:%d buffer stat: %d free, %d proc\n", (char *)(& dev->v4l2_dev.name),
             "hdpvr_poll", 536, tmp___4, tmp___3);
      }
    } else {
    }
  } else {
  }
  {
  mutex_unlock(& dev->io_mutex);
  buf = hdpvr_get_next_buffer(dev);
  }
  if ((unsigned long )buf == (unsigned long )((struct hdpvr_buffer *)0) || (unsigned int )buf->status != 3U) {
    {
    poll_wait(filp, & dev->wait_data, wait);
    buf = hdpvr_get_next_buffer(dev);
    }
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct hdpvr_buffer *)0) && (unsigned int )buf->status == 3U) {
    mask = mask | 65U;
  } else {
  }
  return (mask);
}
}
static struct v4l2_file_operations const hdpvr_fops =
     {& __this_module, & hdpvr_read, 0, & hdpvr_poll, 0, & video_ioctl2, 0, 0, 0, & hdpvr_open,
    & hdpvr_release};
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  strcpy((char *)(& cap->driver), "hdpvr");
  strcpy((char *)(& cap->card), "Hauppauge HD PVR");
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  cap->device_caps = 16908289U;
  cap->capabilities = cap->device_caps | 2147483648U;
  }
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *_fh , v4l2_std_id std )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  u8 std_type ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  std_type = 1U;
  }
  if (! fh->legacy_mode && (unsigned int )dev->options.video_input == 0U) {
    return (-61);
  } else {
  }
  if ((unsigned int )dev->status != 1U) {
    return (-16);
  } else {
  }
  if ((std & 63744ULL) != 0ULL) {
    std_type = 0U;
  } else {
  }
  {
  dev->cur_std = std;
  dev->width = 720U;
  dev->height = (unsigned int )std_type != 0U ? 576U : 480U;
  tmp___0 = hdpvr_config_call(dev, 5888U, (int )std_type);
  }
  return (tmp___0);
}
}
static int vidioc_g_std(struct file *file , void *_fh , v4l2_std_id *std )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  }
  if (! fh->legacy_mode && (unsigned int )dev->options.video_input == 0U) {
    return (-61);
  } else {
  }
  *std = dev->cur_std;
  return (0);
}
}
static int vidioc_querystd(struct file *file , void *_fh , v4l2_std_id *a )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_video_info vid_info ;
  struct hdpvr_fh *fh ;
  int ret ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  *a = 0ULL;
  }
  if ((unsigned int )dev->options.video_input == 0U) {
    return ((int )fh->legacy_mode ? 0 : -61);
  } else {
  }
  {
  ret = get_video_info(dev, & vid_info);
  }
  if (((int )vid_info.valid && (unsigned int )vid_info.width == 720U) && ((unsigned int )vid_info.height == 480U || (unsigned int )vid_info.height == 576U)) {
    *a = (unsigned int )vid_info.height == 480U ? 63744ULL : 16713471ULL;
  } else {
  }
  return (ret);
}
}
static int vidioc_s_dv_timings(struct file *file , void *_fh , struct v4l2_dv_timings *timings )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  int i ;
  bool tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  fh->legacy_mode = 0;
  }
  if ((unsigned int )dev->options.video_input != 0U) {
    return (-61);
  } else {
  }
  if ((unsigned int )dev->status != 1U) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_34546;
  ldv_34545:
  {
  tmp___0 = v4l2_match_dv_timings((struct v4l2_dv_timings const *)timings, (struct v4l2_dv_timings const *)(& hdpvr_dv_timings) + (unsigned long )i,
                                  0U);
  }
  if ((int )tmp___0) {
    goto ldv_34544;
  } else {
  }
  i = i + 1;
  ldv_34546: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_34545;
  } else {
  }
  ldv_34544: ;
  if (i == 8) {
    return (-22);
  } else {
  }
  dev->cur_dv_timings = hdpvr_dv_timings[i];
  dev->width = hdpvr_dv_timings[i].__annonCompField70.bt.width;
  dev->height = hdpvr_dv_timings[i].__annonCompField70.bt.height;
  return (0);
}
}
static int vidioc_g_dv_timings(struct file *file , void *_fh , struct v4l2_dv_timings *timings )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  fh->legacy_mode = 0;
  }
  if ((unsigned int )dev->options.video_input != 0U) {
    return (-61);
  } else {
  }
  *timings = dev->cur_dv_timings;
  return (0);
}
}
static int vidioc_query_dv_timings(struct file *file , void *_fh , struct v4l2_dv_timings *timings )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  struct hdpvr_video_info vid_info ;
  bool interlaced ;
  int ret ;
  int i ;
  struct v4l2_bt_timings const *bt ;
  unsigned int hsize ;
  unsigned int vsize ;
  unsigned int fps ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  ret = 0;
  fh->legacy_mode = 0;
  }
  if ((unsigned int )dev->options.video_input != 0U) {
    return (-61);
  } else {
  }
  {
  ret = get_video_info(dev, & vid_info);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if (! vid_info.valid) {
    return (-37);
  } else {
  }
  interlaced = (unsigned int )vid_info.fps <= 30U;
  i = 0;
  goto ldv_34576;
  ldv_34575:
  bt = & hdpvr_dv_timings[i].__annonCompField70.bt;
  hsize = (unsigned int )bt->width + (((unsigned int )bt->hfrontporch + (unsigned int )bt->hsync) + (unsigned int )bt->hbackporch);
  vsize = (unsigned int )bt->height + ((((((unsigned int )bt->vfrontporch + (unsigned int )bt->vsync) + (unsigned int )bt->vbackporch) + (unsigned int )bt->il_vfrontporch) + (unsigned int )bt->il_vsync) + (unsigned int )bt->il_vbackporch);
  fps = (unsigned int )bt->pixelclock / (hsize * vsize);
  if ((((unsigned int )bt->width != (unsigned int )vid_info.width || (unsigned int )bt->height != (unsigned int )vid_info.height) || (unsigned int )bt->interlaced != (unsigned int )interlaced) || (fps != (unsigned int )vid_info.fps && fps + 1U != (unsigned int )vid_info.fps)) {
    goto ldv_34573;
  } else {
  }
  *timings = hdpvr_dv_timings[i];
  goto ldv_34574;
  ldv_34573:
  i = i + 1;
  ldv_34576: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_34575;
  } else {
  }
  ldv_34574: ;
  if (i == 8) {
    ret = -34;
  } else {
  }
  return (ret);
}
}
static int vidioc_enum_dv_timings(struct file *file , void *_fh , struct v4l2_enum_dv_timings *timings )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  fh->legacy_mode = 0;
  memset((void *)(& timings->reserved), 0, 12UL);
  }
  if ((unsigned int )dev->options.video_input != 0U) {
    return (-61);
  } else {
  }
  if (timings->index > 7U) {
    return (-22);
  } else {
  }
  timings->timings = hdpvr_dv_timings[timings->index];
  return (0);
}
}
static int vidioc_dv_timings_cap(struct file *file , void *_fh , struct v4l2_dv_timings_cap *cap )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  fh->legacy_mode = 0;
  }
  if ((unsigned int )dev->options.video_input != 0U) {
    return (-61);
  } else {
  }
  cap->type = 0U;
  cap->__annonCompField71.bt.min_width = 720U;
  cap->__annonCompField71.bt.max_width = 1920U;
  cap->__annonCompField71.bt.min_height = 480U;
  cap->__annonCompField71.bt.max_height = 1080U;
  cap->__annonCompField71.bt.min_pixelclock = 27000000ULL;
  cap->__annonCompField71.bt.max_pixelclock = 74250000ULL;
  cap->__annonCompField71.bt.standards = 1U;
  cap->__annonCompField71.bt.capabilities = 3U;
  return (0);
}
}
static char const *iname[3U] = { "Component", "S-Video", "Composite"};
static int vidioc_enum_input(struct file *file , void *_fh , struct v4l2_input *i )
{
  unsigned int n ;
  {
  n = i->index;
  if (n > 2U) {
    return (-22);
  } else {
  }
  {
  i->type = 2U;
  strncpy((char *)(& i->name), iname[n], 31UL);
  i->name[31UL] = 0U;
  i->audioset = 7U;
  i->capabilities = n != 0U ? 4U : 2U;
  i->std = n != 0U ? 16777215ULL : 0ULL;
  }
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *_fh , unsigned int index )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  int retval ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  }
  if (index > 2U) {
    return (-22);
  } else {
  }
  if ((unsigned int )dev->status != 1U) {
    return (-16);
  } else {
  }
  {
  retval = hdpvr_config_call(dev, 5376U, (int )((unsigned int )((unsigned char )index) + 1U));
  }
  if (retval == 0) {
    dev->options.video_input = (u8 )index;
  } else {
  }
  return (retval);
}
}
static int vidioc_g_input(struct file *file , void *private_data , unsigned int *index )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  *index = (unsigned int )dev->options.video_input;
  }
  return (0);
}
}
static char const *audio_iname[3U] = { "RCA back", "RCA front", "SPDIF"};
static int vidioc_enumaudio(struct file *file , void *priv , struct v4l2_audio *audio )
{
  unsigned int n ;
  {
  n = audio->index;
  if (n > 2U) {
    return (-22);
  } else {
  }
  {
  audio->capability = 1U;
  strncpy((char *)(& audio->name), audio_iname[n], 31UL);
  audio->name[31UL] = 0U;
  }
  return (0);
}
}
static int vidioc_s_audio(struct file *file , void *private_data , struct v4l2_audio const *audio )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  int retval ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  }
  if ((unsigned int )audio->index > 2U) {
    return (-22);
  } else {
  }
  if ((unsigned int )dev->status != 1U) {
    return (-16);
  } else {
  }
  {
  retval = hdpvr_set_audio(dev, (int )((unsigned int )((u8 )audio->index) + 1U), dev->options.audio_codec);
  }
  if (retval == 0) {
    dev->options.audio_input = (u8 )audio->index;
  } else {
  }
  return (retval);
}
}
static int vidioc_g_audio(struct file *file , void *private_data , struct v4l2_audio *audio )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  audio->index = (__u32 )dev->options.audio_input;
  audio->capability = 1U;
  strncpy((char *)(& audio->name), audio_iname[audio->index], 32UL);
  audio->name[31UL] = 0U;
  }
  return (0);
}
}
static int hdpvr_try_ctrl(struct v4l2_ctrl *ctrl )
{
  struct hdpvr_device *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct hdpvr_device *)__mptr + 0xfffffffffffffff8UL;
  {
  if (ctrl->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  goto switch_break;
  case_10029518: ;
  if (ctrl->__annonCompField82.val == 0 && (dev->__annonCompField88.video_bitrate)->__annonCompField82.val >= (dev->__annonCompField88.video_bitrate_peak)->__annonCompField82.val) {
    (dev->__annonCompField88.video_bitrate_peak)->__annonCompField82.val = (dev->__annonCompField88.video_bitrate)->__annonCompField82.val + 100000;
  } else {
  }
  goto ldv_34642;
  switch_break: ;
  }
  ldv_34642: ;
  return (0);
}
}
static int hdpvr_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct hdpvr_device *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct hdpvr_options *opt ;
  int ret ;
  int tmp ;
  uint peak_bitrate ;
  uint bitrate ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct hdpvr_device *)__mptr + 0xfffffffffffffff8UL;
  opt = & dev->options;
  ret = -22;
  {
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctrl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctrl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctrl->id == 10029413U) {
    goto case_10029413;
  } else {
  }
  if (ctrl->id == 10029512U) {
    goto case_10029512;
  } else {
  }
  if (ctrl->id == 10029518U) {
    goto case_10029518;
  } else {
  }
  if (ctrl->id == 10029312U) {
    goto case_10029312;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  ret = hdpvr_config_call(dev, 10496U, (int )((unsigned char )ctrl->__annonCompField82.val));
  }
  if (ret != 0) {
    goto ldv_34652;
  } else {
  }
  dev->options.brightness = (u8 )ctrl->__annonCompField82.val;
  return (0);
  case_9963777:
  {
  ret = hdpvr_config_call(dev, 10752U, (int )((unsigned char )ctrl->__annonCompField82.val));
  }
  if (ret != 0) {
    goto ldv_34652;
  } else {
  }
  dev->options.contrast = (u8 )ctrl->__annonCompField82.val;
  return (0);
  case_9963778:
  {
  ret = hdpvr_config_call(dev, 11264U, (int )((unsigned char )ctrl->__annonCompField82.val));
  }
  if (ret != 0) {
    goto ldv_34652;
  } else {
  }
  dev->options.saturation = (u8 )ctrl->__annonCompField82.val;
  return (0);
  case_9963779:
  {
  ret = hdpvr_config_call(dev, 11008U, (int )((unsigned char )ctrl->__annonCompField82.val));
  }
  if (ret != 0) {
    goto ldv_34652;
  } else {
  }
  dev->options.hue = (u8 )ctrl->__annonCompField82.val;
  return (0);
  case_9963803:
  {
  ret = hdpvr_config_call(dev, 11520U, (int )((unsigned char )ctrl->__annonCompField82.val));
  }
  if (ret != 0) {
    goto ldv_34652;
  } else {
  }
  dev->options.sharpness = (u8 )ctrl->__annonCompField82.val;
  return (0);
  case_10029413: ;
  if ((int )dev->flags & 1) {
    {
    opt->audio_codec = (enum v4l2_mpeg_audio_encoding )ctrl->__annonCompField82.val;
    tmp = hdpvr_set_audio(dev, (int )opt->audio_input, opt->audio_codec);
    }
    return (tmp);
  } else {
  }
  return (0);
  case_10029512: ;
  return (0);
  case_10029518:
  peak_bitrate = (uint )((dev->__annonCompField88.video_bitrate_peak)->__annonCompField82.val / 100000);
  bitrate = (uint )((dev->__annonCompField88.video_bitrate)->__annonCompField82.val / 100000);
  if ((unsigned int )*((unsigned char *)ctrl + 52UL) != 0U) {
    if (ctrl->__annonCompField82.val == 1) {
      opt->bitrate_mode = 1U;
    } else {
      opt->bitrate_mode = 3U;
    }
    {
    hdpvr_config_call(dev, 4608U, (int )opt->bitrate_mode);
    v4l2_ctrl_activate(dev->__annonCompField88.video_bitrate_peak, ctrl->__annonCompField82.val != 1);
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev->__annonCompField88.video_bitrate_peak + 52UL) != 0U || (unsigned int )*((unsigned char *)dev->__annonCompField88.video_bitrate + 52UL) != 0U) {
    {
    opt->bitrate = (u8 )bitrate;
    opt->peak_bitrate = (u8 )peak_bitrate;
    hdpvr_set_bitrate(dev);
    }
  } else {
  }
  return (0);
  case_10029312: ;
  return (0);
  switch_default: ;
  goto ldv_34652;
  switch_break: ;
  }
  ldv_34652: ;
  return (ret);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *private_data , struct v4l2_fmtdesc *f )
{
  {
  if (f->index != 0U) {
    return (-22);
  } else {
  }
  {
  f->flags = 1U;
  strncpy((char *)(& f->description), "MPEG2-TS with AVC/AAC streams", 32UL);
  f->pixelformat = 1195724877U;
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *_fh , struct v4l2_format *f )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  struct hdpvr_fh *fh ;
  int ret ;
  struct hdpvr_video_info vid_info ;
  {
  {
  tmp = video_drvdata(file);
  dev = (struct hdpvr_device *)tmp;
  fh = (struct hdpvr_fh *)_fh;
  }
  if ((int )fh->legacy_mode) {
    {
    ret = get_video_info(dev, & vid_info);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    if (! vid_info.valid) {
      return (-14);
    } else {
    }
    f->fmt.pix.width = (__u32 )vid_info.width;
    f->fmt.pix.height = (__u32 )vid_info.height;
  } else {
    f->fmt.pix.width = dev->width;
    f->fmt.pix.height = dev->height;
  }
  f->fmt.pix.pixelformat = 1195724877U;
  f->fmt.pix.sizeimage = (__u32 )dev->bulk_in_size;
  f->fmt.pix.bytesperline = 0U;
  f->fmt.pix.priv = 0U;
  if (f->fmt.pix.width == 720U) {
    f->fmt.pix.colorspace = 1U;
    f->fmt.pix.field = 4U;
  } else {
    f->fmt.pix.colorspace = 2U;
    f->fmt.pix.field = 1U;
  }
  return (0);
}
}
static int vidioc_encoder_cmd(struct file *filp , void *priv , struct v4l2_encoder_cmd *a )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  int res ;
  {
  {
  tmp = video_drvdata(filp);
  dev = (struct hdpvr_device *)tmp;
  res = 0;
  mutex_lock_nested(& dev->io_mutex, 0U);
  a->flags = 0U;
  }
  {
  if (a->cmd == 0U) {
    goto case_0;
  } else {
  }
  if (a->cmd == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  if ((unsigned long )dev->owner != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )filp->private_data != (unsigned long )((void *)dev->owner)) {
    res = -16;
    goto ldv_34686;
  } else {
  }
  if ((unsigned int )dev->status == 4U) {
    goto ldv_34686;
  } else {
  }
  {
  res = hdpvr_start_streaming(dev);
  }
  if (res == 0) {
    dev->owner = (struct v4l2_fh *)filp->private_data;
  } else {
    dev->status = 1U;
  }
  goto ldv_34686;
  case_1: ;
  if ((unsigned long )dev->owner != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )filp->private_data != (unsigned long )((void *)dev->owner)) {
    res = -16;
    goto ldv_34686;
  } else {
  }
  if ((unsigned int )dev->status == 1U) {
    goto ldv_34686;
  } else {
  }
  {
  res = hdpvr_stop_streaming(dev);
  }
  if (res == 0) {
    dev->owner = (struct v4l2_fh *)0;
  } else {
  }
  goto ldv_34686;
  switch_default: ;
  if (hdpvr_debug > 0) {
    {
    printk("\017%s: Unsupported encoder cmd %d\n", (char *)(& dev->v4l2_dev.name),
           a->cmd);
    }
  } else {
  }
  res = -22;
  goto ldv_34686;
  switch_break: ;
  }
  ldv_34686:
  {
  mutex_unlock(& dev->io_mutex);
  }
  return (res);
}
}
static int vidioc_try_encoder_cmd(struct file *filp , void *priv , struct v4l2_encoder_cmd *a )
{
  {
  a->flags = 0U;
  {
  if (a->cmd == 0U) {
    goto case_0;
  } else {
  }
  if (a->cmd == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  case_1: ;
  return (0);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
}
}
static struct v4l2_ioctl_ops const hdpvr_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_g_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & vidioc_g_std, & vidioc_s_std, & vidioc_querystd, & vidioc_enum_input,
    & vidioc_g_input, & vidioc_s_input, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_enumaudio,
    & vidioc_g_audio, & vidioc_s_audio, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_encoder_cmd,
    & vidioc_try_encoder_cmd, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_log_status,
    0, 0, 0, 0, 0, 0, & vidioc_s_dv_timings, & vidioc_g_dv_timings, & vidioc_query_dv_timings,
    & vidioc_enum_dv_timings, & vidioc_dv_timings_cap, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, 0};
static void hdpvr_device_release(struct video_device *vdev )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  {
  {
  tmp = video_get_drvdata(vdev);
  dev = (struct hdpvr_device *)tmp;
  hdpvr_delete(dev);
  mutex_lock_nested(& dev->io_mutex, 0U);
  destroy_workqueue(dev->workqueue);
  mutex_unlock(& dev->io_mutex);
  v4l2_device_unregister(& dev->v4l2_dev);
  v4l2_ctrl_handler_free(& dev->hdl);
  mutex_lock_nested(& dev->i2c_mutex, 0U);
  i2c_del_adapter(& dev->i2c_adapter);
  mutex_unlock(& dev->i2c_mutex);
  kfree((void const *)dev->usbc_buf);
  kfree((void const *)dev);
  }
  return;
}
}
static struct video_device const hdpvr_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & hdpvr_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
                                                                                      0},
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0,
                                                                                     {(char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0},
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
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
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
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
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
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
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
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
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
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
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                       (char)0, (char)0, (char)0, (char)0}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16777215ULL,
    & hdpvr_device_release, & hdpvr_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct v4l2_ctrl_ops const hdpvr_ctrl_ops = {0, & hdpvr_try_ctrl, & hdpvr_s_ctrl};
int hdpvr_register_videodev(struct hdpvr_device *dev , struct device *parent , int devnum )
{
  struct v4l2_ctrl_handler *hdl ;
  bool ac3 ;
  int res ;
  struct lock_class_key _key ;
  {
  {
  hdl = & dev->hdl;
  ac3 = (dev->flags & 1U) != 0U;
  dev->cur_std = 63744ULL;
  dev->width = 720U;
  dev->height = 480U;
  dev->cur_dv_timings = hdpvr_dv_timings[0];
  v4l2_ctrl_handler_init_class(hdl, 11U, & _key, "hdpvr_video:1169:(hdl)->_lock");
  }
  if ((unsigned int )dev->fw_ver > 21U) {
    {
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963776U, 0, 255, 1U, 128);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963777U, 0, 255, 1U, 64);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963778U, 0, 255, 1U, 64);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963779U, 0, 30, 1U, 15);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963803U, 0, 255, 1U, 128);
    }
  } else {
    {
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963776U, 0, 255, 1U, 134);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963777U, 0, 255, 1U, 128);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963778U, 0, 255, 1U, 128);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963779U, 0, 255, 1U, 128);
    v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops, 9963803U, 0, 255, 1U, 128);
    }
  }
  {
  v4l2_ctrl_new_std_menu(hdl, & hdpvr_ctrl_ops, 10029312U, 1, 1, 1);
  v4l2_ctrl_new_std_menu(hdl, & hdpvr_ctrl_ops, 10029413U, (int )ac3 ? 4 : 3, 7, 3);
  v4l2_ctrl_new_std_menu(hdl, & hdpvr_ctrl_ops, 10029512U, 2, 3, 2);
  dev->__annonCompField88.video_mode = v4l2_ctrl_new_std_menu(hdl, & hdpvr_ctrl_ops,
                                                              10029518U, 1, 0, 1);
  dev->__annonCompField88.video_bitrate = v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops,
                                                            10029519U, 1000000, 13500000,
                                                            100000U, 6500000);
  dev->__annonCompField88.video_bitrate_peak = v4l2_ctrl_new_std(hdl, & hdpvr_ctrl_ops,
                                                                 10029520U, 1100000,
                                                                 20200000, 100000U,
                                                                 9000000);
  dev->v4l2_dev.ctrl_handler = hdl;
  }
  if (hdl->error != 0) {
    {
    res = hdl->error;
    printk("\v%s: Could not register controls\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  v4l2_ctrl_cluster(3U, & dev->__annonCompField88.video_mode);
  res = v4l2_ctrl_handler_setup(hdl);
  }
  if (res < 0) {
    {
    printk("\v%s: Could not setup controls\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  {
  dev->video_dev = video_device_alloc();
  }
  if ((unsigned long )dev->video_dev == (unsigned long )((struct video_device *)0)) {
    {
    printk("\v%s: video_device_alloc() failed\n", (char *)(& dev->v4l2_dev.name));
    res = -12;
    }
    goto error;
  } else {
  }
  {
  *(dev->video_dev) = hdpvr_video_template;
  strcpy((char *)(& (dev->video_dev)->name), "Hauppauge HD PVR");
  (dev->video_dev)->v4l2_dev = & dev->v4l2_dev;
  video_set_drvdata(dev->video_dev, (void *)dev);
  set_bit(2L, (unsigned long volatile *)(& (dev->video_dev)->flags));
  res = video_register_device(dev->video_dev, 0, devnum);
  }
  if (res < 0) {
    {
    printk("\v%s: video_device registration failed\n", (char *)(& dev->v4l2_dev.name));
    }
    goto error;
  } else {
  }
  return (0);
  error:
  {
  v4l2_ctrl_handler_free(hdl);
  }
  return (res);
}
}
void ldv_io_instance_callback_3_21(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_3_22(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_3_25(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_3_28(int (*arg0)(struct file * , void * , struct v4l2_dv_timings_cap * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings_cap *arg3 ) ;
void ldv_io_instance_callback_3_29(int (*arg0)(struct file * , void * , struct v4l2_encoder_cmd * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_encoder_cmd *arg3 ) ;
void ldv_io_instance_callback_3_30(int (*arg0)(struct file * , void * , struct v4l2_enum_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_enum_dv_timings *arg3 ) ;
void ldv_io_instance_callback_3_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_3_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_3_33(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 ) ;
void ldv_io_instance_callback_3_34(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 ) ;
void ldv_io_instance_callback_3_35(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 ) ;
void ldv_io_instance_callback_3_36(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_37(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_3_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_3_40(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_3_43(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 ) ;
void ldv_io_instance_callback_3_44(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 ) ;
void ldv_io_instance_callback_3_45(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_3_46(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_3_49(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 ) ;
void ldv_io_instance_callback_3_50(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 ) ;
void ldv_io_instance_callback_3_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_3_55(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_3_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_3_59(int (*arg0)(struct file * , void * , struct v4l2_encoder_cmd * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_encoder_cmd *arg3 ) ;
void ldv_io_instance_callback_3_60(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_3_61(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
int ldv_io_instance_probe_3_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_3_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void (*ldv_3_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_3_callback_vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
int (*ldv_3_callback_vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
int (*ldv_3_callback_vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
int (*ldv_3_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_3_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_3_callback_vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
int (*ldv_3_callback_vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
int (*ldv_3_callback_vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
int (*ldv_3_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_3_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_3_callback_vidioc_log_status)(struct file * , void * ) ;
int (*ldv_3_callback_vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
int (*ldv_3_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_3_callback_vidioc_querystd)(struct file * , void * , unsigned long long * ) ;
int (*ldv_3_callback_vidioc_s_audio)(struct file * , void * , struct v4l2_audio * ) ;
int (*ldv_3_callback_vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
int (*ldv_3_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_3_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_3_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_3_callback_vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
int (*ldv_3_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_3_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct v4l2_file_operations *ldv_3_container_v4l2_file_operations ;
struct video_device *ldv_3_resource_struct_video_device ;
int (*ldv_0_callback_s_ctrl)(struct v4l2_ctrl * ) = & hdpvr_s_ctrl;
int (*ldv_0_callback_try_ctrl)(struct v4l2_ctrl * ) = & hdpvr_try_ctrl;
void (*ldv_3_callback_func_1_ptr)(struct video_device * ) = & hdpvr_device_release;
unsigned int (*ldv_3_callback_poll)(struct file * , struct poll_table_struct * ) = & hdpvr_poll;
long (*ldv_3_callback_read)(struct file * , char * , unsigned long , long long * ) = & hdpvr_read;
long (*ldv_3_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_3_callback_vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) = & vidioc_dv_timings_cap;
int (*ldv_3_callback_vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) = & vidioc_encoder_cmd;
int (*ldv_3_callback_vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) = & vidioc_enum_dv_timings;
int (*ldv_3_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_3_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & vidioc_enum_input;
int (*ldv_3_callback_vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) = & vidioc_enumaudio;
int (*ldv_3_callback_vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) = & vidioc_g_audio;
int (*ldv_3_callback_vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) = & vidioc_g_dv_timings;
int (*ldv_3_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_3_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & vidioc_g_input;
int (*ldv_3_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & vidioc_g_std;
int (*ldv_3_callback_vidioc_log_status)(struct file * , void * ) = & v4l2_ctrl_log_status;
int (*ldv_3_callback_vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) = & vidioc_query_dv_timings;
int (*ldv_3_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap;
int (*ldv_3_callback_vidioc_querystd)(struct file * , void * , unsigned long long * ) = & vidioc_querystd;
int (*ldv_3_callback_vidioc_s_audio)(struct file * , void * , struct v4l2_audio * ) = (int (*)(struct file * ,
            void * , struct v4l2_audio * ))(& vidioc_s_audio);
int (*ldv_3_callback_vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) = & vidioc_s_dv_timings;
int (*ldv_3_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_3_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & vidioc_s_input;
int (*ldv_3_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & vidioc_s_std;
int (*ldv_3_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_3_callback_vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) = & vidioc_try_encoder_cmd;
int (*ldv_3_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_3_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  hdpvr_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  hdpvr_try_ctrl(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_21(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  hdpvr_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_22(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  hdpvr_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_3_25(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_28(int (*arg0)(struct file * , void * , struct v4l2_dv_timings_cap * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings_cap *arg3 )
{
  {
  {
  vidioc_dv_timings_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_29(int (*arg0)(struct file * , void * , struct v4l2_encoder_cmd * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_encoder_cmd *arg3 )
{
  {
  {
  vidioc_encoder_cmd(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_30(int (*arg0)(struct file * , void * , struct v4l2_enum_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_enum_dv_timings *arg3 )
{
  {
  {
  vidioc_enum_dv_timings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_33(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 )
{
  {
  {
  vidioc_enumaudio(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_34(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 )
{
  {
  {
  vidioc_g_audio(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_35(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 )
{
  {
  {
  vidioc_g_dv_timings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_36(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_37(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  hdpvr_device_release(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_40(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_43(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 )
{
  {
  {
  v4l2_ctrl_log_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_44(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 )
{
  {
  {
  vidioc_query_dv_timings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_45(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_46(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_querystd(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_49(int (*arg0)(struct file * , void * , struct v4l2_audio * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_audio *arg3 )
{
  {
  {
  vidioc_s_audio(arg1, arg2, (struct v4l2_audio const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_50(int (*arg0)(struct file * , void * , struct v4l2_dv_timings * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dv_timings *arg3 )
{
  {
  {
  vidioc_s_dv_timings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_55(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_59(int (*arg0)(struct file * , void * , struct v4l2_encoder_cmd * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_encoder_cmd *arg3 )
{
  {
  {
  vidioc_try_encoder_cmd(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_60(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_61(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
int ldv_io_instance_probe_3_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = hdpvr_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_3_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  hdpvr_release(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_18(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_19(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val ) ;
extern void *memcpy(void * , void const * , size_t ) ;
static void *ldv_dev_get_drvdata_19(struct device const *dev ) ;
static int ldv_dev_set_drvdata_20(struct device *dev , void *data ) ;
extern struct i2c_client *i2c_new_device(struct i2c_adapter * , struct i2c_board_info const * ) ;
__inline static void *i2c_get_adapdata(struct i2c_adapter const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_19(& dev->dev);
  }
  return (tmp);
}
}
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_20(& dev->dev, data);
  }
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
struct i2c_client *hdpvr_register_ir_tx_i2c(struct hdpvr_device *dev )
{
  struct IR_i2c_init_data *init_data ;
  struct i2c_board_info hdpvr_ir_tx_i2c_board_info ;
  struct i2c_client *tmp ;
  {
  {
  init_data = & dev->ir_i2c_init_data;
  hdpvr_ir_tx_i2c_board_info.type[0] = 'i';
  hdpvr_ir_tx_i2c_board_info.type[1] = 'r';
  hdpvr_ir_tx_i2c_board_info.type[2] = '_';
  hdpvr_ir_tx_i2c_board_info.type[3] = 't';
  hdpvr_ir_tx_i2c_board_info.type[4] = 'x';
  hdpvr_ir_tx_i2c_board_info.type[5] = '_';
  hdpvr_ir_tx_i2c_board_info.type[6] = 'z';
  hdpvr_ir_tx_i2c_board_info.type[7] = '8';
  hdpvr_ir_tx_i2c_board_info.type[8] = 'f';
  hdpvr_ir_tx_i2c_board_info.type[9] = '0';
  hdpvr_ir_tx_i2c_board_info.type[10] = '8';
  hdpvr_ir_tx_i2c_board_info.type[11] = '1';
  hdpvr_ir_tx_i2c_board_info.type[12] = '1';
  hdpvr_ir_tx_i2c_board_info.type[13] = '_';
  hdpvr_ir_tx_i2c_board_info.type[14] = 'h';
  hdpvr_ir_tx_i2c_board_info.type[15] = 'd';
  hdpvr_ir_tx_i2c_board_info.type[16] = 'p';
  hdpvr_ir_tx_i2c_board_info.type[17] = 'v';
  hdpvr_ir_tx_i2c_board_info.type[18] = 'r';
  hdpvr_ir_tx_i2c_board_info.type[19] = '\000';
  hdpvr_ir_tx_i2c_board_info.flags = (unsigned short)0;
  hdpvr_ir_tx_i2c_board_info.addr = 112U;
  hdpvr_ir_tx_i2c_board_info.platform_data = 0;
  hdpvr_ir_tx_i2c_board_info.archdata = 0;
  hdpvr_ir_tx_i2c_board_info.of_node = 0;
  hdpvr_ir_tx_i2c_board_info.acpi_node.companion = 0;
  hdpvr_ir_tx_i2c_board_info.irq = 0;
  init_data->name = "HD-PVR";
  hdpvr_ir_tx_i2c_board_info.platform_data = (void *)init_data;
  tmp = i2c_new_device(& dev->i2c_adapter, (struct i2c_board_info const *)(& hdpvr_ir_tx_i2c_board_info));
  }
  return (tmp);
}
}
struct i2c_client *hdpvr_register_ir_rx_i2c(struct hdpvr_device *dev )
{
  struct IR_i2c_init_data *init_data ;
  struct i2c_board_info hdpvr_ir_rx_i2c_board_info ;
  struct i2c_client *tmp ;
  {
  {
  init_data = & dev->ir_i2c_init_data;
  hdpvr_ir_rx_i2c_board_info.type[0] = 'i';
  hdpvr_ir_rx_i2c_board_info.type[1] = 'r';
  hdpvr_ir_rx_i2c_board_info.type[2] = '_';
  hdpvr_ir_rx_i2c_board_info.type[3] = 'r';
  hdpvr_ir_rx_i2c_board_info.type[4] = 'x';
  hdpvr_ir_rx_i2c_board_info.type[5] = '_';
  hdpvr_ir_rx_i2c_board_info.type[6] = 'z';
  hdpvr_ir_rx_i2c_board_info.type[7] = '8';
  hdpvr_ir_rx_i2c_board_info.type[8] = 'f';
  hdpvr_ir_rx_i2c_board_info.type[9] = '0';
  hdpvr_ir_rx_i2c_board_info.type[10] = '8';
  hdpvr_ir_rx_i2c_board_info.type[11] = '1';
  hdpvr_ir_rx_i2c_board_info.type[12] = '1';
  hdpvr_ir_rx_i2c_board_info.type[13] = '_';
  hdpvr_ir_rx_i2c_board_info.type[14] = 'h';
  hdpvr_ir_rx_i2c_board_info.type[15] = 'd';
  hdpvr_ir_rx_i2c_board_info.type[16] = 'p';
  hdpvr_ir_rx_i2c_board_info.type[17] = 'v';
  hdpvr_ir_rx_i2c_board_info.type[18] = 'r';
  hdpvr_ir_rx_i2c_board_info.type[19] = '\000';
  hdpvr_ir_rx_i2c_board_info.flags = (unsigned short)0;
  hdpvr_ir_rx_i2c_board_info.addr = 113U;
  hdpvr_ir_rx_i2c_board_info.platform_data = 0;
  hdpvr_ir_rx_i2c_board_info.archdata = 0;
  hdpvr_ir_rx_i2c_board_info.of_node = 0;
  hdpvr_ir_rx_i2c_board_info.acpi_node.companion = 0;
  hdpvr_ir_rx_i2c_board_info.irq = 0;
  init_data->ir_codes = (char *)"rc-hauppauge";
  init_data->internal_get_key_func = 5;
  init_data->type = 8ULL;
  init_data->name = "HD-PVR";
  init_data->polling_interval = 405U;
  hdpvr_ir_rx_i2c_board_info.platform_data = (void *)init_data;
  tmp = i2c_new_device(& dev->i2c_adapter, (struct i2c_board_info const *)(& hdpvr_ir_rx_i2c_board_info));
  }
  return (tmp);
}
}
static int hdpvr_i2c_read(struct hdpvr_device *dev , int bus , unsigned char addr ,
                          char *wdata , int wlen , char *data , int len )
{
  int ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned int )len > 128U || (unsigned int )wlen > 128U) {
    return (-22);
  } else {
  }
  if (wlen != 0) {
    {
    memcpy((void *)(& dev->i2c_buf), (void const *)wdata, (size_t )wlen);
    tmp = __create_pipe(dev->udev, 0U);
    ret = usb_control_msg(dev->udev, tmp | 2147483648U, 176, 56, (int )((__u16 )((int )((short )(bus << 8)) | (int )((short )addr))),
                          0, (void *)(& dev->i2c_buf), (int )((__u16 )wlen), 1000);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  {
  tmp___0 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___0 | 2147483776U, 177, 184, (int )((__u16 )((int )((short )(bus << 8)) | (int )((short )addr))),
                        0, (void *)(& dev->i2c_buf), (int )((__u16 )len), 1000);
  }
  if (ret == len) {
    {
    memcpy((void *)data, (void const *)(& dev->i2c_buf), (size_t )len);
    ret = 0;
    }
  } else
  if (ret >= 0) {
    ret = -5;
  } else {
  }
  return (ret);
}
}
static int hdpvr_i2c_write(struct hdpvr_device *dev , int bus , unsigned char addr ,
                           char *data , int len )
{
  int ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned int )len > 128U) {
    return (-22);
  } else {
  }
  {
  memcpy((void *)(& dev->i2c_buf), (void const *)data, (size_t )len);
  tmp = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp | 2147483648U, 176, 56, (int )((__u16 )((int )((short )(bus << 8)) | (int )((short )addr))),
                        0, (void *)(& dev->i2c_buf), (int )((__u16 )len), 1000);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp___0 = __create_pipe(dev->udev, 0U);
  ret = usb_control_msg(dev->udev, tmp___0 | 2147483776U, 208, 184, 0, 0, (void *)(& dev->i2c_buf),
                        2, 1000);
  }
  if (ret == 2 && (int )dev->i2c_buf[1] == len + -1) {
    ret = 0;
  } else
  if (ret >= 0) {
    ret = -5;
  } else {
  }
  return (ret);
}
}
static int hdpvr_transfer(struct i2c_adapter *i2c_adapter , struct i2c_msg *msgs ,
                          int num )
{
  struct hdpvr_device *dev ;
  void *tmp ;
  int retval ;
  int addr ;
  {
  {
  tmp = i2c_get_adapdata((struct i2c_adapter const *)i2c_adapter);
  dev = (struct hdpvr_device *)tmp;
  retval = 0;
  }
  if (num <= 0) {
    return (0);
  } else {
  }
  {
  mutex_lock_nested(& dev->i2c_mutex, 0U);
  addr = (int )msgs->addr << 1;
  }
  if (num == 1) {
    if ((int )msgs->flags & 1) {
      {
      retval = hdpvr_i2c_read(dev, 1, (int )((unsigned char )addr), (char *)0, 0,
                              (char *)msgs->buf, (int )msgs->len);
      }
    } else {
      {
      retval = hdpvr_i2c_write(dev, 1, (int )((unsigned char )addr), (char *)msgs->buf,
                               (int )msgs->len);
      }
    }
  } else
  if (num == 2) {
    if ((int )msgs->addr != (int )(msgs + 1UL)->addr) {
      {
      printk("\f%s: refusing 2-phase i2c xfer with conflicting target addresses\n",
             (char *)(& dev->v4l2_dev.name));
      retval = -22;
      }
      goto out;
    } else {
    }
    if ((int )msgs->flags & 1 || ((int )(msgs + 1UL)->flags & 1) == 0) {
      {
      printk("\f%s: refusing complex xfer with r0=%d, r1=%d\n", (char *)(& dev->v4l2_dev.name),
             (int )msgs->flags & 1, (int )(msgs + 1UL)->flags & 1);
      retval = -22;
      }
      goto out;
    } else {
    }
    {
    retval = hdpvr_i2c_read(dev, 1, (int )((unsigned char )addr), (char *)msgs->buf,
                            (int )msgs->len, (char *)(msgs + 1UL)->buf, (int )(msgs + 1UL)->len);
    }
  } else {
    {
    printk("\f%s: refusing %d-phase i2c xfer\n", (char *)(& dev->v4l2_dev.name), num);
    }
  }
  out:
  {
  mutex_unlock(& dev->i2c_mutex);
  }
  return (retval != 0 ? retval : num);
}
}
static u32 hdpvr_functionality(struct i2c_adapter *adapter )
{
  {
  return (251592713U);
}
}
static struct i2c_algorithm hdpvr_algo = {& hdpvr_transfer, 0, & hdpvr_functionality};
static struct i2c_adapter hdpvr_i2c_adapter_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& hdpvr_algo), 0, {{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
                                                                             {0},
                                                                             0, 0,
                                                                             0, 0,
                                                                             0, 0,
                                                                             0}, 0,
    0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0,
                                                                 0UL}}, {{0, 0}, 0UL,
                                                                         0, 0, 0UL,
                                                                         0, 0, 0,
                                                                         {(char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0},
                                                                         {0, {0, 0},
                                                                          0, 0, 0UL}},
                                              0, 0}, 0U, 0U, 0U, 0U, 0U}, 0, 0, {{0},
                                                                                 {{{{{0U}},
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
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
        0, 0, 0, {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                          0U, 0U,
                                                                          0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {0},
                  {0}, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL,
                  0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0,
        {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
        0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'H', 'a', 'u', 'p', 'p', 'a', 'g', 'e',
                                             ' ', 'H', 'D', ' ', 'P', 'V', 'R', ' ',
                                             'I', '2', 'C', '\000'}, {0U, {{{{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                           {0, 0}}},
    {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
    {0, 0}, 0};
static int hdpvr_activate_ir(struct hdpvr_device *dev )
{
  char buffer[2U] ;
  {
  {
  mutex_lock_nested(& dev->i2c_mutex, 0U);
  hdpvr_i2c_read(dev, 0, 84, (char *)0, 0, (char *)(& buffer), 1);
  buffer[0] = 0;
  buffer[1] = 8;
  hdpvr_i2c_write(dev, 1, 84, (char *)(& buffer), 2);
  buffer[1] = 24;
  hdpvr_i2c_write(dev, 1, 84, (char *)(& buffer), 2);
  mutex_unlock(& dev->i2c_mutex);
  }
  return (0);
}
}
int hdpvr_register_i2c_adapter(struct hdpvr_device *dev )
{
  int retval ;
  {
  {
  retval = -12;
  hdpvr_activate_ir(dev);
  dev->i2c_adapter = hdpvr_i2c_adapter_template;
  dev->i2c_adapter.dev.parent = & (dev->udev)->dev;
  i2c_set_adapdata(& dev->i2c_adapter, (void *)dev);
  retval = i2c_add_adapter(& dev->i2c_adapter);
  }
  return (retval);
}
}
void ldv_io_instance_callback_3_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 ) ;
void ldv_io_instance_callback_3_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 ) ;
unsigned int (*ldv_3_callback_functionality)(struct i2c_adapter * ) ;
int (*ldv_3_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
struct i2c_adapter *ldv_3_resource_struct_i2c_adapter ;
int ldv_statevar_3 ;
unsigned int (*ldv_3_callback_functionality)(struct i2c_adapter * ) = & hdpvr_functionality;
int (*ldv_3_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) = & hdpvr_transfer;
void ldv_io_instance_callback_3_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 )
{
  {
  {
  hdpvr_functionality(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  hdpvr_transfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_switch_automaton_state_3_14(void)
{
  {
  ldv_statevar_3 = 13;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  int tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_3 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_3 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_3 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_3 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_3 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_3 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_3 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_3 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_3 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_3 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_3 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_3 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_3 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_3 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_3 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_3 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_3 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_3 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_3 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_3 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_3 == 51) {
    goto case_51;
  } else {
  }
  if (ldv_statevar_3 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_3 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_3 == 58) {
    goto case_58;
  } else {
  }
  if (ldv_statevar_3 == 59) {
    goto case_59;
  } else {
  }
  if (ldv_statevar_3 == 60) {
    goto case_60;
  } else {
  }
  if (ldv_statevar_3 == 61) {
    goto case_61;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_33417;
  case_2:
  {
  ldv_io_instance_release_3_2(ldv_3_container_v4l2_file_operations->release, ldv_3_resource_file);
  ldv_statevar_3 = 1;
  }
  goto ldv_33417;
  case_3:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_33417;
  case_4:
  {
  ldv_io_instance_callback_3_4(ldv_3_callback_func_1_ptr, ldv_3_resource_struct_video_device);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_6:
  {
  ldv_free((void *)ldv_3_resource_file);
  ldv_free((void *)ldv_3_resource_struct_i2c_adapter);
  ldv_free((void *)ldv_3_resource_struct_i2c_msg_ptr);
  ldv_free((void *)ldv_3_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_audio_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_dv_timings_cap_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_dv_timings_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_encoder_cmd_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_enum_dv_timings_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_3_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_3_resource_struct_video_device);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  goto ldv_33417;
  case_8:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_33417;
  case_10:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_33417;
  case_11:
  {
  ldv_3_ret_default = ldv_io_instance_probe_3_11(ldv_3_container_v4l2_file_operations->open,
                                                 ldv_3_resource_file);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 8;
  } else {
    ldv_statevar_3 = 10;
  }
  goto ldv_33417;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_3_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1904UL);
  ldv_3_resource_struct_i2c_adapter = (struct i2c_adapter *)tmp___3;
  tmp___4 = ldv_xmalloc(16UL);
  ldv_3_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___4;
  tmp___5 = ldv_xmalloc(16UL);
  ldv_3_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___5;
  tmp___6 = ldv_xmalloc(52UL);
  ldv_3_resource_struct_v4l2_audio_ptr = (struct v4l2_audio *)tmp___6;
  tmp___7 = ldv_xmalloc(104UL);
  ldv_3_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___7;
  tmp___8 = ldv_xmalloc(144UL);
  ldv_3_resource_struct_v4l2_dv_timings_cap_ptr = (struct v4l2_dv_timings_cap *)tmp___8;
  tmp___9 = ldv_xmalloc(132UL);
  ldv_3_resource_struct_v4l2_dv_timings_ptr = (struct v4l2_dv_timings *)tmp___9;
  tmp___10 = ldv_xmalloc(40UL);
  ldv_3_resource_struct_v4l2_encoder_cmd_ptr = (struct v4l2_encoder_cmd *)tmp___10;
  tmp___11 = ldv_xmalloc(148UL);
  ldv_3_resource_struct_v4l2_enum_dv_timings_ptr = (struct v4l2_enum_dv_timings *)tmp___11;
  tmp___12 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___12;
  tmp___13 = ldv_xmalloc(176UL);
  ldv_3_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___13;
  tmp___14 = ldv_xmalloc(64UL);
  ldv_3_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___14;
  tmp___15 = ldv_xmalloc(208UL);
  ldv_3_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___15;
  tmp___16 = ldv_xmalloc(80UL);
  ldv_3_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___16;
  tmp___17 = ldv_xmalloc(1808UL);
  ldv_3_resource_struct_video_device = (struct video_device *)tmp___17;
  tmp___18 = ldv_undef_int();
  }
  if (tmp___18 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_33417;
  case_14: ;
  goto ldv_33417;
  case_17:
  {
  ldv_io_instance_callback_3_17(ldv_3_callback_functionality, ldv_3_resource_struct_i2c_adapter);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_19:
  {
  ldv_io_instance_callback_3_18(ldv_3_callback_master_xfer, ldv_3_resource_struct_i2c_adapter,
                                ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_18_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_21:
  {
  ldv_io_instance_callback_3_21(ldv_3_callback_poll, ldv_3_resource_file, ldv_3_resource_struct_poll_table_struct_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_23:
  {
  tmp___19 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_22_1_default = (char *)tmp___19;
  tmp___20 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_22_3_default = (long long *)tmp___20;
  ldv_io_instance_callback_3_22(ldv_3_callback_read, ldv_3_resource_file, ldv_3_ldv_param_22_1_default,
                                ldv_3_ldv_param_22_2_default, ldv_3_ldv_param_22_3_default);
  ldv_free((void *)ldv_3_ldv_param_22_1_default);
  ldv_free((void *)ldv_3_ldv_param_22_3_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_26:
  {
  ldv_io_instance_callback_3_25(ldv_3_callback_unlocked_ioctl, ldv_3_resource_file,
                                ldv_3_ldv_param_25_1_default, ldv_3_ldv_param_25_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_28:
  {
  ldv_io_instance_callback_3_28(ldv_3_callback_vidioc_dv_timings_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_dv_timings_cap_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_29:
  {
  ldv_io_instance_callback_3_29(ldv_3_callback_vidioc_encoder_cmd, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_encoder_cmd_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_30:
  {
  ldv_io_instance_callback_3_30(ldv_3_callback_vidioc_enum_dv_timings, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_enum_dv_timings_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_31:
  {
  ldv_io_instance_callback_3_31(ldv_3_callback_vidioc_enum_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_32:
  {
  ldv_io_instance_callback_3_32(ldv_3_callback_vidioc_enum_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_input_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_33:
  {
  ldv_io_instance_callback_3_33(ldv_3_callback_vidioc_enumaudio, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_audio_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_34:
  {
  ldv_io_instance_callback_3_34(ldv_3_callback_vidioc_g_audio, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_audio_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_35:
  {
  ldv_io_instance_callback_3_35(ldv_3_callback_vidioc_g_dv_timings, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_dv_timings_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_36:
  {
  ldv_io_instance_callback_3_36(ldv_3_callback_vidioc_g_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_38:
  {
  tmp___21 = ldv_xmalloc(4UL);
  ldv_3_ldv_param_37_2_default = (unsigned int *)tmp___21;
  ldv_io_instance_callback_3_37(ldv_3_callback_vidioc_g_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_37_2_default);
  ldv_free((void *)ldv_3_ldv_param_37_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_41:
  {
  tmp___22 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_40_2_default = (unsigned long long *)tmp___22;
  ldv_io_instance_callback_3_40(ldv_3_callback_vidioc_g_std, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_40_2_default);
  ldv_free((void *)ldv_3_ldv_param_40_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_43:
  {
  ldv_io_instance_callback_3_43(ldv_3_callback_vidioc_log_status, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_44:
  {
  ldv_io_instance_callback_3_44(ldv_3_callback_vidioc_query_dv_timings, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_dv_timings_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_45:
  {
  ldv_io_instance_callback_3_45(ldv_3_callback_vidioc_querycap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_capability_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_47:
  {
  tmp___23 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_46_2_default = (unsigned long long *)tmp___23;
  ldv_io_instance_callback_3_46(ldv_3_callback_vidioc_querystd, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_46_2_default);
  ldv_free((void *)ldv_3_ldv_param_46_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_49:
  {
  ldv_io_instance_callback_3_49(ldv_3_callback_vidioc_s_audio, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_audio_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_50:
  {
  ldv_io_instance_callback_3_50(ldv_3_callback_vidioc_s_dv_timings, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_dv_timings_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_51:
  {
  ldv_io_instance_callback_3_51(ldv_3_callback_vidioc_s_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_53:
  {
  ldv_io_instance_callback_3_52(ldv_3_callback_vidioc_s_input, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_52_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_56:
  {
  ldv_io_instance_callback_3_55(ldv_3_callback_vidioc_s_std, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_ldv_param_55_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_58:
  {
  ldv_io_instance_callback_3_58(ldv_3_callback_vidioc_subscribe_event, ldv_3_resource_struct_v4l2_fh_ptr,
                                ldv_3_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_59:
  {
  ldv_io_instance_callback_3_59(ldv_3_callback_vidioc_try_encoder_cmd, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_encoder_cmd_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_60:
  {
  ldv_io_instance_callback_3_60(ldv_3_callback_vidioc_try_fmt_vid_cap, ldv_3_resource_file,
                                (void *)ldv_3_resource_struct_i2c_msg_ptr, ldv_3_resource_struct_v4l2_format_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  case_61:
  {
  ldv_io_instance_callback_3_61(ldv_3_callback_vidioc_unsubscribe_event, ldv_3_resource_struct_v4l2_fh_ptr,
                                ldv_3_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_33417;
  switch_default: ;
  switch_break: ;
  }
  ldv_33417: ;
  return;
}
}
static void *ldv_dev_get_drvdata_19(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_20(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
void ldv_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS != 0 ? LDV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_USB_DEV_REF_COUNTS > 1) {
      LDV_USB_DEV_REF_COUNTS = LDV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
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
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "linux-3.14_complex_emg_linux-usb-dev_drivers-media-usb-hdpvr-hdpvr.cil.c", 12329, __extension__ __PRETTY_FUNCTION__); })); }
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    {reach_error();}
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    {reach_error();}
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    {reach_error();}
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    {reach_error();}
    }
  } else {
  }
  return;
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
void __copy_to_user_overflow() {
  return;
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
struct i2c_client *i2c_new_device(struct i2c_adapter *arg0, const struct i2c_board_info *arg1) {
  return ldv_malloc(sizeof(struct i2c_client));
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_usb_register_driver() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
void schedule() {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_bulk_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
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
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_activate(struct v4l2_ctrl *arg0, bool arg1) {
  return;
}
void v4l2_ctrl_cluster(unsigned int arg0, struct v4l2_ctrl **arg1) {
  return;
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std_menu(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
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
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool v4l2_match_dv_timings(const struct v4l2_dv_timings *arg0, const struct v4l2_dv_timings *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_bool();
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}