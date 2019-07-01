module.exports = {
    entry: [
        './src/index.jsx'
    ],
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
    output: {
        path: __dirname + '/static',
        filename: 'bundle.js'
    },
    plugins: [
        new ExtractTextPlugin('styles.css'),
    ]
};
