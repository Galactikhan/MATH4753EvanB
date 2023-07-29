#' Load a File
#'
#' @param obj.name object name desired
#'
#' @return  an object assigned to a.csv
#' @export
#'
#' @examples
file.load=function(obj.name){
  obj.name<-utils::read.csv(file.choose())
  return(obj.name)
}
