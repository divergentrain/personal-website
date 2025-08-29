function determineGiscusTheme() {
  
    let theme =
      localStorage.getItem("theme") ||
      document.documentElement.getAttribute("data-theme") ||
      "system";

    if (theme === "dark") return "catppuccin_mocha";
    if (theme === "light") return "catppuccin_latte";

    const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;
    return prefersDark ? "catppuccin_mocha" : "catppuccin_latte";
  
}

(function setupGiscus() {
  let giscusTheme = determineGiscusTheme();

  let giscusAttributes = {
    src: "https://giscus.app/client.js",
    "data-repo": "neuroconvergent/personal-website",
    "data-repo-id": "R_kgDONq6Hjg",
    "data-category": "General",
    "data-category-id": "DIC_kwDONq6Hjs4CtR0L",
    "data-mapping": "title",
    "data-strict": "1",
    "data-reactions-enabled": "1",
    "data-emit-metadata": "0",
    "data-input-position": "top",
    "data-theme": giscusTheme,
    "data-lang": "en",
    crossorigin: "anonymous",
    async: true,
  };

  let giscusScript = document.createElement("script");
  Object.entries(giscusAttributes).forEach(([key, value]) =>
    giscusScript.setAttribute(key, value)
  );
  document.getElementById("giscus_thread").appendChild(giscusScript);
})();

