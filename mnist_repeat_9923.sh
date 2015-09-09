#!/bin/bash

for i in {1..10}
do
  caffe train -solver=mnist_9923_solver.prototxt -gpu=0
done
