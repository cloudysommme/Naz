CXX = g++
CXXFLAGS = -std=c++11 -Wall
SOURCES = main.cpp func.cpp test_func.cpp
OBJECTS = main.o func.o test_func.o
EXEC = program
TEST_EXEC = test_program

check: test_program
	./test_program

all: $(EXEC) $(TEST_EXEC)

$(EXEC): main.o func.o
	$(CXX) $^ -o $@ $(CXXFLAGS)

$(TEST_EXEC): test_func.o func.o
	$(CXX) $^ -o $@ $(CXXFLAGS) -lgtest -lgtest_main -pthread

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXEC) $(TEST_EXEC)
