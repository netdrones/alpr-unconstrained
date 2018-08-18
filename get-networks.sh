#!/bin/bash

set -e

mkdir data/lp-detector -p
mkdir data/ocr -p
mkdir data/vehicle-detector -p

wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/lp-detector/wpod-net.h5   -P data/lp-detector/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/lp-detector/wpod-net.json -P data/lp-detector/

wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/ocr/ocr-net.cfg     -P data/ocr/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/ocr/ocr-net.names   -P data/ocr/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/ocr/ocr-net.weights -P data/ocr/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/ocr/ocr-net.data    -P data/ocr/

wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/vehicle-detector/yolo-voc.cfg     -P data/vehicle-detector/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/vehicle-detector/voc.data         -P data/vehicle-detector/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/vehicle-detector/yolo-voc.weights -P data/vehicle-detector/
wget -c -N www.inf.ufrgs.br/~smsilva/eccv_2018/data/vehicle-detector/voc.names        -P data/vehicle-detector/
