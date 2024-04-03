shopt -s expand_aliases
source ~/.bashrc

wire test_src/$1.w -o out
ret_val=$?
if [ $ret_val -eq 0 ]; then
	out/$1
elif [ $ret_val -eq 1 ]; then
	exit 3 # parsing error
elif [ $ret_val -eq 139 ]; then
	exit 4 # segfault
else
	exit 2 # unkown
fi