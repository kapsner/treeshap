#' @import ggplot2
#' @import data.table
#' @importFrom stats reorder
#' @importFrom stats stepfun
#' @importFrom graphics text
#' @importFrom utils setTxtProgressBar txtProgressBar
#' @importFrom Rcpp sourceCpp
#' @useDynLib treeshap
NULL

#% https://community.rstudio.com/t/how-to-solve-no-visible-binding-for-global-
#% variable-note/28887
utils::globalVariables(
  c(
    "Feature", "split_index", "tree_index", ".",
    "node_parent", "default_left", "decision_type",
    "position", "cumulative", "prev", "text",
    "contribution", "var_value", "shap_value", "reorder",
    "variable", "importance", "Tree", "Node", "Missing",
    "Cover", "Yes", "No", 'Prediction', 'Decision.type'
  )
)
