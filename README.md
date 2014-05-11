# Project Description

A collection of folders and templates intended to provide structure
and rapid prototyping for analytic projects using languages such as
Python, R, SAS, SPSS, etc.

As of today (2014-05-11), this project is far from complete. R and SQL
are my primary (and preferred) development platforms, thus most of the
templates target these two languages. But, I would like to include
templates for ANY language used for analysis. I will try to add a
similar SAS project template by the end of the summer as I become more
familiar with this widely used albeit restrictive language.


# Organization

The Analytic Templates project is divided up into six parts.

- config
- file_templates
- project_templates
- snippets
- style_guides

Over time, each of these folders will become populated with language
specific folders such as R, Python, SQL, etc. 

## config

Documents best practices for system configuration. This includes Emacs
/ Vim integration, Git, etc. Installation instructions and
platform-specific gothas would also be appropriate.

## file_tempaltes

Collection of language-specific file templates. Each template will
target a specific task or analytic process and will assume you are
using the corresponding project template. A file template is different
from the project template in one very importany way. While the project
templates will provide broad structure for an entire project, a file
template will provide specific structure and boilerplate for a
specific part of a project.

Example:

Most analysis projects result in some sort of output or
report. Thus, there is a standard folder in the R project template
called "reports/". However, I do NOT want to dictate or control what
these reports should look like. Many of my projects result in reports
in the form of Excel files or LaTeX files. Others may prefer to use
Knitr, or they may just produce a CSV file. Any / all of these are
reports and they are valid outputs of an analysis. Thus, there should
be example templates for each of these methods to assist the user. All
R projects should have a reports folder, but they should NOT require
the user to enjoy using LaTeX.

## project_templates

A collection of language-specific analytic project templates. The goal
of a project template is to provide a common setup and configuration for
analysis projects.

Example:

I always store data in a folder called data. I always store SQL
queries in a folder called sql. In each of these folders I place a
README.md file to document the files in the that folder. Reproducing
this common boilerplate was time consuming and the inevitable small
differences I introduced over time were annoying. From that
frustration, this project was born.

## snippets

Collection of useful, documented code snippets that demonstrate how to
do a specific task. This part of the repo is nearly empty.

## style_guides

Collection of language-specific style guides. I have not yet started
this part of the project.



