# Introduction to neural networks with applications in mortality modeling

This repository contains a Jupyter notebook written in the R statistical programming language which demonstrates the usage of different neural network architectures, mainly focusing on the example of mortality modeling.
For this reason, the repository also contains some mortality data, which were obtained from the Human Mortality Database (www.mortality.org) in August 2022.
You are recommended to visit the website and obtain an up-to-date version of the data for performing your own analysis.

## Software requirements

To run the code, some software has to be installed. In the following, a description is given for R, Python and Jupyter Notebook, referring to the specific versions that were used when creating the code. 
The code **might** run with other versions as well. 

### R

Download and install R 4.2.1 (e.g., [here](https://cran.r-project.org/bin/windows/base/old/4.2.1/) for Windows) and, if you are working under Windows, [Rtools](https://cran.r-project.org/bin/windows/Rtools/rtools42/rtools.html).
If you want, you can also download the IDE [RStudio](https://posit.co/), but this is not strictly necessary.

### Python

Download and install Python 3.9.13 (e.g., [here](https://www.python.org/downloads/release/python-3913/), scroll down for installation files). 

During installation, don't forget to select the option **Add Python 3.9 to PATH**.

Do not change the path to which Python is installed, unless you know what you are doing (renv might have trouble finding Python if it is installed to an unexpected location and you would have to manually specify the Python path to renv).

### Jupyter Notebook

First, install Jupyter Notebook:
1. Open a terminal (e.g., Windows Command Prompt)
2. Execute ```python --version``` to verify that Python 3.9.13 is being used (if not, use the `cd` command to navigate to the folder containing Python 3.9.13 and then execute the following commands).
3. Install Jupyter by executing
```
python -m pip install --upgrade pip  
python -m pip install jupyter
```
4. Run ```jupyter notebook``` to check whether the installation worked.

Then, set up the R kernel to be used in Jupyter Notebook:
1. Open R 4.2.1 (an R console or in RStudio) with administrator privileges (*Run as administrator*). This is to make sure that, in the following step, the IRkernel package will be installed into the default directory where Jupyter will be able to find it.
2. Execute 
```
install.packages('IRkernel')
IRkernel::installspec(user = FALSE)
```
3. In the terminal, run ```jupyter notebook``` again. Now, if you click on *New*, you should have the options *Python 3* and *R*.

### Now, you should be good to go.

Try opening *nn_mortality.ipynb*.
You might have to change the working directory of Jupyter Notebook for that, e.g., by running ``jupyter notebook --notebook-dir="C:/Your/Desired/Start/Directory/"`` so that the directory displayed by Jupyter is the folder containing *nn_mortality.ipynb*.

If opening the file works, try running the code cell below the section title *Packages etc*.
To run a cell (execute its content), place your cursor in the cell and press Ctrl + Enter.
The first run of this code should take a while because required R and Python packages are installed on your system.
If you experience any trouble with the line ```renv::restore()```, remove it and manually install the R packages listed below that line as well as the Python package keras.
