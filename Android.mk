#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(call is-vendor-board-platform,QCOM),true)
ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),legacy)

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils
display-hals += libtilerenderer
display-hals += libmemtrack

include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif
