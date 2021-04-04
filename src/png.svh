/*
 *  libimg
*/
`ifndef __LIBIMG_PNG_H__
`define __LIBIMG_PNG_H__

`include "libimg.svh"

// Critical chunks for PNG
`define _CHNK_IHDR_ {73, 72, 68, 82}
`define _CHNK_PLTE_ {80, 76, 84, 76}
`define _CHNK_IDAT_ {73, 68, 65, 84}
`define _CHNK_IEND_ {73, 69, 78, 68}

// Ancillary chunks for PNG
`define _CHNK_tRNS_ {116, 82, 78, 83}
`define _CHNK_cHRM_ {99, 72, 82, 77}
`define _CHNK_gAMA_ {103, 65, 77, 65}
`define _CHNK_iCCP_ {105, 67, 67, 80}
`define _CHNK_sBIT_ {115, 66, 73, 84}
`define _CHNK_sRGB_ {115, 82, 71, 66}
`define _CHNK_bKGD_ {98, 75, 71, 68}
`define _CHNK_hIST_ {104, 73, 83, 84}
`define _CHNK_pHYs_ {112, 72, 89, 115}
`define _CHNK_sPLT_ {115, 80, 76, 84}
`define _CHNK_tIME_ {116, 73, 77, 69}
`define _CHNK_iTXt_ {105, 84, 88, 116}
`define _CHNK_tEXt_ {116, 69, 88, 116}
`define _CHNK_zTXt_ {122, 84, 88, 116}

virtual class png_chunk_data;
    pure virtual function int unsigned get_length();
    pure virtual function int unsigned calc_crc();
endclass

class type_IHDR extends png_chunk_data;
    int unsigned width;
    int unsigned height;
    byte bit_depth;
    byte color_type;
    byte compression;
    byte filter;
    byte interlace;
    extern function int unsigned calc_crc(); // Does not include length field
    extern function int unsigned get_length();
endclass

class png_chunk;
    int unsigned length;
    byte chunktype[4];
    png_chunk_data chunk_data;
    int unsigned crc;
    extern function new(byte chunktype[4]);
endclass

// PNG - Portable Network Graphics
class png extends libimg;
//    const byte pngheader[8] = {'h89, 'h50, 'h4E, 'h47, 'h0D, 'h0A, 'h1A, 'h0A};
    png_chunk chunks[];
    extern function int open();
    extern function int close();
endclass


`endif // __LIBIMG_PNG_H__
