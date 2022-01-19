cmake_minimum_required(VERSION 3.16)
project(TPCC-SQLite)

add_executable(tpcc_load load.c support.c)
add_executable(tpcc_start main.c spt_proc.c driver.c support.c sequence.c rthist.c sb_percentile.c neword.c payment.c ordstat.c delivery.c slev.c)

target_link_libraries(tpcc_load sqlite3)
target_link_libraries(tpcc_start sqlite3 m pthread)
