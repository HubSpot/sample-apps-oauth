module.exports = {
  bracketSpacing: true,
  jsxBracketSameLine: false,
  printWidth: 80,
  proseWrap: 'never',
  semi: true,
  singleQuote: true,
  tabWidth: 2,
  // TODO: Change to `all` once supported
  trailingComma: 'es5',
  useTabs: false,
  overrides: [
    {
      files: ['static_conf.json'],
      options: {
        parser: 'json-stringify',
      },
    },
    {
      files: ['*.lyaml'],
      options: {
        // Prevent unparsable wrapping behavior in lyaml files:
        // https://git.hubteam.com/HubSpot/prettier-config-hubspot/pull/36
        printWidth: 999,
        // Wrapping looks bad for certain strings that use newlines to separate
        // JSX elements
        proseWrap: 'preserve',
      },
    },
  ],
};
