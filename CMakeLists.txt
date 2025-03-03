cmake_minimum_required(VERSION 3.5)

project(convendian-c)

############################################################
# Create a library
############################################################

add_library(convendian-c STATIC
    conv_endian.c
)