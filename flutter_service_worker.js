'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "3a3505037cca3ed13b0e7c37efea3a3d",
"/": "3a3505037cca3ed13b0e7c37efea3a3d",
"main.dart.js": "dfef5283eeb65c800681902a9a802e9d",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "6acd06a3e46f7f2804d7a1d155a11a09",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/LICENSE": "88c1a3f8e066d3c4f6f4c9382d6f75e1",
"assets/AssetManifest.json": "e817d1401bca9d73960fb2da7bd0fd32",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/assets/images/Instagram.png": "ecec2869b1ee8b5d2a0e75219a12f2d3",
"assets/assets/images/LI-In.png": "1b18d461ce75c75fdb4d7b6ec08b3e65",
"assets/assets/images/GitHub.png": "ef7a02b69836dc8b6a732a54c4200dcb",
"assets/assets/images/haris.jpg": "b213bbfbd2ed65c17b7ae9e6ffc4bf85",
"assets/assets/images/mail.png": "61b4d07c0c98c9b23766b003edd95c16"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
