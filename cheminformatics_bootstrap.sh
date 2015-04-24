#update lists
sudo apt-get update



#get build tools
sudo apt-get install build-essential -y
sudo apt-get install make -y
sudo apt-get install cmake -y


#open babel
sudo apt-get install libxml2-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libeigen2-dev -y
sudo apt-get install libcairo2-dev -y
sudo apt-get install python-dev -y
sudo apt-get install libperl-dev -y

#wget http://sourceforge.net/projects/openbabel/files/openbabel/2.3.2/openbabel-2.3.2.tar.gz/download

tar zxf openbabel-2.3.2.tar.gz
mkdir build
cd build
cmake ../openbabel-2.3.2
#make -j4
make 

sudo make install 

#mol2chemfig 
#sudo apt-get install python-indigo

#Unix working environment
sudo apt-get install curl -y

sudo apt-get install git -y

#latex
#sudo apt-get install texlive-base -y
sudo apt-get install texlive-latex-base -y

#R working environment
#update sources manually
sudo apt-get install r-base-dev

#R dependencies
sudo apt-get install libgsl0-dev libgsl0ldbl -y
sudo apt-get build-dep r-cran-rcurl -y
sudo apt-get build-dep r-cran-rgl -y
sudo apt-get build-dep r-cran-rjava -y

sudo R CMD BATCH InstallR.R

#ipython working environment
sudo apt-get install pip -y

#pip install chemfp or others


#OCR
sudo apt-get install autoconf automake libtool -y
sudo apt-get install libpng12-dev -y
sudo apt-get install libjpeg62-dev -y
sudo apt-get install libtiff5-dev -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libicu-dev -y # (if you plan to make the training tools)         

sudo apt-get install libleptonica-dev -y
sudo apt-get install tesseract-ocr -y

sudo apt-get install imagemagick -y
sudo apt-get install graphicsmagick-libmagick-dev-compat -y
sudo apt-get install exactimage -y
sudo apt-get install potrace -y
sudo apt-get install ocrad -y
sudo apt-get install libtclap-dev -y
sudo apt-get install lzip -y


