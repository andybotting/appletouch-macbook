ifneq ($(KERNELRELEASE),)

obj-m := appletouch.o

else

### Touchpad values
ATP_FUZZ := 0
ATP_THRESHOLD := 2

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
KERNEL_INST := /usr/lib/modules/$(shell uname -r)/extramodules

default:
	wget https://raw.github.com/torvalds/linux/v3.5/drivers/input/mouse/appletouch.c -O appletouch.c
	sed -i 's/^#define ATP_FUZZ.*/#define ATP_FUZZ\t$(ATP_FUZZ)/g' appletouch.c
	sed -i 's/^#define ATP_THRESHOLD.*/#define ATP_THRESHOLD\t$(ATP_THRESHOLD)/g' appletouch.c
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

install:
	cp appletouch.ko $(KERNEL_INST)
	depmod -a

endif

clean:
	rm -rf *.[oas] .*.flags *.ko .*.cmd .*.d .*.tmp *.mod.c appletouch.c .tmp_versions Module.symvers modules.order

