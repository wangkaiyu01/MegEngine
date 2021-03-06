/**
 * \file dnn/src/cuda/conv_bias/int8/kimpl/conv_bias_int8_implicit_gemm_cdiv4hwn4_ld_64bit_unroll_width_per_chan_relu.cu
 * MegEngine is Licensed under the Apache License, Version 2.0 (the "License")
 *
 * Copyright (c) 2014-2020 Megvii Inc. All rights reserved.
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT ARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 */
// generated by gen_cuda_conv_bias_kern_impls.py
#include "../conv_bias_int8_implicit_gemm_cdiv4hwn4_ld_64bit_unroll_width.cuinl"

template void megdnn::cuda::conv_bias_int8::do_conv_bias_int8_implicit_gemm_cdiv4hwn4_ld_64bit_unroll_width<PerChannelBiasVisitor, 
        IConvEpilogue<Activation<megdnn::param_enumv::ConvBias::NonlineMode::RELU>>>(
        const int8_t* d_src, 
        const int8_t* d_filter, 
        PerChannelBiasVisitor bias, 
        IConvEpilogue<Activation<megdnn::param_enumv::ConvBias::NonlineMode::RELU>> epilogue, 
        const ConvParam& param, 
        float alpha, 
        float beta, 
        cudaStream_t stream);
