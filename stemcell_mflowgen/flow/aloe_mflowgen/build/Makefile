#=========================================================================
# Makefile
#=========================================================================
# Generator : /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/backends/make_backend.py

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

default: cadence-innovus-signoff skywater-130nm mentor-calibre-gdsmerge open-magic-def2spice netgen-lvs-def open-magic-antenna open-magic-drc open-magic-gds2spice mentor-calibre-comparison netgen-lvs-gds netgen-lvs-gds-device

# ------------------------------------------------------------------------
# cadence-innovus-signoff
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 0-cadence-innovus-signoff/.prebuilt)","")
0-cadence-innovus-signoff/.stamp:
	$(call cpdir-and-parameterize,0-cadence-innovus-signoff,../design/cadence-innovus-signoff,0-cadence-innovus-signoff/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 0-cadence-innovus-signoff/.prebuilt)","")

define 0_cadence_innovus_signoff_commands_rule
	mkdir -p 0-cadence-innovus-signoff/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && chmod +x .mflowgen/0-cadence-innovus-signoff/mflowgen-run && cp -f .mflowgen/0-cadence-innovus-signoff/mflowgen-run 0-cadence-innovus-signoff && if [[ -e .mflowgen/0-cadence-innovus-signoff/mflowgen-debug ]]; then chmod +x .mflowgen/0-cadence-innovus-signoff/mflowgen-debug && cp -f .mflowgen/0-cadence-innovus-signoff/mflowgen-debug 0-cadence-innovus-signoff; fi && if [[ -e .mflowgen/0-cadence-innovus-signoff/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/0-cadence-innovus-signoff/mflowgen-check-preconditions.py && cp -f .mflowgen/0-cadence-innovus-signoff/mflowgen-check-preconditions.py 0-cadence-innovus-signoff; fi && if [[ -e .mflowgen/0-cadence-innovus-signoff/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/0-cadence-innovus-signoff/mflowgen-check-postconditions.py && cp -f .mflowgen/0-cadence-innovus-signoff/mflowgen-check-postconditions.py 0-cadence-innovus-signoff; fi && cd 0-cadence-innovus-signoff && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 0-cadence-innovus-signoff/outputs/*
endef

0-cadence-innovus-signoff/.execstamp: 0-cadence-innovus-signoff/.stamp
	$(call 0_cadence_innovus_signoff_commands_rule)
	touch $@

0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz: 0-cadence-innovus-signoff/.execstamp
	touch $@
0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds: 0-cadence-innovus-signoff/.execstamp
	touch $@
0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v: 0-cadence-innovus-signoff/.execstamp
	touch $@
0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz: 0-cadence-innovus-signoff/.execstamp
	touch $@

endif

# collect outputs

0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v
	$(call stamp,0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz)

0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v
	$(call stamp,0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds)

0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v
	$(call stamp,0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v)

0-cadence-innovus-signoff/outputs/.stamp.design.def.gz: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v
	$(call stamp,0-cadence-innovus-signoff/outputs/.stamp.design.def.gz)

# post-conditions

define 0_cadence_innovus_signoff_post_conditions_commands_rule
	cd 0-cadence-innovus-signoff && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

0-cadence-innovus-signoff/.postconditions.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call 0_cadence_innovus_signoff_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: cadence-innovus-signoff

cadence-innovus-signoff: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v

.PHONY: 0

0: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v

# debug

# ------------------------------------------------------------------------
# skywater-130nm
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 1-skywater-130nm/.prebuilt)","")
1-skywater-130nm/.stamp:
	$(call cpdir-and-parameterize,1-skywater-130nm,../../../../../mflowgen_flow/mflowgen/adks/skywater-130nm-analog-adk,1-skywater-130nm/.stamp)
endif

# collect inputs

# execute

ifeq ("$(wildcard 1-skywater-130nm/.prebuilt)","")

define 1_skywater_130nm_commands_rule
	mkdir -p 1-skywater-130nm/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && chmod +x .mflowgen/1-skywater-130nm/mflowgen-run && cp -f .mflowgen/1-skywater-130nm/mflowgen-run 1-skywater-130nm && if [[ -e .mflowgen/1-skywater-130nm/mflowgen-debug ]]; then chmod +x .mflowgen/1-skywater-130nm/mflowgen-debug && cp -f .mflowgen/1-skywater-130nm/mflowgen-debug 1-skywater-130nm; fi && if [[ -e .mflowgen/1-skywater-130nm/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/1-skywater-130nm/mflowgen-check-preconditions.py && cp -f .mflowgen/1-skywater-130nm/mflowgen-check-preconditions.py 1-skywater-130nm; fi && if [[ -e .mflowgen/1-skywater-130nm/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/1-skywater-130nm/mflowgen-check-postconditions.py && cp -f .mflowgen/1-skywater-130nm/mflowgen-check-postconditions.py 1-skywater-130nm; fi && cd 1-skywater-130nm && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 1-skywater-130nm/outputs/*
endef

1-skywater-130nm/.execstamp: 1-skywater-130nm/.stamp
	$(call 1_skywater_130nm_commands_rule)
	touch $@

1-skywater-130nm/outputs/.execstamp.adk: 1-skywater-130nm/.execstamp
	touch $@

endif

# collect outputs

1-skywater-130nm/outputs/.stamp.adk: 1-skywater-130nm/.execstamp 1-skywater-130nm/outputs/.execstamp.adk
	$(call stamp,1-skywater-130nm/outputs/.stamp.adk)

# post-conditions

define 1_skywater_130nm_post_conditions_commands_rule
	cd 1-skywater-130nm && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

1-skywater-130nm/.postconditions.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
	$(call 1_skywater_130nm_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: skywater-130nm

skywater-130nm: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk

.PHONY: 1

1: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk

# debug

# ------------------------------------------------------------------------
# mentor-calibre-gdsmerge
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 2-mentor-calibre-gdsmerge/.prebuilt)","")
2-mentor-calibre-gdsmerge/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
2-mentor-calibre-gdsmerge/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
2-mentor-calibre-gdsmerge/.stamp:
	$(call cpdir-and-parameterize,2-mentor-calibre-gdsmerge,../../../../../mflowgen_flow/mflowgen/steps/mentor-calibre-gdsmerge,2-mentor-calibre-gdsmerge/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 2-mentor-calibre-gdsmerge/.prebuilt)","")
2-mentor-calibre-gdsmerge/inputs/.stamp.adk: 2-mentor-calibre-gdsmerge/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,2-mentor-calibre-gdsmerge/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 2-mentor-calibre-gdsmerge/.prebuilt)","")
2-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz: 2-mentor-calibre-gdsmerge/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz
	$(call symlink,2-mentor-calibre-gdsmerge/inputs,design.gds.gz,../../0-cadence-innovus-signoff/outputs/design.gds.gz,.stamp.design.gds.gz)
endif

# execute

ifeq ("$(wildcard 2-mentor-calibre-gdsmerge/.prebuilt)","")

define 2_mentor_calibre_gdsmerge_commands_rule
	mkdir -p 2-mentor-calibre-gdsmerge/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && chmod +x .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-run && cp -f .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-run 2-mentor-calibre-gdsmerge && if [[ -e .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-debug ]]; then chmod +x .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-debug && cp -f .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-debug 2-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py && cp -f .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-preconditions.py 2-mentor-calibre-gdsmerge; fi && if [[ -e .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py && cp -f .mflowgen/2-mentor-calibre-gdsmerge/mflowgen-check-postconditions.py 2-mentor-calibre-gdsmerge; fi && cd 2-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 2-mentor-calibre-gdsmerge/outputs/*
endef

2-mentor-calibre-gdsmerge/.execstamp: 2-mentor-calibre-gdsmerge/.stamp 2-mentor-calibre-gdsmerge/inputs/.stamp.adk 2-mentor-calibre-gdsmerge/inputs/.stamp.design.gds.gz
	$(call 2_mentor_calibre_gdsmerge_commands_rule)
	touch $@

2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds: 2-mentor-calibre-gdsmerge/.execstamp
	touch $@

endif

# collect outputs

2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds
	$(call stamp,2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds)

# post-conditions

define 2_mentor_calibre_gdsmerge_post_conditions_commands_rule
	cd 2-mentor-calibre-gdsmerge && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

2-mentor-calibre-gdsmerge/.postconditions.stamp: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call 2_mentor_calibre_gdsmerge_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-gdsmerge

mentor-calibre-gdsmerge: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/.postconditions.stamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

.PHONY: 2

2: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/.postconditions.stamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds

# debug

define 2_debug_rule
	cd 2-mentor-calibre-gdsmerge && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-gdsmerge: 
	$(call 2_debug_rule)

.PHONY: debug-2

debug-2: debug-mentor-calibre-gdsmerge

# ------------------------------------------------------------------------
# open-magic-def2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 3-open-magic-def2spice/.prebuilt)","")
3-open-magic-def2spice/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
3-open-magic-def2spice/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
3-open-magic-def2spice/.stamp:
	$(call cpdir-and-parameterize,3-open-magic-def2spice,../design/open-magic-def2spice,3-open-magic-def2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 3-open-magic-def2spice/.prebuilt)","")
3-open-magic-def2spice/inputs/.stamp.adk: 3-open-magic-def2spice/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,3-open-magic-def2spice/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 3-open-magic-def2spice/.prebuilt)","")
3-open-magic-def2spice/inputs/.stamp.design.def.gz: 3-open-magic-def2spice/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz
	$(call symlink,3-open-magic-def2spice/inputs,design.def.gz,../../0-cadence-innovus-signoff/outputs/design.def.gz,.stamp.design.def.gz)
endif

# execute

ifeq ("$(wildcard 3-open-magic-def2spice/.prebuilt)","")

define 3_open_magic_def2spice_commands_rule
	mkdir -p 3-open-magic-def2spice/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && chmod +x .mflowgen/3-open-magic-def2spice/mflowgen-run && cp -f .mflowgen/3-open-magic-def2spice/mflowgen-run 3-open-magic-def2spice && if [[ -e .mflowgen/3-open-magic-def2spice/mflowgen-debug ]]; then chmod +x .mflowgen/3-open-magic-def2spice/mflowgen-debug && cp -f .mflowgen/3-open-magic-def2spice/mflowgen-debug 3-open-magic-def2spice; fi && if [[ -e .mflowgen/3-open-magic-def2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/3-open-magic-def2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/3-open-magic-def2spice/mflowgen-check-preconditions.py 3-open-magic-def2spice; fi && if [[ -e .mflowgen/3-open-magic-def2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/3-open-magic-def2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/3-open-magic-def2spice/mflowgen-check-postconditions.py 3-open-magic-def2spice; fi && cd 3-open-magic-def2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 3-open-magic-def2spice/outputs/*
endef

3-open-magic-def2spice/.execstamp: 3-open-magic-def2spice/.stamp 3-open-magic-def2spice/inputs/.stamp.adk 3-open-magic-def2spice/inputs/.stamp.design.def.gz
	$(call 3_open_magic_def2spice_commands_rule)
	touch $@

3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice: 3-open-magic-def2spice/.execstamp
	touch $@

endif

# collect outputs

3-open-magic-def2spice/outputs/.stamp.design_extracted.spice: 3-open-magic-def2spice/.execstamp 3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,3-open-magic-def2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 3_open_magic_def2spice_post_conditions_commands_rule
	cd 3-open-magic-def2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

3-open-magic-def2spice/.postconditions.stamp: 3-open-magic-def2spice/.execstamp 3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 3-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call 3_open_magic_def2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-def2spice

open-magic-def2spice: 3-open-magic-def2spice/.execstamp 3-open-magic-def2spice/.postconditions.stamp 3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 3-open-magic-def2spice/outputs/.stamp.design_extracted.spice

.PHONY: 3

3: 3-open-magic-def2spice/.execstamp 3-open-magic-def2spice/.postconditions.stamp 3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 3-open-magic-def2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# netgen-lvs-def
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 4-netgen-lvs-def/.prebuilt)","")
4-netgen-lvs-def/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
4-netgen-lvs-def/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
4-netgen-lvs-def/.stamp: 3-open-magic-def2spice/.execstamp 3-open-magic-def2spice/.postconditions.stamp 3-open-magic-def2spice/outputs/.execstamp.design_extracted.spice 3-open-magic-def2spice/outputs/.stamp.design_extracted.spice
4-netgen-lvs-def/.stamp:
	$(call cpdir-and-parameterize,4-netgen-lvs-def,../design/netgen-lvs-def,4-netgen-lvs-def/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 4-netgen-lvs-def/.prebuilt)","")
4-netgen-lvs-def/inputs/.stamp.adk: 4-netgen-lvs-def/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,4-netgen-lvs-def/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 4-netgen-lvs-def/.prebuilt)","")
4-netgen-lvs-def/inputs/.stamp.design.lvs.v: 4-netgen-lvs-def/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,4-netgen-lvs-def/inputs,design.lvs.v,../../0-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 4-netgen-lvs-def/.prebuilt)","")
4-netgen-lvs-def/inputs/.stamp.design_extracted.spice: 4-netgen-lvs-def/.stamp 3-open-magic-def2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,4-netgen-lvs-def/inputs,design_extracted.spice,../../3-open-magic-def2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 4-netgen-lvs-def/.prebuilt)","")

define 4_netgen_lvs_def_commands_rule
	mkdir -p 4-netgen-lvs-def/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && chmod +x .mflowgen/4-netgen-lvs-def/mflowgen-run && cp -f .mflowgen/4-netgen-lvs-def/mflowgen-run 4-netgen-lvs-def && if [[ -e .mflowgen/4-netgen-lvs-def/mflowgen-debug ]]; then chmod +x .mflowgen/4-netgen-lvs-def/mflowgen-debug && cp -f .mflowgen/4-netgen-lvs-def/mflowgen-debug 4-netgen-lvs-def; fi && if [[ -e .mflowgen/4-netgen-lvs-def/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/4-netgen-lvs-def/mflowgen-check-preconditions.py && cp -f .mflowgen/4-netgen-lvs-def/mflowgen-check-preconditions.py 4-netgen-lvs-def; fi && if [[ -e .mflowgen/4-netgen-lvs-def/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/4-netgen-lvs-def/mflowgen-check-postconditions.py && cp -f .mflowgen/4-netgen-lvs-def/mflowgen-check-postconditions.py 4-netgen-lvs-def; fi && cd 4-netgen-lvs-def && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 4-netgen-lvs-def/outputs/*
endef

4-netgen-lvs-def/.execstamp: 4-netgen-lvs-def/.stamp 4-netgen-lvs-def/inputs/.stamp.adk 4-netgen-lvs-def/inputs/.stamp.design.lvs.v 4-netgen-lvs-def/inputs/.stamp.design_extracted.spice
	$(call 4_netgen_lvs_def_commands_rule)
	touch $@

4-netgen-lvs-def/outputs/.execstamp.lvs_results.log: 4-netgen-lvs-def/.execstamp
	touch $@

endif

# collect outputs

4-netgen-lvs-def/outputs/.stamp.lvs_results.log: 4-netgen-lvs-def/.execstamp 4-netgen-lvs-def/outputs/.execstamp.lvs_results.log
	$(call stamp,4-netgen-lvs-def/outputs/.stamp.lvs_results.log)

# post-conditions

define 4_netgen_lvs_def_post_conditions_commands_rule
	cd 4-netgen-lvs-def && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

4-netgen-lvs-def/.postconditions.stamp: 4-netgen-lvs-def/.execstamp 4-netgen-lvs-def/outputs/.execstamp.lvs_results.log 4-netgen-lvs-def/outputs/.stamp.lvs_results.log
	$(call 4_netgen_lvs_def_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-def

netgen-lvs-def: 4-netgen-lvs-def/.execstamp 4-netgen-lvs-def/.postconditions.stamp 4-netgen-lvs-def/outputs/.execstamp.lvs_results.log 4-netgen-lvs-def/outputs/.stamp.lvs_results.log

.PHONY: 4

4: 4-netgen-lvs-def/.execstamp 4-netgen-lvs-def/.postconditions.stamp 4-netgen-lvs-def/outputs/.execstamp.lvs_results.log 4-netgen-lvs-def/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-antenna
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 5-open-magic-antenna/.prebuilt)","")
5-open-magic-antenna/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
5-open-magic-antenna/.stamp: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/.postconditions.stamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
5-open-magic-antenna/.stamp:
	$(call cpdir-and-parameterize,5-open-magic-antenna,../design/open-magic-antenna,5-open-magic-antenna/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 5-open-magic-antenna/.prebuilt)","")
5-open-magic-antenna/inputs/.stamp.adk: 5-open-magic-antenna/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,5-open-magic-antenna/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 5-open-magic-antenna/.prebuilt)","")
5-open-magic-antenna/inputs/.stamp.design_merged.gds: 5-open-magic-antenna/.stamp 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,5-open-magic-antenna/inputs,design_merged.gds,../../2-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 5-open-magic-antenna/.prebuilt)","")

define 5_open_magic_antenna_commands_rule
	mkdir -p 5-open-magic-antenna/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && chmod +x .mflowgen/5-open-magic-antenna/mflowgen-run && cp -f .mflowgen/5-open-magic-antenna/mflowgen-run 5-open-magic-antenna && if [[ -e .mflowgen/5-open-magic-antenna/mflowgen-debug ]]; then chmod +x .mflowgen/5-open-magic-antenna/mflowgen-debug && cp -f .mflowgen/5-open-magic-antenna/mflowgen-debug 5-open-magic-antenna; fi && if [[ -e .mflowgen/5-open-magic-antenna/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/5-open-magic-antenna/mflowgen-check-preconditions.py && cp -f .mflowgen/5-open-magic-antenna/mflowgen-check-preconditions.py 5-open-magic-antenna; fi && if [[ -e .mflowgen/5-open-magic-antenna/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/5-open-magic-antenna/mflowgen-check-postconditions.py && cp -f .mflowgen/5-open-magic-antenna/mflowgen-check-postconditions.py 5-open-magic-antenna; fi && cd 5-open-magic-antenna && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 5-open-magic-antenna/outputs/*
endef

5-open-magic-antenna/.execstamp: 5-open-magic-antenna/.stamp 5-open-magic-antenna/inputs/.stamp.adk 5-open-magic-antenna/inputs/.stamp.design_merged.gds
	$(call 5_open_magic_antenna_commands_rule)
	touch $@

5-open-magic-antenna/outputs/.execstamp.antenna_check.log: 5-open-magic-antenna/.execstamp
	touch $@

endif

# collect outputs

5-open-magic-antenna/outputs/.stamp.antenna_check.log: 5-open-magic-antenna/.execstamp 5-open-magic-antenna/outputs/.execstamp.antenna_check.log
	$(call stamp,5-open-magic-antenna/outputs/.stamp.antenna_check.log)

# post-conditions

define 5_open_magic_antenna_post_conditions_commands_rule
	cd 5-open-magic-antenna && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

5-open-magic-antenna/.postconditions.stamp: 5-open-magic-antenna/.execstamp 5-open-magic-antenna/outputs/.execstamp.antenna_check.log 5-open-magic-antenna/outputs/.stamp.antenna_check.log
	$(call 5_open_magic_antenna_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-antenna

open-magic-antenna: 5-open-magic-antenna/.execstamp 5-open-magic-antenna/.postconditions.stamp 5-open-magic-antenna/outputs/.execstamp.antenna_check.log 5-open-magic-antenna/outputs/.stamp.antenna_check.log

.PHONY: 5

5: 5-open-magic-antenna/.execstamp 5-open-magic-antenna/.postconditions.stamp 5-open-magic-antenna/outputs/.execstamp.antenna_check.log 5-open-magic-antenna/outputs/.stamp.antenna_check.log

# debug

# ------------------------------------------------------------------------
# open-magic-drc
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 6-open-magic-drc/.prebuilt)","")
6-open-magic-drc/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
6-open-magic-drc/.stamp: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/.postconditions.stamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
6-open-magic-drc/.stamp:
	$(call cpdir-and-parameterize,6-open-magic-drc,../design/open-magic-drc,6-open-magic-drc/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 6-open-magic-drc/.prebuilt)","")
6-open-magic-drc/inputs/.stamp.adk: 6-open-magic-drc/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,6-open-magic-drc/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 6-open-magic-drc/.prebuilt)","")
6-open-magic-drc/inputs/.stamp.design_merged.gds: 6-open-magic-drc/.stamp 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,6-open-magic-drc/inputs,design_merged.gds,../../2-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 6-open-magic-drc/.prebuilt)","")

define 6_open_magic_drc_commands_rule
	mkdir -p 6-open-magic-drc/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && chmod +x .mflowgen/6-open-magic-drc/mflowgen-run && cp -f .mflowgen/6-open-magic-drc/mflowgen-run 6-open-magic-drc && if [[ -e .mflowgen/6-open-magic-drc/mflowgen-debug ]]; then chmod +x .mflowgen/6-open-magic-drc/mflowgen-debug && cp -f .mflowgen/6-open-magic-drc/mflowgen-debug 6-open-magic-drc; fi && if [[ -e .mflowgen/6-open-magic-drc/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/6-open-magic-drc/mflowgen-check-preconditions.py && cp -f .mflowgen/6-open-magic-drc/mflowgen-check-preconditions.py 6-open-magic-drc; fi && if [[ -e .mflowgen/6-open-magic-drc/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/6-open-magic-drc/mflowgen-check-postconditions.py && cp -f .mflowgen/6-open-magic-drc/mflowgen-check-postconditions.py 6-open-magic-drc; fi && cd 6-open-magic-drc && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 6-open-magic-drc/outputs/*
endef

6-open-magic-drc/.execstamp: 6-open-magic-drc/.stamp 6-open-magic-drc/inputs/.stamp.adk 6-open-magic-drc/inputs/.stamp.design_merged.gds
	$(call 6_open_magic_drc_commands_rule)
	touch $@

6-open-magic-drc/outputs/.execstamp.drc_results.log: 6-open-magic-drc/.execstamp
	touch $@

endif

# collect outputs

6-open-magic-drc/outputs/.stamp.drc_results.log: 6-open-magic-drc/.execstamp 6-open-magic-drc/outputs/.execstamp.drc_results.log
	$(call stamp,6-open-magic-drc/outputs/.stamp.drc_results.log)

# post-conditions

define 6_open_magic_drc_post_conditions_commands_rule
	cd 6-open-magic-drc && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

6-open-magic-drc/.postconditions.stamp: 6-open-magic-drc/.execstamp 6-open-magic-drc/outputs/.execstamp.drc_results.log 6-open-magic-drc/outputs/.stamp.drc_results.log
	$(call 6_open_magic_drc_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-drc

open-magic-drc: 6-open-magic-drc/.execstamp 6-open-magic-drc/.postconditions.stamp 6-open-magic-drc/outputs/.execstamp.drc_results.log 6-open-magic-drc/outputs/.stamp.drc_results.log

.PHONY: 6

6: 6-open-magic-drc/.execstamp 6-open-magic-drc/.postconditions.stamp 6-open-magic-drc/outputs/.execstamp.drc_results.log 6-open-magic-drc/outputs/.stamp.drc_results.log

# debug

# ------------------------------------------------------------------------
# open-magic-gds2spice
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
7-open-magic-gds2spice/.stamp: 2-mentor-calibre-gdsmerge/.execstamp 2-mentor-calibre-gdsmerge/.postconditions.stamp 2-mentor-calibre-gdsmerge/outputs/.execstamp.design_merged.gds 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
7-open-magic-gds2spice/.stamp:
	$(call cpdir-and-parameterize,7-open-magic-gds2spice,../design/open-magic-gds2spice,7-open-magic-gds2spice/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/inputs/.stamp.adk: 7-open-magic-gds2spice/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,7-open-magic-gds2spice/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")
7-open-magic-gds2spice/inputs/.stamp.design_merged.gds: 7-open-magic-gds2spice/.stamp 2-mentor-calibre-gdsmerge/outputs/.stamp.design_merged.gds
	$(call symlink,7-open-magic-gds2spice/inputs,design_merged.gds,../../2-mentor-calibre-gdsmerge/outputs/design_merged.gds,.stamp.design_merged.gds)
endif

# execute

ifeq ("$(wildcard 7-open-magic-gds2spice/.prebuilt)","")

define 7_open_magic_gds2spice_commands_rule
	mkdir -p 7-open-magic-gds2spice/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-run && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-run 7-open-magic-gds2spice && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-debug ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-debug && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-debug 7-open-magic-gds2spice; fi && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-check-preconditions.py 7-open-magic-gds2spice; fi && if [[ -e .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py && cp -f .mflowgen/7-open-magic-gds2spice/mflowgen-check-postconditions.py 7-open-magic-gds2spice; fi && cd 7-open-magic-gds2spice && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 7-open-magic-gds2spice/outputs/*
endef

7-open-magic-gds2spice/.execstamp: 7-open-magic-gds2spice/.stamp 7-open-magic-gds2spice/inputs/.stamp.adk 7-open-magic-gds2spice/inputs/.stamp.design_merged.gds
	$(call 7_open_magic_gds2spice_commands_rule)
	touch $@

7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice: 7-open-magic-gds2spice/.execstamp
	touch $@

endif

# collect outputs

7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice
	$(call stamp,7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice)

# post-conditions

define 7_open_magic_gds2spice_post_conditions_commands_rule
	cd 7-open-magic-gds2spice && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

7-open-magic-gds2spice/.postconditions.stamp: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call 7_open_magic_gds2spice_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: open-magic-gds2spice

open-magic-gds2spice: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

.PHONY: 7

7: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice

# debug

# ------------------------------------------------------------------------
# mentor-calibre-comparison
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 8-mentor-calibre-comparison/.prebuilt)","")
8-mentor-calibre-comparison/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
8-mentor-calibre-comparison/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
8-mentor-calibre-comparison/.stamp: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
8-mentor-calibre-comparison/.stamp:
	$(call cpdir-and-parameterize,8-mentor-calibre-comparison,../design/mentor-calibre-comparison,8-mentor-calibre-comparison/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 8-mentor-calibre-comparison/.prebuilt)","")
8-mentor-calibre-comparison/inputs/.stamp.adk: 8-mentor-calibre-comparison/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,8-mentor-calibre-comparison/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 8-mentor-calibre-comparison/.prebuilt)","")
8-mentor-calibre-comparison/inputs/.stamp.design.lvs.v: 8-mentor-calibre-comparison/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,8-mentor-calibre-comparison/inputs,design.lvs.v,../../0-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 8-mentor-calibre-comparison/.prebuilt)","")
8-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice: 8-mentor-calibre-comparison/.stamp 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,8-mentor-calibre-comparison/inputs,design_extracted.spice,../../7-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 8-mentor-calibre-comparison/.prebuilt)","")

define 8_mentor_calibre_comparison_commands_rule
	mkdir -p 8-mentor-calibre-comparison/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && chmod +x .mflowgen/8-mentor-calibre-comparison/mflowgen-run && cp -f .mflowgen/8-mentor-calibre-comparison/mflowgen-run 8-mentor-calibre-comparison && if [[ -e .mflowgen/8-mentor-calibre-comparison/mflowgen-debug ]]; then chmod +x .mflowgen/8-mentor-calibre-comparison/mflowgen-debug && cp -f .mflowgen/8-mentor-calibre-comparison/mflowgen-debug 8-mentor-calibre-comparison; fi && if [[ -e .mflowgen/8-mentor-calibre-comparison/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/8-mentor-calibre-comparison/mflowgen-check-preconditions.py && cp -f .mflowgen/8-mentor-calibre-comparison/mflowgen-check-preconditions.py 8-mentor-calibre-comparison; fi && if [[ -e .mflowgen/8-mentor-calibre-comparison/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/8-mentor-calibre-comparison/mflowgen-check-postconditions.py && cp -f .mflowgen/8-mentor-calibre-comparison/mflowgen-check-postconditions.py 8-mentor-calibre-comparison; fi && cd 8-mentor-calibre-comparison && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 8-mentor-calibre-comparison/outputs/*
endef

8-mentor-calibre-comparison/.execstamp: 8-mentor-calibre-comparison/.stamp 8-mentor-calibre-comparison/inputs/.stamp.adk 8-mentor-calibre-comparison/inputs/.stamp.design.lvs.v 8-mentor-calibre-comparison/inputs/.stamp.design_extracted.spice
	$(call 8_mentor_calibre_comparison_commands_rule)
	touch $@

8-mentor-calibre-comparison/outputs/.execstamp.lvs.report: 8-mentor-calibre-comparison/.execstamp
	touch $@

endif

# collect outputs

8-mentor-calibre-comparison/outputs/.stamp.lvs.report: 8-mentor-calibre-comparison/.execstamp 8-mentor-calibre-comparison/outputs/.execstamp.lvs.report
	$(call stamp,8-mentor-calibre-comparison/outputs/.stamp.lvs.report)

# post-conditions

define 8_mentor_calibre_comparison_post_conditions_commands_rule
	cd 8-mentor-calibre-comparison && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

8-mentor-calibre-comparison/.postconditions.stamp: 8-mentor-calibre-comparison/.execstamp 8-mentor-calibre-comparison/outputs/.execstamp.lvs.report 8-mentor-calibre-comparison/outputs/.stamp.lvs.report
	$(call 8_mentor_calibre_comparison_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: mentor-calibre-comparison

mentor-calibre-comparison: 8-mentor-calibre-comparison/.execstamp 8-mentor-calibre-comparison/.postconditions.stamp 8-mentor-calibre-comparison/outputs/.execstamp.lvs.report 8-mentor-calibre-comparison/outputs/.stamp.lvs.report

.PHONY: 8

8: 8-mentor-calibre-comparison/.execstamp 8-mentor-calibre-comparison/.postconditions.stamp 8-mentor-calibre-comparison/outputs/.execstamp.lvs.report 8-mentor-calibre-comparison/outputs/.stamp.lvs.report

# debug

define 8_debug_rule
	cd 8-mentor-calibre-comparison && ./mflowgen-debug 2>&1 | tee mflowgen-debug.log
endef

debug-mentor-calibre-comparison: 
	$(call 8_debug_rule)

.PHONY: debug-8

debug-8: debug-mentor-calibre-comparison

# ------------------------------------------------------------------------
# netgen-lvs-gds
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 9-netgen-lvs-gds/.prebuilt)","")
9-netgen-lvs-gds/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
9-netgen-lvs-gds/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
9-netgen-lvs-gds/.stamp: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
9-netgen-lvs-gds/.stamp:
	$(call cpdir-and-parameterize,9-netgen-lvs-gds,../design/netgen-lvs-gds,9-netgen-lvs-gds/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 9-netgen-lvs-gds/.prebuilt)","")
9-netgen-lvs-gds/inputs/.stamp.adk: 9-netgen-lvs-gds/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,9-netgen-lvs-gds/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 9-netgen-lvs-gds/.prebuilt)","")
9-netgen-lvs-gds/inputs/.stamp.design.lvs.v: 9-netgen-lvs-gds/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,9-netgen-lvs-gds/inputs,design.lvs.v,../../0-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 9-netgen-lvs-gds/.prebuilt)","")
9-netgen-lvs-gds/inputs/.stamp.design_extracted.spice: 9-netgen-lvs-gds/.stamp 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,9-netgen-lvs-gds/inputs,design_extracted.spice,../../7-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 9-netgen-lvs-gds/.prebuilt)","")

define 9_netgen_lvs_gds_commands_rule
	mkdir -p 9-netgen-lvs-gds/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && chmod +x .mflowgen/9-netgen-lvs-gds/mflowgen-run && cp -f .mflowgen/9-netgen-lvs-gds/mflowgen-run 9-netgen-lvs-gds && if [[ -e .mflowgen/9-netgen-lvs-gds/mflowgen-debug ]]; then chmod +x .mflowgen/9-netgen-lvs-gds/mflowgen-debug && cp -f .mflowgen/9-netgen-lvs-gds/mflowgen-debug 9-netgen-lvs-gds; fi && if [[ -e .mflowgen/9-netgen-lvs-gds/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/9-netgen-lvs-gds/mflowgen-check-preconditions.py && cp -f .mflowgen/9-netgen-lvs-gds/mflowgen-check-preconditions.py 9-netgen-lvs-gds; fi && if [[ -e .mflowgen/9-netgen-lvs-gds/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/9-netgen-lvs-gds/mflowgen-check-postconditions.py && cp -f .mflowgen/9-netgen-lvs-gds/mflowgen-check-postconditions.py 9-netgen-lvs-gds; fi && cd 9-netgen-lvs-gds && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 9-netgen-lvs-gds/outputs/*
endef

9-netgen-lvs-gds/.execstamp: 9-netgen-lvs-gds/.stamp 9-netgen-lvs-gds/inputs/.stamp.adk 9-netgen-lvs-gds/inputs/.stamp.design.lvs.v 9-netgen-lvs-gds/inputs/.stamp.design_extracted.spice
	$(call 9_netgen_lvs_gds_commands_rule)
	touch $@

9-netgen-lvs-gds/outputs/.execstamp.lvs_results.log: 9-netgen-lvs-gds/.execstamp
	touch $@

endif

# collect outputs

9-netgen-lvs-gds/outputs/.stamp.lvs_results.log: 9-netgen-lvs-gds/.execstamp 9-netgen-lvs-gds/outputs/.execstamp.lvs_results.log
	$(call stamp,9-netgen-lvs-gds/outputs/.stamp.lvs_results.log)

# post-conditions

define 9_netgen_lvs_gds_post_conditions_commands_rule
	cd 9-netgen-lvs-gds && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

9-netgen-lvs-gds/.postconditions.stamp: 9-netgen-lvs-gds/.execstamp 9-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 9-netgen-lvs-gds/outputs/.stamp.lvs_results.log
	$(call 9_netgen_lvs_gds_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds

netgen-lvs-gds: 9-netgen-lvs-gds/.execstamp 9-netgen-lvs-gds/.postconditions.stamp 9-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 9-netgen-lvs-gds/outputs/.stamp.lvs_results.log

.PHONY: 9

9: 9-netgen-lvs-gds/.execstamp 9-netgen-lvs-gds/.postconditions.stamp 9-netgen-lvs-gds/outputs/.execstamp.lvs_results.log 9-netgen-lvs-gds/outputs/.stamp.lvs_results.log

# debug

# ------------------------------------------------------------------------
# netgen-lvs-gds-device
# ------------------------------------------------------------------------

# build dir

ifeq ("$(wildcard 10-netgen-lvs-gds-device/.prebuilt)","")
10-netgen-lvs-gds-device/.stamp: 0-cadence-innovus-signoff/.execstamp 0-cadence-innovus-signoff/.postconditions.stamp 0-cadence-innovus-signoff/outputs/.execstamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.execstamp.design.def.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.execstamp.design.lvs.v 0-cadence-innovus-signoff/outputs/.stamp.design-merged.gds 0-cadence-innovus-signoff/outputs/.stamp.design.def.gz 0-cadence-innovus-signoff/outputs/.stamp.design.gds.gz 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
10-netgen-lvs-gds-device/.stamp: 1-skywater-130nm/.execstamp 1-skywater-130nm/.postconditions.stamp 1-skywater-130nm/outputs/.execstamp.adk 1-skywater-130nm/outputs/.stamp.adk
10-netgen-lvs-gds-device/.stamp: 7-open-magic-gds2spice/.execstamp 7-open-magic-gds2spice/.postconditions.stamp 7-open-magic-gds2spice/outputs/.execstamp.design_extracted.spice 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
10-netgen-lvs-gds-device/.stamp:
	$(call cpdir-and-parameterize,10-netgen-lvs-gds-device,../design/netgen-lvs-gds-device,10-netgen-lvs-gds-device/.stamp)
endif

# collect inputs

ifeq ("$(wildcard 10-netgen-lvs-gds-device/.prebuilt)","")
10-netgen-lvs-gds-device/inputs/.stamp.adk: 10-netgen-lvs-gds-device/.stamp 1-skywater-130nm/outputs/.stamp.adk
	$(call symlink,10-netgen-lvs-gds-device/inputs,adk,../../1-skywater-130nm/outputs/adk,.stamp.adk)
endif

ifeq ("$(wildcard 10-netgen-lvs-gds-device/.prebuilt)","")
10-netgen-lvs-gds-device/inputs/.stamp.design.lvs.v: 10-netgen-lvs-gds-device/.stamp 0-cadence-innovus-signoff/outputs/.stamp.design.lvs.v
	$(call symlink,10-netgen-lvs-gds-device/inputs,design.lvs.v,../../0-cadence-innovus-signoff/outputs/design.lvs.v,.stamp.design.lvs.v)
endif

ifeq ("$(wildcard 10-netgen-lvs-gds-device/.prebuilt)","")
10-netgen-lvs-gds-device/inputs/.stamp.design_extracted.spice: 10-netgen-lvs-gds-device/.stamp 7-open-magic-gds2spice/outputs/.stamp.design_extracted.spice
	$(call symlink,10-netgen-lvs-gds-device/inputs,design_extracted.spice,../../7-open-magic-gds2spice/outputs/design_extracted.spice,.stamp.design_extracted.spice)
endif

# execute

ifeq ("$(wildcard 10-netgen-lvs-gds-device/.prebuilt)","")

define 10_netgen_lvs_gds_device_commands_rule
	mkdir -p 10-netgen-lvs-gds-device/outputs && set -o pipefail && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds-device && chmod +x .mflowgen/10-netgen-lvs-gds-device/mflowgen-run && cp -f .mflowgen/10-netgen-lvs-gds-device/mflowgen-run 10-netgen-lvs-gds-device && if [[ -e .mflowgen/10-netgen-lvs-gds-device/mflowgen-debug ]]; then chmod +x .mflowgen/10-netgen-lvs-gds-device/mflowgen-debug && cp -f .mflowgen/10-netgen-lvs-gds-device/mflowgen-debug 10-netgen-lvs-gds-device; fi && if [[ -e .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-preconditions.py ]]; then chmod +x .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-preconditions.py && cp -f .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-preconditions.py 10-netgen-lvs-gds-device; fi && if [[ -e .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-postconditions.py ]]; then chmod +x .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-postconditions.py && cp -f .mflowgen/10-netgen-lvs-gds-device/mflowgen-check-postconditions.py 10-netgen-lvs-gds-device; fi && cd 10-netgen-lvs-gds-device && if [[ -e mflowgen-check-preconditions.py ]]; then ./mflowgen-check-preconditions.py || exit 1; fi && ./mflowgen-run 2>&1 | tee mflowgen-run.log || exit 1 && cd .. && touch -c 10-netgen-lvs-gds-device/outputs/*
endef

10-netgen-lvs-gds-device/.execstamp: 10-netgen-lvs-gds-device/.stamp 10-netgen-lvs-gds-device/inputs/.stamp.adk 10-netgen-lvs-gds-device/inputs/.stamp.design.lvs.v 10-netgen-lvs-gds-device/inputs/.stamp.design_extracted.spice
	$(call 10_netgen_lvs_gds_device_commands_rule)
	touch $@

10-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log: 10-netgen-lvs-gds-device/.execstamp
	touch $@

endif

# collect outputs

10-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log: 10-netgen-lvs-gds-device/.execstamp 10-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log
	$(call stamp,10-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log)

# post-conditions

define 10_netgen_lvs_gds_device_post_conditions_commands_rule
	cd 10-netgen-lvs-gds-device && if [[ -e mflowgen-check-postconditions.py ]]; then ./mflowgen-check-postconditions.py || exit 1; fi && cd ..
endef

10-netgen-lvs-gds-device/.postconditions.stamp: 10-netgen-lvs-gds-device/.execstamp 10-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 10-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log
	$(call 10_netgen_lvs_gds_device_post_conditions_commands_rule)
	touch $@

# alias

.PHONY: netgen-lvs-gds-device

netgen-lvs-gds-device: 10-netgen-lvs-gds-device/.execstamp 10-netgen-lvs-gds-device/.postconditions.stamp 10-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 10-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log

.PHONY: 10

10: 10-netgen-lvs-gds-device/.execstamp 10-netgen-lvs-gds-device/.postconditions.stamp 10-netgen-lvs-gds-device/outputs/.execstamp.lvs_results.log 10-netgen-lvs-gds-device/outputs/.stamp.lvs_results.log

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
	rm -rf ./0-cadence-innovus-signoff

.PHONY: clean-cadence-innovus-signoff

clean-cadence-innovus-signoff: clean-0

.PHONY: clean-1

clean-1:
	rm -rf ./1-skywater-130nm

.PHONY: clean-skywater-130nm

clean-skywater-130nm: clean-1

.PHONY: clean-10

clean-10:
	rm -rf ./10-netgen-lvs-gds-device

.PHONY: clean-netgen-lvs-gds-device

clean-netgen-lvs-gds-device: clean-10

.PHONY: clean-2

clean-2:
	rm -rf ./2-mentor-calibre-gdsmerge

.PHONY: clean-mentor-calibre-gdsmerge

clean-mentor-calibre-gdsmerge: clean-2

.PHONY: clean-3

clean-3:
	rm -rf ./3-open-magic-def2spice

.PHONY: clean-open-magic-def2spice

clean-open-magic-def2spice: clean-3

.PHONY: clean-4

clean-4:
	rm -rf ./4-netgen-lvs-def

.PHONY: clean-netgen-lvs-def

clean-netgen-lvs-def: clean-4

.PHONY: clean-5

clean-5:
	rm -rf ./5-open-magic-antenna

.PHONY: clean-open-magic-antenna

clean-open-magic-antenna: clean-5

.PHONY: clean-6

clean-6:
	rm -rf ./6-open-magic-drc

.PHONY: clean-open-magic-drc

clean-open-magic-drc: clean-6

.PHONY: clean-7

clean-7:
	rm -rf ./7-open-magic-gds2spice

.PHONY: clean-open-magic-gds2spice

clean-open-magic-gds2spice: clean-7

.PHONY: clean-8

clean-8:
	rm -rf ./8-mentor-calibre-comparison

.PHONY: clean-mentor-calibre-comparison

clean-mentor-calibre-comparison: clean-8

.PHONY: clean-9

clean-9:
	rm -rf ./9-netgen-lvs-gds

.PHONY: clean-netgen-lvs-gds

clean-netgen-lvs-gds: clean-9

# Diff

.PHONY: diff-0

diff-0:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/cadence-innovus-signoff 0-cadence-innovus-signoff | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/cadence-innovus-signoff.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 0-cadence-innovus-signoff.*' && echo || true

.PHONY: diff-1

diff-1:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../../../../mflowgen_flow/mflowgen/adks/skywater-130nm-analog-adk 1-skywater-130nm | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../../../../mflowgen_flow/mflowgen/adks/skywater-130nm-analog-adk.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 1-skywater-130nm.*' && echo || true

.PHONY: diff-2

diff-2:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../../../../../mflowgen_flow/mflowgen/steps/mentor-calibre-gdsmerge 2-mentor-calibre-gdsmerge | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../../../../../mflowgen_flow/mflowgen/steps/mentor-calibre-gdsmerge.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 2-mentor-calibre-gdsmerge.*' && echo || true

.PHONY: diff-3

diff-3:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-def2spice 3-open-magic-def2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-def2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 3-open-magic-def2spice.*' && echo || true

.PHONY: diff-4

diff-4:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/netgen-lvs-def 4-netgen-lvs-def | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/netgen-lvs-def.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 4-netgen-lvs-def.*' && echo || true

.PHONY: diff-5

diff-5:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-antenna 5-open-magic-antenna | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-antenna.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 5-open-magic-antenna.*' && echo || true

.PHONY: diff-6

diff-6:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-drc 6-open-magic-drc | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-drc.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 6-open-magic-drc.*' && echo || true

.PHONY: diff-7

diff-7:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/open-magic-gds2spice 7-open-magic-gds2spice | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/open-magic-gds2spice.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 7-open-magic-gds2spice.*' && echo || true

.PHONY: diff-8

diff-8:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/mentor-calibre-comparison 8-mentor-calibre-comparison | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/mentor-calibre-comparison.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 8-mentor-calibre-comparison.*' && echo || true

.PHONY: diff-9

diff-9:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/netgen-lvs-gds 9-netgen-lvs-gds | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/netgen-lvs-gds.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 9-netgen-lvs-gds.*' && echo || true

.PHONY: diff-10

diff-10:
	@echo && diff -r -u --minimal --exclude={configure.yml,.time_end,.time_start,mflowgen-run*,mflowgen-debug,.stamp,inputs,outputs} ../design/netgen-lvs-gds-device 10-netgen-lvs-gds-device | grep --color=always -e '^-.*' -e '$$' -e 'Only in ../design/netgen-lvs-gds-device.*' | GREP_COLOR='01;32' grep --color=always -e '^+.*' -e '$$' -e 'Only in 10-netgen-lvs-gds-device.*' && echo || true

# Info

.PHONY: info-0

info-0:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t cadence-innovus-signoff && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/0-cadence-innovus-signoff/configure.yml

.PHONY: info-1

info-1:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t skywater-130nm && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/1-skywater-130nm/configure.yml

.PHONY: info-2

info-2:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-gdsmerge && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/2-mentor-calibre-gdsmerge/configure.yml

.PHONY: info-3

info-3:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-def2spice && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/3-open-magic-def2spice/configure.yml

.PHONY: info-4

info-4:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-def && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/4-netgen-lvs-def/configure.yml

.PHONY: info-5

info-5:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-antenna && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/5-open-magic-antenna/configure.yml

.PHONY: info-6

info-6:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-drc && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/6-open-magic-drc/configure.yml

.PHONY: info-7

info-7:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t open-magic-gds2spice && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/7-open-magic-gds2spice/configure.yml

.PHONY: info-8

info-8:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t mentor-calibre-comparison && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/8-mentor-calibre-comparison/configure.yml

.PHONY: info-9

info-9:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/9-netgen-lvs-gds/configure.yml

.PHONY: info-10

info-10:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-letters -c -t netgen-lvs-gds-device && /home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-info -y .mflowgen/10-netgen-lvs-gds-device/configure.yml

# Runtimes

.PHONY: runtimes

runtimes:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-runtimes

# List

.PHONY: list

list:
	@echo && echo Generic Targets: && echo && printf " - %s\\n" "list      -- List all steps" "status    -- Print build status for each step" "runtimes  -- Print runtimes for each step" "graph     -- Generate a PDF of the step dependency graph" "clean-all -- Remove all build directories" "clean-N   -- Clean target N" "info-N    -- Print configured info for step N" "diff-N    -- Diff target N" && echo && echo Targets: && echo && printf " - %s\\n" "  0 : cadence-innovus-signoff" "  1 : skywater-130nm" "  2 : mentor-calibre-gdsmerge" "  3 : open-magic-def2spice" "  4 : netgen-lvs-def" "  5 : open-magic-antenna" "  6 : open-magic-drc" "  7 : open-magic-gds2spice" "  8 : mentor-calibre-comparison" "  9 : netgen-lvs-gds" " 10 : netgen-lvs-gds-device" && echo && echo Debug Targets: && echo && printf " - %s\\n" "debug-2  : debug-mentor-calibre-gdsmerge" "debug-8  : debug-mentor-calibre-comparison" && echo

# Graph

.PHONY: graph

graph:
	dot -Tpdf .mflowgen/graph.dot > graph.pdf

# Status

.PHONY: status

status:
	@/home/users/xingyuni/ee372/mflowgen_flow/mflowgen/mflowgen/scripts/mflowgen-status --backend make -s 0-cadence-innovus-signoff,1-skywater-130nm,2-mentor-calibre-gdsmerge,3-open-magic-def2spice,4-netgen-lvs-def,5-open-magic-antenna,6-open-magic-drc,7-open-magic-gds2spice,8-mentor-calibre-comparison,9-netgen-lvs-gds,10-netgen-lvs-gds-device

