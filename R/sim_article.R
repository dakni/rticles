#' Statistics in Medicine format.
#'
#' Format for creating submissions to Statistics in Medicine. Based on the official Statistics in Medicine
#' \href{http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1097-0258/homepage/la_tex_class_file.htm}{class}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @details Possible arguments for the YAML header are:
#' \itemize{
#'  \item \code{classoption}:,class options for the Statistics in Medicine class such as \code{doublespace} for double spacing the document
#'  \item \code{year} and \code{date}: year of the manuscript submission
#'  \item \code{longtable}: set to \code{true} for including the \code{longtable} package
#'  \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
#'  \item \code{authabbr}: abbreviation of the author for page headers
#'  \item \code{title}: title of the manuscript
#'  \item \code{author}: author(s), include as a string with \code{\\affilnum\{\}} statements for defining affiliations
#'  \item \code{address}: a list of \code{num} and \code{address}, where the former is the equivalent of \code{affilnum} specified in the \code{author} field and the latter is the description of the institution
#'  \item \code{corraddr}: corresponding address
#'  \item \code{abstract}: abstract of the manuscript
#'  \item \code{keywords}: keywords
#'  \item \code{acknowledgements}: acknowledgements section, to appear at the end of the main body
#'  \item \code{bibliography}: BibTeX file to include for references
#'  \item \code{bibliographystyle}: bibliograpy style (\code{wileyj} by default)
#'  \item \code{include-after}}: for including additional LaTeX code before the \code{\\end\{document\} statement}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "sim_article", package = "rticles")
#' }
#'
#' @export
sim_article <- function(..., highlight = NULL, citation_package = "natbib") {
  inherit_pdf_document(...,
                       template = find_resource("sim_article", "template.tex"),
                       highlight = highlight,
                       citation_package = citation_package)
}
