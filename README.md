## run.sh
```
../path/to/run.sh <haskell> ~/home/some/path/to/mount
```
Where `<haskell>` is one of the docker target directories in this repo.


## Manual instructions
```
# Build
make .build DIR=<haskell>

# Run
make .run DIR=<haskell> MNT=$(pwd) # MNT can be someother absolute path
```
