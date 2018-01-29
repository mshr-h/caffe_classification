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
```

## License

This repository is released under the [BSD 2-Clause license](LICENSE).
