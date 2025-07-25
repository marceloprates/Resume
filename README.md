# Professional CV

A professionally typeset CV using LaTeX, with automated builds via GitHub Actions.

Access my most current CV here:

[![Latest CV](https://img.shields.io/badge/PDF-Download-blue?logo=adobeacrobatreader)](https://github.com/marceloprates/Resume/blob/master/output/latest/cv_latest.pdf)

## Repository Structure

```
resume/
├── .github/
│   └── workflows/           # CI/CD workflows
│       └── build.yml        # Automated PDF generation
├── assets/
│   ├── fonts/              # Custom fonts
│   └── images/             # Images, icons, photos
│       ├── projects/       # Project-related images
│       └── icons/          # Social media & other icons
├── output/                 # Generated PDFs
│   └── latest/            # Latest PDF versions
├── src/
│   ├── styles/            # Style files
│   │   └── altacv.cls     # AltaCV class file
│   ├── sections/          # CV content sections
│   │   ├── education.tex
│   │   ├── experience.tex
│   │   ├── projects.tex
│   │   └── skills.tex
│   ├── sidebars/          # Sidebar content
│   │   ├── page1sidebar.tex
│   │   └── page2sidebar.tex
│   └── main.tex           # Main CV file
└── Makefile              # Build commands

## Prerequisites

- A TeX distribution (e.g., TeX Live, MiKTeX)
- Biber (for bibliography processing)
- GNU Make

## Building the CV

To build the CV, simply run:

```bash
make
```

[Latest CV](output/latest/cv_latest.pdf)

This will:
1. Compile the LaTeX source
2. Process any bibliography entries
3. Generate the final PDF
4. Copy the PDF to the output directory with versioned filenames

To clean up build artifacts:

```bash
make clean
```

## Continuous Integration

The repository includes GitHub Actions workflows that automatically:
- Build the CV on every push to main
- Generate a PDF artifact
- Make the latest version available for download

## Customizing the CV

1. Edit content in the appropriate files under `src/sections/`
2. Update sidebar content in `src/sidebars/`
3. Add images to `assets/images/`
4. Modify styling in `src/styles/`

## License

The CV template is based on [AltaCV](https://github.com/liantze/AltaCV) by LianTze Lim, licensed under [The LaTeX Project Public License 1.3c](https://www.latex-project.org/lppl.txt).
