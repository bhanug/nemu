HXCOMM Use DEFHEADING() to define headings in both help text and texi
HXCOMM Text between STEXI and ETEXI are copied to texi version and
HXCOMM discarded from C version
HXCOMM DEF(command, args, callback, arg_string, help) is used to construct
HXCOMM monitor info commands
HXCOMM HXCOMM can be used for comments, discarded from both texi and C

STEXI
@table @option
@item info @var{subcommand}
@findex info
Show various information about the system state.
@table @option
ETEXI

    {
        .name       = "version",
        .args_type  = "",
        .params     = "",
        .help       = "show the version of QEMU",
        .cmd        = hmp_info_version,
    },

STEXI
@item info version
@findex info version
Show the version of QEMU.
ETEXI

    {
        .name       = "network",
        .args_type  = "",
        .params     = "",
        .help       = "show the network state",
        .cmd        = hmp_info_network,
    },

STEXI
@item info network
@findex info network
Show the network state.
ETEXI

    {
        .name       = "chardev",
        .args_type  = "",
        .params     = "",
        .help       = "show the character devices",
        .cmd        = hmp_info_chardev,
    },

STEXI
@item info chardev
@findex info chardev
Show the character devices.
ETEXI

    {
        .name       = "block",
        .args_type  = "nodes:-n,verbose:-v,device:B?",
        .params     = "[-n] [-v] [device]",
        .help       = "show info of one block device or all block devices "
                      "(-n: show named nodes; -v: show details)",
        .cmd        = hmp_info_block,
    },

STEXI
@item info block
@findex info block
Show info of one block device or all block devices.
ETEXI

    {
        .name       = "blockstats",
        .args_type  = "",
        .params     = "",
        .help       = "show block device statistics",
        .cmd        = hmp_info_blockstats,
    },

STEXI
@item info blockstats
@findex info blockstats
Show block device statistics.
ETEXI

    {
        .name       = "block-jobs",
        .args_type  = "",
        .params     = "",
        .help       = "show progress of ongoing block device operations",
        .cmd        = hmp_info_block_jobs,
    },

STEXI
@item info block-jobs
@findex info block-jobs
Show progress of ongoing block device operations.
ETEXI

    {
        .name       = "registers",
        .args_type  = "cpustate_all:-a",
        .params     = "[-a]",
        .help       = "show the cpu registers (-a: all - show register info for all cpus)",
        .cmd        = hmp_info_registers,
    },

STEXI
@item info registers
@findex info registers
Show the cpu registers.
ETEXI

#if defined(TARGET_I386)
    {
        .name       = "lapic",
        .args_type  = "apic-id:i?",
        .params     = "[apic-id]",
        .help       = "show local apic state (apic-id: local apic to read, default is which of current CPU)",

        .cmd        = hmp_info_local_apic,
    },
#endif

STEXI
@item info lapic
@findex info lapic
Show local APIC state
ETEXI

#if defined(TARGET_I386)
    {
        .name       = "ioapic",
        .args_type  = "",
        .params     = "",
        .help       = "show io apic state",
        .cmd        = hmp_info_io_apic,
    },
#endif

STEXI
@item info ioapic
@findex info ioapic
Show io APIC state
ETEXI

    {
        .name       = "cpus",
        .args_type  = "",
        .params     = "",
        .help       = "show infos for each CPU",
        .cmd        = hmp_info_cpus,
    },

STEXI
@item info cpus
@findex info cpus
Show infos for each CPU.
ETEXI

    {
        .name       = "history",
        .args_type  = "",
        .params     = "",
        .help       = "show the command line history",
        .cmd        = hmp_info_history,
    },

STEXI
@item info history
@findex info history
Show the command line history.
ETEXI

    {
        .name       = "irq",
        .args_type  = "",
        .params     = "",
        .help       = "show the interrupts statistics (if available)",
        .cmd        = hmp_info_irq,
    },

STEXI
@item info irq
@findex info irq
Show the interrupts statistics (if available).
ETEXI

    {
        .name       = "pic",
        .args_type  = "",
        .params     = "",
        .help       = "show PIC state",
        .cmd        = hmp_info_pic,
    },

STEXI
@item info pic
@findex info pic
Show i8259 (PIC) state.
ETEXI

    {
        .name       = "pci",
        .args_type  = "",
        .params     = "",
        .help       = "show PCI info",
        .cmd        = hmp_info_pci,
    },

STEXI
@item info pci
@findex info pci
Show PCI information.
ETEXI

#if defined(TARGET_I386)
    {
        .name       = "tlb",
        .args_type  = "",
        .params     = "",
        .help       = "show virtual to physical memory mappings",
        .cmd        = hmp_info_tlb,
    },
#endif

STEXI
@item info tlb
@findex info tlb
Show virtual to physical memory mappings.
ETEXI

