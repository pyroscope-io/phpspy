#!/bin/bash

./tests/pyroscope_api/main.php&
pid_1=$!
./tests/pyroscope_api/main_chdir.php&
pid_2=$!
./pyroscope_api_tests main.php ${pid_1} main_chdir.php ${pid_2}

kill ${pid_1}
kill ${pid_2}
