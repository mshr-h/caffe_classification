# caffe_classification

cpp_classification from [caffe](https://github.com/BVLC/caffe)

## Prerequirement

- Ubuntu 17.10

```sh
$ sudo apt-get install -y caffe-cpu libcaffe-cpu-dev libgoogle-glog-dev libopenblas-dev \
                          git build-essential libatlas-base-dev libprotobuf-dev libleveldb-dev \
                          libsnappy-dev libhdf5-serial-dev protobuf-compiler libopenblas-dev
$ sudo apt-get install --no-install-recommends libboost-all-dev
```

## Compilation

```sh
$ make all
```

## Usage (AlexNet)

```sh
$ ./PATH_TO_CAFFE/scripts/download_model_binary.py models/bvlc_alexnet
$ ./data/ilsvrc12/get_ilsvrc_aux.sh
$ ./classification \
    PATH_TO_CAFFE/models/bvlc_alexnet/deploy.prototxt \
    PATH_TO_CAFFE/models/bvlc_alexnet/bvlc_alexnet.caffemodel \
    PATH_TO_CAFFE/data/ilsvrc12/imagenet_mean.binaryproto \
    PATH_TO_CAFFE/data/ilsvrc12/synset_words.txt \
    PATH_TO_CAFFE/examples/images/cat.jpg

---------- Prediction for PATH_TO_CAFFE/examples/images/cat.jpg ----------
0.5009 - "n02123159 tiger cat"
0.2283 - "n02123045 tabby, tabby cat"
0.1612 - "n02124075 Egyptian cat"
0.0283 - "n02127052 lynx, catamount"
0.0134 - "n02123394 Persian cat"
```

## License

This repository is released under the [BSD 2-Clause license](LICENSE).
