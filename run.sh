shopt -s expand_aliases
source ~/.bashrc

wire test_src/$1.w -o out
out/$1