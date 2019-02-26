# CompNeuroSpring2019
Programming and Data Analysis for Modern Neuroscience, Spring 2019

## Course Objective
Like many other fields that rely on statistical analyses to understand complex systems, it is the case for neuroscience that the tools needed to analyze and interpret data sets ever increasing in richness and size include interfacing with your data via code. In this course you will learn how to program as well as gain a sense of the available resources and options for scientific computing. We will use Python as our primary learning tool, but other languages such as R, Julia, MATLAB or C/C++ may be discussed. *The best way to learn programming is by doing it*, so learning will largely be hands on through the application of relevant data analysis methods including signal processing, regression, classification, etc. Some linear algebra, calculus and geometry will be impossible to completely avoid, although not absolutely required to understand the major concepts. Ultimately, the goal of this course is to provide you a basic computational toolset in order to provide a platform on which you can build your own custom analyses for arbitrarily complex data sets that are becoming more and more ubuquitous in modern neuroscience.

## Requirements
* You need to bring a laptop to class for hands on participation. If you do not own a laptop, come speak to me and the department should be able to furnish you a loaner for the duration of the course.
* You should install Python on the laptop you will bring to class (see below).
* You should attend class both motivated and prepared to work hard!
* I expect you to conduct yourself in a respectful manner at all times.
* I hope that you will have fun!

## Office Hours (subject to change, so check here first!)
T 3:30-5:00 PM in NHB 4.352 (also check conference room 4.402)

TA: Check canvas

## Grading
* 50% Homework
* 25% Midterm (I may opt to forego this, in which case it will be folded into the homework and final)
* 25% Final

## Syllabus
Please note that the syllabus is subject to change. It is your responsibility to attend class in order to know what is going on.

