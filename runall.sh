shopt -s expand_aliases
source ~/.bashrc

results=""
failures=0

run_and_accumulate() {
  ./run.sh "$1" > /dev/null
  exit_code=$?
  if [ $exit_code -eq 0 ]; then
    results+="\e[32mSuccess:\e[0m $1\n"
  else
    exit_msg="Unknown error: $exit_code"
    if [ $exit_code -eq 1 ]; then
      exit_msg="Script Self Test Failure"
    elif [ $exit_code -eq 2 ]; then
      exit_msg="Unknown Compilation Error"
    elif [ $exit_code -eq 3 ]; then
      exit_msg="Parsing Error"
    elif [ $exit_code -eq 4 ]; then
      exit_msg="Compilation Segfault"
    elif [ $exit_code -eq 139 ]; then
      exit_msg="Script Segfault"
    fi
    results+="\e[31mFailure:\e[0m $1: $exit_msg\n"
    failures=$((failures + 1))
  fi
}

for path in test_src/*.w; do
  file=$(basename "$path")
  filename="${file%.*}"
  run_and_accumulate "$filename"
done

echo "Results:"
echo -e "$results"

echo "Total failures: $failures"


