% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/post_process.R
\name{split_animation}
\alias{split_animation}
\title{Split an animation into chunks}
\usage{
split_animation(animation = last_animation(), by)
}
\arguments{
\item{animation}{The animation to extract metadata from. Defaults to the last
rendered animation}

\item{by}{An unquoted expression to be evaluated in the context of the frame
metadata. The result must be of equal length to the number of frames in the
animation and define a grouping}
}
\value{
Depending on the output type of the renderer used to produce the
animation. Often a list with elements referencing the chunks of the
animation. that can then be saved individually.
}
\description{
Sometimes it is of interest to split an animation out in smaller chunks so
they can be orchestrated, e.g. in a presentation. This function lets you
provide a 'factor' to split by in the same way as \code{\link[base:split]{base::split()}} though this
one will be evaluated in the context of the animations \code{\link[=frame_vars]{frame_vars()}} data,
so you can split directly on frame metadata.
}
