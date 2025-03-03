<script lang="ts" setup>
useHead({
    link: [ 
      { rel: "stylesheet", href: "/bootstrap-italia.min.css"},
      { rel: "stylesheet", href: "/bootstrap-italia-comuni.css"},
      { rel: "stylesheet", href: "/styles.css"},
      { rel: "stylesheet", href: "/styles.scss"},
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
      { rel: "preload", href: "/bootstrap-italia/fonts/Titillium_Web/titillium-web-v10-latin-ext_latin-700italic.ttf", as: "font", type: "font/ttf", crossorigin: "anonymous" },
      { rel: "stylesheet", href: "/styles.css"},
      { rel: "stylesheet", href: "/styles.scss"},
      { rel: "stylesheet", href: "/bifonts.scss"}
    ],
})
</script>


<template>
  <div>

    <header class="it-header-wrapper" data-bs-target="#header-nav-wrapper" style="">
      <div class="it-header-slim-wrapper">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="it-header-slim-wrapper-content">
                <a class="d-lg-block navbar-brand" target="_blank" href="https://www.regione.veneto.it/" aria-label="Vai al portale della Regione del Veneto - link esterno - apertura nuova scheda" title="Vai al portale della Regione del Veneto">Regione del Veneto</a>
                <div class="it-header-slim-right-zone" role="navigation">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    
      <div class="it-nav-wrapper">
        <div class="it-header-center-wrapper theme-light">
          <div class="container">
            <div class="row">
              <div class="col-12">
                <div class="it-header-center-content-wrapper">
                  <div class="it-brand-wrapper">
                      <a href="homepage.html" title="Vai alla homepage">
                        <svg width="82" height="82" class="icon" aria-hidden="true">
                          <image xlink:href="/logo.svg"></image>
                        </svg>
                        <div class="it-brand-text">
                          <div class="it-brand-title">Comune di Padova</div>
                          <div class="it-brand-tagline d-none d-md-block">Settore Urbanistica e Servizi catastali</div>
                        </div>
                      </a>
                  </div>
                  <div class="it-right-zone">

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="it-header-navbar-wrapper" id="header-nav-wrapper">
          <div class="container">
            <div class="row">
              <div class="col-12">
                <!--start nav-->
                <div class="navbar navbar-expand-lg has-megamenu">
                  <button class="custom-navbar-toggler" type="button" aria-controls="nav4" aria-expanded="false" aria-label="Mostra/Nascondi la navigazione" data-bs-target="#nav4" data-bs-toggle="navbarcollapsible">
                    <svg class="icon">
                      <use href="/bootstrap-italia/svg/sprites.svg#it-burger"></use>
                    </svg>
                  </button>
                  <div class="navbar-collapsable" id="nav4">
                    <div class="overlay" style="display: none;"></div>
                    <div class="close-div">
                      <button class="btn close-menu" type="button">
                        <span class="visually-hidden">Nascondi la navigazione</span>
                        <svg class="icon">
                          <use href="/bootstrap-italia/svg/sprites.svg#it-close-big"></use>
                        </svg>
                      </button>
                    </div>
                    <div class="menu-wrapper">
                      <a href="homepage.html" class="logo-hamburger">
                        <svg class="icon" aria-hidden="true">
                          <use href="/bootstrap-italia/svg/sprites.svg#it-pa"></use>
                        </svg>
                        <div class="it-brand-text">
                          <div class="it-brand-title">Comune di Padova</div>
                        </div>
                      </a>
                      <nav aria-label="Principale">
                        <ul class="navbar-nav" data-element="main-navigation">
                          <li class="nav-item">
                              <NuxtLink class="main-nav-link nav-link text-truncate" to="/datasets"><span>Dataset</span></NuxtLink>
                          </li>
                          <li class="nav-item">
                              <NuxtLink class="main-nav-link nav-link text-truncate" to="/aggiornamenti"><span>Aggiornamenti</span></NuxtLink>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="../placeholder" data-element="live">
                              <span></span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                      <nav aria-label="Secondaria">
                        <ul class="navbar-nav navbar-secondary">
                          <li class="nav-item">
                            <a class="nav-link" href="../sito/placeholder.html"></a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <main>
      <div class="app-layouts"><div class="app-page-layout"><NuxtPage/></div></div>
    </main>
  </div>
</template>

<style>

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

h6, .h6, h5, .h5, h4, .h4, h3, .h3, h2, .h2, h1, .h1 {
	margin-top: 0;
	margin-bottom: 8px;
	font-weight: 700;
	line-height: 1.2;
}
</style>