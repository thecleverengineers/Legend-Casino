import globals from "globals";
import pluginJs from "@eslint/js";

export default [
  {
    ignores: ["src/public/**", "schema/**", "src/controllers/**", "src/modal/**"],
  },
  {
    files: ["**/*.js"],
    languageOptions: {
      sourceType: "module",
      globals: {
        ...globals.node,
        ...globals.browser,
        $: "readonly",
        axios: "readonly",
        io: "readonly",
      },
    },
    rules: {
      "no-sparse-arrays": "off",
    },
  },
  {
    languageOptions: { globals: globals.browser },
  },
  pluginJs.configs.recommended,
];
