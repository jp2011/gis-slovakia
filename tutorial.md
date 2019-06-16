---
title: "GIS with R: tutorial with focus on Slovakia"
output: html_document
---

# Useful resources

1. Geocomputation with R: a comprehensive, but very practical book on GIS with
   R. It is freely available online at [this
   link](https://geocompr.robinlovelace.net/).


# Installing `sf` package
Install the package using:

```r
install.packages(sf)
```

The installation should work out of the box, but one might get compatibility
issues with the `gdal` library. Depending on the error, googling it should do
the job.


# Maps

In order to be able to work with maps, we need obtain the files that have the
geometrical representation of the maps, with the corresponding coordinate
system. When working with global data, it is useful to use a coordinate system
which takes into account the curvature of the Earth, but for analysis that
involves small area (like Slovakia), it is practical to worth with planar
coordinates where we can use Euclidean geometry that we are familiar with. In
our analysis we will use the **krovak** coordinate system which covers Czechia
and Slovak Republic. The legally-binding system that the cadastre uses is coded
as `EPSG:5513`.

This [website](https://epsg.io/5513) is useful for navigating the map and
reading off the coordinates for a particular point. To change the coordinate
system, change the coordinates system code. 

## File formats
The map files come in different formats. One of the most common ones are
shapefiles (`.shp`), geodatabase (`.gdb`), geopackage (`.gpk`),
geoJSON (`.geojson`). 

## Obtaining Slovakia maps




# Loading the maps




```r
library(sf)
```



```r
setwd(file.path(path.expand('~'), 'workplace', 'gis-slovakia'))
mapa.kraj.sf <- st_read(dsn = file.path(getwd(), 'maps', 'ah_shp_1', 'kraj_1.shp'))
```

```
## Reading layer `kraj_1' from data source `/Users/jp2011/workplace/gis-slovakia/maps/ah_shp_1/kraj_1.shp' using driver `ESRI Shapefile'
## Simple feature collection with 8 features and 7 fields
## geometry type:  POLYGON
## dimension:      XY
## bbox:           xmin: -591308.5 ymin: -1334760 xmax: -165436.9 ymax: -1132700
## epsg (SRID):    NA
## proj4string:    +proj=krovak +lat_0=49.5 +lon_0=24.83333333333333 +alpha=30.28813975277778 +k=0.9999 +x_0=0 +y_0=0 +ellps=bessel +units=m +no_defs
```

```r
plot(mapa.kraj.sf['DOW'])
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)

```r
st_crs(mapa.kraj.sf)
```

```
## Coordinate Reference System:
##   No EPSG code
##   proj4string: "+proj=krovak +lat_0=49.5 +lon_0=24.83333333333333 +alpha=30.28813975277778 +k=0.9999 +x_0=0 +y_0=0 +ellps=bessel +units=m +no_defs"
```

```r
mapa.kraj.cadastre.proj <- st_transform(x = mapa.kraj.sf, 5513)
st_crs(mapa.kraj.cadastre.proj)
```

```
## Coordinate Reference System:
##   EPSG: 5513 
##   proj4string: "+proj=krovak +lat_0=49.5 +lon_0=24.83333333333333 +alpha=30.28813972222222 +k=0.9999 +x_0=0 +y_0=0 +ellps=bessel +towgs84=589,76,480,0,0,0,0 +units=m +no_defs"
```

```r
mapa.kraj.popular.proj <- st_transform(x = mapa.kraj.sf, 8352)
```

```
## Warning in CPL_crs_from_epsg(as.integer(x)): GDAL Error 6: EPSG PCS/GCS
## code 8352 not found in EPSG support files. Is this a valid EPSG coordinate
## system?
```

```
## OGR: Corrupt data
```

```
## Error in CPL_transform(x, crs$proj4string): OGR error
```





# Visualisations


## Default method


## ggplot


## tmap

## Interactive maps


# Operations


