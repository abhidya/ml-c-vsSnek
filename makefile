CXX ?= g++
CXXFLAGS ?= -g -Wall -Wextra -std=c++11
BUILD_DIR := build

.PHONY: all smoke clean

all: $(BUILD_DIR)/cpp $(BUILD_DIR)/will

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/cpp: c++.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $<

$(BUILD_DIR)/will: will.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $<

smoke: all
	@test "$$($(BUILD_DIR)/cpp 22)" = "8"
	@test "$$($(BUILD_DIR)/will 22)" = "8"
	@test "$$(python3 sol.py 22)" = "8"
	@test "$$(python3 python.py 22)" = "8"
	@echo "SELF-DIVIDING SMOKE OK upper=22 average=8"

clean:
	rm -rf $(BUILD_DIR)
