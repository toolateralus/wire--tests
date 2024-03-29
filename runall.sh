shopt -s expand_aliases
source ~/.bashrc

results=""
failures=0

run_and_accumulate() {
  if ./run.sh "$1"; then
    results+="Success: $1\n"
  else
    results+="Failure: $1\n"
    failures=$((failures + 1))
  fi
}

run_and_accumulate addr
run_and_accumulate assign
run_and_accumulate decl
run_and_accumulate float
run_and_accumulate for
run_and_accumulate fn
run_and_accumulate if
run_and_accumulate i32
run_and_accumulate import
run_and_accumulate libc
run_and_accumulate logical
run_and_accumulate math
run_and_accumulate ptr
run_and_accumulate structdecl
run_and_accumulate while

echo "Results:"
echo -e "$results"

echo "Total failures: $failures"


