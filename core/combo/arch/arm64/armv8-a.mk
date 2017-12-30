ifneq (,$(filter kryo,$(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)))
ifeq ($(TARGET_USE_SDCLANG),true)
	arch_variant_cflags := -mcpu=cortex-a57
else
	arch_variant_cflags := -mcpu=cortex-a53
endif
else
ifneq (,$(filter cortex-a53,$(TARGET_$(combo_2nd_arch_prefix)CPU_VARIANT)))
	arch_variant_cflags := -mcpu=cortex-a53
else
	arch_variant_cflags :=
endif
endif
