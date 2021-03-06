% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emulation_utilities.R
\name{emulation_algorithm_settings}
\alias{emulation_algorithm_settings}
\title{Initialise machine-learning algorithms settings for emulation creation}
\usage{
emulation_algorithm_settings(num_trees = 500, num_of_generations = 8e+05,
  num_of_folds = 10, network_structures = NULL, save_emulators = TRUE,
  save_ensemble = TRUE, plot_test_accuracy = TRUE)
}
\arguments{
\item{num_trees}{Number of trees used to generate a random forest model. If
a random forest is not selected as the emulation technique, this argument
does not need to be provided. Defaults to 500}

\item{num_of_generations}{Used in neural network generation, as the maximum
number of steps used in training the network. If this is reached, then
training is stopped. If a neural network is not selected as the emulation
technique, this argument does not need to be provided. Defaults to 800,000}

\item{num_of_folds}{Number of folds (subsets of training data) used in
k-fold cross validation when developing a neural network emulator. If a
neural network is not selected as the emulation technique, this argument
does not need to be provided. Defaults to 10.}

\item{network_structures}{List of neural network structures to examine
using k-fold cross validation when developing a neural network emulator.
Should be a list in the form of number of nodes in each hidden layer. For
example, c(c(4),c(4,3)) would consider two structures, one for a single
hidden layer of 4 nodes, and another with two hidden layers of 4 and 3 nodes.
If a neural network is not selected as the emulation technique, this
argument does not need to be provided.}

\item{save_emulators}{Boolean indicating whether the generated emulator
for each simulation output should be saved to file (as an Rda object).
This is stored in the current working directory. Defaults to TRUE}

\item{save_ensemble}{Used in Technique 7, to state whether an ensemble
generated from multiple emulators should be saved to file. Defaults to
TRUE}

\item{plot_test_accuracy}{Boolean indicating whether a plot showing a
comparison against the emulator predicted values to those observed in
the test set should be created. This ggplot is stored as a PDF in the
current working directory. Defaults to FALSE}
}
\value{
List of all the elements in the parameters above
}
\description{
Some of the machine learning algorithms incorporated have their own specific
settings (neural network and random forest, for example). To keep the
methods generic to multiple algorithms and to save passing multiple objects
around, these are declared in this function and returned as an
algorithmSettings object. Where the user wishes to use the default values,
there is no need to run this function: this will be created during emulator
generation. However, should the user wish to change any of the settings,
such as the number of generations in the neural network or the number of
trees in random forest, they should run this method with the new values.
In addition, this object will also contain two other settings: whether
graphs should be plotted of the accuracy of the emulator against the
training and test sets, and whether the emulator object that is created
should be stored in the working directory. Parameters this object stores
are detailed in the arguments section. However, for neural network
emulation, the user is required to initialise this object with a list
of neural network hidden layer structures to evaluate. Should this not
be done, an error message will be produced and the call will terminate.
}
