/*
 *  libimg
*/
`ifndef __LIBIMG_H__
`define __LIBIMG_H__

// The foundation for all libimg inherited classes
virtual class libimg;
    int fd;
    int unsigned width;
    int unsigned height;

    pure virtual function int open();
    pure virtual function void close();
    extern virtual function int unsigned get_width();
    extern virtual function int unsigned get_height();
endclass


`endif // __LIBIMG_H__
