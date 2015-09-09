# Hardwares tested
<li>CPU: Intel Xeon E5-4620 (Sandy-bridge) (2.2GHz, 16MB, 7.2GT/s) </li>
<li>GPU: GTX Titan (2688 cores, 6GB) </li>

# Results
| Architecture | Caffe CPU | Caffe GPU |
| :----------- | :-------: | --------: |
| 'C:12@9x9 - P:2x2' | 36s | 10s |
| 'C:20@5x5 - P:2x2 - C:40@5x5 - P:2x2 <br /> - F:1000 - F:1000' | 3m 23s | 19s |
[running times per 1 epoch (=600 iters)]