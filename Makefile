
CC = nasm

SRCS = syscall.asm

OBJS = $(SRCS:.asm=.o)

TARGET = syscall

LINKER = ld

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LINKER) -m elf_x86_64 $(OBJS) -o $@
	
$(OBJS): $(SRCS)
	$(CC) -f elf64 $^

clean:
	rm -f $(OBJS) $(TARGET)
