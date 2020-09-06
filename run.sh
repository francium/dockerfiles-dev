if [ $# -eq 0 ]; then
    echo "Usage: ../path/to/run.sh <haskell> ~/home/some/path/to/mount"
    echo
    echo "To find relative files, this script uses the path in the command, \"../path/to/\""
    echo
    echo "If \".\" is used as the path to mount, then it will be expanded to your `pwd` automatically"
    exit 0
fi

TARGET=$1
MNT_PATH=$2
if [ ${MNT_PATH:0:1} == "." ]; then
    MNT_PATH="$(pwd)/$MNT_PATH"
fi
echo "Resolved mount path: $MNT_PATH"

SCRIPT_PATH=${0//run.sh/}
cd $SCRIPT_PATH

make .build DIR=$TARGET
make .run DIR=$TARGET MNT=$MNT_PATH
