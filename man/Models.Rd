\name{Models}
\alias{Models}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Implements linear regression, decision tree and random forest models
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Implements all the three models - linear regression, decision tree and random forest in one function. Can perform for two columns of data. Please use the specialized functions for more columns for decision tree and random forest.
}
\usage{
all_models(input_data, column1, column2, summary_req, predict_val, plot_req)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{input_data}{
%%     ~~Describe \code{x} here~~
}
\item{column1}{}
\item{column2}{}
\item{summary_req}{}
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
Returns the predictions using the three models (linear regression, decision tree and random forest) on the predict_vsl value.
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
