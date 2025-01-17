% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fav.R
\name{fav}
\alias{fav}
\title{Use Font Awesome icons as favicons}
\usage{
fav(name, ...)
}
\arguments{
\item{name}{The name of the Font Awesome icon. This could be as a short name
(e.g., \code{"npm"}, \code{"drum"}, etc.), or, a full name (e.g., \code{"fab fa-npm"},
\code{"fas fa-drum"}, etc.). The names should correspond to current Version 6
Font Awesome names. A list of short and full names can be accessed through
the \code{\link[fontawesome:fa_metadata]{fa_metadata()}} function with \code{fa_metadata()$icon_names} and
\code{fa_metadata()$icon_names_full}. If supplying a previous name associated
with the icon, it will be internally translated to the current name and a
Version 6 icon will be returned.}

\item{...}{
  Arguments passed on to \code{\link[fontawesome:fa]{fontawesome::fa}}
  \describe{
    \item{\code{fill,fill_opacity}}{The fill color of the icon can be set with \code{fill}.
If not provided then the default value of \code{"currentColor"} is applied so
that the SVG fill matches the color of the parent HTML element's \code{color}
attribute. The opacity level of the SVG fill can be controlled with a
decimal value between \code{0} and \code{1}.}
    \item{\code{stroke,stroke_width,stroke_opacity}}{The stroke options allow for
setting the color, width, and opacity of the SVG outline stroke. By
default, the stroke width is very small at \code{"1px"} so a size adjustment
with \code{"stroke_width"} can be useful. The \code{"stroke_opacity"} value can be
any decimal values between \code{0} and \code{1} (bounds included).}
    \item{\code{height,width}}{The height and width style attributes of the rendered
SVG. If nothing is provided for \code{height} then a default value of \code{"1em"}
will be applied. If a \code{width} isn't given, then it will be calculated in
units of \code{"em"} on the basis of the icon's SVG \code{"viewBox"} dimensions.}
    \item{\code{margin_left,margin_right}}{The length value for the margin that's either
left or right of the icon. By default, \code{"auto"} is used for both
properties. If space is needed on either side then a length of \code{"0.2em"} is
recommended as a starting point.}
    \item{\code{vertical_align}}{The vertical alignment of the icon. By default, a
length of \code{"-0.125em"} is used.}
    \item{\code{position}}{The value for the \code{position} style attribute. By default,
\code{"relative"} is used here.}
    \item{\code{title}}{An option for populating the SVG \code{'title'} attribute, which
provides on-hover text for the icon. By default, no title text is given to
the icon. If \code{a11y == "semantic"} then title text will be
automatically given to the rendered icon, however, providing text here
will override that.}
    \item{\code{prefer_type}}{Chooses the type of icon returned if: (1) providing a
short name, and (2) that icon has both solid and regular types.
For example, using \code{name = "address-book"} will result in two types of
icons for an Address Book. By default, this preference is set to
\code{"regular"} and the other option is \code{"solid"}.}
    \item{\code{a11y}}{Cases that distinguish the role of the icon and inform which
accessibility attributes to be used. Icons can either be \code{"deco"}
(decorative, the default case) or \code{"sem"} (semantic). Using \code{"none"} will
result in no accessibility features for the icon.}
  }}
}
\value{
A \code{shiny.tag} (see \code{\link[htmltools:builder]{htmltools::tag()}}) that can be used to embed a
favicon in a shiny app or other HTML document.
}
\description{
Generate the html necessary to use a Font Awesome icon as the favicon (the
icon that appears on browser tabs) for a shiny app or other HTML document.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
html_page <- htmltools::tags$html(
  fav("earth-africa", fill = "blue"),
  htmltools::tags$body(
    htmltools::tags$h1("Hello world!"),
    htmltools::tags$p("(on the browser tab)")
  )
)
htmltools::html_print(html_page, viewer = utils::browseURL)
\dontshow{\}) # examplesIf}
}
