\name{installFuture}
\alias{installFuture}
\title{Install future pacakges}
\usage{
  installFuture(github = FALSE, ...)
}
\arguments{
  \item{...}{Parameters to pass onto install.packages}

  \item{github}{logical; Do you want to install the
  developmental versions from the github repositories?
  (requires the devtools package)}
}
\description{
  Identifies which future packages you need and installs
  them for you
}

