## Challenge

Create a function that will scale the aspect ratio of image dimension ([w,h]) to fit inside of a 200x200 box by using scale to fit. Meaning that one side, the width or height, will be 200 and the other will maintain the aspect ratio.
The function should be able to take in an array of multiple w,h pairs ([w,h,w,h,w,h,w,h]) and return an array of the scaled down ratios.

```
sample input:  
[200, 200]  
[400, 200]  
[1256, 1200, 600, 800, 200, 200, 400, 200, 800,1256]

sample output:  
[200, 200]  
[200, 100]  
[200, 191, 150, 200, 200, 200, 200, 100, 127, 200]  
```