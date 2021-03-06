## Script that downloads
## some Jupyter notebooks 

# this is always the same, regardless of the user
cd /home/jovyan

# git reflog requires a name and email if user is not in passwd
# even if you're only cloning
export GIT_COMMITTER_NAME=anonymous
export GIT_COMMITTER_EMAIL=anon@localhost

git clone https://github.com/balazsan/ML_with_R.git

# clean directory
rmdir work

# image named 'Jupyter R with Keras - 3 GB RAM'
# was added to CSC's templates, no need to install keras

# install tensorflow
#pip --no-cache-dir install tensorflow

# install keras
#pip --no-cache-dir install PyYAML seaborn keras

# fix for R to find tar, needed for github install
export TAR=/bin/tar

# install keras R-package
#R -e 'install.packages("vioplot", repo="http://cran.rstudio.com/")'             # check that installation works
#R -e 'install.packages("devtools", repo="http://cran.rstudio.com/")'            # get new version
#R -e 'devtools::install_github("rstudio/keras", upgrade = "always")'            # get lastest keras

# installing Jupyter extensions to enable hmtl export with embedded images
pip --no-cache-dir install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable export_embedded/main
