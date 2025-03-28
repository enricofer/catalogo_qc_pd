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
    baseURL: '/dbtman/pub/'
  },
  css: ['~/assets/bifonts.css', '~/assets/styles.css'],
  ssr: true
  //modules: ['vuetify-nuxt-module']
})