# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is Martin Saveski's personal academic website, built with Jekyll. It is a static site deployed to a UW server.

## Commands

- **Local preview:** `jekyll serve` (serves at localhost:4000)
- **Build:** `jekyll build` (outputs to `_site/`)
- **Deploy:** `./__deploy.sh` (scp to UW server)

## Architecture

The site uses Jekyll with the Skeleton CSS framework. There are no build tools, package managers, or tests.

**Data-driven content:** Most updates happen in `_data/` YAML files, not in HTML:
- `_data/main_info.yaml` — name, title, email, social links
- `_data/publications.yaml` — papers list (each has `title`, `authors`, `venue`, `paper_pdf`, optional `slides`/`poster`/`video`/`code`/`data`, and `selected: y/n`)
- `_data/experience.yaml` — timeline entries (category `work` or `education`)
- `_data/projects.yaml` — project cards
- `_data/template_users.yaml` — links to people using this template

**Layouts and includes:**
- `_layouts/default.html` — main HTML shell (header, navbar, footer, all CSS/JS imports)
- `_layouts/project.html` — individual project pages
- `_includes/` — reusable partials (Google Analytics, image captions)

**Content pages:**
- `index.html` — homepage with Bio, Publications (selected/all tabs), Vitae timeline, and Website Design sections
- `_projects/` — individual project markdown files (Jekyll collection, configured in `_config.yml`)

**Static assets:**
- `assets/publications/` — paper PDFs organized as `YYYY_short_name/paper.pdf`
- `assets/projects/` — project images (thumbnails and figures)
- `assets/cv/cv_web.pdf` — CV PDF
- `assets/profile-pics/` — profile photos
- `libs/external/` — vendored CSS/JS (Skeleton, Font Awesome 6.6.0, Academicons, jQuery, skeleton-tabs, timeline)
- `libs/custom/` — custom CSS (`my_css.css`) and JS (`my_js.js`)

**Base URL:** The site uses `baseurl: /msaveski` (set in `_config.yml`). All asset paths use `| prepend: site.baseurl`.

## Common Tasks

**Adding a new publication:** Add an entry to the top of `_data/publications.yaml`. Set `selected: y` to show in the Selected tab. Place the PDF in `assets/publications/YYYY_short_name/paper.pdf`.

**Updating bio/contact info:** Edit `_data/main_info.yaml` for social links and title. Edit the bio section directly in `index.html`.
