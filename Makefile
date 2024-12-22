CXX = g++
CXXFLAGS = -std=c++11 -Wall
SOURCES = main.cpp func.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXEC = program

all: $(EXEC)

$(EXEC): $(OBJECTS)
    $(CXX) $(OBJECTS) -o $(EXEC)

.cpp.o:
    $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
    rm -f $(OBJECTS) $(EXEC)

