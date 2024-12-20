# Shell Script Summation Bug

This repository demonstrates a subtle bug in a shell script designed to sum numbers from a file. The script incorrectly handles whitespace, leading to inaccurate results.

## Bug Description
The script reads numbers from "numbers.txt", removes whitespace using `tr`, and adds them to a running sum. However, if a number is preceded or followed by whitespace, the script may fail to add the number correctly or encounter errors.

## Solution
The solution avoids using `tr -d '[:space:]'` to remove whitespace completely and instead directly checks and uses number extraction through the shell's parameter expansion feature.

## How to Reproduce
1. Create a file named "numbers.txt" with numbers and varying amounts of whitespace:
   ```
   10
   20  
   30
    40
   ```
2. Run the script `bug.sh` to see the incorrect sum.
3. Run the script `bugSolution.sh` to see the correct sum.