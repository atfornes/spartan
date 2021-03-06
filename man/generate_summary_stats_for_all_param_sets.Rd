% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robustness_analysis.R
\name{generate_summary_stats_for_all_param_sets}
\alias{generate_summary_stats_for_all_param_sets}
\title{Generate summary statistics for each value of all parameters in this analysis}
\usage{
generate_summary_stats_for_all_param_sets(FILEPATH, PARAMETERS, BASELINE, PMIN,
  PMAX, PINC, PARAMVALS, NUMRUNSPERSAMPLE, MEASURES, RESULTFILENAME,
  ALTERNATIVEFILENAME, OUTPUTCOLSTART, OUTPUTCOLEND)
}
\arguments{
\item{FILEPATH}{Directory where either the simulation runs or single CSV file result can be found}

\item{PARAMETERS}{Array containing the names of the parameters for which local analyses are being conducted}

\item{BASELINE}{Array containing the values assigned to each of these parameters in the calibrated baseline}

\item{PMIN}{Array containing the minimum value that should be used for each parameter.  Sets a lower bound on sampling space}

\item{PMAX}{Array containing the maximum value that should be used for each parameter.  Sets an upper bound on sampling space}

\item{PINC}{Array containing the minimum value that should be used for each parameter.  Sets a lower bound on sampling space}

\item{PARAMVALS}{Array containing a list of strings for each parameter, each string containing comma separated values that should be assigned to that parameter. Thus sampling can be performed for specific values for each parameter, rather than a uniform incremented value. This replaces the PMIN, PMAX, and PINC where this method is used}

\item{NUMRUNSPERSAMPLE}{The number of runs performed for each parameter subset. This figure is generated through Aleatory Analysis}

\item{MEASURES}{Array containing the names of the output measures which are used to analyse the simulation}

\item{RESULTFILENAME}{Name of the simulation results file. In the current version, XML and CSV files can be processed. If performing this analysis over multiple timepoints, it is assumed that the timepoint follows the file name, e.g. trackedCells_Close_12.csv.}

\item{ALTERNATIVEFILENAME}{In some cases, it may be relevant to read from a further results file if he initial file contains no results. This filename is set here.}

\item{OUTPUTCOLSTART}{Column number in the simulation results file where output begins - saves (a) reading in unnecessary data, and (b) errors where the first column is a label, and therefore could contain duplicates.}

\item{OUTPUTCOLEND}{Column number in the simulation results file where the last output measure is. Only required if running the first method.}
}
\description{
Generate summary statistics for each value of all parameters in this analysis
}
