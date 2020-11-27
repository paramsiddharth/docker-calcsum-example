# A very small Alpine Linux package with the GCC compiler
FROM frolvlad/alpine-gcc@sha256:3616909c27b674a3de536ab05f55bd758385d70253d86e6f25e9d324f8d4f02b

# Copy the source code to the container
WORKDIR /app
ADD sumcalc.c /app

# Compile the C programme
RUN ["gcc", "sumcalc.c", "-o", "sumcalc"]

# Execute the compiled file
CMD ./sumcalc