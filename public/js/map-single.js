	if ($('#map-contact').length) {
		var map = L.map('map-contact', {
			zoom: 17,
			maxZoom: 20,
			tap: true,
			gestureHandling: true,
			center: [30.100982460788867, 31.383967355821948]
		});

		map.scrollWheelZoom.disable();

		var Hydda_Full = L.tileLayer('https://{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png', {
			scrollWheelZoom: false,
			attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(map);

		var icon = L.divIcon({
			html: '<i class="fa fa-building"></i>',
			iconSize: [50, 50],
			iconAnchor: [50, 50],
			popupAnchor: [-20, -42]
		});

		var marker = L.marker([30.100982460788867, 31.383967355821948], {
			icon: icon
		}).addTo(map);
	}
