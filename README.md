# CompNeuroSpring2019
Programming and Data Analysis for Modern Neuroscience Spring 2019

## Course Objective
Like many other fields that rely on statistical analyses to understand complex systems, it is the case for neuroscience that the tools needed to analyze and interpret data sets ever increasing in richness and size include interfacing with your data via code. In this course you will learn how to program as well as gain a sense of the available resources and options for scientific computing. To begin, you will use the MATLAB environment. However, many of the concepts learned there can be readily applied to other programming lanuages such as Python, R, Julia or C/C++, some of the pros and cons of which will be discussed, and possibly explored. *The best way to learn programming is by doing it*, so learning will largely be hands on through the application of relevant data analysis methods including signal processing, regression, classification, etc. Some linear algebra, calculus and geometry will be impossible to completely avoid, although not absolutely required to understand the major concepts. Ultimately, the goal of this course is to provide you a basic computational toolset in order to provide a platform on which you can build your own custom analyses for arbitrarily complex data sets that are becoming more and more ubuquitous in modern neuroscience.

## Requirements
* You need to bring a laptop to class for hands on participation. If you do not own a laptop, come speak to me and the department should be able to furnish you a loaner for the duration of the course.
* You should install MATLAB on the laptop you will bring to class (see below).
* You should attend class both motivated and prepared to work hard!
* I expect you to conduct yourself in a respectful manner at all times.
* I hope that you will have fun!

## Office Hours (subject to change, so check here first!)
???

TA: ???

## Homework
Homework #1 due ???

## Grading
* 50% Homework
* 25% Midterm (I may opt to forego this, in which case it will be folded into the homework and final)
* 25% Final

## Syllabus
Please note that the syllabus is subject to change. It is your responsibility to attend class in order to know what is going on.

* Jan 22 - Course Intro, Intro to Programming, MATLAB crash course
* Jan 24 - Random Walk Lab
* Jan 29 - Probability Distributions, Central Limit Theorem, p-Value, t-Test, Maximum Likelihood
* Jan 31 - Linear Regression, Correlation, R^2, Multiple Linear Regression, F-test, Correlated Error, Nonconstant Variance, Outliers, Leverage
* Feb 05 - Multiple Linear Regression, Interaction Terms, Polynomial Regression, Nonparametric KNN Regression
* Feb 07 - 
* Feb 12 - 
* Feb 14 - 
* Feb 19 - 
* Feb 21 - 
* Feb 26 - 
* Feb 28 - 
* Mar 05 - 
* Mar 07 - 
* Mar 12 - 
* Mar 14 - 
* Mar 19 - SPRING BREAK
* Mar 21 - SPRING BREAK
* Mar 26 - 
* Mar 28 - 
* Apr 02 - 
* Apr 04 - 
* Apr 09 - 
* Apr 11 - 
* Apr 16 - 
* Apr 18 - 
* Apr 23 - 
* Apr 25 - 
* Apr 30 - 
* May 02 - 
* May 07 - 
* May 09 - 
* May ?? - FINAL

* Clustering
* Timeseries: Sampling, Correlation, Convolution, Filtering and Fourier Analysis
* Timeseries: Features, Wavelets
* Timeseries: Differential Equations, HMM
* Principal Component Analysis
* Model Training: Cross Validation, Bootstrap
* Machine Learning
* Deep Learning

## Install MATLAB (required)
UT students have free access to MATLAB.

1. Go to [www.mathworks.com] and create a user account. **Your user name MUST be your UT email address!**
2. Go to [UT Service Now](https://ut.service-now.com/utss/catalogoverview.do?sysparam_citems_id=f9d65c7c4ff9d200f6897bcd0210c77d&sysparam_cat_id=e0d08b13c3330100c8b837659bba8fb4,Information%20Technology&sys_click_name=features&sys_features=1) and request MATLAB. **Click the Request button in the MATLAB for Students Only box near the bottom of the page.** Your request may take a day or two to process, so don't delay.
3. Sign in to your mathworks account and you should see a license from UT is available to you. Use that license to download MATLAB *plus all of the toolboxes that are accessible to you*.

Note, once you've registered you can also use MATLAB via an online interface that mimicks the application environment at [https://matlab.mathworks.com].

## Install Python (optional)
There are many ways to install python. This is the way I recommend.

1. Go to [https://www.anaconda.com/download] and download the Anaconda Python distribution. Just follow the install steps. Anaconda comes with a bunch of useful scientific libraries such as Numpy and Scipy that you would otherwise have to install yourself.
2. Verify you are now using Anaconda's versions of python, pip and jupyter. Open a shell (MacOS = Terminal, Windows = Command Prompt) and type `>>> which conda pip python jupyter` (for windows you may need to replace which with where). You should see the path to each of these programs in the output, which should be something like `/anaconda3/bin/...`.

There are many environments in which you can run Python including starting it in a shell by typing `>>> python`. I recommend launching the Anaconda-Navigator and either opening a Jupyter Notebook which is a web-based python environment or using an environment that is similar to MATLAB such as Spyder.

## Install R (optional)
1. Go to [https://cran.revolutionanalytics.com/index.html] and download R. Run the installer.
2. Go to [https://www.rstudio.com/] and download RStuio Desktop. This is an environment for running R that is similar to MATLAB.

## Install Julia (optional)
Note, you can run Julia online at [https://juliabox.com] for free without having to install anything.

1. Go to [https://juliacomputing.com/products/juliapro] and download JuliaPro. See the Quickstart Guide for OS specific installation instructions.

Like Python, there are many environments in which you can run Julia including starting it in a shell by typing `>>> julia`. Launching JuliaPro should launch Juno, which is an environment similar to MATLAB that can run Julia.

## Resources
* [An Introduction to Statistical Learning](https://www-bcf.usc.edu/~gareth/ISL/ISLR%20First%20Printing.pdf)
* [Computer Age Statistical Inference](https://web.stanford.edu/~hastie/CASI/)
