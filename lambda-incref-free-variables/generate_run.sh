moon clean
moon run src --target native  --dry-run > run.sh

sed -i '/\/home\/illu/.moon/lib/libmoonbitrun.o' run.sh
