
CC = nasm

SRCS = syscall.asm

OBJS = $(SRCS:.asm=.o)

TARGET = syscall

LINKER = ld

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LINKER) -m elf_i386 $(OBJS) -o $@
	
$(OBJS): $(SRCS)
	$(CC) -f elf32 $^

clean:
	rm -f $(OBJS) $(TARGET)
