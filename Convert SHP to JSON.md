# LTA-Data
2. GEOSPATIAL DATA ABSTRACTION LIBRARY
The Geospatial Data Abstraction Library (GDAL) is a very handy tool to convert
ESRI shapefiles into readable formats such as GeoJSON, and to convert between
geospatial coordinate systems, such as from SVY21 to the common WGS84 for our
usual latitude-longitude values.
2.1 INSTALLING GDAL
FOR WINDOWS
Step 1: Go to www.gisinternals.com/sdk/ and click on “Stable Releases”
Step 2: Under “MSVC 2013”, select the correct architecture for your computer (win32
for 32-bit, x64 for 64-bit) and click on the relevant link to the download files.
Step 3: Download the core installation file, with description “Generic installer for the
GDAL core components”.
Step 4: Run the .msi file to install GDAL
Step 5: Run the GDAL command prompt under Start Menu > All Programs > GDAL.
You’re good to go!
FOR MAC OS X
Step 1: If you don’t already have it, install Homebrew (www.brew.sh)
Step 2: In your open Terminal window, type
>> brew install gdal
Step 3: Verify your installation
>> which ogr2ogr
This should print “/usr/local/bin/ogr2ogr”.
You’re good to go!
FOR UBUNTU LINUX
Step 1: Open your Terminal window and type
>> sudo apt-get install gdal-bin
Step 2: Verify your installation by typing
>> which ogr2ogr
This should print “/usr/bin/ogr2ogr” or similar.
You’re good to go!
