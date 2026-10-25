# How to Host Atman Devasya (100% Free Forever)

This website is a zero-dependency static site (HTML, CSS, JS, JSON). It does not require any database or complex build servers, making it lightning-fast, ultra-secure, and completely free to host worldwide.

Here are the simplest and best options to host it live:

---

## Option 1: Cloudflare Pages (Recommended · Easiest & Fastest)

Cloudflare Pages provides free unlimited bandwidth, automated global CDN, and free custom domains with SSL.

### Method A: Instant Drag & Drop (No Git required, takes 60 seconds)
1. Go to [dash.cloudflare.com](https://dash.cloudflare.com) and create a free account (or log in).
2. On the left sidebar, click **Workers & Pages** → **Create application** → select the **Pages** tab.
3. Click **Upload assets**.
4. Set your Project name (e.g. `atman-devasya`).
5. **Drag and drop this entire `atman-devasya-site` folder** into the box.
6. Click **Deploy site**.
7. **Done!** Your site is now live at `https://atman-devasya.pages.dev`.

### Method B: Connecting a Custom Domain (e.g. `atmandevasya.com`)
1. In your Cloudflare Pages project, click **Custom domains**.
2. Click **Set up a custom domain**.
3. Enter your domain name and follow the 1-click DNS prompt. Cloudflare automatically generates an HTTPS SSL certificate for free.

---

## Option 2: Vercel (1-Click Drag & Drop or Git)

1. Go to [vercel.com](https://vercel.com) and sign up for a free Hobby account.
2. Click **Add New** → **Project**.
3. Either connect your GitHub repository or drag and drop this folder.
4. Framework Preset: **Other** (leave Root Directory as `./`).
5. Click **Deploy**.
6. Your site is live at `https://atman-devasya.vercel.app`.

---

## Option 3: Netlify (Drag & Drop in 15 seconds)

1. Go to [app.netlify.com/drop](https://app.netlify.com/drop).
2. Drag and drop the `atman-devasya-site` folder directly into the browser window.
3. Your site is published instantly with a free `.netlify.app` URL.

---

## Option 4: GitHub Pages

1. Create a new GitHub repository named `atman-devasya-site`.
2. Push or upload all files from this folder to the repository.
3. Go to **Settings** → **Pages** on your GitHub repo.
4. Under **Branch**, select `main` and root `/`, then click **Save**.
5. Within 1 minute, your site will be live at `https://<your-username>.github.io/atman-devasya-site/`.

---

## Updating Content After Hosting

Whenever you write a new chapter (e.g., Chapter III):
1. Put the chapter text in `content/chapters/chapter-03.txt`.
2. Add the entry to `content/site.json` under `"chapters"`.
3. In Cloudflare Pages, click **Create new deployment** and re-drag the folder (or push to your Git branch). The update is live in seconds.
