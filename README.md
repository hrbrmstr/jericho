
[![Build Status](https://travis-ci.org/hrbrmstr/jericho.svg?branch=master)](https://travis-ci.org/hrbrmstr/jericho) [![Build status](https://ci.appveyor.com/api/projects/status/nosmgh0b2wthjjf3/branch/master?svg=true)](https://ci.appveyor.com/project/hrbrmstr/jericho/branch/master) [![codecov](https://codecov.io/gh/hrbrmstr/jericho/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/jericho)

`jericho` : Break Down the Walls of 'HTML' Tags into Usable Text

Structured 'HTML' content can be useful when you need to parse data tables or other tagged data from within a document. However, it is also useful to obtain "just the text" from a document free from the walls of tags that surround it. Tools are provied that wrap methods in the 'Jericho HTML Parser' Java library by Martin Jericho <http://jericho.htmlparser.net/docs/index.html>. Martin's library is used in many at-scale projects, icluding the 'The Internet Archive'.

As a result of using a Java library, this package requires `rJava`.

The following functions are implemented:

-   `html_to_text`: Convert HTML to Text
-   `render_html_to_text`: Render HTML to Text

### Installation

If you do use `devtools`, then it *should* pickup the `Remotes:` section in `DESCRIPTION`. Until the package is on CRAN, you might want to also invoke the installation of `jerichojars` as shown below:

``` r
devtools::install_github("hrbrmstr/jerichojars")
devtools::install_github("hrbrmstr/jericho")
```

### Usage

Let's use [this NASA blog post](https://blogs.nasa.gov/spacestation/2017/09/02/touchdown-expedition-52-back-on-earth/) as an example.

``` r
library(jericho)

# current verison
packageVersion("jericho")
```

    ## [1] '0.1.0'

``` r
URL <- "https://blogs.nasa.gov/spacestation/2017/09/02/touchdown-expedition-52-back-on-earth/"
  
doc <- paste0(readr::read_lines(URL), collapse="\n")
```

This is pure text extraction:

``` r
html_to_text(doc)
```

This provides a human readable version of the segment content that is modelled on the way Mozilla Thunderbird and other email clients provide an automatic conversion of HTML content to text in their alternative MIME encoding of emails.

``` r
render_html_to_text(doc)
```

You should run each to see and compare the output (GitHub markdown documents aren't the best viewing medium).

### Test Results

``` r
library(jericho)
library(testthat)

date()
```

    ## [1] "Mon Sep  4 21:33:17 2017"

``` r
test_dir("tests/")
```

    ## testthat results ========================================================================================================
    ## OK: 6 SKIPPED: 0 FAILED: 0
    ## 
    ## DONE ===================================================================================================================
