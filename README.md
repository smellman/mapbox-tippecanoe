# mapbox tippicanoe

Simple docker file for [tippecanoe](https://github.com/mapbox/tippecanoe) from mapbox.

## Usage

```bash
docker build . -t tippecanoe
docker run -u `id -u`:`id -g` -v $(pwd):/data tippecanoe tile-join -o /data/output.mbtiles /data/foo.mbtiles /data/bar.mbtiles
```