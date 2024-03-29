/* 
 * Copyright (c) 2018, NVIDIA CORPORATION. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *  * Neither the name of NVIDIA CORPORATION nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#pragma once

#include <optixu/optixpp_namespace.h>
#include <sutil.h>
#include <string>
#include <iosfwd>

//-----------------------------------------------------------------------------
//
// Utility functions
//
//-----------------------------------------------------------------------------

// Creates a TextureSampler object for the given PPM file.  If filename is 
// empty or PPMLoader fails, a 1x1 texture is created with the provided default
// texture color.
SUTILAPI optix::TextureSampler loadPPMTexture( optix::Context context,
                                             const std::string& ppm_filename,
                                             const optix::float3& default_color );

// Creates a Buffer object for the given cubemap files.
SUTILAPI optix::Buffer loadPPMCubeBuffer( optix::Context context,
                                          const std::vector<std::string>& filenames );

//-----------------------------------------------------------------------------
//
// PPMLoader class declaration 
//
//-----------------------------------------------------------------------------

class PPMLoader
{
public:
  SUTILAPI PPMLoader( const std::string& filename, const bool vflip = false );
  SUTILAPI ~PPMLoader();

  SUTILAPI optix::TextureSampler loadTexture( optix::Context context,
                                              const optix::float3& default_color,
                                              bool linearize_gamma = false);

  SUTILAPI optix::Buffer loadFloat4Buffer( optix::Context context, bool linearize_gamma = false );

  SUTILAPI bool           failed() const;
  SUTILAPI unsigned int   width() const;
  SUTILAPI unsigned int   height() const;
  SUTILAPI unsigned char* raster() const;

private:
  unsigned int   m_nx;
  unsigned int   m_ny;
  unsigned int   m_max_val;
  unsigned char* m_raster;
  bool           m_is_ascii;

  // lookup table for sRGB gamma linearization
  static unsigned char s_srgb2linear[256];
  static bool s_srgb2linear_initialized;

  static void getLine( std::ifstream& file_in, std::string& s );
  static void init_srgb2linear();
};
