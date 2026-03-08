# 42-Libft

A custom C library implementation as part of the 42 School curriculum. This project recreates standard C library functions to understand low-level programming and memory management.

## Project Structure

```
.
├── includes/
│   └── libft.h        # Header file with function declarations
├── src/               # Source files
│   ├── ft_atoi.c
│   ├── ft_bzero.c
│   ├── ft_calloc.c
│   ├── ...            # Other source files
├── Makefile           # Build automation
└── README.md
```

## Installation

```bash
# Clone the repository
git clone <repo-url>
cd 42-Libft

# Build the library
make

# Build with bonus functions
make bonus

# Clean object files
make clean

# Clean everything (including library)
make fclean

# Rebuild
make re
```

## Usage

Include the header in your project:

```c
#include "libft.h"
```

Compile with the library:

```bash
gcc -I./includes -L. -lft your_program.c
```

## Available Functions

### Libc Functions - Character Checks

| Function | Description |
|----------|-------------|
| `ft_isalpha` | Checks for alphabetic character |
| `ft_isdigit` | Checks for digit character |
| `ft_isalnum` | Checks for alphanumeric character |
| `ft_isascii` | Checks for ASCII character |
| `ft_isprint` | Checks for printable character |

### Libc Functions - String Operations

| Function | Description |
|----------|-------------|
| `ft_strlen` | Calculates string length |
| `ft_strlcpy` | Size-bounded string copy |
| `ft_strlcat` | Size-bounded string concatenation |
| `ft_strchr` | Locates character in string (first occurrence) |
| `ft_strrchr` | Locates character in string (last occurrence) |
| `ft_strncmp` | Compares two strings up to n characters |
| `ft_strnstr` | Locates substring in string (size-bounded) |
| `ft_strdup` | Duplicates a string |

### Libc Functions - Memory Operations

| Function | Description |
|----------|-------------|
| `ft_memset` | Fills memory with a constant byte |
| `ft_bzero` | Zeros a byte string |
| `ft_memcpy` | Copies memory area |
| `ft_memmove` | Copies memory area (handles overlap) |
| `ft_memchr` | Scans memory for a character |
| `ft_memcmp` | Compares memory areas |

### Libc Functions - Conversion

| Function | Description |
|----------|-------------|
| `ft_toupper` | Convert to uppercase |
| `ft_tolower` | Convert to lowercase |
| `ft_atoi` | Convert string to integer |

### Libc Functions - Allocation

| Function | Description |
|----------|-------------|
| `ft_calloc` | Allocates and zeros memory |

### Additional Functions

| Function | Description |
|----------|-------------|
| `ft_substr` | Extracts substring from string |
| `ft_strjoin` | Concatenates two strings (new allocation) |
| `ft_strtrim` | Trims characters from both ends |
| `ft_split` | Splits string by delimiter |
| `ft_itoa` | Converts integer to string |
| `ft_strmapi` | Applies function to each character (new string) |
| `ft_striteri` | Applies function to each character (in-place) |
| `ft_putchar_fd` | Outputs character to file descriptor |
| `ft_putstr_fd` | Outputs string to file descriptor |
| `ft_putendl_fd` | Outputs string with newline to file descriptor |
| `ft_putnbr_fd` | Outputs number to file descriptor |

### Bonus - Linked List Functions

| Function | Description |
|----------|-------------|
| `ft_lstnew` | Creates new list node |
| `ft_lstadd_front` | Adds node at beginning |
| `ft_lstsize` | Counts nodes in list |
| `ft_lstlast` | Returns last node |
| `ft_lstadd_back` | Adds node at end |
| `ft_lstdelone` | Deletes single node |
| `ft_lstclear` | Deletes and frees list |
| `ft_lstiter` | Iterates over list |
| `ft_lstmap` | Applies function to list (creates new list) |

## Author

- **tkhemniw** - [gt.khemniwat@gmail.com](mailto:gt.khemniwat@gmail.com)

## License

This project is part of the 42 School curriculum.
