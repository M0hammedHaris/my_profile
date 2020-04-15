'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "66cc1496ebeeec27760f14540a680c54",
"/": "66cc1496ebeeec27760f14540a680c54",
"main.dart.js": "b392766da38c1f655c7ca20022edb537",
"icons/Icon-512.png": "eef00869d5586bd232198d7a643a7bfa",
"icons/Icon-192.png": "eef00869d5586bd232198d7a643a7bfa",
"favicon.png": "eef00869d5586bd232198d7a643a7bfa",
"manifest.json": "7281b778ed3bd08f681148c9a6d9f5b8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/LICENSE": "b30d264157136e892e9236c6aeec73a8",
"assets/AssetManifest.json": "661ee86cea679cca4785c1a3437b8201",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "55033f0f5707c01b6b70332761bbeb76",
"assets/assets/fonts/Ubuntu-Regular.ttf": "2505bfbd9bde14a7829cc8c242a0d25c",
"assets/assets/images/notes.png": "f969dfc6626eedd6e1db341f01d3d880",
"assets/assets/images/Instagram.png": "ecec2869b1ee8b5d2a0e75219a12f2d3",
"assets/assets/images/LI-In.png": "1b18d461ce75c75fdb4d7b6ec08b3e65",
"assets/assets/images/medicine.png": "b556777ab2524b5ebbd9d066d384dc13",
"assets/assets/images/GitHub.png": "ef7a02b69836dc8b6a732a54c4200dcb",
"assets/assets/images/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/assets/images/haris.jpg": "b213bbfbd2ed65c17b7ae9e6ffc4bf85",
"assets/assets/images/mail.png": "61b4d07c0c98c9b23766b003edd95c16",
"assets/assets/images/convertericon.png": "4d697771ddc5fb2d29739350e6c34a8a",
"assets/assets/images/calculator.png": "135b080baa3151af51b5fd2f1b12f27e",
"assets/assets/images/APPARELO.png": "3c38f1d11d6d5734842caf96ab5099a5"
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
