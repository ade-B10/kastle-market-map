# Deploy Guide — 3 Steps to Go Live

**Estimated time: ~4 minutes.**

You're deploying to: `https://ade-b10.github.io/kastle-market-map/`
Password (save in 1Password under "Base10 · Kastle Market Map"): `Base10Automation!`

---

## Step 1: Create the GitHub repo (90 seconds)

1. Go to https://github.com/new
2. Repository name: `kastle-market-map`
3. Set to **Public** (required for free GitHub Pages — the content is encrypted, so this is safe)
4. Do **NOT** check "Add a README"
5. Click **Create repository**

## Step 2: Upload the deploy files (60 seconds)

1. On the empty repo page, click **uploading an existing file**
2. In Finder, open `~/Desktop/Urizen/kastle-market-map-deploy/`
3. Select all files **EXCEPT the `source/` folder** (do not upload `source/` — the unencrypted HTML stays on your machine)
   - Upload: `index.html`, `README.md`, `DEPLOY_GUIDE.md`, `.gitignore`, `.staticrypt.json`, `update.sh`
4. Commit message: `Initial deploy`, click **Commit changes**

## Step 3: Enable GitHub Pages (60 seconds)

Go to: `https://github.com/ade-B10/kastle-market-map/settings/pages`

1. Source: **Deploy from a branch**
2. Branch: `main` / `/ (root)`
3. Click **Save**, wait ~30 seconds

Open `https://ade-b10.github.io/kastle-market-map/`, enter the password, done.

---

*Future updates: edit `source/Kastle_Market_Segmentation_Map.html`, run `./update.sh`, re-upload `index.html`.*
