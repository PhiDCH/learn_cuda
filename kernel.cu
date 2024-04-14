#include <iostream>
#include "kernel.hpp"

void printCudaVersion()
{
    printf("CUDA compiled version %d\n", __CUDACC_VER_MAJOR__);
    
    int runtime_ver;
    cudaRuntimeGetVersion(&runtime_ver);
    int major, minor;
    major = runtime_ver/1000; minor = (runtime_ver%1000)/10;
    printf("CUDA runtime version %d.%d\n", major, minor);

    int driver_ver;
    cudaDriverGetVersion(&driver_ver);
    major = driver_ver/1000; minor = (driver_ver%1000)/10;
    printf("CUDA driver version %d.%d\n", major, minor);
}