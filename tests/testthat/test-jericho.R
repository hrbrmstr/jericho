context("basic functionality")
test_that("we can do something", {

  fils <- list.files(system.file("extdata", package="jericho"), full.names=TRUE)

  lapply(fils, function(f) {

    d <- readBin(f, "raw", file.size(f))
    d <- rawToChar(d)

    list(
      h = html_to_text(d),
      b = render_html_to_text(d)
    )

  }) -> x

  expect_equal(x[[1]]$h, "Jericho HTML Parser Test Document Test HTML Document")
  expect_equal(x[[1]]$b, "Test HTML Document")

  expect_equal(x[[2]]$h, "SegmentTest SegmentTest p1 p2 p3 p4 p5 p6 p7 find text 2 find text 3 bla find text 4 find text 5 <#unregistered tag type#>")
  expect_equal(x[[2]]$b, "SegmentTest\r\n\r\n p1\r\n\r\n p2\r\n\r\np3\r\n\r\np4\r\n\r\np5\r\n\r\np6\r\n\r\np7\r\n\r\nfind text 2\r\nfind text 3\r\nbla\r\nfind text 4\r\nfind text 5 <#unregistered tag type#>")

  expect_equal(x[[5]]$h, "Jericho HTML Parser Test Document Test HTML Document")
  expect_equal(x[[5]]$b, "Test HTML Document")

})
