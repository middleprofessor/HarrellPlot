% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/harrellplot.R
\name{harrellplot}
\alias{harrellplot}
\title{HarrellPlot}
\usage{
harrellplot(x, y, g = NULL, covcols = NULL, rintcols = NULL,
  rslopecols = NULL, data, fit.model = "lm", REML = TRUE,
  error = "Normal", add_interaction = TRUE, interaction.group = TRUE,
  interaction.treatment = TRUE, mean_intervals.method = "raw",
  conf.mean = 0.95, contrasts.method = "revpairwise",
  contrasts.scaling = "raw", conf.contrast = 0.95, adjust = FALSE,
  show.contrasts = TRUE, show.treatments = TRUE,
  display.treatment = "box", short = FALSE, show.mean = TRUE,
  show.dots = TRUE, zero = TRUE, horizontal = TRUE,
  color_palette = "jco", jtheme = "minimal", rel_height = 0,
  y_label = NULL)
}
\arguments{
\item{x}{contains the name of the column of Treatment 1 -- will be ploted on the X-axis}

\item{y}{contains the name of the column with the response variable}

\item{g}{contains the name of the column of Treatment 2 -- will be the "grouping" variable for the plot}

\item{data}{is the data frame or data.table}

\item{fit.model}{at present, only "lm" and 'lmm' (using lme4) are implemented}

\item{error}{at present, only "Normal" is implemented}

\item{add_interaction}{if TRUE, include interaction effect}

\item{interaction.group}{if TRUE, plots effects across levels of Treatment 2}

\item{interaction.treatment}{if TRUE, plots effects across levels of Treatment 1}

\item{mean_intervals.method}{method for computing confidence intervals of the treatment means. "raw" commputes the intervals based on the treatment SE, "lm" is based on the model SE from the fit model, "boot" computes bootstrap intervals}

\item{conf.mean}{is the percentile level for the treatment CIs. Possible values are 0.9, 0.95, and 0.99}

\item{contrasts.method}{"coefficients" are the model coefficients. "trt.vs.ctrl1" and "revpairwise" are from the emmeans (formerly lsmeans) package.}

\item{contrasts.scaling}{Scaling of the effects (if contrasts). Can be 'raw', 'percent', or 'standardized'}

\item{conf.contrast}{is percentile level for the contrast CIs. Possible values are 0.9, 0.95, and 0.99}

\item{adjust}{is interval adjustment for contrast CIs, TRUE is default adjustment, which is Tukey for pairwise or modified Dunnets for treatment vs. control}

\item{display.treatment}{can be "box", "ci"}

\item{short}{if TRUE, treatment levels are shortened using abbreviate()}

\item{show.mean}{if TRUE, plot mean}

\item{show.dots}{if TRUE, plot dots}

\item{horizontal}{if TRUE, the plot is flipped into horizontal geometry}

\item{color_palette}{can be "ggplot", "greys", "npg", "aaas", "nejm", "lancet", "jama", "jco". greys is from color brewer. npg, aas, nejm, lancet, jama, and jco are from ggsci package.}

\item{jtheme}{can be "gray", "bw", "classic", "minimal"}

\item{rel_height}{Aspect ratio of forest plot vs. box/dot plot components. E.g .66 or 1.5. For default, either do not pass this parameter or us "rel_height=0".}

\item{y_label}{user supplied lable for Y axis}

\item{show.zero}{if TRUE, includes 0.0 on in the forest plot of effects}
}
\description{
a wrapper to ggplot2 that generates a Harrel (or Horizontal) dot plot, with an upper panel of model contrasts and a lower panel of treatment distributions
}
