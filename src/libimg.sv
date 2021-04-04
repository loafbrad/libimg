/*
 *  libimg
*/
`ifndef __LIBIMG_SV__
`define __LIBIMG_SV__

`include "libimg.svh"

// class libimg

// Function: libimg::get_width();
// Returns the width of an image in number of pixels.
function int unsigned libimg::get_width();
    return width;
endfunction

// Function: libimg::get_height()
// Returns the height of an image in number of pixels.
function int unsigned libimg::get_height();
    return height;
endfunction

`endif // __LIBIMG_SV__
