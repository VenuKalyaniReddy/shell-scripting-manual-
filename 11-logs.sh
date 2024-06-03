# !/bin/bash

NUMBER =$1
NUMBER =$2

SUM=$(( $NUMBER+$NUMBER ))
    echo "Total :: $SUM"
    echo "How many args passed :: $#"
    echo "All args passed :: $@"
    echo "Script name :: $0"

