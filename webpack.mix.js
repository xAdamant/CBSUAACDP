const mix = require('laravel-mix');

const VuetifyLoaderPlugin = require('vuetify-loader/lib/plugin')
const CaseSensitivePathsPlugin = require('case-sensitive-paths-webpack-plugin')

var webpackConfig = {
    plugins: [
        new CaseSensitivePathsPlugin()
    ]
}

mix.webpackConfig(webpackConfig);
mix.js('resources/js/app.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css');
mix.extend('vuetify', new class {
    webpackConfig (config) {
        config.plugins.push(new VuetifyLoaderPlugin())
    }
})
mix.vuetify()