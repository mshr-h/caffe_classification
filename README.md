# caffe_classification
cpp_classification from [caffe](https://github.com/BVLC/caffe)

# Compilation

```sh
make all
```

# Usage

```sh
./classification \
  PATH_TO_CAFFE/models/bvlc_alexnet/deploy.prototxt \
  PATH_TO_CAFFE/models/bvlc_alexnet/bvlc_alexnet.caffemodel \
  PATH_TO_CAFFE/data/ilsvrc12/imagenet_mean.binaryproto \
  PATH_TO_CAFFE/data/ilsvrc12/synset_words.txt \
  PATH_TO_CAFFE/examples/images/cat.jpg
```
