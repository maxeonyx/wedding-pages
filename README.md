# Maxwell & Kibra's Wedding Pages

A static website for Maxwell Clarke & Kibra Tajebe's wedding, hosted on GitHub Pages with a beautiful wildflower theme.

## Site Versions

This site includes four different invitation pages for different guests:

### 1. **index.html** - Full Ceremony & Reception Invite
- **Use for:** Most guests invited to both ceremony and reception
- **Reception time:** 6:00 PM
- **Content:** Complete ceremony and reception details with gap information

### 2. **reception-only.html** - Reception Only Invite  
- **Use for:** Guests invited only to the reception
- **Reception time:** 6:00 PM
- **Content:** Reception details only, no ceremony information

### 3. **habesha.html** - Full Ceremony & Reception (Habesha Community)
- **Use for:** Ethiopian/Tigray community guests invited to ceremony and reception
- **Reception time:** 4:00 PM (earlier start for community celebration)
- **Content:** Complete ceremony and reception details with cultural notes

### 4. **reception-habesha.html** - Reception Only (Habesha Community)
- **Use for:** Ethiopian/Tigray community guests invited only to reception
- **Reception time:** 4:00 PM
- **Content:** Reception details only with cultural notes

## How to Use

1. **Choose the appropriate page** for each guest based on:
   - Whether they're invited to ceremony + reception or reception only
   - Whether they're part of the Habesha community (4pm reception) or general guests (6pm reception)

2. **Share the specific URL** with guests:
   - `https://[your-username].github.io/wedding-pages/` (main invite)
   - `https://[your-username].github.io/wedding-pages/reception-only.html`
   - `https://[your-username].github.io/wedding-pages/habesha.html`
   - `https://[your-username].github.io/wedding-pages/reception-habesha.html`

## Setup Instructions

### GitHub Pages Deployment

1. **Enable GitHub Pages:**
   - Go to your repository Settings
   - Scroll to "Pages" section
   - Under "Source", select "Deploy from a branch"
   - Choose "main" branch and "/ (root)" folder
   - Save settings

2. **Your site will be available at:**
   - `https://[your-username].github.io/wedding-pages/`

### Custom Domain Setup (Optional)

1. **Add a CNAME file:**
   ```bash
   echo "your-domain.com" > CNAME
   ```

2. **Configure DNS:**
   - Add a CNAME record pointing to `[your-username].github.io`
   - Or add A records pointing to GitHub Pages IPs

3. **Enable custom domain in GitHub:**
   - Go to repository Settings > Pages
   - Add your custom domain
   - Enable "Enforce HTTPS"

## Customization

### Adding the Invitation Image
1. Add your invitation image file (e.g., `invitation.jpg`) to the repository
2. Replace the placeholder div in each HTML file with:
   ```html
   <img src="invitation.jpg" alt="Wedding Invitation" class="invitation-image">
   ```

### Updating Event Details
Edit the following placeholders in each HTML file:
- `[Date]` - Wedding date
- `[Time]` - Ceremony time
- `[Ceremony Venue Name]` - Ceremony location name
- `[Ceremony Address]` - Ceremony address
- `[Reception Venue Name]` - Reception location name
- `[Reception Address]` - Reception address

### Updating Bank Details
Replace the bank transfer placeholders in the gifts section:
- `[Account Holder Name]`
- `[Bank Name]`
- `[Account Number]`
- `[BSB/Routing Number]`

### Styling Changes
- Edit `style.css` to modify colors, fonts, or layout
- The current theme uses a wildflower color palette with whites and greens
- All pages share the same stylesheet for consistency

## File Structure

```
wedding-pages/
├── index.html              # Main ceremony + reception invite (6pm)
├── reception-only.html     # Reception only invite (6pm)
├── habesha.html           # Ceremony + reception for Habesha community (4pm)
├── reception-habesha.html # Reception only for Habesha community (4pm)
├── style.css              # Shared styling
└── README.md              # This file
```

## Design Theme

The site features a wildflower theme with:
- Clean white background
- Elegant serif fonts (Georgia)
- Soft green and earth tone accents
- Responsive design for mobile devices
- Decorative wildflower elements (❀)

## Support

For technical issues or customization help, refer to:
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [HTML/CSS Resources](https://developer.mozilla.org/en-US/docs/Web/HTML)
