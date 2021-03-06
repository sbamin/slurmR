% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\docType{data}
\name{opts_slurmR}
\alias{opts_slurmR}
\title{Get and set default options for \code{sbatch} and \code{slurmR} internals}
\format{An object of class \code{opts_slurmR} of length 14.}
\usage{
opts_slurmR
}
\description{
Most of the functions in the \code{slurmR} package use \code{tmp_path} and \code{job-name}
options to write and submit jobs to \strong{Slurm}. These options have global
defaults that are set and retrieved using \code{opts_slurmR}.
}
\details{
Whatever the path specified on \code{tmp_path}, all nodes should have access to it.
Moreover, it is recommended to use a path located in a high-performing drive.
See for example \url{https://hpcc.usc.edu/support/infrastructure/temporary-disk-space/}.

The \code{tmp_path} directory is only created at the time that one of the functions
needs to I/O files. Job creation calls like \link{Slurm_EvalQ} and \link{Slurm_lapply}
do such.

Current supported options are:

Debugging mode
\itemize{
\item \verb{debug_on : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$debug_on, "desc")}
\item \verb{debug_off : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$debug_off, "desc")}
\item \verb{get_debug : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_debug, "desc")}
}

Verbose mode
\itemize{
\item \verb{verbose_on : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$verbose_on, "desc")}
\item \verb{verbose_off : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$verbose_off, "desc")}
\item \verb{get_verbose : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_verbose, "desc")}
}

Slurm options
\itemize{
\item \verb{set_tmp_path : function (path, recursive = TRUE)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$set_tmp_path, "desc")}
\item \verb{get_tmp_path : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_tmp_path, "desc")}
\item \verb{set_job_name : function (path, check = TRUE, overwrite = TRUE)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$set_job_name, "desc")}.
\item \verb{get_job_name : function (check = TRUE)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_job_name, "desc")}
}

Other options
\itemize{
\item \verb{get_cmd : function ()} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_cmd, "desc")}
}

For general set/retrieve options
\itemize{
\item \verb{set_opts : function (...)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$set_opts, "desc")}
\item \verb{get_opts_job : function (...)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_opts_job, "desc")}
\item \verb{get_opts_r : function (...)} \Sexpr[stage=build]{attr(slurmR::opts_slurmR$get_opts_r, "desc")}
}
}
\examples{

# Common setup
\dontrun{
opts_slurmR$set_tmp_path("/staging/pdt/vegayon")
opts_slurmR$set_job_name("simulations-1")
opts_slurm$set_opts(partition="thomas", account="lc_pdt")
}

}
\keyword{datasets}
