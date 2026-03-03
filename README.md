# 02211-lab2

Goal. The goal of this lab is to write ACT-CHP descriptions of dataflow elements, run synthesis and simulate them to verify correct behavior.

Lab is due on 16/3/2026 end of day

Part 1: CHP
Write ACT descriptions of the following dataflow components. In all cases, assume that the datapath is 8-bit wide.

    A source that generates a constant 0 token stream
    A sink
    A one-place buffer
    An initial token buffer, with initial data value 0
    A two-input function, where the function is binary addition of the two 8-bit numbers (ignore the carry-out)
    A two-way copy
    A two-way split
    A two-way mux
    A two-way demux

Implement all the ACT components, and use actsim simulation to verify correct behavior. Both on the chp level ans well as the PRS level:

Part 2: Synthesis
to run synthesis for your designs run:

chp2prs -b -o abc -e datapath.act <your actfile> <your process> <out.act>

-b: bundled data (if removed it uses QDI)
-o: logic optimisation method
-e: expression_file.act all optimized logic block definitions will be stored there

When simulating the Syntesis result so PRS level use:

actsim -ref=1 -Tsky130 <out.act>

-ref=1: it is instructing the sim to use the first refinment which is your PRS, the -ref=0 is your CHP

The ACT synthesis uses some standard libraries which has a number of pre-defined components that you should have a look at. (You dont need to write new production rules for this lab.) The ACT standard library is located in $ACT_HOME/act/std/, and contains a number of ACT files you can use. In particular, you should use:

    cells.act: this contains definitions of standard gates (with descriptive names), including latches. Note that this also contains the definition of a full-adder cell (FAX1).
    channel.act: this contains definitions of standard channels, including bundled-data channels. the synthesis will use the bd<8> channel for 8-bit bundled-data channels. A channel C of type bd<8> will have fields C.r (request), C.a (acknowledge), and an array of data bits C.d[0] through C.d[7]. 

What you have to submit
For this lab, turn in a zip file that contains

    All the ACT files, plus actsim  test scripts that verify the correct operation of all the dataflow components on both chp and prs level (before and after synthesis).
    README: a plain text file that explains how we can verify that your lab works correctly for all parts. This should include clear testing instructions, and any explanations that you think are necessary to explain how you completed each component. Please include all team member names/student numbers

Note: many test scripts will be very similar to each other. You can save a lot of time by writing bash/Python/Perl/tcl/Ruby/insert-your-favorite-method-here to generate some of the files automatically, and using Makefiles for automation.