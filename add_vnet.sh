#!/bin/bash

default_nat_name=""
export DEFAULT_ECHO_VNAT=""

# 
function find_default_nat_name()
{
    # ubuntu20.04,nat name is eno,centos/ubunt18.04 nat name is eth0
    default_nat_name=$(ls -1 /sys/class/net|grep -e 'eno0\|eno1\|eth0')
    if [ $? -eq 0 ]
    then
        echo "find $default_nat_name successfully"
        return 0
    else
        echo "find default_nat_name fail,can't create virtual network interface, exit!"
        exit -1
    fi
}

function create_echo_vnat()
{
    ## create virtual network interface,eg:eht0:3
    sudo ifconfig $default_nat_name:3 192.168.20.10 up
    if [ $? -eq 0 ]
    then
        echo "create $default_nat_name:3 successfully."
        ## show eht0:3 info
        ifconfig -a $default_nat_name:3
        DEFAULT_ECHO_VNAT="$default_nat_name:3"
        echo "$default_nat_name:3">echo_vnat.txt
        return 0
    else
        echo "create $default_nat_name:3 virtual network interface, exit!"
        exit -1
    fi
}

find_default_nat_name
create_echo_vnat