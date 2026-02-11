# 🚀 GitHub Pages Hosting Guide

## Step 1: Create a GitHub Account
- Go to https://github.com/signup
- Sign up with email, Google, or GitHub account

## Step 2: Create a New Repository
1. Click the **+** button (top right) → **New repository**
2. Repository name: `dots-and-boxes` (or any name)
3. Make it **Public** (required for free GitHub Pages)
4. Check **Add a README file**
5. Click **Create repository**

## Step 3: Upload Your Files
### Option A: Web Upload (Easiest)
1. Go to your new repository
2. Click **Add file** → **Upload files**
3. Drag and drop these files from your folder:
   - `dots-and-boxes.html`
   - `server.js` (optional)
   - `start-server.bat` (optional)
   - `setup-ngrok.bat` (optional)
4. Click **Commit changes**

### Option B: Git Command Line
```bash
cd "C:\Users\Asdak\OneDrive\Desktop\Agent AI Project\my game"
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/dots-and-boxes.git
git push -u origin main
```

## Step 4: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. Scroll down to **Pages** section (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Select **main** branch and **/(root)** folder
6. Click **Save**

## Step 5: Rename HTML File (Important!)
GitHub Pages looks for `index.html` as the homepage:

1. In your repository, click on `dots-and-boxes.html`
2. Click the **...** (three dots) → **Rename**
3. Change name to: `index.html`
4. Click **Commit changes**

## Step 6: Wait & Access
- Wait 2-5 minutes for deployment
- Your URL will be: `https://YOUR_USERNAME.github.io/dots-and-boxes`
- Check the Pages section in Settings for the exact URL

## 🎉 Your Game Will Be Live!

**Example URL:** `https://asdak123.github.io/dots-and-boxes`

## Bonus: Custom Domain (Optional)
1. Buy a domain from Namecheap, GoDaddy, etc.
2. In GitHub Pages settings, add your custom domain
3. Configure DNS settings with your domain provider

## Troubleshooting

**"404 File not found"**
- Make sure you renamed the file to `index.html`
- Check that the repository is public
- Wait a few minutes for deployment

**Page not loading**
- Check Pages settings to see if build failed
- Make sure file is in root directory (not in a folder)

## Need Help?
- GitHub Pages docs: https://pages.github.com/
- GitHub Help: https://docs.github.com/en/pages

---
**That's it! Your game will be hosted forever for free! 🎮**
