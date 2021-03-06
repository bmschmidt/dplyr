\name{select_vars}
\alias{select_vars}
\title{Select variables.}
\usage{
select_vars(vars, ..., env = parent.frame())
}
\arguments{
  \item{vars}{A character vector of existing column names.}

  \item{...}{Expressions to compute}
}
\value{
A named character vector. Values are existing column names,
names are new names.
}
\description{
Select variables.
}
\examples{
# Keep variables
select_vars(names(iris), starts_with("Petal"))
select_vars(names(iris), ends_with("Width"))
select_vars(names(iris), contains("etal"))
select_vars(names(iris), matches(".t."))
select_vars(names(iris), Petal.Length, Petal.Width)

df <- as.data.frame(matrix(runif(100), nrow = 10))
df <- df[c(3, 4, 7, 1, 9, 8, 5, 2, 6, 10)]
select_vars(names(df), num_range("V", 4:6))

# Drop variables
select_vars(names(iris), -starts_with("Petal"))
select_vars(names(iris), -ends_with("Width"))
select_vars(names(iris), -contains("etal"))
select_vars(names(iris), -matches(".t."))
select_vars(names(iris), -Petal.Length, -Petal.Width)

# Rename variables
select_vars(names(iris), petal_length = Petal.Length)
select_vars(names(iris), petal = starts_with("Petal"))
}
\keyword{internal}

