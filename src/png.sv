`ifndef __LIBIMG_PNG_SV__
`define __LIBIMG_PNG_SV__

`include "libimg.svh"
`include "png.svh"

// class png extends libimg

// Function: png::open(string directory)
// Opens a PNG image and returns the file descriptor.
// Throws $error if the file does not exist or cannot be opened.
//
// Parameters:
// directory - A string denoting the path to the file to be opened.
function int png::open(string directory);
    super.fd = $fopen(directory, "rw");
    if (super.fd != 0) 
        //$info("libimg:png: Successfully opened file \"%s\" with descriptor %d.", directory, super.fd);
        $display("libimg:png: Successfully opened file \"%s\" with descriptor %d.", directory, super.fd);
    else
        //$error("libimg:png: Cannot open file at location \"%s\"!", directory);
        $display("libimg:png: Cannot open file at location \"%s\"!", directory);
    return super.fd;
endfunction

// Function: png::close()
// Closes the currently open file
function void png::close();
    if (super.fd != 0) begin
        $fclose(super.fd);
        //$info("libimg:png: Successfully close file with descriptor %d.", super.fd);
        $display("libimg:png: Successfully close file with descriptor %d.", super.fd);
    end else
        //$error("libimg:png: No file currently opened to be closed!");
        $display("libimg:png: No file currently opened to be closed!");
endfunction

function png_chunk::new();
    
endfunction
`endif //__LIBIMG_PNG_SV__
