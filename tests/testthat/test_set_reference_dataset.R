
if (requireNamespace("xgboost", quietly = TRUE)) {

  data <- fifa20$data[colnames(fifa20$data) != 'work_rate']
  target <- fifa20$target

  test_that('recalculate covers works correctly for xgboost model', {
    xgb_model <- xgboost::xgboost(
      x = as.matrix(data),
      y = target,
      objective = "reg:squarederror",
      max_depth = 5,
      nrounds = 100
    )
    unified <- xgboost.unify(xgb_model, as.matrix(data))
    a <- set_reference_dataset(unified, data)$Cover
    b <- unified$Cover
    expect_true(all(a == b))
  })
}
