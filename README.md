# Bailey-Borwein-Plouffe Algorithm

Implementing the Bailey-Borwein-Plouffe(BBP) algorithm for approximating pi.

## Requirements

Empty file "output.txt" to write output to within the root directory. Can be created using the "touch output.txt" command
File "input.txt" described below also within the root directory.

## Inputs

Example "input.dat"

```
1.0E-2
```

The value in "input.dat" will indicate the desired threshold of error for approximating pi.
Note that in fortran 1.0E-2 is equivalent to 1/100.

# Output

Found in "output.txt"
For each run of the script, a line will be added to the output file, where the values are:
"Threshold": the user-input threshold from "input.dat"
"n": the number of iterations required to reach the threshold
"Error": the difference between the approximated value of pi and actual pi.
