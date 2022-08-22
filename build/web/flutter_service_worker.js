'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "747d7b3c17e42ac3664428b03b186ca8",
"assets/assets/111.jpg": "ff5438963a4fa6c5a916c5e5888bf3cb",
"assets/assets/bank/alphabank.png": "070ee6b9022b0a409e4ff490a4275438",
"assets/assets/bank/amd.png": "0cbc322a9bda54c423315e991f3e0945",
"assets/assets/bank/azn.png": "b17d04b5495255264eef7ca8a80a3447",
"assets/assets/bank/kzt.png": "08c08885e1c8546cd577fca83ae8cb6f",
"assets/assets/bank/mir.png": "91c983945badade5c15eb395de030cfb",
"assets/assets/bank/openbank.png": "feb2b08598979dc6f28bd1ecf0664788",
"assets/assets/bank/promsvyazbank.png": "69fcbbb7410d89462b7df7bbda6e5502",
"assets/assets/bank/ps-gazprombank.png": "ae444059482333b1bbdc93d8abb6f340",
"assets/assets/bank/ps-kaspi_bank.png": "5518725ab81d11bcd94728a97e48be7f",
"assets/assets/bank/ps-ruskiystandart.png": "efdb1ec7f32386eafd860273503af646",
"assets/assets/bank/ps-visamc.png": "007ac3c88d28cf9b0888edb4048ca0a7",
"assets/assets/bank/ps-vtb_2.png": "e90ab0d9952b4610327284a5edce687e",
"assets/assets/bank/raiffeisen.png": "29e44b9045e80fcdcd85558fc3863425",
"assets/assets/bank/rur.png": "dd9acaacfaf08743c58bfa5ab3c01a42",
"assets/assets/bank/tcsbank.png": "4f33dc77f11d0970ec54fc9edfd3341c",
"assets/assets/bank/vtb24.png": "cb33548b43e4f70e1d6d7f2060c1bff6",
"assets/assets/bitcoin.png": "d6ba27bf52db2dc2691aa4aef6a0976d",
"assets/assets/bnb.png": "54ec2bf7b7089afb1ac96ae9696b8c98",
"assets/assets/dogecoin.png": "0d17201345fdaf4ab9ba842ee66ffdd5",
"assets/assets/ethereum.png": "c606d4ab95f7d10f6fece5d077ec7da9",
"assets/assets/litecoin.png": "33815a95d782e1caee5beb49388cafb3",
"assets/assets/logo.png": "221c129c30535b58f67b4c11f48a853e",
"assets/assets/monero.png": "cff6c4425236197e1d0cef368054e6d2",
"assets/assets/ps/advcash.png": "b185b6d6233eefe6f4f1c28843f830d4",
"assets/assets/ps/payeer.png": "6d119ec9c33d552a92d3edf6f4e726df",
"assets/assets/ps/perfect_money.png": "f0a8505ed012d24936f7ca47f91a669d",
"assets/assets/ps/ps-mobile_russia.png": "18ec91659e0a58bd1c2873d05e650d24",
"assets/assets/ps/qiwi.png": "a5a548607a14ba301db59a707992c501",
"assets/assets/ps/yandex.png": "b3475764228167d3d402d00af1efc63a",
"assets/assets/ps-dai.png": "8e26118d7a63338cfef1116720c92e0e",
"assets/assets/ps-dash2.png": "668602122338c27f5c9e69869513913b",
"assets/assets/ps-pax.png": "8fe3f905900633150f499faf4b4e72dc",
"assets/assets/ps-solana.png": "76aa72f5f0342b8e45479aeebae48561",
"assets/assets/ripple.png": "db800c324ef15ea14a20798fba464783",
"assets/assets/stellar.png": "4e9377adf87575387828b2d5a9c4fb99",
"assets/assets/tether.png": "980bf64b0b028baaef64681fe08a4f6b",
"assets/assets/tron.png": "5c20498b703307a45475356974679e00",
"assets/assets/tusd.png": "2508f3647399bc8f88ade615e8ffff8b",
"assets/assets/zcash.png": "4543664d56d7f5fab01e88d600a3ca83",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "ed04423032a0dfc8ea27b464f28389cd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "c0eee4b6ac84083272c32620c34f92f4",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "325459875b67817176259da688f8260c",
"/": "325459875b67817176259da688f8260c",
"main.dart.js": "c06815cec6d87a25d5827d5729c6ce3a",
"manifest.json": "b7e9bf0f169b807b6ae66b92a9def331",
"version.json": "b1527f8cc2cf8057d11d48b36e1eee27"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
