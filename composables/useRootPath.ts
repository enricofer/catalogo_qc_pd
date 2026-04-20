export const useRootPath = () => useState<string>('rootPath', () => '/dbtman/pub/');
//const config = useRuntimeConfig()
//export const useRootPath = () => useState<string>('rootPath', () => config.app.baseURL);