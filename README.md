# gogr: use gog visualization system from R

Communicate with a [gog](https://github.com/ajschumacher/gog) server for data visualization independent of R.


### Installation:

[From github](https://github.com/ajschumacher/gogr) (development version):

```s
# install.packages("devtools")
devtools::install_github("ajschumacher/gogr")
```


### Usage:

Independent of `R` and `gogr`, you need to be running a gog server such as [gogd](https://github.com/ajschumacher/gogd) and have a gog frontend like [gogi](https://github.com/ajschumacher/gogi) in a browser.

```s
library(gogr)

gog(iris)
```
