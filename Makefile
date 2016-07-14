SRC_DIR=src/
INCLUDE_DIR=include/
OBJ_DIR=obj/
GL=-lGL
GLEW=-lGLEW
GLUT=-lglut
GLFW=-lglfw
LIB= $(GL) $(GLEW) $(GLUT) $(GLFW)

# Source files
CPP_FILES := $(wildcard $(SRC_DIR)*.cpp)
OBJ_FILES := $(addprefix $(OBJ_DIR),$(notdir $(CPP_FILES:.cpp=.o)))


all: sim2d

sim2d: $(OBJ_FILES)
	g++ $(OBJ_FILES) -o sim2d -I $(INCLUDE_DIR) $(LIB)

$(OBJ_DIR)%.o: $(SRC_DIR)%.cpp
	g++ $(CC_FLAGS) -c -o $@ $< -I $(INCLUDE_DIR)

clean:
	rm $(OBJ_DIR)*
	rm sim2d