#if defined(TARGET_I386)
    {
        .name       = "mem",
        .args_type  = "",
        .params     = "",
        .help       = "show the active virtual memory mappings",
        .cmd        = hmp_info_mem,
    },
#endif

STEXI
@item info mem
@findex info mem
Show the active virtual memory mappings.
ETEXI

    {
        .name       = "mtree",
        .args_type  = "flatview:-f,dispatch_tree:-d",
        .params     = "[-f][-d]",
        .help       = "show memory tree (-f: dump flat view for address spaces;"
                      "-d: dump dispatch tree, valid with -f only)",
        .cmd        = hmp_info_mtree,
    },

STEXI
@item info mtree
@findex info mtree
Show memory tree.
ETEXI

STEXI
@item info opcount
@findex info opcount
Show dynamic compiler opcode counters
ETEXI

    {
        .name       = "kvm",
        .args_type  = "",
        .params     = "",
        .help       = "show KVM information",
        .cmd        = hmp_info_kvm,
    },

STEXI
@item info kvm
@findex info kvm
Show KVM information.
ETEXI

    {
        .name       = "numa",
        .args_type  = "",
        .params     = "",
        .help       = "show NUMA information",
        .cmd        = hmp_info_numa,
    },

STEXI
@item info numa
@findex info numa
Show NUMA information.
ETEXI

    {
        .name       = "profile",
        .args_type  = "",
        .params     = "",
        .help       = "show profiling information",
        .cmd        = hmp_info_profile,
    },

STEXI
@item info profile
@findex info profile
Show profiling information.
ETEXI

    {
        .name       = "snapshots",
        .args_type  = "",
        .params     = "",
        .help       = "show the currently saved VM snapshots",
        .cmd        = hmp_info_snapshots,
    },

STEXI
@item info snapshots
@findex info snapshots
Show the currently saved VM snapshots.
ETEXI

    {
        .name       = "status",
        .args_type  = "",
        .params     = "",
        .help       = "show the current VM status (running|paused)",
        .cmd        = hmp_info_status,
    },

STEXI
@item info status
@findex info status
Show the current VM status (running|paused).
ETEXI

    {
        .name       = "mice",
        .args_type  = "",
        .params     = "",
        .help       = "show which guest mouse is receiving events",
        .cmd        = hmp_info_mice,
    },

STEXI
@item info mice
@findex info mice
Show which guest mouse is receiving events.
ETEXI


#if defined(CONFIG_SPICE)
    {
        .name       = "spice",
        .args_type  = "",
        .params     = "",
        .help       = "show the spice server status",
        .cmd        = hmp_info_spice,
    },
#endif

STEXI
@item info spice
@findex info spice
Show the spice server status.
ETEXI

    {
        .name       = "name",
        .args_type  = "",
        .params     = "",
        .help       = "show the current VM name",
        .cmd        = hmp_info_name,
    },

STEXI
@item info name
@findex info name
Show the current VM name.
ETEXI

    {
        .name       = "uuid",
        .args_type  = "",
        .params     = "",
        .help       = "show the current VM UUID",
        .cmd        = hmp_info_uuid,
    },

STEXI
@item info uuid
@findex info uuid
Show the current VM UUID.
ETEXI

    {
        .name       = "cpustats",
        .args_type  = "",
        .params     = "",
        .help       = "show CPU statistics",
        .cmd        = hmp_info_cpustats,
    },

STEXI
@item info cpustats
@findex info cpustats
Show CPU statistics.
ETEXI

#if defined(CONFIG_SLIRP)
    {
        .name       = "usernet",
        .args_type  = "",
        .params     = "",
        .help       = "show user network stack connection states",
        .cmd        = hmp_info_usernet,
    },
#endif

STEXI
@item info usernet
@findex info usernet
Show user network stack connection states.
ETEXI

    {
        .name       = "migrate",
        .args_type  = "",
        .params     = "",
        .help       = "show migration status",
        .cmd        = hmp_info_migrate,
    },

STEXI
@item info migrate
@findex info migrate
Show migration status.
ETEXI

    {
        .name       = "migrate_capabilities",
        .args_type  = "",
        .params     = "",
        .help       = "show current migration capabilities",
        .cmd        = hmp_info_migrate_capabilities,
    },

STEXI
@item info migrate_capabilities
@findex info migrate_capabilities
Show current migration capabilities.
ETEXI

    {
        .name       = "migrate_parameters",
        .args_type  = "",
        .params     = "",
        .help       = "show current migration parameters",
        .cmd        = hmp_info_migrate_parameters,
    },

STEXI
@item info migrate_parameters
@findex info migrate_parameters
Show current migration parameters.
ETEXI

    {
        .name       = "migrate_cache_size",
        .args_type  = "",
        .params     = "",
        .help       = "show current migration xbzrle cache size",
        .cmd        = hmp_info_migrate_cache_size,
    },

