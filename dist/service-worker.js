if(!self.define){let e,i={};const a=(a,c)=>(a=new URL(a+".js",c).href,i[a]||new Promise((i=>{if("document"in self){const e=document.createElement("script");e.src=a,e.onload=i,document.head.appendChild(e)}else e=a,importScripts(a),i()})).then((()=>{let e=i[a];if(!e)throw new Error(`Module ${a} didn’t register its module`);return e})));self.define=(c,r)=>{const s=e||("document"in self?document.currentScript.src:"")||location.href;if(i[s])return;let n={};const f=e=>a(e,s),o={module:{uri:s},exports:n,require:f};i[s]=Promise.all(c.map((e=>o[e]||f(e)))).then((e=>(r(...e),n)))}}define(["./workbox-db5fc017"],(function(e){"use strict";e.setCacheNameDetails({prefix:"vue-light-bootstrap-dashboard"}),self.addEventListener("message",(e=>{e.data&&"SKIP_WAITING"===e.data.type&&self.skipWaiting()})),e.precacheAndRoute([{url:"/.gitkeep",revision:"d41d8cd98f00b204e9800998ecf8427e"},{url:"/Dashboard.PNG",revision:"be74132f42ae1d3502f9a9b9fff68ac1"},{url:"/css/app.128efd2e.css",revision:null},{url:"/css/chunk-vendors.3b0846f3.css",revision:null},{url:"/favicon.png",revision:"996d8248f580f8e26e6c45c67da9b5a6"},{url:"/fonts/nucleo-icons.273e4731.woff2",revision:null},{url:"/fonts/nucleo-icons.5c94002a.ttf",revision:null},{url:"/fonts/nucleo-icons.e9ee59ee.eot",revision:null},{url:"/img/default-avatar.png",revision:"a9615bac158705203261e8348f574cc8"},{url:"/img/faces/face-0.jpg",revision:"a9615bac158705203261e8348f574cc8"},{url:"/img/faces/face-1.jpg",revision:"99e58416b89637502b40ac8350eed85a"},{url:"/img/faces/face-2.jpg",revision:"0e953b1ea6d6e3addd7210e9c7c420a7"},{url:"/img/faces/face-3.jpg",revision:"ce7a6b79aa55041f7ae36f6ce22231fe"},{url:"/img/faces/face-4.jpg",revision:"0b68eb8f1cde1fc9987a9196df05b96a"},{url:"/img/faces/face-5.jpg",revision:"4ab22eca4053c14a34e4bdb6390deae9"},{url:"/img/faces/face-6.jpg",revision:"4b87e628f4ef9988718860890b2a682f"},{url:"/img/faces/face-7.jpg",revision:"bf1684a30a86ba1b222aab3acff16356"},{url:"/img/faces/tim_vector.jpe",revision:"43b98081492ac3bcb4a1fac6cf709403"},{url:"/img/favicon.png",revision:"996d8248f580f8e26e6c45c67da9b5a6"},{url:"/img/loading-bubbles.svg",revision:"0ec8f86a54dce32152eaa33e932b9c97"},{url:"/img/mask.png",revision:"d27fbc90c2e644dfdc9765640dc713b9"},{url:"/img/new_logo.png",revision:"f575a04ebbb31b5798a4c54783e745a2"},{url:"/img/nucleo-icons.e49d0a44.svg",revision:null},{url:"/img/sidebar-1.jpg",revision:"6be21e8a1b7d63048728851c6003e189"},{url:"/img/sidebar-2.jpg",revision:"7a4ce7cc040fc1cb8176cde106e9232f"},{url:"/img/sidebar-3.jpg",revision:"cd253e23ed052deeb80b42d2ed772183"},{url:"/img/sidebar-4.jpg",revision:"897b4cf909210560a84398d36da51983"},{url:"/img/sidebar-5.jpg",revision:"9ebea76ee1225f00d882b21547a7b49f"},{url:"/img/tim_80x80.png",revision:"44bf13a71a4db6e15913fe8af9296711"},{url:"/img/vue-logo.png",revision:"c2a605fbc0e687b2e1b4b90a7c445cdd"},{url:"/index.html",revision:"d62e767239f777a01a4a00730d3e5f08"},{url:"/js/app.eabee5db.js",revision:null},{url:"/js/chunk-vendors.63b494b7.js",revision:null},{url:"/manifest.json",revision:"04ce3013cb5f4a0c5e4faca8947aa795"},{url:"/robots.txt",revision:"735ab4f94fbcd57074377afca324c813"}],{})}));
//# sourceMappingURL=service-worker.js.map