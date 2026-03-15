# 02211-lab2

# Running the tests
For most of the tests, we have setup a makefile, that can all of the commands in one go. To run the tests, simply run the following command in the terminal:

```bash
make
```

If, you have setup the act tool for a different shell, you can also override the default bash shell by running the following command:

```fish
CMD=fish make
```

If you just want to run the tests for the prs, you can run the following command:

```bash
make prs_test
```

Or for the act tests:

```bash
make act_test
```

To test the sink and the source, you have to run the test case on its own, since it will not stop on its own:

```bash
actsim -Wlang_subst:off ./tests/test-sink-source.act_man test
```

After which you should run cycle, in the actsim environment.

Likewise for the prs test:

```bash
actsim -ref=1 -Tsky130 ./tests/test-sink-source.act_man test
```
