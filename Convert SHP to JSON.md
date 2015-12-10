2.2 USING GDAL
Open your Linux/OSX Terminal (or the GDAL Command Prompt for Windows) to
start using GDAL. Here are a few sample commands to get you started.
Obtaining metadata description of a shapefile:
>> ogrinfo <shapefile>.shp –al -so
Converting a Shapefile to WGS84 GeoJSON:
>> ogr2ogr -f GeoJSON –t_srs WGS84 <jsonFileName>.json
<shapefile>.shp
To see full list of output file formats:
>> ogr2ogr –-long-usage
