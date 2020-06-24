'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "fea23ce5a311f2cbd12ff91177ca31db",
"/": "fea23ce5a311f2cbd12ff91177ca31db",
"main.dart.js": "13b173c18033a5e499e4147d1edab532",
"icons/HGPAssets_Emblem_Yellow.zip": "79ba3a841408a8d3bc76567ca625291d",
"icons/HGPAssets_Emblem_Black.png": "7f31b497b977727e00c6a0adf13ca02b",
"icons/HGPAssets_Emblem_Yellow/ios/iTunesArtwork@1x.png": "04253397f1478bebe80167ac7993b3df",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-76x76@2x.png": "ba4ba40d4e428a3c2cdcf3177e8f2981",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-29x29@1x.png": "759ebaeaa28280d9fabeb64267184169",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-40x40@1x.png": "0ac9c838e7c6cb9526df2bf42358c0d8",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-20x20@1x.png": "48238c9ea925f6ce7879883108a79660",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png": "b090181c471c3a0385084df679b9eb83",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-20x20@3x.png": "e290e81980271a090e8bd402e95f7547",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/ItunesArtwork@2x.png": "65d3742fd3bb07a939c11d1d23981d30",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Contents.json": "ccab7b2b2aeb27005f056c80004fa85e",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-20x20@2x.png": "0ac9c838e7c6cb9526df2bf42358c0d8",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-29x29@3x.png": "1be718e4f62f4fcb93ef0fe8b2426a0c",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-40x40@2x.png": "bb843d0c0fcd20ea356416272ac40532",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-60x60@3x.png": "ebb0d6710784b7c6771bb8cebdf79934",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-60x60@2x.png": "561575723d9609132c99071f05b87abf",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-76x76@1x.png": "9b6eb63f5813d3496793944c1916f27a",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-40x40@3x.png": "561575723d9609132c99071f05b87abf",
"icons/HGPAssets_Emblem_Yellow/ios/AppIcon.appiconset/Icon-App-29x29@2x.png": "f271499a219150b55b589583bbc216f3",
"icons/HGPAssets_Emblem_Yellow/ios/README.md": "7f2ec4b4394d9274419941fc23b4f18f",
"icons/HGPAssets_Emblem_Yellow/ios/iTunesArtwork@2x.png": "65d3742fd3bb07a939c11d1d23981d30",
"icons/HGPAssets_Emblem_Yellow/ios/iTunesArtwork@3x.png": "a199e01ba922adf4b257f84ea019d276",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-iPhone-60x45@1x.png": "933f383917ff20a008f454c9f6eb0158",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-iPadAir-67x50@2x.png": "a0f2ec5b0545616b61d2946f0daf4d99",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-store-1024x768.png": "3d1e7d76798466e2a4cb929601a0f8ff",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-transcript-32x24@3x.png": "f57267fcb30cdea7989d81918218be45",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-27x20@1x.png": "0b59c762edf80dad1408ef1ae01580ce",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-transcript-32x24@2x.png": "9466f796be6d5a659115613652e6063b",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-27x20@2x.png": "7c1953444e45974dfd0fdc306a63f263",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-transcript-32x24@1x.png": "75ad2dd9520e15d9b1e9847383c50a9b",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-27x20@3x.png": "fe0a49eac95cd27cee847c8802778000",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-iPadAir-74x55@2x.png": "4738dcb773f037bab2c1946fb7b1fb65",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-iPhone-60x45@3x.png": "c8feaa83157cfd624eabec82970d88fb",
"icons/HGPAssets_Emblem_Yellow/imessenger/icon-messages-app-iPhone-60x45@2x.png": "ea3b39dbf6d5269e333da003d0beef95",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-40@2x.png": "bb843d0c0fcd20ea356416272ac40532",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-29@2x.png": "f271499a219150b55b589583bbc216f3",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-44@2x.png": "5348ff7a8b3cdff00f6dd6ef7abee7a1",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-29@3x.png": "1be718e4f62f4fcb93ef0fe8b2426a0c",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-27.5@2x.png": "7eab860e7b1ae53e708f83921bb47034",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-86@2x.png": "8e0ba215f5c86030a9a8dd65432b454f",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Contents.json": "8501b6f6361ff80682c583b726320120",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-98@2x.png": "773db4c85c174229cb88798c56456560",
"icons/HGPAssets_Emblem_Yellow/watchkit/AppIcon.appiconset/Icon-24@2x.png": "479965f1f2ce420a5dcf3014d418e690",
"icons/blue_logo.jpg": "3a53299f59e83f83279ec9496e65c3ad",
"icons/HGPAssets_Emblem_Yellow.png": "572017c751a354159abf6117e7b9759c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "c01abf596bd6e0b08558ea799e01aab9",
"assets/AssetManifest.json": "571134fa412421ea5db0251e934e302e",
"assets/NOTICES": "92aaa37801b69f063e443cd898eb7c1b",
"assets/FontManifest.json": "eebdd209bff430798414b3d51f97b249",
"assets/packages/flutter_auth_buttons/graphics/apple_logo_black.png": "9beaf6539a3cff54ae8da57e86af4ad4",
"assets/packages/flutter_auth_buttons/graphics/google-logo.png": "6937ba6a7d2de8aa07701225859ae402",
"assets/packages/flutter_auth_buttons/graphics/flogo-HexRBG-Wht-100.png": "5037e86e017c472bb7f66d991a97d57a",
"assets/packages/flutter_auth_buttons/graphics/apple_logo_white.png": "37fd17b6b4006b45d337e5f875fd45f6",
"assets/packages/flutter_auth_buttons/graphics/Twitter_Logo_Blue.png": "fef946b8bba756359e2a1e87ccd915ea",
"assets/packages/flutter_auth_buttons/graphics/ms-symbollockup_mssymbol_19.png": "0c29638c7558632a1a5f053d344405ba",
"assets/packages/flutter_auth_buttons/fonts/Roboto-Medium.ttf": "d08840599e05db7345652d3d417574a9",
"assets/packages/flutter_auth_buttons/fonts/SF-Pro-Medium.ttf": "8b61dea99518b51d5511dc3963a5537c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/images/todos.png": "7ca335fb069acb45b5dd398dc7ff6c84",
"assets/assets/images/HGP_Yellow_small.png": "b4f5880e78c40e1281370a1ed993c55d",
"assets/assets/images/hgplogo.png": "b85e53eda3194b9d216e51a0e06c0863",
"assets/assets/images/HGPAssets_Emblem_Black.png": "988e24809586977a6816c9961ee9e3b3",
"assets/assets/images/HGP_PrimaryLogo_Yellow.png": "d3f0932f20f348fa4a40725fd0aac7f1",
"assets/assets/images/twitter-bird.png": "2570bf3f08a1e74d1c5946f13c2e7199",
"assets/assets/images/instagram-social-network-logo-of-photo-camera.png": "ef1b6b70f2780c9001d2a25ed85c8450",
"assets/assets/images/techslam.jpeg": "4172db09ebb53185420737aff167af9d",
"assets/assets/images/youtube-logo.png": "04d05991d36c4fe87e25451bfb421f3d",
"assets/assets/images/malik_spider2.png": "b973827ae93bdad09751ef3c7f519a3e",
"assets/assets/images/facebook-logo-button.png": "f381ba4234814167ea19404c9d156af4",
"assets/assets/images/techslam.JPG": "c0d7cf6620deedcda117657db0a1d6e0",
"assets/assets/images/malik_spiderman.jpg": "0a70da07fd26c6c617c4589280d1cad7",
"assets/assets/images/linkedin-logo.png": "34dca5bc894f26e49ffb5a5bc531fc1c",
"assets/assets/images/HGPAssets_SecondaryLogo_Black.png": "32fe3eedefb363722cb6f43712cfc31a",
"assets/assets/images/HGPAssets_Logotype_White.png": "14fbf22b25c9a5fa5136afbb7c18d49c",
"assets/assets/images/logo.png": "038b6436418ed88b298fd60080c06722",
"assets/assets/images/HGPAssets_Emblem_White.png": "952357fb166f1e7089d08a18e88dbf11",
"assets/assets/images/isiahTeaching.jpg": "d42cb3858d92392978e1f9fbf387a8fa",
"assets/assets/images/allCohorts17.jpg": "0f617f195c4ee8e3fcb545d2bbe79824",
"assets/assets/images/20150528_112134.jpg": "33fa151153d2b0f8876c79ffba93141d",
"assets/assets/images/Rich8.1.png": "e352aa93265e5d8e89fecd03f7248d57",
"assets/assets/images/HGPAssets_Emblem_Yellow.png": "4835cd02790740581a816b4361dbf64b",
"assets/assets/fonts/overpass_bold.otf": "e6dbbcd2f162fd16564f50bfbbbfcb58",
"assets/assets/fonts/overpass_regular.otf": "71096f93ab59ad7c66a963700c422f54"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
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
  if (event.message == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.add(resourceKey);
    }
  }
  return Cache.addAll(resources);
}
