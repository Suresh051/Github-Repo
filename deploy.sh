L1=$1

if [ -z "$L1" ]; then
  echo "Provide Servers name"
  exit 1
fi
for n in $(cat $L1.txt)
do
echo $(date)
echo "Server IP: $n"

done
