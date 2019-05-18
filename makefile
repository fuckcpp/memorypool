exe:=memorypool
sources:=memorypool.cpp
objects:=$(sources:.cpp=.o)

RM:= rm -rf
$(exe):$(objects)
	g++ -o $@ $^
$(objects):%.o:%.cpp
	g++ -o $@ -c $<
clean:
	$(RM) $(exe) $(objects)
