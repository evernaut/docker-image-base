module.exports = {
  env: {
    es6: true,
    node: true,
  },
  extends: ["prettier"],
  parserOptions: {
    ecmaVersion: 2018,
    sourceType: "module",
  },
  plugins: ["json", "prettier"],
  root: true,
  rules: {
    "json/*": ["error"],
  },
};
