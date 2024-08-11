Source code for the TPC-C experiment in [MadFS](https://github.com/ShawnZhong/MadFS)

The original codebase is written for MySQL: https://github.com/Percona-Lab/tpcc-mysql/tree/master/src. 

It has been ported to use SQLite as the backend by [Rohan Kadekodi](https://github.com/rohankadekodi). See

- https://github.com/utsaslab/SplitFS/tree/master/tpcc-sqlite
- https://github.com/rohankadekodi/tpcc-sqlite

Usage:

```
make release
sqlite3 tpcc.db '.read tpcc.sql'
./build-release/tpcc_load -w 4 -d tpcc.db
./build-release/tpcc_start -w 4 -c 1 -t 200000 -d tpcc.db
```
