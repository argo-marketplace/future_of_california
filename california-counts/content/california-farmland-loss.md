---
title: "California's Disappearing Farmland"
date: 2026-04-06
tags:
  - farmland
  - conservation
  - maps
  - department-of-conservation
---

# California's Disappearing Farmland

## 40 Years of Agricultural Land Loss, Mapped

California produces over a third of the country's vegetables and two-thirds of its fruits and nuts. It's the most productive agricultural state in the nation by a wide margin. But the farmland that makes this possible is disappearing.

Since 1984, the state has lost approximately **1.6 million acres** of agricultural and grazing land -- roughly 47,000 acres per year, or about one square mile every five days. Over 816,000 acres of **Prime Farmland** -- the most productive soil in the state -- has been converted, mostly to urban and suburban development. Once paved over, that land doesn't come back.

The California Department of Conservation's [Farmland Mapping and Monitoring Program](https://www.conservation.ca.gov/dlrp/fmmp) (FMMP) has tracked these changes biennially since 1984, creating one of the most comprehensive agricultural land use datasets in the country. The interactive map below lets you watch four decades of change unfold across the state.

---

## Interactive Map: Farmland Change 1984-2022

Use the slider or press **Play** to animate through the years. Each color represents a different land classification from the FMMP survey.

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<script src="https://unpkg.com/esri-leaflet@3.0.12/dist/esri-leaflet.js"></script>

<style>
#farmland-map {
  width: 100%;
  height: 550px;
  border: 1px solid #ccc;
  border-radius: 4px;
  margin: 1rem 0;
  background: #e8e8e8;
}
.map-controls {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 10px 14px;
  background: #f5f5f5;
  border: 1px solid #ccc;
  border-top: none;
  border-radius: 0 0 4px 4px;
  flex-wrap: wrap;
}
.map-controls button {
  background: #1a3a5c;
  color: white;
  border: none;
  padding: 6px 16px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  white-space: nowrap;
}
.map-controls button:hover {
  background: #254d75;
}
#year-slider {
  flex: 1;
  min-width: 120px;
  cursor: pointer;
}
#year-display {
  font-size: 1.3rem;
  font-weight: bold;
  font-family: "IBM Plex Mono", monospace;
  color: #1a3a5c;
  min-width: 50px;
  text-align: center;
}
.map-legend {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
  gap: 4px 16px;
  padding: 10px 14px;
  background: #fafafa;
  border: 1px solid #ccc;
  border-top: none;
  border-radius: 0 0 4px 4px;
  font-size: 13px;
  margin-bottom: 1.5rem;
}
.map-legend-item {
  display: flex;
  align-items: center;
  gap: 6px;
}
.legend-swatch {
  width: 16px;
  height: 16px;
  border: 1px solid #999;
  border-radius: 2px;
  flex-shrink: 0;
}
.map-loading {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: rgba(255,255,255,0.85);
  padding: 8px 18px;
  border-radius: 4px;
  font-size: 14px;
  z-index: 1000;
  pointer-events: none;
  display: none;
}
#speed-select {
  padding: 4px 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 13px;
  background: white;
}
@media (max-width: 600px) {
  #farmland-map {
    height: 400px;
  }
  .map-legend {
    grid-template-columns: 1fr 1fr;
  }
}
</style>

<div style="position: relative;">
  <div id="farmland-map"></div>
  <div class="map-loading" id="map-loading">Loading...</div>
</div>
<div class="map-controls">
  <button id="play-btn" onclick="toggleAnimation()">&#9654; Play</button>
  <input type="range" id="year-slider" min="0" max="19" value="0" oninput="onSliderChange(this.value)" />
  <span id="year-display">1984</span>
  <select id="speed-select" onchange="onSpeedChange(this.value)">
    <option value="2500">Slow</option>
    <option value="1500" selected>Medium</option>
    <option value="800">Fast</option>
  </select>
</div>
<div class="map-legend">
  <div class="map-legend-item"><span class="legend-swatch" style="background:#004DA8;"></span> Prime Farmland</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#267300;"></span> Farmland of Statewide Importance</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#ED7215;"></span> Unique Farmland</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#FFFF00;"></span> Farmland of Local Importance</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#E1CC8A;"></span> Grazing Land</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#ED0000;"></span> Urban and Built-Up Land</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#CDCDB4;"></span> Other Land</div>
  <div class="map-legend-item"><span class="legend-swatch" style="background:#4EC5E8;"></span> Water</div>
</div>

