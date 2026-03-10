CMD?=bash

ACT_HOME?=$(HOME)/act-local
PATH:=$(PATH):$ACT_HOME/bin

PRS_TEST_FILES:=$(wildcard prs_tests/*.act)
ACT_TEST_FILES:=$(wildcard tests/*.act)

test:
	$(MAKE) -s pcr_test
	$(MAKE) -s act_test

act_test: $(ACT_TEST_FILES)
	set -e; \
	for file in $(ACT_TEST_FILES); do \
		echo "Testing $$file"; \
		$(CMD) -c "echo cycle | actsim -Wlang_subst:off $$file test"; \
	done

pcr_test: $(PRS_TEST_FILES)
	set -e; \
	for file in $(PRS_TEST_FILES); do \
		echo "Testing $$file"; \
		$(CMD) -c "echo \"source ./prs_tests/setup.scr\" | actsim -ref=1 -Tsky130 $$file test"; \
	done

