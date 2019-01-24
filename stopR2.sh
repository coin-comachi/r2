#!/bin/bash
. ~/.bashrc

kill `ps -ef | grep node | grep "./dist" | grep -v grep |  awk '{print $2}'`
