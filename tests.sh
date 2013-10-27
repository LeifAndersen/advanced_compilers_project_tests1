#!/usr/bin/env zsh
# run tests against the reference implementation.
# put your reference implementation in a folder called "ref" in the root of your project

export CLASSPATH="build"

export LEXERNAME="SXLexer"

for test in tests/*.txt; do \
    echo "running $test"; \
    diff <(scala -cp ref SXLexer < $test) <(scala -Dfile.encoding=UTF-8 -cp $CLASSPATH $LEXERNAME < $test); done