function githubUrlForRouting(url) {
  // Match the destination, but keep the Safe Links URL for the browser to open.
  if (
    url.hostname === "teams.public.onecdn.static.microsoft" &&
    url.pathname === "/evergreen-assets/safelinks/2/atp-safelinks.html"
  ) {
    return url.searchParams.get("url") || url.href;
  }
  return url.href;
}

export default {
  defaultBrowser: "Google Chrome",
  handlers: [
    {
      match: (url) =>
        /^https?:\/\/github\.com\/microsoft(?:[/?#]|$)/i.test(githubUrlForRouting(url)),
      browser: {
        name: "Google Chrome",
        profile: "Work (Microsoft)",
      },
    },
    {
      match: (url) =>
        /^https?:\/\/github\.com\/github(?:[/?#]|$)/i.test(githubUrlForRouting(url)),
      browser: {
        name: "Google Chrome",
        profile: "GitHub",
      },
    },
    {
      match: (url) =>
        /^https?:\/\/github\.com\/coreai-microsoft(?:[/?#]|$)/i.test(githubUrlForRouting(url)),
      browser: {
        name: "Google Chrome",
        profile: "Github EMU",
      },
    },
  ],
};
