# Hardwares tested
<li>CPU: Intel Xeon E5-4620 (Sandy-bridge) (2.2GHz, 16MB, 7.2GT/s) </li>
<li>GPU: GTX Titan (2688 cores, 6GB) </li>

# Files

## MNIST

<li> `mnist_9828_solver`: 'F:1000' </li>
<li> `mnist_9831_solver`: 'F:600 - F:600' </li>
<li> `mnist_9838_solver`: 'F:1000' w dropout </li>
<li> `mnist_9845_solver`: 'F:600 - F:600' w dropout </li>
<li> `mnist_9880_solver`: 'C:12@9x9 - P:2x2' </li>
<li> `mnist_9923_solver`: 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' </li>
<li> `mnist_9940_solver`: 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' w dropout </li>

# Results

## running times per 1 epoch (=600 iters)

| Architecture | Caffe CPU | Caffe GPU |
| :----------- | :-------: | --------: |
| 'F:1000' | 21s | 1s |
| 'F:600 - F:600' | 22s | 1s |
| 'C:12@9x9 - P:2x2' | 36s | 10s |
| 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' | 3m 23s | 19s |

## test accuracy (10 runs, 40 epochs, SGD)

| Architecture | w/o dropout | w dropout |
| :----------- | :-------: | --------: |
| 'F:1000' | 98.281 ![pm](pm.png) 0.044 | 98.381 ![pm](pm.png) 0.037 |
| 'F:600 - F:600' | 98.310 ![pm](pm.png) 0.065 | 98.454 ![pm](pm.png) 0.053 |
| 'C:12@9x9 - P:2x2' | 98.807 ![pm](pm.png) 0.038 | - |
| 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' | 99.238 ![pm](pm.png) 0.036 | 99.402 ![pm](pm.png) 0.050 |