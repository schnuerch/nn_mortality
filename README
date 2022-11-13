# Introduction to neural networks with applications in mortality modeling

This repository contains a Jupyter notebook written in the R statistical programming language which demonstrates the usage of different neural network architectures, mainly focusing on the example of mortality modeling.
For this reason, the repository also contains some mortality data, which were obtained from the Human Mortality Database (www.mortality.org) in August 2022.

## Software requirements

To run the code, some software has to be installed. In the following, a description is given for R, Python and Jupyter Notebook, referring to the specific versions that were used when creating the code. 
The code **might** run with other versions as well. 

### R

Download and install R 4.2.1 (e.g., [here](https://cran.r-project.org/bin/windows/base/old/4.2.1/) for Windows).
If you want, you can also download the IDE [RStudio](https://posit.co/), but this is not strictly necessary.

### Python

Download and install Python 3.9.13 (e.g., [here](https://www.python.org/downloads/release/python-3913/), scroll down for installation files).

### Jupyter Notebook

First, install Jupyter Notebook:
1. Open a terminal (e.g., Windows Command Prompt)
2. Execute ```python --version``` to make sure that Python 3.9.13 is being used.
3. Install Jupyter by executing
```
python -m pip install --upgrade pip  
python -m pip install jupyter
```
4. Run ```jupyter notebook``` to check whether the installation worked.

Then, set up the R kernel to be used in Jupyter Notebook:
1. Open R (an R console or RStudio).
2. Execute 
```
install.packages('IRkernel')
IRkernel::installspec(user = FALSE)
```
3. In the terminal, run ```jupyter notebook``` again. Now, if you click on *New*, you should have the options *Python 3* and *R*.

### Now, you should be good to go.

Try opening *nn_mortality.ipynb*.
If that works, try running the code below *Packages etc*.
To run a cell (execute its content), place your cursor in the cell and press Ctrl + Enter.
The first run of this code should take a while because required R and Python packages are installed on your system.
If you experience any trouble with the line ```renv::restore()```, remove it and manually install the R packages listed below that line as well as the Python package keras.