# https://stackoverflow.com/questions/8818119/how-can-i-run-a-function-from-a-script-in-command-line

#!/bin/bash
testA() {
  echo "TEST A $1";
}

testB() {
  echo "TEST B $2";
}

#"$@"

##############################
# Source command is similar to require in js
# It simply loads the contents to the current shell environmnet
# Acts as a Globals
# Any other source with similar function name will override
#
# Using bash approach requires changes in the script to have $@ at the end
# to take arguments. But the scope is limited to that hence no overriding
#
# Note: This assumes that function are pure
