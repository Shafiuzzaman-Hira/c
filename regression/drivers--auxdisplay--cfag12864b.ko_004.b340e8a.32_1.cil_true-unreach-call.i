extern void abort(void);
extern void __assert_fail(const char *, const char *, unsigned int, const char *) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void reach_error() { __assert_fail("0", "drivers--auxdisplay--cfag12864b.ko_004.b340e8a.32_1.cil_true-unreach-call.i", 3, "reach_error"); }

/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is false */

typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef int __kernel_clockid_t;
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef __kernel_mode_t mode_t;
typedef __kernel_clockid_t clockid_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned int gfp_t;
struct task_struct;
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
typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
struct module;
struct bug_entry {
   unsigned long bug_addr ;
   char const   *file ;
   unsigned short line ;
   unsigned short flags ;
};
struct page;
struct raw_spinlock;
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const   *name ;
   void (*handler)(int  , struct pt_regs * ) ;
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
struct kmem_cache;
struct __anonstruct_mm_segment_t_23 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_23 mm_segment_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct____missing_field_name_25 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_26 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
};
struct __anonstruct_nanosleep_27 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField7 ;
   struct __anonstruct_futex_26 futex ;
   struct __anonstruct_nanosleep_27 nanosleep ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   unsigned long flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
};
struct raw_spinlock {
   unsigned int slock ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct lock_class_key {

};
struct __anonstruct_spinlock_t_29 {
   raw_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_spinlock_t_29 spinlock_t;
struct __anonstruct_atomic_t_31 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_31 atomic_t;
struct __anonstruct_atomic64_t_32 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_32 atomic64_t;
typedef atomic64_t atomic_long_t;
struct timespec {
   time_t tv_sec ;
   long tv_nsec ;
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
struct kobject;
struct attribute {
   char const   *name ;
   struct module *owner ;
   mode_t mode ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const   * , size_t  ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct sysfs_dirent;
struct kobject {
   char const   *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops *sysfs_ops ;
   struct attribute **default_attrs ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (*filter)(struct kset *kset , struct kobject *kobj ) ;
   char const   *(*name)(struct kset *kset , struct kobject *kobj ) ;
   int (*uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops *uevent_ops ;
};
struct kernel_param;
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_38 {
   void *arg ;
   struct kparam_string  const  *str ;
   struct kparam_array  const  *arr ;
};
struct kernel_param {
   char const   *name ;
   unsigned int perm ;
   int (*set)(char const   *val , struct kernel_param *kp ) ;
   int (*get)(char *buffer , struct kernel_param *kp ) ;
   union __anonunion____missing_field_name_38 __annonCompField9 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   int (*set)(char const   *val , struct kernel_param *kp ) ;
   int (*get)(char *buffer , struct kernel_param *kp ) ;
   unsigned int elemsize ;
   void *elem ;
};
struct marker;
typedef void marker_probe_func(void *probe_private , void *call_private , char const   *fmt ,
                               va_list *args );
struct marker_probe_closure {
   marker_probe_func *func ;
   void *probe_private ;
};
struct marker {
   char const   *name ;
   char const   *format ;
   char state ;
   char ptype ;
   void (*call)(struct marker  const  *mdata , void *call_private  , ...) ;
   struct marker_probe_closure single ;
   struct marker_probe_closure *multi ;
} __attribute__((__aligned__(8))) ;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const   *name ;
   void *magic ;
};
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   void (*function)(unsigned long  ) ;
   unsigned long data ;
   struct tvec_base *base ;
   void *start_site ;
   char start_comm[16] ;
   int start_pid ;
};
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
enum stat_item {
    ALLOC_FASTPATH = 0,
    ALLOC_SLOWPATH = 1,
    FREE_FASTPATH = 2,
    FREE_SLOWPATH = 3,
    FREE_FROZEN = 4,
    FREE_ADD_PARTIAL = 5,
    FREE_REMOVE_PARTIAL = 6,
    ALLOC_FROM_PARTIAL = 7,
    ALLOC_SLAB = 8,
    ALLOC_REFILL = 9,
    FREE_SLAB = 10,
    CPUSLAB_FLUSH = 11,
    DEACTIVATE_FULL = 12,
    DEACTIVATE_EMPTY = 13,
    DEACTIVATE_TO_HEAD = 14,
    DEACTIVATE_TO_TAIL = 15,
    DEACTIVATE_REMOTE_FREES = 16,
    ORDER_FALLBACK = 17,
    NR_SLUB_STAT_ITEMS = 18
} ;
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int offset ;
   unsigned int objsize ;
   unsigned int stat[NR_SLUB_STAT_ITEMS] ;
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
   unsigned long flags ;
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_node local_node ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(struct kmem_cache * , void * ) ;
   int inuse ;
   int align ;
   char const   *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 9] ;
   struct kmem_cache_cpu *cpu_slab[4096] ;
};
struct __anonstruct_local_t_93 {
   atomic_long_t a ;
};
typedef struct __anonstruct_local_t_93 local_t;
struct mod_arch_specific {

};
struct kernel_symbol {
   unsigned long value ;
   char const   *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const   * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const   * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
};
struct exception_table_entry;
struct module_ref {
   local_t count ;
} __attribute__((__aligned__((1) <<  (7) ))) ;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_param_attrs;
struct module_sect_attrs;
struct module_notes_attrs;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_param_attrs *param_attrs ;
   struct module_attribute *modinfo_attrs ;
   char const   *version ;
   char const   *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol  const  *syms ;
   unsigned long const   *crcs ;
   unsigned int num_syms ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol  const  *gpl_syms ;
   unsigned long const   *gpl_crcs ;
   struct kernel_symbol  const  *unused_syms ;
   unsigned long const   *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol  const  *unused_gpl_syms ;
   unsigned long const   *unused_gpl_crcs ;
   struct kernel_symbol  const  *gpl_future_syms ;
   unsigned long const   *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry  const  *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   void *unwind_info ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   unsigned int num_symtab ;
   char *strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   void *percpu ;
   char *args ;
   struct marker *markers ;
   unsigned int num_markers ;
   struct list_head modules_which_use_me ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref ref[4096] ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
void *memcpy(void * , void const   * , unsigned long  ) ;
__inline static void clear_bit(int nr , unsigned long volatile   *addr ) 
{ 


  {
  __asm__  volatile   (".section .smp_locks,\"a\"\n"
                       " "
                       ".balign 8"
                       " "
                       "\n"
                       " "
                       ".quad"
                       " "
                       "661f\n"
                       ".previous\n"
                       "661:\n\tlock; "
                       "btr %1,%0": "+m" (*((long volatile   *)addr)): "Ir" (nr));
  return;
}
}
extern int ( /* format attribute */  printk)(char const   *fmt  , ...) ;
extern void *memcpy(void *to , void const   *from , size_t len ) ;
extern int memcmp(void const   *cs , void const   *ct , unsigned long count ) ;
extern int param_set_uint(char const   *val , struct kernel_param *kp ) ;
extern int param_get_uint(char *buffer , struct kernel_param *kp ) ;
void mutex_lock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
extern unsigned long get_zeroed_page(gfp_t gfp_mask ) ;
extern void free_pages(unsigned long addr , unsigned int order ) ;
extern void kfree(void const   * ) ;
extern struct tvec_base boot_tvec_bases ;
extern int del_timer_sync(struct timer_list *timer ) ;
extern struct workqueue_struct *__create_workqueue_key(char const   *name , int singlethread ,
                                                       int freezeable , struct lock_class_key *key ,
                                                       char const   *lock_name ) ;
extern void destroy_workqueue(struct workqueue_struct *wq ) ;
extern int queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *work ,
                              unsigned long delay ) ;
