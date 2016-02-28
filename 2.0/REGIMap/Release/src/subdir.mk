# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/CGRA.cpp \
../src/Mapper.cpp \
../src/Parser.cpp \
../src/REGIMap.cpp \
../src/REGIARC.cpp \
../src/REGIDFG.cpp \
../src/REGIMap_2.2.cpp \
../src/REGINode.cpp \
../src/REGIREGISTERFILE.cpp \
../src/REGISchedulingInfo.cpp  \
../src/INTERITERATIONDEPENDENCY.cpp

OBJS += \
./src/CGRA.o \
./src/Mapper.o \
./src/Parser.o \
./src/REGIARC.o \
./src/REGIMap.o \
./src/REGIDFG.o \
./src/REGIMap_2.2.o \
./src/REGINode.o \
./src/REGIREGISTERFILE.o \
./src/REGISchedulingInfo.o \
./src/INTERITERATIONDEPENDENCY.o 

CPP_DEPS += \
./src/CGRA.d \
./src/Mapper.d \
./src/Parser.d \
./src/REGIMap.d \
./src/REGIARC.d \
./src/REGIDFG.d \
./src/REGIMap_2.2.d \
./src/REGINode.d \
./src/REGIREGISTERFILE.d \
./src/REGISchedulingInfo.d \
./src/INTERITERATIONDEPENDENCY.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


