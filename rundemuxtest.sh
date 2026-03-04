export ACT_HOME=$HOME/act-local
export PATH=$PATH:$ACT_HOME/bin

aflat -Tsky130l src/demux.act > src/demux.pr

actsim -Wlang_subst:off tests/demuxtest.act test 