STEXI
@item info migrate_cache_size
@findex info migrate_cache_size
Show current migration xbzrle cache size.
ETEXI

    {
        .name       = "balloon",
        .args_type  = "",
        .params     = "",
        .help       = "show balloon information",
        .cmd        = hmp_info_balloon,
    },

STEXI
@item info balloon
@findex info balloon
Show balloon information.
ETEXI

    {
        .name       = "qtree",
        .args_type  = "",
        .params     = "",
        .help       = "show device tree",
        .cmd        = hmp_info_qtree,
    },

STEXI
@item info qtree
@findex info qtree
Show device tree.
ETEXI

    {
        .name       = "qdm",
        .args_type  = "",
        .params     = "",
        .help       = "show qdev device model list",
        .cmd        = hmp_info_qdm,
    },

STEXI
@item info qdm
@findex info qdm
Show qdev device model list.
ETEXI

    {
        .name       = "qom-tree",
        .args_type  = "path:s?",
        .params     = "[path]",
        .help       = "show QOM composition tree",
        .cmd        = hmp_info_qom_tree,
    },

STEXI
@item info qom-tree
@findex info qom-tree
Show QOM composition tree.
ETEXI

    {
        .name       = "roms",
        .args_type  = "",
        .params     = "",
        .help       = "show roms",
        .cmd        = hmp_info_roms,
    },

STEXI
@item info roms
@findex info roms
Show roms.
ETEXI

    {
        .name       = "trace-events",
        .args_type  = "name:s?,vcpu:i?",
        .params     = "[name] [vcpu]",
        .help       = "show available trace-events & their state "
                      "(name: event name pattern; vcpu: vCPU to query, default is any)",
        .cmd = hmp_info_trace_events,
        .command_completion = info_trace_events_completion,
    },

STEXI
@item info trace-events
@findex info trace-events
Show available trace-events & their state.
ETEXI

    {
        .name       = "tpm",
        .args_type  = "",
        .params     = "",
        .help       = "show the TPM device",
        .cmd        = hmp_info_tpm,
    },

STEXI
@item info tpm
@findex info tpm
Show the TPM device.
ETEXI

    {
        .name       = "memdev",
        .args_type  = "",
        .params     = "",
        .help       = "show memory backends",
        .cmd        = hmp_info_memdev,
    },

STEXI
@item info memdev
@findex info memdev
Show memory backends
ETEXI

    {
        .name       = "memory-devices",
        .args_type  = "",
        .params     = "",
        .help       = "show memory devices",
        .cmd        = hmp_info_memory_devices,
    },

STEXI
@item info memory-devices
@findex info memory-devices
Show memory devices.
ETEXI

    {
        .name       = "iothreads",
        .args_type  = "",
        .params     = "",
        .help       = "show iothreads",
        .cmd        = hmp_info_iothreads,
    },

STEXI
@item info iothreads
@findex info iothreads
Show iothread's identifiers.
ETEXI

    {
        .name       = "dump",
        .args_type  = "",
        .params     = "",
        .help       = "Display the latest dump status",
        .cmd        = hmp_info_dump,
    },

STEXI
@item info dump
@findex info dump
Display the latest dump status.
ETEXI

    {
        .name       = "ramblock",
        .args_type  = "",
        .params     = "",
        .help       = "Display system ramblock information",
        .cmd        = hmp_info_ramblock,
    },

STEXI
@item info ramblock
@findex info ramblock
Dump all the ramblocks of the system.
ETEXI

    {
        .name       = "hotpluggable-cpus",
        .args_type  = "",
        .params     = "",
        .help       = "Show information about hotpluggable CPUs",
        .cmd        = hmp_hotpluggable_cpus,
    },

STEXI
@item info hotpluggable-cpus
@findex info hotpluggable-cpus
Show information about hotpluggable CPUs
ETEXI

    {
        .name       = "vm-generation-id",
        .args_type  = "",
        .params     = "",
        .help       = "Show Virtual Machine Generation ID",
        .cmd = hmp_info_vm_generation_id,
    },

STEXI
@item info vm-generation-id
@findex info vm-generation-id
Show Virtual Machine Generation ID
ETEXI

    {
        .name       = "memory_size_summary",
        .args_type  = "",
        .params     = "",
        .help       = "show the amount of initially allocated and "
                      "present hotpluggable (if enabled) memory in bytes.",
        .cmd        = hmp_info_memory_size_summary,
    },

STEXI
@item info memory_size_summary
@findex info memory_size_summary
Display the amount of initially allocated and present hotpluggable (if
enabled) memory in bytes.
ETEXI

#if defined(TARGET_I386)
    {
        .name       = "sev",
        .args_type  = "",
        .params     = "",
        .help       = "show SEV information",
        .cmd        = hmp_info_sev,
    },
#endif

STEXI
@item info sev
@findex info sev
Show SEV information.
ETEXI

STEXI
@end table
ETEXI

STEXI
@end table
ETEXI
