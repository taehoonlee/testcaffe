#!/bin/bash

for i in {1..10}
do
  caffe train -solver=mnist_9940_solver.prototxt -gpu=1
done
