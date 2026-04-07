# sports-talk-deck

Static **Sports Talk** MVP deck (`sports-talk-deck.html`).

**Mobile:** narrow viewports load `sports-deck-mobile.css` after the main styles. Slides scroll vertically when needed, split layouts stack in one column, grids (personas, features, timeline, marketing) collapse to a single column, and the slide 7 flow becomes a vertical step list with connectors hidden. Controls use larger touch targets and respect safe-area insets. Open the same URL on a phone or resize the browser.

## If `https://<user>.github.io/sports-talk-deck/` shows 404

1. In the repo on GitHub: **Settings → Pages**.
2. Under **Build and deployment**, set **Source** to **GitHub Actions** (not “Deploy from a branch”).
3. Open the **Actions** tab and confirm the workflow **Deploy GitHub Pages** completed successfully on `main`.
4. After a minute, open **https://sambrott.github.io/sports-talk-deck/** — `index.html` redirects to `sports-talk-deck.html`.

You can also open the file directly:  
**https://sambrott.github.io/sports-talk-deck/sports-talk-deck.html**
