# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
FROM gcc:latest

# These commands copy your files into the specified directory in the image
# and set that as the working location
COPY . /code/nn-from-scratch
WORKDIR /code/nn-from-scratch

# This command compiles your app using GCC, adjust for your source code
RUN g++ -o nn-from-scratch main.cpp

# This command runs your application, comment out this line to compile only
CMD ["./nn-from-scratch"]

LABEL Name=nn-from-scratch Version=0.0.1
