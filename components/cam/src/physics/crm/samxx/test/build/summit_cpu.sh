#!/bin/bash

source $MODULESHOME/init/bash
module purge
module load DefApps gcc/8.1.1 cuda/10.1.105 netcdf netcdf-fortran cmake python/3.7.0-anaconda3-5.3.0

source deactivate

unset ARCH
unset NCRMS

export NCHOME=${OLCF_NETCDF_ROOT}
export NFHOME=${OLCF_NETCDF_FORTRAN_ROOT}
#export NCRMS=42
export CC=mpicc
export CXX=mpic++
export FC=mpif90
export FFLAGS="-O3 -ffree-line-length-none"
export CXXFLAGS=-O3
export YAKL_HOME="`pwd`/../../../../../../../../externals/YAKL"
export YAKL_CUB_HOME="`pwd`/../../../../../../../../externals/cub"

source activate rrtmgp-env

