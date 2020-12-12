DATE=$(date +'%d')
COOKIE=$(cat .cookie)

echo Advent of code day $DATE !

mkdir -p $DATE

curl https://adventofcode.com/2020/day/$DATE/input -o $DATE/input -b session=$COOKIE

cp template.js $DATE/codez.js

node $DATE/codez.js

code $DATE/codez.js