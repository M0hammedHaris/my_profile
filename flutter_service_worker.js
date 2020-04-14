'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "66cc1496ebeeec27760f14540a680c54",
"/": "66cc1496ebeeec27760f14540a680c54",
"main.dart.js": "000377bc0a6fa09b9461ff6c5f620712",
"icons/Icon-512.png": "eef00869d5586bd232198d7a643a7bfa",
"icons/Icon-192.png": "eef00869d5586bd232198d7a643a7bfa",
"favicon.png": "eef00869d5586bd232198d7a643a7bfa",
"manifest.json": "7281b778ed3bd08f681148c9a6d9f5b8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/LICENSE": "b30d264157136e892e9236c6aeec73a8",
"assets/AssetManifest.json": "390320e230ca3f9632be609308541501",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/assets/images/Instagram.png": "ecec2869b1ee8b5d2a0e75219a12f2d3",
"assets/assets/images/LI-In.png": "1b18d461ce75c75fdb4d7b6ec08b3e65",
"assets/assets/images/GitHub.png": "ef7a02b69836dc8b6a732a54c4200dcb",
"assets/assets/images/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
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
