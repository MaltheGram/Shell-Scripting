
echo "Give input"

read test

if [[ ${#test} -lt 2  ]]; then
  echo "Input is empty"
else
  echo "Input is not empty"
fi