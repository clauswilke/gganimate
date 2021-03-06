% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anim_save.R
\name{anim_save}
\alias{anim_save}
\title{Save an animation to a file}
\usage{
anim_save(filename, animation = last_animation(), path = NULL, ...)
}
\arguments{
\item{filename}{File name to create on disk.}

\item{animation}{The animation object to save, as returned by \code{\link[=animate]{animate()}}.
Defaults to the last rendered animation using \code{\link[=last_animation]{last_animation()}}}

\item{path}{Path of the directory to save plot to: \code{path} and \code{filename}
are combined to create the fully qualified file name. Defaults to the
working directory.}

\item{...}{arguments passed on to \code{\link[=animate]{animate()}} if \code{animation} is a \code{gganim}
object}
}
\description{
This function is analogous to \code{\link[ggplot2:ggsave]{ggplot2::ggsave()}} in that it by default takes
the last created animation and saves it to the specific location. As
\code{gganimate} supports arbitrary renderers, and thus return types, the returned
object must implement a \code{save_animation} method to be able to be used with
\code{anim_save()}. This is provided natively for \code{gif_image} and \code{magick-image}
objects.
}
