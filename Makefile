CMD?=bash

ALL:
	${CMD} -c "echo \"source \"./prs_tests/setup.scr\"\" | actsim -ref=1 -Tsky130 ./prs_tests/addtest.act test"
