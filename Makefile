# Makefile to learn the basics of a makefile


# Variables to use later denoted by VAR_NAME := value
CC := gcc
LINKERFLAGS := -lm -Wall -Werror

# PHONY contains all targets that does not yield a file as a output
.PHONY: clean launch

# Makefiles are tab indent sensitive so be careful
# Variables are used in the "recipes" with either $(VAR) or ${VAR}
# To "paste" the entire dependency list in the "recipe" use $^
# *.n targets all files with the ending .n
# Printing to the terminal can be archieved using @echo "Text"

# Targets are made like so:
#	target: dependency_1 dependency_2 dependency_n
#		recipe to create target


# Making the executables from the compiled object files
test.exe: main.o source1.o source2.o source3.o
	$(CC) $^ -o "test.exe"
	@echo -e "Making exectuable		[\033[32mOK\033[0m]"

# Builds test.exe if not done already, then | or launch the executable
launch: test.exe
	@echo -e "[\033[32mRunning executable\033[0m]"
	./$^


# Building object files from our source files
main.o: main.c common.h
	$(CC) $(LINKERFLAGS) -c main.c
	@echo -e "Creating object from main		[\033[32mOK\033[0m]"	

source1.o: source1.c 
	$(CC) $(LINKERFLAGS) -c source1.c 
	@echo -e "Creating object from source1		[\033[32mOK\033[0m]"	

source2.o: source2.c 
	$(CC) $(LINKERFLAGS) -c source2.c 
	@echo -e "Creating object from source2		[\033[32mOK\033[0m]"	

source3.o: source3.c 
	$(CC) $(LINKERFLAGS) -c source3.c 
	@echo -e "Creating object from source3		[\033[32mOK\033[0m]"	


# Clean object files and exe files 
clean:
	@echo -e "\033[33mCleaning files\033[0m"
	rm -rvf *.o *.exe
