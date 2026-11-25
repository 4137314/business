# Business Organization and Management study base.
.DEFAULT_GOAL := help
ROOT := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

include mk/common.mk
include study/study.mk
