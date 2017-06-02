future
==========

Note: future hasn't been updated in a while.  The ['backports'](https://github.com/mllg/backports) package provides similar functionality and is more up to date.  Give it a look if you're interested.

The `future` package is a convenience package meant to load the necessary other futureX.Y packages.  These other packages essentially provide the best approximations to the functions introduced in specific versions of R so that users stuck with older versions of R can still have access to some of these nicer functions.
    
## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/future/zipball/master) or [tar ball](https://github.com/Dasonk/future/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("future", "Dasonk")
```

