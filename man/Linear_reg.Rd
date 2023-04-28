\name{Linear_reg}
\alias{Linear_reg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Perform linear regression
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Incorporates two functions to perform linear regression.
linear_reg() performs linear regression given two column vectors (of data)
flexible_linear_reg() performs linear regression given the entire dataframe and column numbers of the columns we want to perform regression on.
Both functions have other arguments to plot, print the summary, etc.
}
\usage{
linear_reg(x, y, summary_req, predict_val, plot_req)
flexible_linear_reg(dataset, column1, column2, summary_req, predict_val, plot_req)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
\item{y}{}
\item{summary_req}{}
\item{plot_req}{}
\item{predict_val}{}
\item{dataset}{}
\item{column1}{}
\item{column2}{}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Returns the summary after linear regression, i.e., the equation of the line, plots the line and the data.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Sriya Reddy
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
