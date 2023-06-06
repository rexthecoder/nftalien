'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "c3651fae78d6fd5d9ce48db97586d00f",
"/": "c3651fae78d6fd5d9ce48db97586d00f",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"style.css": "03de40e490ba29ac71895feee0cb4747",
"app.js": "5c08ad5532ed64f1a0546e599083e776",
"version.json": "c71d5f64c674227dd49cdb3ed5a4893b",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/NOTICES": "875636b8d098e17311895e605b19ebec",
"assets/AssetManifest.smcbin": "d4dcd63dbfbdd6367a90ac5b5120441d",
"assets/assets/fonts/AllianceBold.ttf": "39543b69eca0c0279dc797c881f7358b",
"assets/assets/fonts/AllianceNo1.otf": "a5121c15d2e33420ea1d648ffeb8563b",
"assets/assets/fonts/DejaVuSansMono-BoldOblique.ttf": "5c86cc046028f60e955707f883fbd75a",
"assets/assets/fonts/DejaVuSansMono.ttf": "6a15e0a7c0367ba77a959ea27ebf11cf",
"assets/assets/fonts/DejaVuSansMono-Oblique.ttf": "e4754d30b040140a50314e1b663da01b",
"assets/assets/fonts/AllianceNo2.otf": "3ee90eef713820c3a016157e19ab340a",
"assets/assets/fonts/Blimone-BoldInktrap.ttf": "f837bb62e700952f0aef01ab5b16105b",
"assets/assets/fonts/DejaVuSansMono-Bold.ttf": "5b35054c8aaf2f71ba59dd7e546f9288",
"assets/assets/images/typewriter_overhead_bw_w1080.jpg": "39e8f60e5bb2b90a5d801dd4617e7927",
"assets/assets/images/step4.png": "6df9ab42d479bf98535e5e237dfc2b44",
"assets/assets/images/iphone_cactus_tea_overhead_bw_w1080.jpg": "319249e756f3a470d45841baea9d1132",
"assets/assets/images/partner.svg": "815f830d8b4147099e14d86390932007",
"assets/assets/images/coffee_paperclips_pencil_angled_bw_w1080.jpg": "9f499cf53bb008afe9f6bd89deba9c52",
"assets/assets/images/story.png": "f3b86bdb7072cd742ae9bc19a1dbbd65",
"assets/assets/images/mugs_side_bw_w1080.jpg": "7ac1959d3b134bbcef006780161606f7",
"assets/assets/images/discord.svg": "faac68df377c1ae367fb5621abb891b5",
"assets/assets/images/zeus.png": "dbb263cd555f05479dad52bbc16d368d",
"assets/assets/images/nftlogo.png": "9dd960f471c510d1d23cea78e3dc2d52",
"assets/assets/images/step3.png": "dff22631f03957d3ecc9eb825b1039f1",
"assets/assets/images/games/heromobile.png": "8a7d36115d07933ebd7f9a3739aaafcd",
"assets/assets/images/games/logo.png": "45c5443422942145be85eb40ae9db1ae",
"assets/assets/images/games/hero.svg": "c347f4643b73194c9b5be1d5e8c4c620",
"assets/assets/images/games/stack4.png": "08598312a089787ad7ebcbdbb393e4aa",
"assets/assets/images/games/feature.png": "0636f98a91b762725c749e3c6ca1f2d8",
"assets/assets/images/games/requirement.jpg": "e4b7779a2c06472dc0d1afcbd827fb98",
"assets/assets/images/games/scrolldown.svg": "486ab584411ee403206567e63121a046",
"assets/assets/images/games/feat.png": "da1f1f2640d0208accd82ea9de71432f",
"assets/assets/images/games/stack1.png": "94e6c55c3ec3f9f1dd89e46874254d13",
"assets/assets/images/games/section2.png": "7f506b058151e805fd2be6b5945b7d5f",
"assets/assets/images/games/toy.png": "518a0d8d4f23a31b3d542262a7daf83a",
"assets/assets/images/games/hero.jpg": "d3f5db54f659567f182c95f49a442c80",
"assets/assets/images/games/menu.svg": "0d82dcf710e5c925772ccf3d01777101",
"assets/assets/images/games/stack3.png": "af677a47a5adfdfe02751e1b9f4ef849",
"assets/assets/images/games/requirement.png": "a8ac00cc256bf7ef11e8f594b070f0ae",
"assets/assets/images/games/hero.png": "19e2c17f5e352b3ebdba6aa6b205ec72",
"assets/assets/images/games/featuresmobile.png": "669b4541ca782a286a53372d722f8ede",
"assets/assets/images/games/gallerymobile.png": "81d17b54b142e2b9d1cc45d118e8738c",
"assets/assets/images/games/requirements.svg": "cbb58ea380526e89f988d559f5c2b610",
"assets/assets/images/games/logo.svg": "7f3f6ccbea54124f8156cd444be1eedd",
"assets/assets/images/games/stack2.png": "34f17a229f75937832f60be1b429c6d9",
"assets/assets/images/games/steamicon.svg": "4f567c77e7d5462b8ff1197711029c2a",
"assets/assets/images/games/xboxicon.svg": "efd55807d8ff5196f31f4f8f4516c6ec",
"assets/assets/images/background.png": "1b6778a14d0e2e58126e918c756d19c0",
"assets/assets/images/step2.png": "e8ea71a838bcb1ace9bea08eb6c6cd03",
"assets/assets/images/sk3.png": "0138ee2369ce45f143354566b7aa90b8",
"assets/assets/images/wallet.svg": "de84e8e92fc058e536810dcce44cc491",
"assets/assets/images/nft.png": "97a4dafcd7639a999ef7e5e1feaa6635",
"assets/assets/images/partner.png": "b7c78645980afe91571edd6afc92e958",
"assets/assets/images/sk4.png": "78a93a30dec0cf4ced7189344fa860c5",
"assets/assets/images/ski.png": "d1af7ea1dc0c985bd24fd923c9e50759",
"assets/assets/images/ski8.png": "c3dcb3937c052c307286ba50afe37f34",
"assets/assets/images/joy_note_coffee_eyeglasses_overhead_bw_w1080.jpg": "f014b7b75e442ae187976761117acc17",
"assets/assets/images/sk5.png": "59454a7707c87a36b2a7d370aecb4389",
"assets/assets/images/step1.png": "7cb990ca2f5c6462f30fb8fac62031e1",
"assets/assets/images/paper_flower_overhead_bw_w1080.jpg": "1bed4aefd73a600a585112a77c250a6c",
"assets/assets/images/sk7.png": "3be688af0e5a6e54fdb0250b56cf2cc3",
"assets/assets/images/sk2.png": "9c621a5065da5716755d274477934024",
"assets/assets/images/sk6.png": "1bbc726cbfd7ed62cb7cd5b984c40b0d",
"assets/assets/images/sun.svg": "98ff2d244472c3d09ad31818ea77767d",
"assets/assets/audio/background.wav": "4ca33d338b975db0a9ebdcfea81db1e5",
"assets/FontManifest.json": "752459fd527e377f889ff9012177cc98",
"assets/AssetManifest.json": "d138d795cf4fd254f721be8aacc26d6e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"main.dart.js": "ad57f87d513aa95e00920f73b08d7c34",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "1101bb2d2b655b1c1e4e24c143fa42ed"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
