TARGET	:= example

CC		:= gcc
CFLAGS	:=
LDFLAGS	:=
LIBS	:= -lOpenCL

SRCDIR	:= src
LIBDIR	:= lib
BINDIR	:= bin
SOURCE	:= hello.c hello2.c
SOURCES	:= $(patsubst %.c, $(SRCDIR)/%.c, $(SOURCE))
OBJS	:= $(SOURCES:%.c=%.o)

all: clean $(TARGET)

$(TARGET): $(OBJS)
	echo $(OBJS)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(BINDIR)/$@ $^ $(LIBS)


clean:
	@rm -f $(OBJS)
	@rm -f $(BINDIR)/$(TARGET)
