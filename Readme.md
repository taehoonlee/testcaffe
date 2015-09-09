# Hardwares tested

<li> CPU: Intel Xeon E5-4620 (Sandy-bridge) (2.2GHz, 16MB, 7.2GT/s) </li>
<li> GPU: GTX Titan (2688 cores, 6GB) </li>

# Files

## MNIST

<li> `mnist_9850`: 'F:1000' </li>
<li> `mnist_9862`: 'F:1000' w dropout </li>
<li> `mnist_9863`: 'F:600 - F:600' </li>
<li> `mnist_9845`: 'F:600 - F:600' w dropout </li>
<li> `mnist_9880`: 'C:12@9x9 - P:2x2' </li>
<li> `mnist_9923`: 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 - F:1000 - F:1000' </li>
<li> `mnist_9940`: 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 - F:1000 - F:1000' w dropout </li>

# Results

## running times per 1 epoch (=600 iters)

| Architecture | Caffe CPU | Caffe GPU |
| :----------- | :-------: | --------: |
| 'F:1000' | 21s | 1s |
| 'F:600 - F:600' | 22s | 1s |
| 'C:12@9x9 - P:2x2' | 36s | 10s |
| 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' | 3m 23s | 19s |

## test accuracy (10 runs, 40 epochs, relu, SGD)

| Architecture | w/o dropout | w dropout |
| :----------- | :-------: | --------: |
| 'F:1000' | 98.509 ![pm](pm.png) 0.042 | 98.620 ![pm](pm.png) 0.063 |
| 'F:600 - F:600' | 98.626 ![pm](pm.png) 0.061 | 98.454 ![pm](pm.png) 0.053 |
| 'C:12@9x9 - P:2x2' | 98.807 ![pm](pm.png) 0.038 | - |
| 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' | 99.238 ![pm](pm.png) 0.036 | 99.402 ![pm](pm.png) 0.050 |