# Endian Conversion Library

A library for converting between endianness that doesn't depend on external libraries.

Place ```conv_endian.c``` and ```conv_endian.h``` into your source files

The library can be optionally be built by calling make or using CMake

## Examples

### Reading big endian data

```c
//...

// receive data

char yourBuffer[512];
int* ptr_to_buffer = (int*)yourBuffer;
int value;

// read big endian
fread(yourBuffer, sizeof(int), 1, yourfile);

value = *ptr_to_buffer;

// to be converted and store in whatever endian your machine runs on
value = read_be_u32(value);

//...

```

### Writing big endian data

```c
//...

// write or send data

// to be converted into big endian value
int value = 1234567890;
value = convert_to_be_u32(value);

// write big endian integer
fwrite(&value, sizeof(int), 1, yourfile);

//...
```