extern void flush_workqueue(struct workqueue_struct *wq ) ;
__inline static int cancel_delayed_work(struct delayed_work *work ) 
{ 
  int ret ;

  {
  ret = del_timer_sync(& work->timer);
  if (ret) {
    clear_bit(0, (unsigned long *)(& work->work.data));
  } else {

  }
  return (ret);
}
}
extern void *__kmalloc(size_t size , gfp_t flags ) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) 
{ 
  void *tmp___2 ;

  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
int init_module(void) ;
void cleanup_module(void) ;
extern void ks0108_writedata(unsigned char byte ) ;
extern void ks0108_writecontrol(unsigned char byte ) ;
extern void ks0108_displaystate(unsigned char state ) ;
extern void ks0108_startline(unsigned char startline ) ;
extern void ks0108_address(unsigned char address ) ;
extern void ks0108_page(unsigned char page ) ;
extern unsigned char ks0108_isinited(void) ;
unsigned char *cfag12864b_buffer  ;
unsigned int cfag12864b_getrate(void) ;
unsigned char cfag12864b_enable(void) ;
void cfag12864b_disable(void) ;
unsigned char cfag12864b_isenabled(void) ;
unsigned char cfag12864b_isinited(void) ;
static unsigned int cfag12864b_rate  =    20;
static char const   __param_str_cfag12864b_rate[16]  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'r', 
        'a',      't',      'e',      '\000'};
