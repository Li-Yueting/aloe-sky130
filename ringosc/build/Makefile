#=========================================================================
# Makefile
#=========================================================================
# Generator : /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/backends/make_backend.py

SHELL=/usr/bin/env bash -euo pipefail

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define cpdir-and-parameterize
	rm -rf ./$1
	cp -aL $2 $1 || true
	chmod -R +w $1
	cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst
# $2 -- $src
# $3 -- $stamp

define mkdir-and-symlink
	rm -rf ./$1
	mkdir -p $1
	cd $1 && ln -sf ../$2/* . && cd ..
	rm $1/configure.yml && cp .mflowgen/$1/configure.yml $1
	touch $3
endef

# $1 -- $dst_dir
# $2 -- $dst
# $3 -- $src
# $4 -- $stamp

define symlink
	mkdir -p $1
	cd $1 && ln -sf $3 $2 && touch $4
endef

# $1 -- $stamp

define stamp
	touch $1
endef

# Default

default: info rtl skywater-130nm dummy_dc cadence-innovus-flowsetup cadence-innovus-init cadence-innovus-power cadence-innovus-place cadence-innovus-route cadence-innovus-signoff mentor-calibre-gdsmerge open-magic-def2spice netgen-lvs-def open-magic-drc open-magic-gds2spice mentor-calibre-comparison netgen-lvs-gds

# ------------------------------------------------------------------------
# info
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-info/.prebuilt)","")
0-info/.stamp:
	$(call cpdir-and-parameterize,0-info,../../mflowgen/steps/info,0-info/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-info/.prebuilt)","")

define 0_info_commands_rule
	mkdir -p 0-info/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && chmod +x .mflowgen/0-info/mflowgen-run && cp -f .mflowgen/0-info/mflowgen-run 0-info && if [[ -e .mflowgen/0-info/mflowgen-debug ]]; then chmod +x .mflowgen/0-info/mflowgen-debug && cp -f .mflowgen/0-info/mflowgen-debug 0-info; fi && if [[ -e .mflowgen/0-info/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-info/mflowgen-check-preconditions.py && cp -f .mflowgen/0-info/mflowgen-check-preconditions.py 0-info; fi && if [[ -e .mflowgen/0-info/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-info/mflowgen-check-postconditions.py && cp -f .mflowgen/0-info/mflowgen-check-postconditions.py 0-info; fi && cd 0-info && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-info/outputs/*
endef

0-info/.execstamp: 0-info/.stamp
	$(call 0_info_commands_rule)

0-info/.execstamp.execute-phony: 0-info/.execstamp
	touch $@

endif

# collect outputs

# post-conditions

define 0_info_post_conditions_commands_rule
	cd 0-info && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-info/.postconditions.stamp: 0-info/.execstamp 0-info/.execstamp.execute-phony
	$(call 0_info_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: info

info: 0-info/.execstamp 0-info/.execstamp.execute-phony 0-info/.postconditions.stamp

.PHONY: 0

0: 0-info/.execstamp 0-info/.execstamp.execute-phony 0-info/.postconditions.stamp

# debug

# ------------------------------------------------------------------------
# rtl
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-rtl/.prebuilt)","")
1-rtl/.stamp:
	$(call cpdir-and-parameterize,1-rtl,../design/rtl,1-rtl/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-rtl/.prebuilt)","")

define 1_rtl_commands_rule
	mkdir -p 1-rtl/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && chmod +x .mflowgen/1-rtl/mflowgen-run && cp -f .mflowgen/1-rtl/mflowgen-run 1-rtl && if [[ -e .mflowgen/1-rtl/mflowgen-debug ]]; then chmod +x .mflowgen/1-rtl/mflowgen-debug && cp -f .mflowgen/1-rtl/mflowgen-debug 1-rtl; fi && if [[ -e .mflowgen/1-rtl/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-rtl/mflowgen-check-preconditions.py && cp -f .mflowgen/1-rtl/mflowgen-check-preconditions.py 1-rtl; fi && if [[ -e .mflowgen/1-rtl/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-rtl/mflowgen-check-postconditions.py && cp -f .mflowgen/1-rtl/mflowgen-check-postconditions.py 1-rtl; fi && cd 1-rtl && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-rtl/outputs/*
endef

1-rtl/.execstamp: 1-rtl/.stamp
	$(call 1_rtl_commands_rule)
	touch $@

1-rtl/outputs/.execstamp.design_rtl.v: 1-rtl/.execstamp
	touch $@

endif

# collect outputs

1-rtl/outputs/.stamp.design_rtl.v: 1-rtl/.execstamp 1-rtl/outputs/.execstamp.design_rtl.v
	$(call stamp,1-rtl/outputs/.stamp.design_rtl.v)

# post-conditions

define 1_rtl_post_conditions_commands_rule
	cd 1-rtl && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-rtl/.postconditions.stamp: 1-rtl/.execstamp 1-rtl/outputs/.execstamp.design_rtl.v 1-rtl/outputs/.stamp.design_rtl.v
	$(call 1_rtl_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: rtl

rtl: 1-rtl/.execstamp 1-rtl/.postconditions.stamp 1-rtl/outputs/.execstamp.design_rtl.v 1-rtl/outputs/.stamp.design_rtl.v

.PHONY: 1

1: 1-rtl/.execstamp 1-rtl/.postconditions.stamp 1-rtl/outputs/.execstamp.design_rtl.v 1-rtl/outputs/.stamp.design_rtl.v

# debug

# ------------------------------------------------------------------------
# skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-skywater-130nm/.prebuilt)","")
2-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,2-skywater-130nm,../../skywater-130nm-analog-adk,2-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 2-skywater-130nm/.prebuilt)","")

define 2_skywater_130nm_commands_rule
	mkdir -p 2-skywater-130nm/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && chmod +x .mflowgen/2-skywater-130nm/mflowgen-run && cp -f .mflowgen/2-skywater-130nm/mflowgen-run 2-skywater-130nm && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-debug && cp -f .mflowgen/2-skywater-130nm/mflowgen-debug 2-skywater-130nm; fi && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/2-skywater-130nm/mflowgen-check-preconditions.py 2-skywater-130nm; fi && if [[ -e .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/2-skywater-130nm/mflowgen-check-postconditions.py 2-skywater-130nm; fi && cd 2-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-skywater-130nm/outputs/*
endef

2-skywater-130nm/.execstamp: 2-skywater-130nm/.stamp
	$(call 2_skywater_130nm_commands_rule)
	touch $@

2-skywater-130nm/outputs/.execstamp.adk: 2-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

2-skywater-130nm/outputs/.stamp.adk: 2-skywater-130nm/.execstamp 2-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,2-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 2_skywater_130nm_post_conditions_commands_rule
	cd 2-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-skywater-130nm/.postconditions.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
	$(call 2_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: skywater-130nm

skywater-130nm: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk

.PHONY: 2

2: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# dummy_dc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")
3-dummy_dc/.stamp: 1-rtl/.execstamp 1-rtl/.postconditions.stamp 1-rtl/outputs/.execstamp.design_rtl.v 1-rtl/outputs/.stamp.design_rtl.v
3-dummy_dc/.stamp:
	$(call cpdir-and-parameterize,3-dummy_dc,../design/dummy_dc,3-dummy_dc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")
3-dummy_dc/inputs/.stamp.design_rtl.v: 3-dummy_dc/.stamp 1-rtl/outputs/.stamp.design_rtl.v
	$(call symlink,3-dummy_dc/inputs,design_rtl.v,../../1-rtl/outputs/design_rtl.v,.stamp.design_rtl.v)
endif

# execute

ifeq ("$(wildcard 3-dummy_dc/.prebuilt)","")

define 3_dummy_dc_commands_rule
	mkdir -p 3-dummy_dc/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t dummy_dc && chmod +x .mflowgen/3-dummy_dc/mflowgen-run && cp -f .mflowgen/3-dummy_dc/mflowgen-run 3-dummy_dc && if [[ -e .mflowgen/3-dummy_dc/mflowgen-debug ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-debug && cp -f .mflowgen/3-dummy_dc/mflowgen-debug 3-dummy_dc; fi && if [[ -e .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py && cp -f .mflowgen/3-dummy_dc/mflowgen-check-preconditions.py 3-dummy_dc; fi && if [[ -e .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py && cp -f .mflowgen/3-dummy_dc/mflowgen-check-postconditions.py 3-dummy_dc; fi && cd 3-dummy_dc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-dummy_dc/outputs/*
endef

3-dummy_dc/.execstamp: 3-dummy_dc/.stamp 3-dummy_dc/inputs/.stamp.design_rtl.v
	$(call 3_dummy_dc_commands_rule)
	touch $@

3-dummy_dc/outputs/.execstamp.design.sdc: 3-dummy_dc/.execstamp
	touch $@
3-dummy_dc/outputs/.execstamp.design.v: 3-dummy_dc/.execstamp
	touch $@

endif

# collect outputs

3-dummy_dc/outputs/.stamp.design.sdc: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v
	$(call stamp,3-dummy_dc/outputs/.stamp.design.sdc)

3-dummy_dc/outputs/.stamp.design.v: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v
	$(call stamp,3-dummy_dc/outputs/.stamp.design.v)

# post-conditions

define 3_dummy_dc_post_conditions_commands_rule
	cd 3-dummy_dc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-dummy_dc/.postconditions.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
	$(call 3_dummy_dc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: dummy_dc

dummy_dc: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v

.PHONY: 3

3: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v

# debug

# ------------------------------------------------------------------------
# cadence-innovus-flowsetup
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-cadence-innovus-flowsetup/.prebuilt)","")
4-cadence-innovus-flowsetup/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
4-cadence-innovus-flowsetup/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
4-cadence-innovus-flowsetup/.stamp:
	$(call cpdir-and-parameterize,4-cadence-innovus-flowsetup,../../mflowgen/steps/cadence-innovus-flowsetup,4-cadence-innovus-flowsetup/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 4-cadence-innovus-flowsetup/.prebuilt)","")
4-cadence-innovus-flowsetup/inputs/.stamp.adk: 4-cadence-innovus-flowsetup/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,4-cadence-innovus-flowsetup/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 4-cadence-innovus-flowsetup/.prebuilt)","")
4-cadence-innovus-flowsetup/inputs/.stamp.design.sdc: 4-cadence-innovus-flowsetup/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,4-cadence-innovus-flowsetup/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 4-cadence-innovus-flowsetup/.prebuilt)","")
4-cadence-innovus-flowsetup/inputs/.stamp.design.v: 4-cadence-innovus-flowsetup/.stamp 3-dummy_dc/outputs/.stamp.design.v
	$(call symlink,4-cadence-innovus-flowsetup/inputs,design.v,../../3-dummy_dc/outputs/design.v,.stamp.design.v)
endif

# execute

ifeq ("$(wildcard 4-cadence-innovus-flowsetup/.prebuilt)","")

define 4_cadence_innovus_flowsetup_commands_rule
	mkdir -p 4-cadence-innovus-flowsetup/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && chmod +x .mflowgen/4-cadence-innovus-flowsetup/mflowgen-run && cp -f .mflowgen/4-cadence-innovus-flowsetup/mflowgen-run 4-cadence-innovus-flowsetup && if [[ -e .mflowgen/4-cadence-innovus-flowsetup/mflowgen-debug ]]; then chmod +x .mflowgen/4-cadence-innovus-flowsetup/mflowgen-debug && cp -f .mflowgen/4-cadence-innovus-flowsetup/mflowgen-debug 4-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-preconditions.py && cp -f .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-preconditions.py 4-cadence-innovus-flowsetup; fi && if [[ -e .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-postconditions.py && cp -f .mflowgen/4-cadence-innovus-flowsetup/mflowgen-check-postconditions.py 4-cadence-innovus-flowsetup; fi && cd 4-cadence-innovus-flowsetup && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-cadence-innovus-flowsetup/outputs/*
endef

4-cadence-innovus-flowsetup/.execstamp: 4-cadence-innovus-flowsetup/.stamp 4-cadence-innovus-flowsetup/inputs/.stamp.adk 4-cadence-innovus-flowsetup/inputs/.stamp.design.sdc 4-cadence-innovus-flowsetup/inputs/.stamp.design.v
	$(call 4_cadence_innovus_flowsetup_commands_rule)
	touch $@

4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow: 4-cadence-innovus-flowsetup/.execstamp
	touch $@

endif

# collect outputs

4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow
	$(call stamp,4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow)

# post-conditions

define 4_cadence_innovus_flowsetup_post_conditions_commands_rule
	cd 4-cadence-innovus-flowsetup && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-cadence-innovus-flowsetup/.postconditions.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call 4_cadence_innovus_flowsetup_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-flowsetup

cadence-innovus-flowsetup: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

.PHONY: 4

4: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow

# debug

# ------------------------------------------------------------------------
# cadence-innovus-init
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")
5-cadence-innovus-init/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
5-cadence-innovus-init/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
5-cadence-innovus-init/.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
5-cadence-innovus-init/.stamp:
	$(call cpdir-and-parameterize,5-cadence-innovus-init,../design/cadence-innovus-init,5-cadence-innovus-init/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")
5-cadence-innovus-init/inputs/.stamp.adk: 5-cadence-innovus-init/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,5-cadence-innovus-init/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")
5-cadence-innovus-init/inputs/.stamp.design.sdc: 5-cadence-innovus-init/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,5-cadence-innovus-init/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")
5-cadence-innovus-init/inputs/.stamp.design.v: 5-cadence-innovus-init/.stamp 3-dummy_dc/outputs/.stamp.design.v
	$(call symlink,5-cadence-innovus-init/inputs,design.v,../../3-dummy_dc/outputs/design.v,.stamp.design.v)
endif

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")
5-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow: 5-cadence-innovus-init/.stamp 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,5-cadence-innovus-init/inputs,innovus-foundation-flow,../../4-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 5-cadence-innovus-init/.prebuilt)","")

define 5_cadence_innovus_init_commands_rule
	mkdir -p 5-cadence-innovus-init/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && chmod +x .mflowgen/5-cadence-innovus-init/mflowgen-run && cp -f .mflowgen/5-cadence-innovus-init/mflowgen-run 5-cadence-innovus-init && if [[ -e .mflowgen/5-cadence-innovus-init/mflowgen-debug ]]; then chmod +x .mflowgen/5-cadence-innovus-init/mflowgen-debug && cp -f .mflowgen/5-cadence-innovus-init/mflowgen-debug 5-cadence-innovus-init; fi && if [[ -e .mflowgen/5-cadence-innovus-init/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-cadence-innovus-init/mflowgen-check-preconditions.py && cp -f .mflowgen/5-cadence-innovus-init/mflowgen-check-preconditions.py 5-cadence-innovus-init; fi && if [[ -e .mflowgen/5-cadence-innovus-init/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-cadence-innovus-init/mflowgen-check-postconditions.py && cp -f .mflowgen/5-cadence-innovus-init/mflowgen-check-postconditions.py 5-cadence-innovus-init; fi && cd 5-cadence-innovus-init && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-cadence-innovus-init/outputs/*
endef

5-cadence-innovus-init/.execstamp: 5-cadence-innovus-init/.stamp 5-cadence-innovus-init/inputs/.stamp.adk 5-cadence-innovus-init/inputs/.stamp.design.sdc 5-cadence-innovus-init/inputs/.stamp.design.v 5-cadence-innovus-init/inputs/.stamp.innovus-foundation-flow
	$(call 5_cadence_innovus_init_commands_rule)
	touch $@

5-cadence-innovus-init/outputs/.execstamp.design.checkpoint: 5-cadence-innovus-init/.execstamp
	touch $@

endif

# collect outputs

5-cadence-innovus-init/outputs/.stamp.design.checkpoint: 5-cadence-innovus-init/.execstamp 5-cadence-innovus-init/outputs/.execstamp.design.checkpoint
	$(call stamp,5-cadence-innovus-init/outputs/.stamp.design.checkpoint)

# post-conditions

define 5_cadence_innovus_init_post_conditions_commands_rule
	cd 5-cadence-innovus-init && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-cadence-innovus-init/.postconditions.stamp: 5-cadence-innovus-init/.execstamp 5-cadence-innovus-init/outputs/.execstamp.design.checkpoint 5-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call 5_cadence_innovus_init_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-init

cadence-innovus-init: 5-cadence-innovus-init/.execstamp 5-cadence-innovus-init/.postconditions.stamp 5-cadence-innovus-init/outputs/.execstamp.design.checkpoint 5-cadence-innovus-init/outputs/.stamp.design.checkpoint

.PHONY: 5

5: 5-cadence-innovus-init/.execstamp 5-cadence-innovus-init/.postconditions.stamp 5-cadence-innovus-init/outputs/.execstamp.design.checkpoint 5-cadence-innovus-init/outputs/.stamp.design.checkpoint

# debug

define 5_debug_rule
	cd 5-cadence-innovus-init && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-init: 
	$(call 5_debug_rule)

.PHONY: debug-5

debug-5: debug-cadence-innovus-init

# ------------------------------------------------------------------------
# cadence-innovus-power
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")
6-cadence-innovus-power/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
6-cadence-innovus-power/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
6-cadence-innovus-power/.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
6-cadence-innovus-power/.stamp: 5-cadence-innovus-init/.execstamp 5-cadence-innovus-init/.postconditions.stamp 5-cadence-innovus-init/outputs/.execstamp.design.checkpoint 5-cadence-innovus-init/outputs/.stamp.design.checkpoint
6-cadence-innovus-power/.stamp:
	$(call cpdir-and-parameterize,6-cadence-innovus-power,../design/cadence-innovus-power,6-cadence-innovus-power/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")
6-cadence-innovus-power/inputs/.stamp.adk: 6-cadence-innovus-power/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,6-cadence-innovus-power/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")
6-cadence-innovus-power/inputs/.stamp.design.checkpoint: 6-cadence-innovus-power/.stamp 5-cadence-innovus-init/outputs/.stamp.design.checkpoint
	$(call symlink,6-cadence-innovus-power/inputs,design.checkpoint,../../5-cadence-innovus-init/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")
6-cadence-innovus-power/inputs/.stamp.design.sdc: 6-cadence-innovus-power/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,6-cadence-innovus-power/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")
6-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow: 6-cadence-innovus-power/.stamp 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,6-cadence-innovus-power/inputs,innovus-foundation-flow,../../4-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 6-cadence-innovus-power/.prebuilt)","")

define 6_cadence_innovus_power_commands_rule
	mkdir -p 6-cadence-innovus-power/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && chmod +x .mflowgen/6-cadence-innovus-power/mflowgen-run && cp -f .mflowgen/6-cadence-innovus-power/mflowgen-run 6-cadence-innovus-power && if [[ -e .mflowgen/6-cadence-innovus-power/mflowgen-debug ]]; then chmod +x .mflowgen/6-cadence-innovus-power/mflowgen-debug && cp -f .mflowgen/6-cadence-innovus-power/mflowgen-debug 6-cadence-innovus-power; fi && if [[ -e .mflowgen/6-cadence-innovus-power/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-power/mflowgen-check-preconditions.py && cp -f .mflowgen/6-cadence-innovus-power/mflowgen-check-preconditions.py 6-cadence-innovus-power; fi && if [[ -e .mflowgen/6-cadence-innovus-power/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-cadence-innovus-power/mflowgen-check-postconditions.py && cp -f .mflowgen/6-cadence-innovus-power/mflowgen-check-postconditions.py 6-cadence-innovus-power; fi && cd 6-cadence-innovus-power && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-cadence-innovus-power/outputs/*
endef

6-cadence-innovus-power/.execstamp: 6-cadence-innovus-power/.stamp 6-cadence-innovus-power/inputs/.stamp.adk 6-cadence-innovus-power/inputs/.stamp.design.checkpoint 6-cadence-innovus-power/inputs/.stamp.design.sdc 6-cadence-innovus-power/inputs/.stamp.innovus-foundation-flow
	$(call 6_cadence_innovus_power_commands_rule)
	touch $@

6-cadence-innovus-power/outputs/.execstamp.design.checkpoint: 6-cadence-innovus-power/.execstamp
	touch $@

endif

# collect outputs

6-cadence-innovus-power/outputs/.stamp.design.checkpoint: 6-cadence-innovus-power/.execstamp 6-cadence-innovus-power/outputs/.execstamp.design.checkpoint
	$(call stamp,6-cadence-innovus-power/outputs/.stamp.design.checkpoint)

# post-conditions

define 6_cadence_innovus_power_post_conditions_commands_rule
	cd 6-cadence-innovus-power && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-cadence-innovus-power/.postconditions.stamp: 6-cadence-innovus-power/.execstamp 6-cadence-innovus-power/outputs/.execstamp.design.checkpoint 6-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call 6_cadence_innovus_power_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-power

cadence-innovus-power: 6-cadence-innovus-power/.execstamp 6-cadence-innovus-power/.postconditions.stamp 6-cadence-innovus-power/outputs/.execstamp.design.checkpoint 6-cadence-innovus-power/outputs/.stamp.design.checkpoint

.PHONY: 6

6: 6-cadence-innovus-power/.execstamp 6-cadence-innovus-power/.postconditions.stamp 6-cadence-innovus-power/outputs/.execstamp.design.checkpoint 6-cadence-innovus-power/outputs/.stamp.design.checkpoint

# debug

define 6_debug_rule
	cd 6-cadence-innovus-power && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-power: 
	$(call 6_debug_rule)

.PHONY: debug-6

debug-6: debug-cadence-innovus-power

# ------------------------------------------------------------------------
# cadence-innovus-place
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")
7-cadence-innovus-place/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
7-cadence-innovus-place/.stamp: 3-dummy_dc/.execstamp 3-dummy_dc/.postconditions.stamp 3-dummy_dc/outputs/.execstamp.design.sdc 3-dummy_dc/outputs/.execstamp.design.v 3-dummy_dc/outputs/.stamp.design.sdc 3-dummy_dc/outputs/.stamp.design.v
7-cadence-innovus-place/.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
7-cadence-innovus-place/.stamp: 6-cadence-innovus-power/.execstamp 6-cadence-innovus-power/.postconditions.stamp 6-cadence-innovus-power/outputs/.execstamp.design.checkpoint 6-cadence-innovus-power/outputs/.stamp.design.checkpoint
7-cadence-innovus-place/.stamp:
	$(call cpdir-and-parameterize,7-cadence-innovus-place,../design/cadence-innovus-place,7-cadence-innovus-place/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")
7-cadence-innovus-place/inputs/.stamp.adk: 7-cadence-innovus-place/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,7-cadence-innovus-place/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")
7-cadence-innovus-place/inputs/.stamp.design.checkpoint: 7-cadence-innovus-place/.stamp 6-cadence-innovus-power/outputs/.stamp.design.checkpoint
	$(call symlink,7-cadence-innovus-place/inputs,design.checkpoint,../../6-cadence-innovus-power/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")
7-cadence-innovus-place/inputs/.stamp.design.sdc: 7-cadence-innovus-place/.stamp 3-dummy_dc/outputs/.stamp.design.sdc
	$(call symlink,7-cadence-innovus-place/inputs,design.sdc,../../3-dummy_dc/outputs/design.sdc,.stamp.design.sdc)
endif

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")
7-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow: 7-cadence-innovus-place/.stamp 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,7-cadence-innovus-place/inputs,innovus-foundation-flow,../../4-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 7-cadence-innovus-place/.prebuilt)","")

define 7_cadence_innovus_place_commands_rule
	mkdir -p 7-cadence-innovus-place/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && chmod +x .mflowgen/7-cadence-innovus-place/mflowgen-run && cp -f .mflowgen/7-cadence-innovus-place/mflowgen-run 7-cadence-innovus-place && if [[ -e .mflowgen/7-cadence-innovus-place/mflowgen-debug ]]; then chmod +x .mflowgen/7-cadence-innovus-place/mflowgen-debug && cp -f .mflowgen/7-cadence-innovus-place/mflowgen-debug 7-cadence-innovus-place; fi && if [[ -e .mflowgen/7-cadence-innovus-place/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-cadence-innovus-place/mflowgen-check-preconditions.py && cp -f .mflowgen/7-cadence-innovus-place/mflowgen-check-preconditions.py 7-cadence-innovus-place; fi && if [[ -e .mflowgen/7-cadence-innovus-place/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-cadence-innovus-place/mflowgen-check-postconditions.py && cp -f .mflowgen/7-cadence-innovus-place/mflowgen-check-postconditions.py 7-cadence-innovus-place; fi && cd 7-cadence-innovus-place && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-cadence-innovus-place/outputs/*
endef

7-cadence-innovus-place/.execstamp: 7-cadence-innovus-place/.stamp 7-cadence-innovus-place/inputs/.stamp.adk 7-cadence-innovus-place/inputs/.stamp.design.checkpoint 7-cadence-innovus-place/inputs/.stamp.design.sdc 7-cadence-innovus-place/inputs/.stamp.innovus-foundation-flow
	$(call 7_cadence_innovus_place_commands_rule)
	touch $@

7-cadence-innovus-place/outputs/.execstamp.design.checkpoint: 7-cadence-innovus-place/.execstamp
	touch $@

endif

# collect outputs

7-cadence-innovus-place/outputs/.stamp.design.checkpoint: 7-cadence-innovus-place/.execstamp 7-cadence-innovus-place/outputs/.execstamp.design.checkpoint
	$(call stamp,7-cadence-innovus-place/outputs/.stamp.design.checkpoint)

# post-conditions

define 7_cadence_innovus_place_post_conditions_commands_rule
	cd 7-cadence-innovus-place && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-cadence-innovus-place/.postconditions.stamp: 7-cadence-innovus-place/.execstamp 7-cadence-innovus-place/outputs/.execstamp.design.checkpoint 7-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call 7_cadence_innovus_place_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-place

cadence-innovus-place: 7-cadence-innovus-place/.execstamp 7-cadence-innovus-place/.postconditions.stamp 7-cadence-innovus-place/outputs/.execstamp.design.checkpoint 7-cadence-innovus-place/outputs/.stamp.design.checkpoint

.PHONY: 7

7: 7-cadence-innovus-place/.execstamp 7-cadence-innovus-place/.postconditions.stamp 7-cadence-innovus-place/outputs/.execstamp.design.checkpoint 7-cadence-innovus-place/outputs/.stamp.design.checkpoint

# debug

define 7_debug_rule
	cd 7-cadence-innovus-place && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-place: 
	$(call 7_debug_rule)

.PHONY: debug-7

debug-7: debug-cadence-innovus-place

# ------------------------------------------------------------------------
# cadence-innovus-route
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-cadence-innovus-route/.prebuilt)","")
8-cadence-innovus-route/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
8-cadence-innovus-route/.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
8-cadence-innovus-route/.stamp: 7-cadence-innovus-place/.execstamp 7-cadence-innovus-place/.postconditions.stamp 7-cadence-innovus-place/outputs/.execstamp.design.checkpoint 7-cadence-innovus-place/outputs/.stamp.design.checkpoint
8-cadence-innovus-route/.stamp:
	$(call cpdir-and-parameterize,8-cadence-innovus-route,../design/cadence-innovus-route,8-cadence-innovus-route/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-cadence-innovus-route/.prebuilt)","")
8-cadence-innovus-route/inputs/.stamp.adk: 8-cadence-innovus-route/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,8-cadence-innovus-route/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 8-cadence-innovus-route/.prebuilt)","")
8-cadence-innovus-route/inputs/.stamp.design.checkpoint: 8-cadence-innovus-route/.stamp 7-cadence-innovus-place/outputs/.stamp.design.checkpoint
	$(call symlink,8-cadence-innovus-route/inputs,design.checkpoint,../../7-cadence-innovus-place/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 8-cadence-innovus-route/.prebuilt)","")
8-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow: 8-cadence-innovus-route/.stamp 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,8-cadence-innovus-route/inputs,innovus-foundation-flow,../../4-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 8-cadence-innovus-route/.prebuilt)","")

define 8_cadence_innovus_route_commands_rule
	mkdir -p 8-cadence-innovus-route/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && chmod +x .mflowgen/8-cadence-innovus-route/mflowgen-run && cp -f .mflowgen/8-cadence-innovus-route/mflowgen-run 8-cadence-innovus-route && if [[ -e .mflowgen/8-cadence-innovus-route/mflowgen-debug ]]; then chmod +x .mflowgen/8-cadence-innovus-route/mflowgen-debug && cp -f .mflowgen/8-cadence-innovus-route/mflowgen-debug 8-cadence-innovus-route; fi && if [[ -e .mflowgen/8-cadence-innovus-route/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-cadence-innovus-route/mflowgen-check-preconditions.py && cp -f .mflowgen/8-cadence-innovus-route/mflowgen-check-preconditions.py 8-cadence-innovus-route; fi && if [[ -e .mflowgen/8-cadence-innovus-route/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-cadence-innovus-route/mflowgen-check-postconditions.py && cp -f .mflowgen/8-cadence-innovus-route/mflowgen-check-postconditions.py 8-cadence-innovus-route; fi && cd 8-cadence-innovus-route && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-cadence-innovus-route/outputs/*
endef

8-cadence-innovus-route/.execstamp: 8-cadence-innovus-route/.stamp 8-cadence-innovus-route/inputs/.stamp.adk 8-cadence-innovus-route/inputs/.stamp.design.checkpoint 8-cadence-innovus-route/inputs/.stamp.innovus-foundation-flow
	$(call 8_cadence_innovus_route_commands_rule)
	touch $@

8-cadence-innovus-route/outputs/.execstamp.design.checkpoint: 8-cadence-innovus-route/.execstamp
	touch $@

endif

# collect outputs

8-cadence-innovus-route/outputs/.stamp.design.checkpoint: 8-cadence-innovus-route/.execstamp 8-cadence-innovus-route/outputs/.execstamp.design.checkpoint
	$(call stamp,8-cadence-innovus-route/outputs/.stamp.design.checkpoint)

# post-conditions

define 8_cadence_innovus_route_post_conditions_commands_rule
	cd 8-cadence-innovus-route && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-cadence-innovus-route/.postconditions.stamp: 8-cadence-innovus-route/.execstamp 8-cadence-innovus-route/outputs/.execstamp.design.checkpoint 8-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call 8_cadence_innovus_route_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-route

cadence-innovus-route: 8-cadence-innovus-route/.execstamp 8-cadence-innovus-route/.postconditions.stamp 8-cadence-innovus-route/outputs/.execstamp.design.checkpoint 8-cadence-innovus-route/outputs/.stamp.design.checkpoint

.PHONY: 8

8: 8-cadence-innovus-route/.execstamp 8-cadence-innovus-route/.postconditions.stamp 8-cadence-innovus-route/outputs/.execstamp.design.checkpoint 8-cadence-innovus-route/outputs/.stamp.design.checkpoint

# debug

define 8_debug_rule
	cd 8-cadence-innovus-route && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-route: 
	$(call 8_debug_rule)

.PHONY: debug-8

debug-8: debug-cadence-innovus-route

# ------------------------------------------------------------------------
# cadence-innovus-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-cadence-innovus-signoff/.prebuilt)","")
9-cadence-innovus-signoff/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
9-cadence-innovus-signoff/.stamp: 4-cadence-innovus-flowsetup/.execstamp 4-cadence-innovus-flowsetup/.postconditions.stamp 4-cadence-innovus-flowsetup/outputs/.execstamp.innovus-foundation-flow 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
9-cadence-innovus-signoff/.stamp: 8-cadence-innovus-route/.execstamp 8-cadence-innovus-route/.postconditions.stamp 8-cadence-innovus-route/outputs/.execstamp.design.checkpoint 8-cadence-innovus-route/outputs/.stamp.design.checkpoint
9-cadence-innovus-signoff/.stamp:
	$(call cpdir-and-parameterize,9-cadence-innovus-signoff,../design/cadence-innovus-signoff,9-cadence-innovus-signoff/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 9-cadence-innovus-signoff/.prebuilt)","")
9-cadence-innovus-signoff/inputs/.stamp.adk: 9-cadence-innovus-signoff/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,9-cadence-innovus-signoff/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 9-cadence-innovus-signoff/.prebuilt)","")
9-cadence-innovus-signoff/inputs/.stamp.design.checkpoint: 9-cadence-innovus-signoff/.stamp 8-cadence-innovus-route/outputs/.stamp.design.checkpoint
	$(call symlink,9-cadence-innovus-signoff/inputs,design.checkpoint,../../8-cadence-innovus-route/outputs/design.checkpoint,.stamp.design.checkpoint)
endif

ifeq ("$(wildcard 9-cadence-innovus-signoff/.prebuilt)","")
9-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow: 9-cadence-innovus-signoff/.stamp 4-cadence-innovus-flowsetup/outputs/.stamp.innovus-foundation-flow
	$(call symlink,9-cadence-innovus-signoff/inputs,innovus-foundation-flow,../../4-cadence-innovus-flowsetup/outputs/innovus-foundation-flow,.stamp.innovus-foundation-flow)
endif

# execute

ifeq ("$(wildcard 9-cadence-innovus-signoff/.prebuilt)","")

define 9_cadence_innovus_signoff_commands_rule
	mkdir -p 9-cadence-innovus-signoff/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && chmod +x .mflowgen/9-cadence-innovus-signoff/mflowgen-run && cp -f .mflowgen/9-cadence-innovus-signoff/mflowgen-run 9-cadence-innovus-signoff && if [[ -e .mflowgen/9-cadence-innovus-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/9-cadence-innovus-signoff/mflowgen-debug && cp -f .mflowgen/9-cadence-innovus-signoff/mflowgen-debug 9-cadence-innovus-signoff; fi && if [[ -e .mflowgen/9-cadence-innovus-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-cadence-innovus-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/9-cadence-innovus-signoff/mflowgen-check-preconditions.py 9-cadence-innovus-signoff; fi && if [[ -e .mflowgen/9-cadence-innovus-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-cadence-innovus-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/9-cadence-innovus-signoff/mflowgen-check-postconditions.py 9-cadence-innovus-signoff; fi && cd 9-cadence-innovus-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-cadence-innovus-signoff/outputs/*
endef

9-cadence-innovus-signoff/.execstamp: 9-cadence-innovus-signoff/.stamp 9-cadence-innovus-signoff/inputs/.stamp.adk 9-cadence-innovus-signoff/inputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/inputs/.stamp.innovus-foundation-flow
	$(call 9_cadence_innovus_signoff_commands_rule)
	touch $@

9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.lef: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.sdc: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.sdf: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz: 9-cadence-innovus-signoff/.execstamp
	touch $@
9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz: 9-cadence-innovus-signoff/.execstamp
	touch $@

endif

# collect outputs

9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint)

9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz)

9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds)

9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v)

9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v)

9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v)

9-cadence-innovus-signoff/outputs/.stamp.design.lef: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.lef)

9-cadence-innovus-signoff/outputs/.stamp.design.def.gz: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.def.gz)

9-cadence-innovus-signoff/outputs/.stamp.design.sdc: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.sdc)

9-cadence-innovus-signoff/outputs/.stamp.design.sdf: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.sdf)

9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v)

9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz)

9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v
	$(call stamp,9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz)

# post-conditions

define 9_cadence_innovus_signoff_post_conditions_commands_rule
	cd 9-cadence-innovus-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-cadence-innovus-signoff/.postconditions.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
	$(call 9_cadence_innovus_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-signoff

cadence-innovus-signoff: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

.PHONY: 9

9: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v

# debug

define 9_debug_rule
	cd 9-cadence-innovus-signoff && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-cadence-innovus-signoff: 
	$(call 9_debug_rule)

.PHONY: debug-9

debug-9: debug-cadence-innovus-signoff

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-mentor-calibre-gdsmerge/.prebuilt)","")
10-mentor-calibre-gdsmerge/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
10-mentor-calibre-gdsmerge/.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
10-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,10-mentor-calibre-gdsmerge,../../mflowgen/steps/mentor-calibre-gdsmerge,10-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-mentor-calibre-gdsmerge/.prebuilt)","")
10-mentor-calibre-gdsmerge/inputs/.stamp.adk: 10-mentor-calibre-gdsmerge/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,10-mentor-calibre-gdsmerge/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 10-mentor-calibre-gdsmerge/.prebuilt)","")
10-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 10-mentor-calibre-gdsmerge/.stamp 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz
	$(call symlink,10-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../9-cadence-innovus-signoff/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

# execute

ifeq ("$(wildcard 10-mentor-calibre-gdsmerge/.prebuilt)","")

define 10_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 10-mentor-calibre-gdsmerge/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-run 10-mentor-calibre-gdsmerge && if [[ -e .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-debug 10-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 10-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/10-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 10-mentor-calibre-gdsmerge; fi && cd 10-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-mentor-calibre-gdsmerge/outputs/*
endef

10-mentor-calibre-gdsmerge/.execstamp: 10-mentor-calibre-gdsmerge/.stamp 10-mentor-calibre-gdsmerge/inputs/.stamp.adk 10-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz
	$(call 10_mentor_calibre_gdsmerge_commands_rule)
	touch $@

10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 10-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 10_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 10-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-mentor-calibre-gdsmerge/.postconditions.stamp: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 10_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/.postconditions.stamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 10

10: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/.postconditions.stamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 10_debug_rule
	cd 10-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 10_debug_rule)

.PHONY: debug-10

debug-10: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# open-magic-def2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 11-open-magic-def2spice/.prebuilt)","")
11-open-magic-def2spice/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
11-open-magic-def2spice/.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
11-open-magic-def2spice/.stamp:
	$(call cpdir-and-parameterize,11-open-magic-def2spice,../design/open-magic-def2spice,11-open-magic-def2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 11-open-magic-def2spice/.prebuilt)","")
11-open-magic-def2spice/inputs/.stamp.adk: 11-open-magic-def2spice/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,11-open-magic-def2spice/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 11-open-magic-def2spice/.prebuilt)","")
11-open-magic-def2spice/inputs/.stamp.design.def.gz: 11-open-magic-def2spice/.stamp 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz
	$(call symlink,11-open-magic-def2spice/inputs,design.def.gz,../../9-cadence-innovus-signoff/outputs/design.def.gz,.stamp.design.def.gz)
endif

# execute

ifeq ("$(wildcard 11-open-magic-def2spice/.prebuilt)","")

define 11_open_magic_def2spice_commands_rule
	mkdir -p 11-open-magic-def2spice/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && chmod +x .mflowgen/11-open-magic-def2spice/mflowgen-run && cp -f .mflowgen/11-open-magic-def2spice/mflowgen-run 11-open-magic-def2spice && if [[ -e .mflowgen/11-open-magic-def2spice/mflowgen-debug ]]; then chmod +x .mflowgen/11-open-magic-def2spice/mflowgen-debug && cp -f .mflowgen/11-open-magic-def2spice/mflowgen-debug 11-open-magic-def2spice; fi && if [[ -e .mflowgen/11-open-magic-def2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/11-open-magic-def2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/11-open-magic-def2spice/mflowgen-check-preconditions.py 11-open-magic-def2spice; fi && if [[ -e .mflowgen/11-open-magic-def2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/11-open-magic-def2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/11-open-magic-def2spice/mflowgen-check-postconditions.py 11-open-magic-def2spice; fi && cd 11-open-magic-def2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 11-open-magic-def2spice/outputs/*
endef

11-open-magic-def2spice/.execstamp: 11-open-magic-def2spice/.stamp 11-open-magic-def2spice/inputs/.stamp.adk 11-open-magic-def2spice/inputs/.stamp.design.def.gz
	$(call 11_open_magic_def2spice_commands_rule)
	touch $@

11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice: 11-open-magic-def2spice/.execstamp
	touch $@

endif

# collect outputs

11-open-magic-def2spice/outputs/.stamp.design_extracted.spice: 11-open-magic-def2spice/.execstamp 11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,11-open-magic-def2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 11_open_magic_def2spice_post_conditions_commands_rule
	cd 11-open-magic-def2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

11-open-magic-def2spice/.postconditions.stamp: 11-open-magic-def2spice/.execstamp 11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 11-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call 11_open_magic_def2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-def2spice

open-magic-def2spice: 11-open-magic-def2spice/.execstamp 11-open-magic-def2spice/.postconditions.stamp 11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 11-open-magic-def2spice/outputs/.stamp.design_extracted.spice

.PHONY: 11

11: 11-open-magic-def2spice/.execstamp 11-open-magic-def2spice/.postconditions.stamp 11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 11-open-magic-def2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# netgen-lvs-def
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 12-netgen-lvs-def/.prebuilt)","")
12-netgen-lvs-def/.stamp: 11-open-magic-def2spice/.execstamp 11-open-magic-def2spice/.postconditions.stamp 11-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 11-open-magic-def2spice/outputs/.stamp.design_extracted.spice
12-netgen-lvs-def/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
12-netgen-lvs-def/.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
12-netgen-lvs-def/.stamp:
	$(call cpdir-and-parameterize,12-netgen-lvs-def,../design/netgen-lvs-def,12-netgen-lvs-def/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 12-netgen-lvs-def/.prebuilt)","")
12-netgen-lvs-def/inputs/.stamp.adk: 12-netgen-lvs-def/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,12-netgen-lvs-def/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 12-netgen-lvs-def/.prebuilt)","")
12-netgen-lvs-def/inputs/.stamp.design.lvs.v: 12-netgen-lvs-def/.stamp 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,12-netgen-lvs-def/inputs,design.lvs.v,../../9-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 12-netgen-lvs-def/.prebuilt)","")
12-netgen-lvs-def/inputs/.stamp.design_extracted.spice: 12-netgen-lvs-def/.stamp 11-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,12-netgen-lvs-def/inputs,design_extracted.spice,../../11-open-magic-def2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 12-netgen-lvs-def/.prebuilt)","")

define 12_netgen_lvs_def_commands_rule
	mkdir -p 12-netgen-lvs-def/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && chmod +x .mflowgen/12-netgen-lvs-def/mflowgen-run && cp -f .mflowgen/12-netgen-lvs-def/mflowgen-run 12-netgen-lvs-def && if [[ -e .mflowgen/12-netgen-lvs-def/mflowgen-debug ]]; then chmod +x .mflowgen/12-netgen-lvs-def/mflowgen-debug && cp -f .mflowgen/12-netgen-lvs-def/mflowgen-debug 12-netgen-lvs-def; fi && if [[ -e .mflowgen/12-netgen-lvs-def/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/12-netgen-lvs-def/mflowgen-check-preconditions.py && cp -f .mflowgen/12-netgen-lvs-def/mflowgen-check-preconditions.py 12-netgen-lvs-def; fi && if [[ -e .mflowgen/12-netgen-lvs-def/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/12-netgen-lvs-def/mflowgen-check-postconditions.py && cp -f .mflowgen/12-netgen-lvs-def/mflowgen-check-postconditions.py 12-netgen-lvs-def; fi && cd 12-netgen-lvs-def && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 12-netgen-lvs-def/outputs/*
endef

12-netgen-lvs-def/.execstamp: 12-netgen-lvs-def/.stamp 12-netgen-lvs-def/inputs/.stamp.adk 12-netgen-lvs-def/inputs/.stamp.design.lvs.v 12-netgen-lvs-def/inputs/.stamp.design_extracted.spice
	$(call 12_netgen_lvs_def_commands_rule)
	touch $@

12-netgen-lvs-def/outputs/.execstamp.lvs_results.log: 12-netgen-lvs-def/.execstamp
	touch $@

endif

# collect outputs

12-netgen-lvs-def/outputs/.stamp.lvs_results.log: 12-netgen-lvs-def/.execstamp 12-netgen-lvs-def/outputs/.execstamp.lvs_results.log
	$(call stamp,12-netgen-lvs-def/outputs/.stamp.lvs_results.log)

# post-conditions

define 12_netgen_lvs_def_post_conditions_commands_rule
	cd 12-netgen-lvs-def && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

12-netgen-lvs-def/.postconditions.stamp: 12-netgen-lvs-def/.execstamp 12-netgen-lvs-def/outputs/.execstamp.lvs_results.log 12-netgen-lvs-def/outputs/.stamp.lvs_results.log
	$(call 12_netgen_lvs_def_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-def

netgen-lvs-def: 12-netgen-lvs-def/.execstamp 12-netgen-lvs-def/.postconditions.stamp 12-netgen-lvs-def/outputs/.execstamp.lvs_results.log 12-netgen-lvs-def/outputs/.stamp.lvs_results.log

.PHONY: 12

12: 12-netgen-lvs-def/.execstamp 12-netgen-lvs-def/.postconditions.stamp 12-netgen-lvs-def/outputs/.execstamp.lvs_results.log 12-netgen-lvs-def/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/.stamp: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/.postconditions.stamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
13-open-magic-drc/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
13-open-magic-drc/.stamp:
	$(call cpdir-and-parameterize,13-open-magic-drc,../design/open-magic-drc,13-open-magic-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/inputs/.stamp.adk: 13-open-magic-drc/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,13-open-magic-drc/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")
13-open-magic-drc/inputs/.stamp.design_merged.gds: 13-open-magic-drc/.stamp 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,13-open-magic-drc/inputs,design_merged.gds,../../10-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 13-open-magic-drc/.prebuilt)","")

define 13_open_magic_drc_commands_rule
	mkdir -p 13-open-magic-drc/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && chmod +x .mflowgen/13-open-magic-drc/mflowgen-run && cp -f .mflowgen/13-open-magic-drc/mflowgen-run 13-open-magic-drc && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-debug ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-debug && cp -f .mflowgen/13-open-magic-drc/mflowgen-debug 13-open-magic-drc; fi && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/13-open-magic-drc/mflowgen-check-preconditions.py 13-open-magic-drc; fi && if [[ -e .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/13-open-magic-drc/mflowgen-check-postconditions.py 13-open-magic-drc; fi && cd 13-open-magic-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 13-open-magic-drc/outputs/*
endef

13-open-magic-drc/.execstamp: 13-open-magic-drc/.stamp 13-open-magic-drc/inputs/.stamp.adk 13-open-magic-drc/inputs/.stamp.design_merged.gds
	$(call 13_open_magic_drc_commands_rule)
	touch $@

13-open-magic-drc/outputs/.execstamp.drc_results.log: 13-open-magic-drc/.execstamp
	touch $@

endif

# collect outputs

13-open-magic-drc/outputs/.stamp.drc_results.log: 13-open-magic-drc/.execstamp 13-open-magic-drc/outputs/.execstamp.drc_results.log
	$(call stamp,13-open-magic-drc/outputs/.stamp.drc_results.log)

# post-conditions

define 13_open_magic_drc_post_conditions_commands_rule
	cd 13-open-magic-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

13-open-magic-drc/.postconditions.stamp: 13-open-magic-drc/.execstamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log
	$(call 13_open_magic_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-drc

open-magic-drc: 13-open-magic-drc/.execstamp 13-open-magic-drc/.postconditions.stamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log

.PHONY: 13

13: 13-open-magic-drc/.execstamp 13-open-magic-drc/.postconditions.stamp 13-open-magic-drc/outputs/.execstamp.drc_results.log 13-open-magic-drc/outputs/.stamp.drc_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/.stamp: 10-mentor-calibre-gdsmerge/.execstamp 10-mentor-calibre-gdsmerge/.postconditions.stamp 10-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
14-open-magic-gds2spice/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
14-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,14-open-magic-gds2spice,../design/open-magic-gds2spice,14-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/inputs/.stamp.adk: 14-open-magic-gds2spice/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,14-open-magic-gds2spice/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")
14-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 14-open-magic-gds2spice/.stamp 10-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,14-open-magic-gds2spice/inputs,design_merged.gds,../../10-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 14-open-magic-gds2spice/.prebuilt)","")

define 14_open_magic_gds2spice_commands_rule
	mkdir -p 14-open-magic-gds2spice/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-run 14-open-magic-gds2spice && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-debug 14-open-magic-gds2spice; fi && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-check-preconditions.py 14-open-magic-gds2spice; fi && if [[ -e .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/14-open-magic-gds2spice/mflowgen-check-postconditions.py 14-open-magic-gds2spice; fi && cd 14-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 14-open-magic-gds2spice/outputs/*
endef

14-open-magic-gds2spice/.execstamp: 14-open-magic-gds2spice/.stamp 14-open-magic-gds2spice/inputs/.stamp.adk 14-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 14_open_magic_gds2spice_commands_rule)
	touch $@

14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 14-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 14_open_magic_gds2spice_post_conditions_commands_rule
	cd 14-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

14-open-magic-gds2spice/.postconditions.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 14_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 14

14: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
15-mentor-calibre-comparison/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
15-mentor-calibre-comparison/.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
15-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,15-mentor-calibre-comparison,../design/mentor-calibre-comparison,15-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.adk: 15-mentor-calibre-comparison/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,15-mentor-calibre-comparison/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.design.lvs.v: 15-mentor-calibre-comparison/.stamp 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,15-mentor-calibre-comparison/inputs,design.lvs.v,../../9-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")
15-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 15-mentor-calibre-comparison/.stamp 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,15-mentor-calibre-comparison/inputs,design_extracted.spice,../../14-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 15-mentor-calibre-comparison/.prebuilt)","")

define 15_mentor_calibre_comparison_commands_rule
	mkdir -p 15-mentor-calibre-comparison/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-run 15-mentor-calibre-comparison && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-debug 15-mentor-calibre-comparison; fi && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-check-preconditions.py 15-mentor-calibre-comparison; fi && if [[ -e .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/15-mentor-calibre-comparison/mflowgen-check-postconditions.py 15-mentor-calibre-comparison; fi && cd 15-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 15-mentor-calibre-comparison/outputs/*
endef

15-mentor-calibre-comparison/.execstamp: 15-mentor-calibre-comparison/.stamp 15-mentor-calibre-comparison/inputs/.stamp.adk 15-mentor-calibre-comparison/inputs/.stamp.design.lvs.v 15-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice
	$(call 15_mentor_calibre_comparison_commands_rule)
	touch $@

15-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 15-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

15-mentor-calibre-comparison/outputs/.stamp.lvs.report: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,15-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 15_mentor_calibre_comparison_post_conditions_commands_rule
	cd 15-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

15-mentor-calibre-comparison/.postconditions.stamp: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 15_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/.postconditions.stamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 15

15: 15-mentor-calibre-comparison/.execstamp 15-mentor-calibre-comparison/.postconditions.stamp 15-mentor-calibre-comparison/outputs/.execstamp.lvs.report 15-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 15_debug_rule
	cd 15-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 15_debug_rule)

.PHONY: debug-15

debug-15: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/.stamp: 14-open-magic-gds2spice/.execstamp 14-open-magic-gds2spice/.postconditions.stamp 14-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
16-netgen-lvs-gds/.stamp: 2-skywater-130nm/.execstamp 2-skywater-130nm/.postconditions.stamp 2-skywater-130nm/outputs/.execstamp.adk 2-skywater-130nm/outputs/.stamp.adk
16-netgen-lvs-gds/.stamp: 9-cadence-innovus-signoff/.execstamp 9-cadence-innovus-signoff/.postconditions.stamp 9-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.execstamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.lef 9-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.sdc 9-cadence-innovus-signoff/outputs/.execstamp.design.sdf 9-cadence-innovus-signoff/outputs/.execstamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.execstamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.execstamp.design.virtuoso.v 9-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 9-cadence-innovus-signoff/outputs/.stamp.design.checkpoint 9-cadence-innovus-signoff/outputs/.stamp.design.def.gz 9-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 9-cadence-innovus-signoff/outputs/.stamp.design.lef 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v 9-cadence-innovus-signoff/outputs/.stamp.design.rcbest.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.sdc 9-cadence-innovus-signoff/outputs/.stamp.design.sdf 9-cadence-innovus-signoff/outputs/.stamp.design.spef.gz 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.pg.v 9-cadence-innovus-signoff/outputs/.stamp.design.vcs.v 9-cadence-innovus-signoff/outputs/.stamp.design.virtuoso.v
16-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,16-netgen-lvs-gds,../design/netgen-lvs-gds,16-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.adk: 16-netgen-lvs-gds/.stamp 2-skywater-130nm/outputs/.stamp.adk
	$(call symlink,16-netgen-lvs-gds/inputs,adk,../../2-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.design.lvs.v: 16-netgen-lvs-gds/.stamp 9-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,16-netgen-lvs-gds/inputs,design.lvs.v,../../9-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")
16-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 16-netgen-lvs-gds/.stamp 14-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,16-netgen-lvs-gds/inputs,design_extracted.spice,../../14-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 16-netgen-lvs-gds/.prebuilt)","")

define 16_netgen_lvs_gds_commands_rule
	mkdir -p 16-netgen-lvs-gds/outputs && set -o pipefail && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-run 16-netgen-lvs-gds && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-debug 16-netgen-lvs-gds; fi && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-check-preconditions.py 16-netgen-lvs-gds; fi && if [[ -e .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/16-netgen-lvs-gds/mflowgen-check-postconditions.py 16-netgen-lvs-gds; fi && cd 16-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 16-netgen-lvs-gds/outputs/*
endef

16-netgen-lvs-gds/.execstamp: 16-netgen-lvs-gds/.stamp 16-netgen-lvs-gds/inputs/.stamp.adk 16-netgen-lvs-gds/inputs/.stamp.design.lvs.v 16-netgen-lvs-gds/inputs/.stamp.design_extracted.spice
	$(call 16_netgen_lvs_gds_commands_rule)
	touch $@

16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 16-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

16-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,16-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 16_netgen_lvs_gds_post_conditions_commands_rule
	cd 16-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

16-netgen-lvs-gds/.postconditions.stamp: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 16_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/.postconditions.stamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 16

16: 16-netgen-lvs-gds/.execstamp 16-netgen-lvs-gds/.postconditions.stamp 16-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 16-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# Misc
# ------------------------------------------------------------------------

# Clean

.PHONY: clean-all

clean-all:
	@find . -maxdepth 1 ! -name Makefile ! -name .mflowgen\* ! -name \. ! -name \.\. -exec rm -rf {} +

.PHONY: clean-0

clean-0:
	rm -rf ./0-info

.PHONY: clean-info

clean-info: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-rtl

.PHONY: clean-rtl

clean-rtl: clean-1

.PHONY: clean-10

clean-10:
	rm -rf ./10-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-10

.PHONY: clean-11

clean-11:
	rm -rf ./11-open-magic-def2spice

.PHONY: clean-open-magic-def2spice

clean-open-magic-def2spice: clean-11

.PHONY: clean-12

clean-12:
	rm -rf ./12-netgen-lvs-def

.PHONY: clean-netgen-lvs-def

clean-netgen-lvs-def: clean-12

.PHONY: clean-13

clean-13:
	rm -rf ./13-open-magic-drc

.PHONY: clean-open-magic-drc

clean-open-magic-drc: clean-13

.PHONY: clean-14

clean-14:
	rm -rf ./14-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-14

.PHONY: clean-15

clean-15:
	rm -rf ./15-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-15

.PHONY: clean-16

clean-16:
	rm -rf ./16-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-16

.PHONY: clean-2

clean-2:
	rm -rf ./2-skywater-130nm

.PHONY: clean-skywater-130nm

clean-skywater-130nm: clean-2

.PHONY: clean-3

clean-3:
	rm -rf ./3-dummy_dc

.PHONY: clean-dummy_dc

clean-dummy_dc: clean-3

.PHONY: clean-4

clean-4:
	rm -rf ./4-cadence-innovus-flowsetup

.PHONY: clean-cadence-innovus-flowsetup

clean-cadence-innovus-flowsetup: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-cadence-innovus-init

.PHONY: clean-cadence-innovus-init

clean-cadence-innovus-init: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-cadence-innovus-power

.PHONY: clean-cadence-innovus-power

clean-cadence-innovus-power: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-cadence-innovus-place

.PHONY: clean-cadence-innovus-place

clean-cadence-innovus-place: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-cadence-innovus-route

.PHONY: clean-cadence-innovus-route

clean-cadence-innovus-route: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-cadence-innovus-signoff

.PHONY: clean-cadence-innovus-signoff

clean-cadence-innovus-signoff: clean-9

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/info 0-info | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/info.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-info.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/rtl 1-rtl | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/rtl.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-rtl.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../skywater-130nm-analog-adk 2-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../skywater-130nm-analog-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-skywater-130nm.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/dummy_dc 3-dummy_dc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/dummy_dc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-dummy_dc.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/cadence-innovus-flowsetup 4-cadence-innovus-flowsetup | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/cadence-innovus-flowsetup.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-cadence-innovus-flowsetup.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-init 5-cadence-innovus-init | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-init.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-cadence-innovus-init.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-power 6-cadence-innovus-power | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-power.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-cadence-innovus-power.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-place 7-cadence-innovus-place | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-place.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-cadence-innovus-place.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-route 8-cadence-innovus-route | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-route.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-cadence-innovus-route.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-signoff 9-cadence-innovus-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-cadence-innovus-signoff.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../mflowgen/steps/mentor-calibre-gdsmerge 10-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../mflowgen/steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-11

diff-11:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-def2spice 11-open-magic-def2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-def2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 11-open-magic-def2spice.*' && echo || true

.PHONY: diff-12

diff-12:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/netgen-lvs-def 12-netgen-lvs-def | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/netgen-lvs-def.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 12-netgen-lvs-def.*' && echo || true

.PHONY: diff-13

diff-13:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-drc 13-open-magic-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 13-open-magic-drc.*' && echo || true

.PHONY: diff-14

diff-14:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice 14-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 14-open-magic-gds2spice.*' && echo || true

.PHONY: diff-15

diff-15:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison 15-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 15-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-16

diff-16:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/netgen-lvs-gds 16-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/netgen-lvs-gds.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 16-netgen-lvs-gds.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t info && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-info/configure.yml

.PHONY: info-1

info-1:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t rtl && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-rtl/configure.yml

.PHONY: info-2

info-2:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-skywater-130nm/configure.yml

.PHONY: info-3

info-3:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t dummy_dc && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-dummy_dc/configure.yml

.PHONY: info-4

info-4:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-flowsetup && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-cadence-innovus-flowsetup/configure.yml

.PHONY: info-5

info-5:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-init && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-cadence-innovus-init/configure.yml

.PHONY: info-6

info-6:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-power && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-cadence-innovus-power/configure.yml

.PHONY: info-7

info-7:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-place && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-cadence-innovus-place/configure.yml

.PHONY: info-8

info-8:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-route && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-cadence-innovus-route/configure.yml

.PHONY: info-9

info-9:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-cadence-innovus-signoff/configure.yml

.PHONY: info-10

info-10:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-11

info-11:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/11-open-magic-def2spice/configure.yml

.PHONY: info-12

info-12:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/12-netgen-lvs-def/configure.yml

.PHONY: info-13

info-13:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/13-open-magic-drc/configure.yml

.PHONY: info-14

info-14:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/14-open-magic-gds2spice/configure.yml

.PHONY: info-15

info-15:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/15-mentor-calibre-comparison/configure.yml

.PHONY: info-16

info-16:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/16-netgen-lvs-gds/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : info" "  1 : rtl" "  2 : skywater-130nm" "  3 : dummy_dc" "  4 : cadence-innovus-flowsetup" "  5 : cadence-innovus-init" "  6 : cadence-innovus-power" "  7 : cadence-innovus-place" "  8 : cadence-innovus-route" "  9 : cadence-innovus-signoff" " 10 : mentor-calibre-gdsmerge" " 11 : open-magic-def2spice" " 12 : netgen-lvs-def" " 13 : open-magic-drc" " 14 : open-magic-gds2spice" " 15 : mentor-calibre-comparison" " 16 : netgen-lvs-gds" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-5  : debug-cadence-innovus-init" "debug-6  : debug-cadence-innovus-power" "debug-7  : debug-cadence-innovus-place" "debug-8  : debug-cadence-innovus-route" "debug-9  : debug-cadence-innovus-signoff" "debug-10 : debug-mentor-calibre-gdsmerge" "debug-15 : debug-mentor-calibre-comparison" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/lyt1314/ee372/aloe-sky130/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-info,1-rtl,2-skywater-130nm,3-dummy_dc,4-cadence-innovus-flowsetup,5-cadence-innovus-init,6-cadence-innovus-power,7-cadence-innovus-place,8-cadence-innovus-route,9-cadence-innovus-signoff,10-mentor-calibre-gdsmerge,11-open-magic-def2spice,12-netgen-lvs-def,13-open-magic-drc,14-open-magic-gds2spice,15-mentor-calibre-comparison,16-netgen-lvs-gds

