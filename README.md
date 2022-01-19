Port from [SplitFS benchmark](https://github.com/utsaslab/SplitFS/tree/master/tpcc-sqlite).

Usage:

```
make release
sqlite3 tpcc.db '.read tpcc.sql'
./build-release/tpcc_load -w 4 -d tpcc.db
./build-release/tpcc_start -w 4 -c 1 -t 200000 -d tpcc.db
```
