### Linux_Utility_Scripts
Here are some scripts for linux based oses. (connectivity, speed testing, etc.)

# Telnet_Batch_Check:
  - Checks ip - port server list via ip-port.csv file and prints out connectivity status.
  
# Usage
  - Copy code to your local environment.
  - Edit ip-port.csv list according to your needs.
  - Run telnet-test.sh

Example output:

```sh
$ cd Linux_Utility_Scripts/Telnet_Batch_Check/
$ chmod +x telnet-test.sh
$ ./telnet-test.sh
$ Server -> 127.0.0.1 Port-> 22 accepting connections
$ Server -> 127.0.0.1 Port-> 80 connections not possible
$ Server -> 127.0.0.1 Port-> 443 connections not possible
```