static struct kernel_param  const  __param_cfag12864b_rate  __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *))))  =    {__param_str_cfag12864b_rate, (256 | 32) | 4, & param_set_uint, & param_get_uint,
    {& cfag12864b_rate}};
static char const   __mod_cfag12864b_ratetype50[30]  __attribute__((__used__, __unused__,
__section__(".modinfo")))  = 
  {      'p',      'a',      'r',      'm', 
        't',      'y',      'p',      'e', 
        '=',      'c',      'f',      'a', 
        'g',      '1',      '2',      '8', 
        '6',      '4',      'b',      '_', 
        'r',      'a',      't',      'e', 
        ':',      'u',      'i',      'n', 
        't',      '\000'};
static char const   __mod_cfag12864b_rate52[43]  __attribute__((__used__, __unused__,
__section__(".modinfo")))  = 
  {      'p',      'a',      'r',      'm', 
        '=',      'c',      'f',      'a', 
        'g',      '1',      '2',      '8', 
        '6',      '4',      'b',      '_', 
        'r',      'a',      't',      'e', 
        ':',      'R',      'e',      'f', 
        'r',      'e',      's',      'h', 
        ' ',      'r',      'a',      't', 
        'e',      ' ',      '(',      'h', 
        'e',      'r',      't',      'z', 
        's',      ')',      '\000'};
