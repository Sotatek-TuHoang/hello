CXX = /home/builder/Workspace/rk3588/rk3588_sdk/prebuilts/gcc/linux-x86/aarch64/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-g++
CXXFLAGS = -Wall
TARGET = hello

all: $(TARGET)

$(TARGET): hello.o
	$(CXX) $(CXXFLAGS) -o $(TARGET) hello.o

hello.o: hello.cpp
	$(CXX) $(CXXFLAGS) -c hello.cpp

clean:
	rm -f $(TARGET) hello.o

save_app:
	cp hello ../hello