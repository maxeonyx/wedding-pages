# 🌸 Wedding Pages

Beautiful wildflower-themed wedding website with multiple invitation variants for Kibra & Max's wedding celebration.

## 🌻 Features

- **Four variants** with different invitation types and cultural contexts
- **Beautiful wildflower theme** matching the invitation design  
- **Responsive design** that works on all devices
- **Simple build system** using CSS variables for variant control
- **Prominent RSVP integration** with external RSVP service

## 🏗️ Project Structure

```
wedding-pages/
├── src/
│   ├── images/                 # Variant-specific invitation images
│   │   ├── Invitation - Ceremony - 6pm.jpeg
│   │   ├── Invitation - Reception - 6pm.jpeg
│   │   ├── Invitation - Ceremony - Habesha.jpeg
│   │   └── Invitation - Reception - Habesha.jpeg
│   ├── index.html              # Source template
│   └── styles.css              # Wildflower-themed CSS
├── public/                     # Generated variants (after build)
│   ├── ceremony6pm/               # Full ceremony + reception (6pm)
│   ├── reception6pm/        # Reception only (6pm)  
│   ├── ceremony4pm/            # Full ceremony + reception (4pm)
│   └── reception4pm/           # Reception only (4pm)
├── .github/workflows/         # GitHub Actions for deployment
├── build.sh                   # Build script
└── README.md                  # This file
```

## 🚀 Quick Start

### Development
```bash
# Preview the source template
cd src && python3 -m http.server 8000
# Visit http://localhost:8000
```

### Build All Variants
```bash
# Generate all 4 variants with correct images
./build.sh
```

### Serve Built Site
```bash
# Serve the built variants
cd public && python3 -m http.server 8080
# Visit http://localhost:8080/wedding/ (or other variants)
```

## 📝 Editing Content

All content is managed in `src/index.html`. The build system uses CSS variables to show/hide different sections:

### Variant Types:
- **`ceremony-western`**: Full ceremony + reception info, 6pm reception
- **`reception-western`**: Reception only, 6pm reception  
- **`ceremony-habesha`**: Full ceremony + reception info, 4pm reception
- **`reception-habesha`**: Reception only, 4pm reception

### Key Sections to Edit:
- **Names & Date**: Update in the hero section
- **Ceremony Details**: Venue, time, what to expect
- **Reception Details**: Venue, times (controlled by variant), what to expect  
- **RSVP Link**: Update the href in the RSVP section
- **Bank Details**: Update account reception4pm for gifts
- **Dress Code**: Modify clothing suggestions

### Variant-Specific Content:
Use `data-show` attributes to control which variants show specific content:

```html
<!-- Show only for ceremony variants -->
<div class="variant-content" data-show="ceremony-western,ceremony-habesha">
    <p>Ceremony-specific reception4pm</p>
</div>

<!-- Show only for reception variants -->  
<div class="variant-content" data-show="reception-western,reception-habesha">
    <p>Reception-only reception4pm</p>
</div>
```

## 🎨 Styling

The design uses a wildflower color palette inspired by the invitation:
- **Wildflower Green**: `#7a9b76`
- **Wildflower Purple**: `#8b7ca3`  
- **Wildflower Pink**: `#c4969c`
- **Wildflower Blue**: `#7590b5`
- **Accent Gold**: `#c9a961`

Fonts:
- **Headers**: Montserrat (clean, modern)
- **Body**: Crimson Text (elegant serif)
- **Script**: Crimson Text Italic (for "Wedding")

## 📱 Responsive Design

The site is fully responsive with breakpoints at:
- **Desktop**: 768px+
- **Tablet**: 480px - 768px  
- **Mobile**: < 480px

## 🌐 Deployment

Since all paths are relative, the site will work at any base URL. Simply upload the `public/` folder contents to your web server.

## 💕 About

Created for Kibra Tajebe & Max Clarke's wedding celebration on November 25th, 2025. The design honors both Western and Ethiopian traditions with beautiful wildflower aesthetics.
