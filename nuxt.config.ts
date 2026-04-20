// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: true },    
  devServer: {
      host: '0.0.0.0',
      port: 3000
  },
  modules: ['usebootstrap'],
  app: {
    //baseURL: '/dbtman/pub/',
    baseURL: '/pianificazione/',
  },
  css: ['~/assets/bifonts.css', '~/assets/styles.css'],
  runtimeConfig: {
    public: {
      rapperProxy: 'https://urbanistica.comune.padova.it/dbtman/',
      downloadHelper: 'https://urbanistica.comune.padova.it/dbtman/documenti/?target=',
    }
  }
})
