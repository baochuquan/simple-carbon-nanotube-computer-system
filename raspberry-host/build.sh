#!/bin/bash
echo 'Building ...'
g++ mainController.cpp i2c.cpp parseELF.cpp -o mainController -lwiringPi