<script>
(function() {
  var years = [1984,1986,1988,1990,1992,1994,1996,1998,
               2000,2002,2004,2006,2008,2010,2012,2014,2016,2018,2020,2022];
  var currentIndex = 0;
  var animationTimer = null;
  var currentLayer = null;
  var animationSpeed = 1500;

  var map = L.map('farmland-map', {
    center: [37.2, -119.5],
    zoom: 6,
    minZoom: 5,
    maxZoom: 14
  });

  L.tileLayer('https://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/">CARTO</a>',
    subdomains: 'abcd',
    maxZoom: 19
  }).addTo(map);

  var loadingEl = document.getElementById('map-loading');
  var yearDisplay = document.getElementById('year-display');
  var slider = document.getElementById('year-slider');
  var playBtn = document.getElementById('play-btn');

  function showYear(index) {
    if (index < 0 || index >= years.length) return;
    currentIndex = index;
    var year = years[index];

    var url = 'https://gis.conservation.ca.gov/server/rest/services/DLRP/CaliforniaImportantFarmland_' + year + '/MapServer';

    if (currentLayer) {
      map.removeLayer(currentLayer);
    }

    loadingEl.style.display = 'block';

    currentLayer = L.esri.dynamicMapLayer({
      url: url,
      opacity: 0.7,
      useCors: true
    }).addTo(map);

    currentLayer.on('load', function() {
      loadingEl.style.display = 'none';
    });

    currentLayer.on('requesterror', function() {
      loadingEl.textContent = year + ' data unavailable';
      loadingEl.style.display = 'block';
      setTimeout(function() {
        loadingEl.style.display = 'none';
        loadingEl.textContent = 'Loading...';
      }, 1500);
    });

    yearDisplay.textContent = year;
    slider.value = index;
  }

  window.toggleAnimation = function() {
    if (animationTimer) {
      clearInterval(animationTimer);
      animationTimer = null;
      playBtn.innerHTML = '&#9654; Play';
    } else {
      animationTimer = setInterval(function() {
        currentIndex = (currentIndex + 1) % years.length;
        showYear(currentIndex);
      }, animationSpeed);
      playBtn.innerHTML = '&#9646;&#9646; Pause';
    }
  };

  window.onSliderChange = function(val) {
    if (animationTimer) {
      clearInterval(animationTimer);
      animationTimer = null;
      playBtn.innerHTML = '&#9654; Play';
    }
    showYear(parseInt(val, 10));
  };

  window.onSpeedChange = function(val) {
    animationSpeed = parseInt(val, 10);
    if (animationTimer) {
      clearInterval(animationTimer);
      animationTimer = setInterval(function() {
        currentIndex = (currentIndex + 1) % years.length;
        showYear(currentIndex);
      }, animationSpeed);
    }
  };

  showYear(0);
})();
</script>

---

## Where Farmland Is Disappearing

The loss isn't evenly distributed. The areas under greatest pressure are:

**The Central Valley fringe.** The edges of the San Joaquin and Sacramento Valleys -- where some of the state's most productive Prime Farmland sits -- have been steadily consumed by the outward expansion of cities like Fresno, Bakersfield, Sacramento, Stockton, and Modesto. Watch the red (urban) patches grow along the Highway 99 corridor through the animation.

**The Inland Empire and Southern California.** Riverside and San Bernardino counties have seen massive farmland-to-urban conversion, driven by housing demand spillover from Los Angeles and Orange County. Much of what was once citrus groves and dairy land is now subdivisions and distribution centers.

**The Bay Area periphery.** The eastern and southern edges of the San Francisco Bay Area -- Contra Costa, eastern Alameda, Santa Clara, and Solano counties -- have experienced steady agricultural erosion as the tech economy pushed development outward.

## The Cost of Conversion

Not all farmland is equal. Prime Farmland represents the best combination of soil quality, growing season, and water supply for sustained high-yield production. Of the 1.6 million acres lost statewide, over half was Prime Farmland or Farmland of Statewide Importance. Once this land is paved over for development, it is irreversibly lost as an agricultural resource.

The FMMP classifies agricultural land into several categories:

- **Prime Farmland**: Best soils, irrigated, highest sustained yields
- **Farmland of Statewide Importance**: Similar to Prime but with minor limitations (slope, drainage)
- **Unique Farmland**: Lower-quality soils producing high-value specialty crops
- **Farmland of Local Importance**: Land meeting local criteria for agricultural significance
- **Grazing Land**: Vegetation suitable for livestock grazing

## Policy Context

Several policy mechanisms exist to slow farmland conversion, though their effectiveness has been uneven:

**The Williamson Act (1965)** allows landowners to contract with counties to restrict land to agricultural use in exchange for lower property tax assessments. At its peak, over 16 million acres were enrolled, but state funding cuts in 2009 weakened the program significantly.

**CEQA** (California Environmental Quality Act) requires environmental review of projects that convert farmland, but mitigation is often monetary rather than preserving actual acreage.

**SB 375** (Sustainable Communities and Climate Protection Act) encourages compact development patterns that could reduce outward sprawl, but implementation varies by region.

**Agricultural conservation easements**, administered through programs like the California Farmland Conservancy, permanently protect farmland from development. However, the pace of easement acquisition has not kept up with the pace of conversion.

## What Can Be Done

The data tells a clear story: California is losing productive farmland at a rate that threatens the long-term viability of its agricultural economy. Addressing this requires:

- **Prioritizing infill development** over greenfield expansion, directing growth to already-urbanized areas
- **Strengthening the Williamson Act** with reliable state funding to make agricultural preservation financially viable for landowners
- **Investing in agricultural conservation easements** at scale, particularly for Prime Farmland in high-pressure areas
- **Regional planning** that explicitly accounts for agricultural land as critical infrastructure, not just vacant land awaiting development

---

## Data Source

All farmland classification data comes from the California Department of Conservation, [Farmland Mapping and Monitoring Program](https://www.conservation.ca.gov/dlrp/fmmp) (FMMP). The FMMP has produced Important Farmland maps biennially since 1984 pursuant to [Government Code Section 65570](https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?sectionNum=65570.&lawCode=GOV). The data is available on the [California Open Data Portal](https://data.ca.gov/organization/california-department-of-conservation).

Map tiles served via the Department of Conservation's [ArcGIS MapServer](https://gis.conservation.ca.gov/server/rest/services/DLRP). Base map by [CARTO](https://carto.com/) and [OpenStreetMap](https://www.openstreetmap.org/) contributors.
