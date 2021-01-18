module.exports = {
  extends: 'eslint:recommended',
  root: true,
  env: {
    browser: false,
    node: true,
    commonjs: true,
    es6: true,
  },
  parserOptions: {
    ecmaVersion: 2018,
  },
  rules: {
    'no-console': 'off',
    'no-return-await': 'error',
  },

  overrides: [
    {
      files: ['**/test/*.js'],
      env: {
        mocha: true,
        node: true,
      },
    },
  ],
};