unsigned int cfag12864b_getrate(void) 
{ 


  {
  return (cfag12864b_rate);
}
}
static unsigned char cfag12864b_state  ;
static void cfag12864b_set(void) 
{ 


  {
  ks0108_writecontrol(cfag12864b_state);
  return;
}
}
static void cfag12864b_setbit(unsigned char state , unsigned char n ) 
{ 


  {
  if (state) {
    cfag12864b_state = (int )cfag12864b_state | (1 << (int )n);
  } else {
    cfag12864b_state = (int )cfag12864b_state & ~ (1 << (int )n);
  }
  return;
}
}
static void cfag12864b_e(unsigned char state ) 
{ 


  {
  cfag12864b_setbit(state, 0);
  cfag12864b_set();
  return;
}
}
static void cfag12864b_cs1(unsigned char state ) 
{ 


  {
  cfag12864b_setbit(state, 2);
  return;
}
}
static void cfag12864b_cs2(unsigned char state ) 
{ 


  {
  cfag12864b_setbit(state, 1);
  return;
}
}
static void cfag12864b_di(unsigned char state ) 
{ 


  {
  cfag12864b_setbit(state, 3);
  return;
}
}
static void cfag12864b_setcontrollers(unsigned char first , unsigned char second ) 
{ 


  {
  if (first) {
    cfag12864b_cs1(0);
  } else {
    cfag12864b_cs1(1);
  }
  if (second) {
    cfag12864b_cs2(0);
  } else {
    cfag12864b_cs2(1);
  }
  return;
}
}
static void cfag12864b_controller(unsigned char which ) 
{ 


  {
  if ((int )which == 0) {
    cfag12864b_setcontrollers(1, 0);
  } else
  if ((int )which == 1) {
    cfag12864b_setcontrollers(0, 1);
  } else {

  }
  return;
}
}
static void cfag12864b_displaystate(unsigned char state ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_displaystate(state);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_address(unsigned char address ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_address(address);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_page(unsigned char page ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_page(page);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_startline(unsigned char startline ) 
{ 


  {
  cfag12864b_di(0);
  cfag12864b_e(1);
  ks0108_startline(startline);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_writebyte(unsigned char byte ) 
{ 


  {
  cfag12864b_di(1);
  cfag12864b_e(1);
  ks0108_writedata(byte);
  cfag12864b_e(0);
  return;
}
}
static void cfag12864b_nop(void) 
{ 


  {
  cfag12864b_startline(0);
  return;
}
}
static void cfag12864b_on(void) 
{ 


  {
  cfag12864b_setcontrollers(1, 1);
  cfag12864b_displaystate(1);
  return;
}
}
static void cfag12864b_off(void) 
{ 


  {
  cfag12864b_setcontrollers(1, 1);
  cfag12864b_displaystate(0);
  return;
}
}
static void cfag12864b_clear(void) 
{ 
  unsigned char i ;
  unsigned char j ;

  {
  cfag12864b_setcontrollers(1, 1);
  i = 0;
  while (1) {
    if ((int )i < 8) {

    } else {
      break;
    }
    cfag12864b_page(i);
    cfag12864b_address(0);
    j = 0;
    while (1) {
      if ((int )j < 64) {

      } else {
        break;
      }
      cfag12864b_writebyte(0);
      j = (unsigned char )((int )j + 1);
    }
    i = (unsigned char )((int )i + 1);
  }
  return;
}
}
static unsigned char *cfag12864b_cache  ;
static struct mutex cfag12864b_mutex  =    {{1}, {{0}, 3735899821U, -1, (void *)-1L}, {& cfag12864b_mutex.wait_list, & cfag12864b_mutex.wait_list},
    0, 0, & cfag12864b_mutex};
static unsigned char cfag12864b_updating  ;
static void cfag12864b_update(struct work_struct *work ) ;
static struct workqueue_struct *cfag12864b_workqueue  ;
static struct delayed_work cfag12864b_work  =    {{{0}, {& cfag12864b_work.work.entry, & cfag12864b_work.work.entry}, & cfag12864b_update},
    {{0, (void *)1953723489}, 0, (void *)0, 0, & boot_tvec_bases, 0, {(char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0},
     0}};
static void cfag12864b_queue(void) 
{ 


  {
  queue_delayed_work(cfag12864b_workqueue, & cfag12864b_work, 250U / cfag12864b_rate);
  return;
}
}
unsigned char cfag12864b_enable(void) 
{ 
  unsigned char ret ;

  {
  mutex_lock(& cfag12864b_mutex);
  if (! cfag12864b_updating) {
    cfag12864b_updating = 1;
    cfag12864b_queue();
    ret = 0;
  } else {
    ret = 1;
  }
  mutex_unlock(& cfag12864b_mutex);
  return (ret);
}
}
void cfag12864b_disable(void) 
{ 


  {
  mutex_lock(& cfag12864b_mutex);
  if (cfag12864b_updating) {
    cfag12864b_updating = 0;
    cancel_delayed_work(& cfag12864b_work);
    flush_workqueue(cfag12864b_workqueue);
  } else {

  }
  mutex_unlock(& cfag12864b_mutex);
  return;
}
}
unsigned char cfag12864b_isenabled(void) 
{ 


  {
  return (cfag12864b_updating);
}
}
static void cfag12864b_update(struct work_struct *work ) 
{ 
  unsigned char c ;
  unsigned short i ;
  unsigned short j ;
  unsigned short k ;
  unsigned short b ;
  size_t __len ;
  void *__ret ;
  int tmp ;

  {
  tmp = memcmp(cfag12864b_cache, cfag12864b_buffer, (2 * 8) * 64);
  if (tmp) {
    i = 0;
    while (1) {
      if ((int )i < 2) {

      } else {
        break;
      }
      cfag12864b_controller(i);
      cfag12864b_nop();
      j = 0;
      while (1) {
        if ((int )j < 8) {

        } else {
          break;
        }
        cfag12864b_page(j);
        cfag12864b_nop();
        cfag12864b_address(0);
        cfag12864b_nop();
        k = 0;
        while (1) {
          if ((int )k < 64) {

          } else {
            break;
          }
          c = 0;
          b = 0;
          while (1) {
            if ((int )b < 8) {

            } else {
              break;
            }
            if ((int )*(cfag12864b_buffer + ((((int )i * 64) / 8 + (int )k / 8) + (((int )j * 8 + (int )b) * 128) / 8)) & (1 << (int )k % 8)) {
              c = (int )c | (1 << (int )b);
            } else {

            }
            b = (unsigned short )((int )b + 1);
          }
          cfag12864b_writebyte(c);
          k = (unsigned short )((int )k + 1);
        }
        j = (unsigned short )((int )j + 1);
      }
      i = (unsigned short )((int )i + 1);
    }
    __len = (2 * 8) * 64;
    if (__len >= (size_t )64) {
      __ret = memcpy(cfag12864b_cache, cfag12864b_buffer, __len);
    } else {
      __ret = memcpy(cfag12864b_cache, cfag12864b_buffer, __len);
    }
  } else {

  }
  if (cfag12864b_updating) {
    cfag12864b_queue();
  } else {

  }
  return;
}
}
extern void *__crc_cfag12864b_buffer  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_buffer  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_buffer);
static char const   __kstrtab_cfag12864b_buffer[18]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'b', 
        'u',      'f',      'f',      'e', 
        'r',      '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_buffer  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_buffer), __kstrtab_cfag12864b_buffer};
extern void *__crc_cfag12864b_getrate  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_getrate  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_getrate);
static char const   __kstrtab_cfag12864b_getrate[19]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'g', 
        'e',      't',      'r',      'a', 
        't',      'e',      '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_getrate  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_getrate), __kstrtab_cfag12864b_getrate};
extern void *__crc_cfag12864b_enable  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_enable  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_enable);
static char const   __kstrtab_cfag12864b_enable[18]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'e', 
        'n',      'a',      'b',      'l', 
        'e',      '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_enable  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_enable), __kstrtab_cfag12864b_enable};
extern void *__crc_cfag12864b_disable  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_disable  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_disable);
static char const   __kstrtab_cfag12864b_disable[19]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'd', 
        'i',      's',      'a',      'b', 
        'l',      'e',      '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_disable  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_disable), __kstrtab_cfag12864b_disable};
extern void *__crc_cfag12864b_isenabled  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_isenabled  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_isenabled);
static char const   __kstrtab_cfag12864b_isenabled[21]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'i', 
        's',      'e',      'n',      'a', 
        'b',      'l',      'e',      'd', 
        '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_isenabled  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_isenabled), __kstrtab_cfag12864b_isenabled};
static unsigned char cfag12864b_inited  ;
unsigned char cfag12864b_isinited(void) 
{ 


  {
  return (cfag12864b_inited);
}
}
extern void *__crc_cfag12864b_isinited  __attribute__((__weak__)) ;
static unsigned long const   __kcrctab_cfag12864b_isinited  __attribute__((__used__,
__unused__, __section__("__kcrctab_gpl")))  =    (unsigned long )(& __crc_cfag12864b_isinited);
static char const   __kstrtab_cfag12864b_isinited[20]  __attribute__((__section__("__ksymtab_strings"),
__aligned__(1)))  = 
  {      'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      '_',      'i', 
        's',      'i',      'n',      'i', 
        't',      'e',      'd',      '\000'};
static struct kernel_symbol  const  __ksymtab_cfag12864b_isinited  __attribute__((__used__,
__unused__, __section__("__ksymtab_gpl")))  =    {(unsigned long )(& cfag12864b_isinited), __kstrtab_cfag12864b_isinited};
static int cfag12864b_init(void)  __attribute__((__section__(".init.text"))) ;
static int cfag12864b_init(void) 
{ 
  int ret ;
  unsigned char tmp ;
  unsigned long tmp___0 ;
  void *tmp___1 ;

  {
  ret = -22;
  tmp = ks0108_isinited();
  if (tmp) {

  } else {
    printk("<3>cfag12864b: ERROR: ks0108 is not initialized\n");
    goto none;
  }
  tmp___0 = get_zeroed_page((16U | 64U) | 128U);
  cfag12864b_buffer = (unsigned char *)tmp___0;
  if ((unsigned long )cfag12864b_buffer == (unsigned long )((void *)0)) {
    printk("<3>cfag12864b: ERROR: can\'t get a free page\n");
    ret = -12;
    goto none;
  } else {

  }
  tmp___1 = kmalloc(sizeof(unsigned char ) * (unsigned long )((2 * 8) * 64), (16U | 64U) | 128U);
  cfag12864b_cache = tmp___1;
  if ((unsigned long )cfag12864b_cache == (unsigned long )((void *)0)) {
    printk("<3>cfag12864b: ERROR: can\'t alloc cache buffer (%i bytes)\n", (2 * 8) * 64);
    ret = -12;
    goto bufferalloced;
  } else {

  }
  cfag12864b_workqueue = __create_workqueue_key("cfag12864b", 1, 0, (void *)0, (void *)0);
  if ((unsigned long )cfag12864b_workqueue == (unsigned long )((void *)0)) {
    goto cachealloced;
  } else {

  }
  cfag12864b_clear();
  cfag12864b_on();
  cfag12864b_inited = 1;
  return (0);
  cachealloced: 
  kfree(cfag12864b_cache);
  bufferalloced: 
  free_pages((unsigned long )cfag12864b_buffer, 0);
  none: 
  return (ret);
}
}
static void cfag12864b_exit(void)  __attribute__((__section__(".exit.text"))) ;
static void cfag12864b_exit(void) 
{ 


  {
  cfag12864b_disable();
  cfag12864b_off();
  destroy_workqueue(cfag12864b_workqueue);
  kfree(cfag12864b_cache);
  free_pages((unsigned long )cfag12864b_buffer, 0);
  return;
}
}
int init_module(void) 
{ 
  int tmp ;

  {
  tmp = cfag12864b_init();
  return (tmp);
}
}
void cleanup_module(void) 
{ 


  {
  cfag12864b_exit();
  return;
}
}
static char const   __mod_license392[15]  __attribute__((__used__, __unused__, __section__(".modinfo")))  = 
  {      'l',      'i',      'c',      'e', 
        'n',      's',      'e',      '=', 
        'G',      'P',      'L',      ' ', 
        'v',      '2',      '\000'};
static char const   __mod_author393[63]  __attribute__((__used__, __unused__, __section__(".modinfo")))  = 
  {      'a',      'u',      't',      'h', 
        'o',      'r',      '=',      'M', 
        'i',      'g',      'u',      'e', 
        'l',      ' ',      'O',      'j', 
        'e',      'd',      'a',      ' ', 
        'S',      'a',      'n',      'd', 
        'o',      'n',      'i',      's', 
        ' ',      '<',      'm',      'i', 
        'g',      'u',      'e',      'l', 
        '.',      'o',      'j',      'e', 
        'd',      'a',      '.',      's', 
        'a',      'n',      'd',      'o', 
        'n',      'i',      's',      '@', 
        'g',      'm',      'a',      'i', 
        'l',      '.',      'c',      'o', 
        'm',      '>',      '\000'};
static char const   __mod_description394[34]  __attribute__((__used__, __unused__,
__section__(".modinfo")))  = 
  {      'd',      'e',      's',      'c', 
        'r',      'i',      'p',      't', 
        'i',      'o',      'n',      '=', 
        'c',      'f',      'a',      'g', 
        '1',      '2',      '8',      '6', 
        '4',      'b',      ' ',      'L', 
        'C',      'D',      ' ',      'd', 
        'r',      'i',      'v',      'e', 
        'r',      '\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int nondet_int(void) ;
int LDV_IN_INTERRUPT  ;
int main(void) 
{ 
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = cfag12864b_init();
  if (tmp) {
    goto ldv_final;
  } else {

  }
  while (1) {
    tmp___1 = nondet_int();
    if (tmp___1) {

    } else {
      break;
    }
    tmp___0 = nondet_int();
    switch (tmp___0) {
    default: 
    break;
    }
  }
  ldv_handler_precall();
  cfag12864b_exit();
  ldv_final: 
  ldv_check_final_state();
  return 0;
}
}
long ldv__builtin_expect(long exp , long c ) ;
int ( __attribute__((__warn_unused_result__)) mutex_lock_interruptible)(struct mutex *lock ) ;
int ( __attribute__((__warn_unused_result__)) mutex_lock_killable)(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
__inline static void ldv_error(void) 
{ 


  {
  LDV_ERROR: {reach_error();abort();}
}
}
extern int ldv_undef_int(void) ;
long ldv__builtin_expect(long exp , long c ) 
{ 


  {
  return (exp);
}
}
int ldv_mutex  =    1;
int ( __attribute__((__warn_unused_result__)) mutex_lock_interruptible)(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ( __attribute__((__warn_unused_result__)) mutex_lock_killable)(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) 
{ 
  int atomic_value_after_dec ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {

  }
  return (0);
}
}
void mutex_lock(struct mutex *lock ) 
{ 


  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock ) 
{ 
  int nondetermined ;

  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  nondetermined = ldv_undef_int();
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock ) 
{ 


  {
  if (ldv_mutex == 2) {

  } else {
    ldv_error();
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void) 
{ 


  {
  if (ldv_mutex == 1) {

  } else {
    ldv_error();
  }
  return;
}
}