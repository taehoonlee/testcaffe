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

# Results in literatures

| Architecture | Description | Test Accuracy |
| :----------- | :-------: | --------: |
| 'F:800' | Standard Neural Net, sigmoid | 98.40 |
| 'F:1024 - F:1024' | Dropout | 98.75 |
| 'F:1024 - F:1024' | Dropout + max-norm constraint | 98.94 |
| 'F:4096' | Dropout + max-norm constraint | 98.99 |
| 'F - F' | Maxout + Dropout | 99.06 |
| 'F:500 - F:500 - F:2000' | DBN + Dropout finetuning, sigmoid | 99.08 |
| 'F:500 - F:500 - F:2000' | DBM + Dropout finetuning, sigmoid | 99.21 |
| 'C - C - C - P' | Maxout + Dropout | 99.55 |
| 'F:800 - F:800' | DropConnect | 98.80 ![pm](pm.png) 0.034 |
| 'F:800 - F:800' x 5 | + voting | 98.88 |
| 'C:32 - C:64 - F:150' | DropConnect | 99.37 ![pm](pm.png) 0.035 |
| 'C:32 - C:64 - F:150' x 5 | + voting | 99.43 |
| 'C:32 - C:64 - F:150' | DropConnect + rotation scaling | 99.72 ![pm](pm.png) 0.032 |
| 'C:32 - C:64 - F:150' x 5 | + voting | 99.79 |

## references

<li> DropConnect </li>
Wan et al., *ICML*, 2013.
<li> Dropout, max-norm constraint </li>
Srivastava et al., *JMLR*, 2014.
<li> Maxout </li>
Goodfellow et al., *ICML*, 2013.
<li> Standard Neural Net </li>
Simard et al., *ICDAR*, 2003.