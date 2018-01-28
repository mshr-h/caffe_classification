CXX = g++

CXXFLAGS = \
				 -pthread -fPIC \
				 -DCAFFE_VERSION=1.0.0 \
				 -DNDEBUG \
				 -O2 \
				 -DUSE_OPENCV \
				 -DUSE_LEVELDB \
				 -DUSE_LMDB \
				 -DCPU_ONLY \
				 -Wall \
				 -Wno-sign-compare

INCLUDE = \
					-I/usr/include/python2.7 \
					-I/usr/lib/python2.7/dist-packages/numpy/core/include \
					-I/usr/local/include \
					-I/usr/include/hdf5/serial

LIB_DIR = \
					-L/usr/lib \
					-L/usr/local/lib \
					-L/usr/lib \
					-L/usr/lib/x86_64-linux-gnu/hdf5/serial

LDFLAGS = \
					-lcaffe \
					-lglog \
					-lgflags \
					-lprotobuf \
					-lboost_system \
					-lboost_filesystem \
					-lm \
					-lhdf5_hl \
					-lhdf5 \
					-lleveldb \
					-lsnappy \
					-llmdb \
					-lopencv_core \
					-lopencv_highgui \
					-lopencv_imgproc \
					-lopencv_imgcodecs \
					-lboost_thread \
					-lstdc++ \
					-lcblas \
					-latlas

BINARY_NAME = classification

all:
	$(CXX) src/classification.cpp -o $(BINARY_NAME) $(CXXFLAGS) $(INCLUDE) $(LIB_DIR) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(BINARY_NAME)
