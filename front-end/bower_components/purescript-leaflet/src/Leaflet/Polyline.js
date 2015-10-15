"use strict";

// module Leaflet.Polyline

exports.polylineToILayer = function (l) {
    return l;
}

exports.addPolylineToMap = function (p) {
    return function(m) {
        return function() {
            return p.addTo(m);
        }
    }
}

exports.polyline = function (latlngs) {
    return function(options) {
        return L.polyline(latlngs, options);
    }
}

exports.addLatLng = function (l) {
    return function(p) {
        return function() {
            return p.addLatLng(l);
        }
    }
}

exports.setLatLngs = function (l) {
    return function(p) {
        return function() {
            return p.setLatLngs(l);
        }
    }
}

