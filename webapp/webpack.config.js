var ExtractTextPlugin = require('extract-text-webpack-plugin');
const webpack = require('webpack');



const config = {
    entry: [
        './src/index.jsx'
    ],
    resolve: {
       extensions: [".js", ".jsx", ".css"]
    },
    output: {
        path: __dirname + '/static',
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                exclude: /node_modules/,
                use: ['babel-loader']
            },
            {
                test: /\.css$/,
                use: ExtractTextPlugin.extract({
                    fallback: 'style-loader',
                    use: 'css-loader',
                })
            },
        ]
    },

    plugins: [
        new ExtractTextPlugin('index.css'),
    ]
};

module.exports = config;
