# Base10 · Kastle Market Map (password-protected)

Encrypted, single-page deployment of the Kastle "Financial Services Back-Office AI: Market Segmentation" analysis (institution type x workflow, with Kastle / Casap / Salient positioning).

- **Live URL**: `https://ade-b10.github.io/kastle-market-map/`
- **Password**: `Base10Automation!` (the usual Base10 deal-site password; store in 1Password)
- Encryption: staticrypt (client-side AES). The unencrypted source stays in `source/` and is gitignored, so only the encrypted `index.html` is ever published.

To refresh the content: update `source/Kastle_Market_Segmentation_Map.html`, run `./update.sh`, then commit + push `index.html`. See DEPLOY_GUIDE.md for first-time deploy.
