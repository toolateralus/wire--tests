shopt -s expand_aliases
source ~/.bashrc

results=""
failures=0

run_and_accumulate() {
  if ./run.sh "$1" > /dev/null; then
    results+="\e[32mSuccess:\e[0m $1\n"
  else
    results+="\e[31mFailure:\e[0m $1\n"
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


