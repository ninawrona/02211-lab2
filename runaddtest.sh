export ACT_HOME=$HOME/act-local
export PATH=$PATH:$ACT_HOME/bin

aflat -Tsky130l src/add.act > src/addtest.pr

actsim -Wlang_subst:off tests/addtest.act test 