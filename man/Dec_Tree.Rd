\name{Dec_Tree}
\alias{Dec_Tree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Decision tree implementation
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Implements a function to perform decision tree clasification/regression given a dataframe and two column numbers in the dataframe.
}
\usage{
dec_tree(dataset, column1, column2, column3, column4, plot_req, predict_val)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataset}{
%%     ~~Describe \code{x} here~~
}
\item{column1}{}
\item{column2}{}
\item{column3}{}
\item{column4}{}
\item{plot_req}{}
\item{predict_val}{}
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
Returns the decision tree predictions given a predict_val and also plots the decison tree
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
