Code Book For the Getting And Cleaning Data Project
===================================================

This contains the files for the Coursera Getting And Cleaning Data course project.

### Files

**download.R**
An R script to download and unzip the raw data files into the current directory.  

**run_analysis.R**
An R script to clean up the data downloaded by the download.R script.
This will create a file called summary.txt with the cleaned up table.

### Code Book

The output file summary.txt will contain the following columns:

**subject**

The identifier of the person doing the activity.

**activity**

The name of the activity being performed.

**tbodyacc.mean.x**
**tbodyacc.mean.y**
**tbodyacc.mean.z**

Mean of body acceleration in the x, y and z axis

**tbodyacc.std.x**
**tbodyacc.std.y**
**tbodyacc.std.z**

Standard deviation of body acceleration in the x, y and z axis

**tgravityacc.mean.x**
**tgravityacc.mean.y**
**tgravityacc.mean.z**

Mean of gravitational acceleration in the x, y and z axis

**tgravityacc.std.x**
**tgravityacc.std.y**
**tgravityacc.std.z**

Standard deviation of gravitational acceleration in the x, y and z axis

**tbodyaccjerk.mean.x**
**tbodyaccjerk.mean.y**
**tbodyaccjerk.mean.z**

Mean of derivative of linear acceleration (jerk) in the x, y and z axis

**tbodyaccjerk.std.x**
**tbodyaccjerk.std.y**
**tbodyaccjerk.std.z**

Standard deviation  of derivative of linear acceleration (jerk) in the x, y and z axis

**tbodygyro.mean.x**
**tbodygyro.mean.y**
**tbodygyro.mean.z**

Mean of angular acceleration in the x, y and z axis

**tbodygyro.std.x**
**tbodygyro.std.y**
**tbodygyro.std.z**

Standard deviation of angular acceleration in the x, y and z axis

**tbodygyrojerk.mean.x**
**tbodygyrojerk.mean.y**
**tbodygyrojerk.mean.z**

Mean of derivative of angular acceleration in the x, y and z axis

**tbodygyrojerk.std.x**
**tbodygyrojerk.std.y**
**tbodygyrojerk.std.z**

Standard deviation of derivative of angular acceleration in the x, y and z axis

**tbodyaccmag.mean**
**tbodyaccmag.std**

Mean and standard deviation of magnitude of body acceleration

**tgravityaccmag.mean**
**tgravityaccmag.std**

Mean and standard deviation of magnitude of gravitational acceleration 

**tbodyaccjerkmag.mean**
**tbodyaccjerkmag.std**

Mean and standard deviation of derivative of body acceleration magnitude

**tbodygyromag.mean**
**tbodygyromag.std**

Mean and standard deviation of angular acceleration magnitude

**tbodygyrojerkmag.mean**
**tbodygyrojerkmag.std**

Mean and standard deviation of derivative of angular acceleration magnitude

**fbodyacc.mean.x**
**fbodyacc.mean.y**
**fbodyacc.mean.z**

Mean FFT of body acceleration in the x, y and z axis

**fbodyacc.std.x**
**fbodyacc.std.y**
**fbodyacc.std.z**

Standard deviation of FFT of body acceleration in the x, y and z axis

**fbodyaccjerk.mean.x**
**fbodyaccjerk.mean.y**
**fbodyaccjerk.mean.z**

Mean FFT of body jerk in the x, y and z axis

**fbodyaccjerk.std.x**
**fbodyaccjerk.std.y**
**fbodyaccjerk.std.z**

Standard deviation of FFT of body jerk in the x, y and z axis

**fbodygyro.mean.x**
**fbodygyro.mean.y**
**fbodygyro.mean.z**

Mean of FFT of angular acceleration in the x, y and z axis

**fbodygyro.std.x**
**fbodygyro.std.y**
**fbodygyro.std.z**

Standard deviation of FFT of angular acceleration in the x, y and z axis

**fbodyaccmag.mean**
**fbodyaccmag.std**

Mean and standard deviation of FFT of magnitude of body acceleration

**fbodybodyaccjerkmag.mean**
**fbodybodyaccjerkmag.std**
**fbodybodygyromag.mean**
**fbodybodygyromag.std**
**fbodybodygyrojerkmag.mean**
**fbodybodygyrojerkmag.std**

I have no idea what these mean!  