* Jan 22 (#01) Course Intro, Intro to Programming, Python crash course
    * Why is programming an important tool?
    * Very basic understanding of how machines run programs
    * Contrast/Compare several relevant programming languages
    * Fundamental principles of programming
    * Python crash course
* Jan 24 (#02) Random Walk Lab
    * Translate problems to code
    * Manipulate and visualize multi-dimensional arrays
    * Coding good practices
    * Timing and efficient code
* Jan 29 (#03) Numpy and Matplotlib
    * Examples and excercises
* Jan 31 (#04) Probability Distributions
    * Discrete Probability Functions: e.g. Bernoulli, Binomial, Poisson
    * Continuous Probability Density Functions: e.g. Uniform, Gaussian/Normal, Exponential
    * Sample vs Distribution, e.g. Mean, Variance
    * Central limit theorem
* Feb 05 (#05) Maximum Likelihood and Bootstrap
    * P(model | data) vs. P(data | model)
    * Likelihood
    * Maximum Likelihood Estimation
    * Confidence interval
    * Bootstrap
* Feb 07 (#06) Review
* Feb 12 (#07) Hypothesis testing
    * z-score
    * p-value
    * t-test
    * KS-test (we didn't get to this in class)
* Feb 14 (#08) Optimization
    * Curve fitting
    * Nonlinear optimization of single or multiple variables
* Feb 19 (#09) Optimization
* Feb 21 (#10) Review
    * Probability distributions
    * Maximum Likelihood
    * Bootstrap
    * Optimization
* Feb 26 (#11) Hypothesis testing
    * Review t-test
    * Permutation test
* Feb 28 (#12) Linear Regression
    * Correlation
    * R^2
    * Outliers
    * Leverage
    * Nonconstant variance
* Mar 05 (#13) Linear Regression
    * Multiple Linear Regression
    * F-test
    * Correlated error
    * Interaction terms
* Mar 07 (#14) Nonlinear regression
    * Polynomial regression
    * Nonparametric KNN regression
* Mar 12 (#15) Regression
* Mar 14 (#16) Midterm?
* Mar 19 - SPRING BREAK
* Mar 21 - SPRING BREAK
* Mar 26 (#17) Cross Validation
* Mar 28 (#18) Principal Component Analysis
* Apr 02 (#19) Principal Component Analysis
* Apr 04 (#20) Clustering
* Apr 09 (#21) Clustering
* Apr 11 (#22) Time Series
    * Sampling
    * Filtering
    * Convolution
    * Fourier analysis
* Apr 16 (#23) Features
* Apr 18 (#24) Hodgkin-Huxley Excitable Cell Model
* Apr 23 (#25) Hidden Markov Models
* Apr 25 (#26) Hidden Markov Models
* Apr 30 (#27) 
* May 02 (#28) 
* May 07 (#29) 
* May 09 (#30) Review
* May ?? - FINAL

## Install Python (required)
There are many ways to install python. This is one way.

1. Go to https://www.anaconda.com/download and download the Anaconda Python distribution (get the latest version 3.x). Just follow the install steps. Anaconda comes with a bunch of useful scientific libraries such as Numpy and Scipy that you would otherwise have to install yourself.
2. Launch Anaconda Navigator. Install JupyterLab and Spyder via the widgets in the Home tab. JupyterLab is a web-based python notebook and Spyder is an environment for runnin Python that is similar to MATLAB.

## Install R (optional)
1. Go to https://cran.revolutionanalytics.com/index.html and download R. Run the installer.
2. Go to https://www.rstudio.com/ and download RStuio Desktop. This is an environment for running R that is similar to MATLAB.

## Install Julia (optional)
Note, you can run Julia online at https://juliabox.com for free without having to install anything.

1. Go to https://juliacomputing.com/products/juliapro and download JuliaPro. See the Quickstart Guide for OS specific installation instructions.

Like Python, there are many environments in which you can run Julia including starting it in a shell by typing `>>> julia`. Launching JuliaPro should launch Juno, which is an environment similar to MATLAB that can run Julia.

## Install MATLAB (optional)
UT students have free access to MATLAB.

1. Go to www.mathworks.com and create a user account. **Your user name MUST be your UT email address!**
2. Go to [UT Service Now](https://ut.service-now.com/utss/catalogoverview.do?sysparam_citems_id=f9d65c7c4ff9d200f6897bcd0210c77d&sysparam_cat_id=e0d08b13c3330100c8b837659bba8fb4,Information%20Technology&sys_click_name=features&sys_features=1) and request MATLAB. **Click the Request button in the MATLAB for Students Only box near the bottom of the page.** Your request may take a day or two to process, so don't delay.
3. Sign in to your mathworks account and you should see a license from UT is available to you. Use that license to download MATLAB (version 2018a or 2018b). Then run the installer. If you can afford the space (~23 GB) *get all the toolboxes that you can*. If not, *get at least those toolboxes listed at https://www.mathworks.com/products.html under the MATLAB product family sections 'Math, Statistics, and Optimization', 'Signal Processing', 'Image Processing' and 'Computational Biology'.*

Note, once you've registered you can also use MATLAB via an online interface that mimicks the application environment at https://matlab.mathworks.com.

## Install GitHub Desktop

1. Go to https://desktop.github.com and download the GitHub Desktop app.
2. Open the app and select File->Clone Repository. Select URL and enter the URL of this repository (https://github.com/marcel-goldschen-ohm/CompNeuroSpring2019), then click 'Clone'. This will download all of the files in this repository to a folder on your computer. To navigate to the folder from GitHub Desktop select Repository->Show in Finder (that's for MacOS, wording may differ on Windows machines).
3. Whenever you want to make sure that you have the latest version of all files ont he repository, select Repository->Pull to download ONLY what has changed since the last time you downloaded the repository.
4. *To make sure you do not overwrite any homework assignment files, I recommend copying all of the homeworks into a separate folder on your computer rather than editing the files directly in the GitHub repository folder.*

## Resources
* [Computational Statistics in Python](http://people.duke.edu/~ccc14/sta-663-2017): Great collection of both references and examples. Highly recommend!
* [Interactive Python Course](http://interactivepython.org/courselib/static/thinkcspy/toc.html#t-o-c): Python basics course.
* [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook): Python basics.
* [Python Challenges](http://www.pythonchallenge.com): Fun!
* [Hypothesis Testing and p-Values](https://www.youtube.com/watch?v=TuYxeEZYkQ4): Youtube video.
* [Statistics Done Wrong](https://www.statisticsdonewrong.com): MUST READ!!!
* [Power failure: why small sample size undermines the reliability of neuroscience](https://www.nature.com/articles/nrn3475)
* [An Introduction to Statistical Learning](https://www-bcf.usc.edu/~gareth/ISL/ISLR%20First%20Printing.pdf): Nice intro to fairly complex statistical methods with very little math.
* [Computational and Inferential Thinking](https://www.inferentialthinking.com)
* [Alex Huth's lectures on Neuro Data Analysis in Python](https://github.com/alexhuth/ndap-fa2018): Lecture notes for another class on Python for neuroscientists.
