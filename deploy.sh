L=$1

if [ -z "$L" ]; then
  echo "Provide Servers name"
  exit 1
fi
for n in $(cat $L.txt)
do
echo $(date)
echo "Env is $L"
echo "Server IP: $n"

done
