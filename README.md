# Getting-and-Cleaning-Data-Course-Project

In order to run the script *run_analysis.R* the following steps must be taken:

1. Create a working directory
1. Place the data set (see Code Book file) in the working directory and unzip
1. Within the data set directory change the name of the subdirectory *UCI HAR Dataset* to *UCI_HAR_Dataset*
1. Place the script in the data set directory
1. The results are stored in the file: *finalproj_res.txt*
1. One can easily see the contents of the file using the following code: *View( read.table("finalproj_res.txt", header=TRUE) )*

##Directory Tree        
                    working directory
                           |
               getdata-projectfiles-UCI HAR Dataset
                      /            \
            run_analysis.R        UCI_HAR_Dataset