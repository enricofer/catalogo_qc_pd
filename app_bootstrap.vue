<script lang="ts" setup>
useHead({
    link: [ 
      { rel: "stylesheet", href: "/styles.css"},
      { rel: "stylesheet", href: "/bootstrap-italia.min.css"},
      { rel: "stylesheet", href: "/bootstrap-italia-comuni.css"},
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Lora/lora-v20-latin-ext_latin-regular.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.woff", as: "font", type: "font/woff", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.woff", as: "font", type: "font/woff", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.woff", as: "font", type: "font/woff", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.woff", as: "font", type: "font/woff", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.woff2", as: "font", type: "font/woff2", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.woff", as: "font", type: "font/woff", crossorigin: "anonymous" },
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" }
    ],
})
</script>


<template>
  <div>
    <div style="background-color: burlywood;padding: 0.5em;">
      <h1>CataUrba</h1>
      <NuxtLink to="/datasets">dataset</NuxtLink> |
      <NuxtLink to="/aggiornamenti">Aggiornamenti</NuxtLink>
    </div>
    <hr>
    <NuxtPage/>
  </div>
</template>

<style scoped>

:root{
    --bootstrap-italia-version:"2.9.0"
}
:root{
    --bs-indigo:hsl(243deg, 100%, 65%);
    --bs-purple:hsl(243deg, 100%, 80%);
    --bs-pink:hsl(350deg, 100%, 85%);
    --bs-red:hsl(351deg, 92.380952381%, 60.625%);
    --bs-orange:hsl(36deg, 100%, 50%);
    --bs-yellow:hsl(44deg, 100%, 72.5%);
    --bs-green:hsl(159deg, 100%, 40%);
    --bs-teal:hsl(178deg, 90.4761904762%, 44.625%);
    --bs-cyan:hsl(178deg, 100%, 50%);
    --bs-gray:hsl(225deg, .5025125628%, 39.8%);
    --bs-gray-dark:hsl(225deg, .5025125628%, 19.9%);
    --bs-blue:hsl(210deg, 100%, 45%);
    --bs-gray-secondary:hsl(210deg, 16.9590643275%, 43.605%);
    --bs-gray-tertiary:hsl(205deg, 21.2121212121%, 44.55%);
    --bs-gray-quaternary:hsl(238deg, 100%, 99.5%);
    --bs-gray-100:hsl(225deg, 4.3062200957%, 89.55%);
    --bs-gray-200:hsl(225deg, 1.9607843137%, 79.6%);
    --bs-gray-300:hsl(225deg, 1.1532125206%, 69.65%);
    --bs-gray-400:hsl(225deg, .7444168734%, 59.7%);
    --bs-gray-500:hsl(225deg, .5025125628%, 49.75%);
    --bs-gray-600:hsl(225deg, .5025125628%, 39.8%);
    --bs-gray-700:hsl(225deg, .5025125628%, 29.85%);
    --bs-gray-800:hsl(225deg, .5025125628%, 19.9%);
    --bs-gray-900:hsl(225deg, .5025125628%, 9.95%);
    --bs-primary:hsl(160deg, 100%, 24%);
    --bs-secondary:hsl(210deg, 16.9590643275%, 43.605%);
    --bs-success:hsl(159deg, 100%, 26.5%);
    --bs-info:hsl(225deg, .7444168734%, 59.7%);
    --bs-warning:hsl(36deg, 100%, 32.5%);
    --bs-danger:hsl(351deg, 68%, 53.125%);
    --bs-light:hsl(255deg, 32.2033898305%, 92.625%);
    --bs-dark:hsl(210deg, 53.8461538462%, 19.5%);
    --bs-black:hsl(0deg, 0%, 0%);
    --bs-white:hsl(0deg, 0%, 100%);
    --bs-100:hsl(225deg, 4.3062200957%, 89.55%);
    --bs-200:hsl(225deg, 1.9607843137%, 79.6%);
    --bs-300:hsl(225deg, 1.1532125206%, 69.65%);
    --bs-400:hsl(225deg, .7444168734%, 59.7%);
    --bs-500:hsl(225deg, .5025125628%, 49.75%);
    --bs-600:hsl(225deg, .5025125628%, 39.8%);
    --bs-700:hsl(225deg, .5025125628%, 29.85%);
    --bs-800:hsl(225deg, .5025125628%, 19.9%);
    --bs-900:hsl(225deg, .5025125628%, 9.95%);
    --bs-primary-rgb:0, 115, 115;
    --bs-secondary-rgb:92, 111, 130;
    --bs-success-rgb:0, 135, 88;
    --bs-info-rgb:151, 152, 153;
    --bs-warning-rgb:166, 99, 0;
    --bs-danger-rgb:217, 54, 79;
    --bs-light-rgb:233, 230, 242;
    --bs-dark-rgb:23, 50, 77;
    --bs-100-rgb:227, 228, 230;
    --bs-200-rgb:202, 202, 204;
    --bs-300-rgb:177, 177, 179;
    --bs-400-rgb:151, 152, 153;
    --bs-500-rgb:126, 127, 128;
    --bs-600-rgb:101, 101, 102;
    --bs-700-rgb:76, 76, 77;
    --bs-800-rgb:50, 51, 51;
    --bs-900-rgb:25, 25, 26;
    --bs-white-rgb:255, 255, 255;
    --bs-black-rgb:0, 0, 0;
    --bs-body-color-rgb:25, 25, 26;
    --bs-body-bg-rgb:255, 255, 255;
    --bs-font-sans-serif:"Titillium Web", sans-serif;
    --bs-font-monospace:"Roboto Mono", monospace;
    --bs-gradient:linear-gradient(180deg, rgba(255, 255, 255, .15), rgba(255, 255, 255, 0));
    --bs-body-font-family:Titillium Web, sans-serif;
    --bs-body-font-size:1rem;
    --bs-body-font-weight:300;
    --bs-body-line-height:1.5;
    --bs-body-color:hsl(225deg, .5025125628%, 9.95%);
    --bs-body-bg:hsl(0deg, 0%, 100%)
}
@media (prefers-reduced-motion:no-preference){
    :root{
        scroll-behavior:smooth
    }
}
body{
    margin:0;
    font-family:var(--bs-body-font-family);
    font-size:var(--bs-body-font-size);
    font-weight:var(--bs-body-font-weight);
    line-height:var(--bs-body-line-height);
    color:var(--bs-body-color);
    text-align:var(--bs-body-text-align);
    background-color:var(--bs-body-bg);
    -webkit-text-size-adjust:100%;
    -webkit-tap-highlight-color:#fff0
}
iframe{
    border:0
}
html,body{
    font-size:16px;
    line-height:1.5
}
@media (min-width:576px){
    html,body{
        font-size:18px;
        line-height:1.555
    }
}
:focus:not(.focus--mouse){
    border-color:#f90!important;
    box-shadow:0 0 0 2px #f90!important;
    outline:none!important
}
body{
    color:#5b6f82
}
*,*:before,*:after{
    box-sizing:border-box
}
body{
    font-family:Titillium Web;
    color:#191919
}
:focus:not(.focus--mouse){
    border-color:#000!important;
    box-shadow:0 0 0 3px #000!important;
    outline:3px solid #fff!important;
    outline-offset:3px
}
@font-face{
    font-family:Titillium Web;
    font-style:normal;
    font-weight:300;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:italic;
    font-weight:300;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-300italic.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:normal;
    font-weight:400;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-regular.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:italic;
    font-weight:400;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-italic.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:normal;
    font-weight:700;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:italic;
    font-weight:700;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:normal;
    font-weight:600;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Titillium Web;
    font-style:italic;
    font-weight:600;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.woff) format("woff"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-600italic.svg#TitilliumWeb) format("svg")
}
@font-face{
    font-family:Roboto Mono;
    font-style:normal;
    font-weight:400;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.eot);
    src:local(""),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.woff2) format("woff2"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.woff) format("woff"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.ttf) format("truetype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-regular.svg#RobotoMono) format("svg")
}
@font-face{
    font-family:Roboto Mono;
    font-style:normal;
    font-weight:700;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.eot);
    src:local(""),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.woff2) format("woff2"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.woff) format("woff"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.ttf) format("truetype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700.svg#RobotoMono) format("svg")
}
@font-face{
    font-family:Roboto Mono;
    font-style:italic;
    font-weight:400;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.woff) format("woff"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-italic.svg#RobotoMono) format("svg")
}
@font-face{
    font-family:Roboto Mono;
    font-style:italic;
    font-weight:700;
    font-display:swap;
    src:url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.eot);
    src:local(""),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.eot?#iefix) format("embedded-opentype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.woff2) format("woff2"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.woff) format("woff"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.ttf) format("truetype"),url(/bootstrap-italia/fonts/Roboto_Mono/roboto-mono-v13-latin-ext_latin-700italic.svg#RobotoMono) format("svg")
}

</style>