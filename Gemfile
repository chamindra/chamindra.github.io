source "https://rubygems.org"

# Jekyll 4 is required for Ruby 4.0 compatibility.
# (github-pages pins Jekyll 3.9 + Liquid 4.0.3 which use removed Ruby APIs.)
# Deploy to GitHub Pages via GitHub Actions using the jekyll-gh-pages workflow.
gem "jekyll", "~> 4.4"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
end

# Suppress WEBrick missing-gem warning on Ruby 3+
gem "webrick"

# Liquid 4.0.4 removes tainted? calls; 4.0.3 (default) crashes on Ruby 4.0
gem "liquid", "4.0.4"
