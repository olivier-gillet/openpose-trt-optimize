#ifndef _KERNEL_FUNC_H_
#define _KERNEL_FUNC_H_

#include <cuda_runtime_api.h>
#include "fp16.cuh"

template <typename Ftype>
cudaError_t Forward_gpu(const int count, const int channels, const int dim,
                        const Ftype *mDeviceKernel,
                        const Ftype *bottom_data, Ftype *top_data,
                        const Ftype zero,
                        const int div_factor,
                        cudaStream_t stream = 0);

#endif // _KERNEL_FUNC_H_