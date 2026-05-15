import { useEffect, useRef } from 'react'
import 'ol/ol.css'
import Map from 'ol/Map'
import View from 'ol/View'
import TileLayer from 'ol/layer/Tile'
import OSM from 'ol/source/OSM'
import ImageLayer from 'ol/layer/Image'
import ImageWMS from 'ol/source/ImageWMS'
import VectorLayer from 'ol/layer/Vector'
import VectorSource from 'ol/source/Vector'
import GeoJSON from 'ol/format/GeoJSON'
import { fromLonLat } from 'ol/proj'
import { applyStyle } from 'ol-mapbox-style'
import './App.css'

const WMS_URL = 'http://localhost:8080/geoserver/gis/wms'

function wmsLayer(layerName: string) {
  return new ImageLayer({
    source: new ImageWMS({
      url: WMS_URL,
      params: { LAYERS: layerName, TILED: true },
      ratio: 1,
      serverType: 'geoserver',
    }),
  })
}

function App() {
  const mapRef = useRef<HTMLDivElement | null>(null)

  useEffect(() => {
    if (!mapRef.current) return

    const overtureLayer = new VectorLayer({
      source: new VectorSource({
        url: '/overture.json',
        format: new GeoJSON(),
      }),
    })

    const map = new Map({
      target: mapRef.current,
      layers: [
        new TileLayer({ source: new OSM() }),
        wmsLayer('gis:buildings'),
        wmsLayer('gis:roads'),
        wmsLayer('gis:poi'),
        overtureLayer,
      ],
      view: new View({
        center: fromLonLat([49.1001, 53.5125]),
        zoom: 16,
      }),
    })

    applyStyle(overtureLayer, '/overture-style.json', 'overture').catch((err) => {
      console.error('Failed to apply Mapbox style:', err)
    })

    return () => {
      map.setTarget(undefined)
    }
  }, [])

  return <div id="map" ref={mapRef} />
}

export default App
