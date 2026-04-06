#!/bin/bash
# ============================================================
# copy-images.sh — Copies your portfolio images into the site
# Run this once from Terminal: bash copy-images.sh
# ============================================================

PORTFOLIO="$HOME/Desktop/Desktop - Ginamarie's MacBook Air/GM-Logo-Portfolio"
SITE="$HOME/Desktop/ginamarie-portfolio/images"

echo "🚀 Copying portfolio images into site..."

# --- Headshot ---
cp "$PORTFOLIO/Supporting Files/Headshot/ginamarie_11-cropped.jpg" "$SITE/headshot.jpg" && echo "✅ Headshot" || echo "⚠️  Headshot not found"

# --- Resume ---
cp "$PORTFOLIO/Supporting Files/Resume/Ginamarie Ivy Resume 2018.pdf" "$SITE/Ginamarie-Ivy-Resume.pdf" && echo "✅ Resume" || echo "⚠️  Resume not found"

# --- Adobe Portfolio Thumbnails (already exported PNGs) ---
mkdir -p "$SITE/thumbnails"
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/"*.png "$SITE/thumbnails/" 2>/dev/null && echo "✅ Thumbnails" || echo "⚠️  Some thumbnails not found"

# --- RTW images ---
mkdir -p "$SITE/rtw"
cp "$PORTFOLIO/Working Files/RTW/RTW-Billboard.png"             "$SITE/rtw/rtw-billboard.png"      2>/dev/null && echo "✅ RTW billboard"
cp "$PORTFOLIO/Working Files/RTW/RTW 1.png"                     "$SITE/rtw/rtw-hero.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/RTW.png"  "$SITE/rtw/rtw-card.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/RTW-01.png" "$SITE/rtw/rtw-01.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/RTW-02.png" "$SITE/rtw/rtw-02.png"            2>/dev/null
# Copy event photos
cp "$PORTFOLIO/Working Files/RTW/IMG_0228.png"                  "$SITE/rtw/rtw-event-01.png"        2>/dev/null
cp "$PORTFOLIO/Working Files/RTW/IMG_0230.jpg"                  "$SITE/rtw/rtw-event-02.jpg"        2>/dev/null
echo "✅ RTW images"

# --- Category Campaigns ---
mkdir -p "$SITE/category"
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Category Campaigns.png"    "$SITE/category/category-hero.png"   2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Category Campaigns 2.png"  "$SITE/category/category-02.png"     2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Category Campaigns 3.png"  "$SITE/category/category-03.png"     2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Careers in Care 01.png"    "$SITE/category/cic-01.png"          2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Careers in Care 02.png"    "$SITE/category/cic-02.png"          2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Career Services.png"       "$SITE/category/career-services.png" 2>/dev/null
# CiC photoshoot
cp "$PORTFOLIO/Indeed-CiC2024-Nurse-Scene13-2252 3.png" "$SITE/category/cic-photoshoot.png" 2>/dev/null
cp "$PORTFOLIO/Indeed-CiC2024-Nurse-Scene13-2252 4.png" "$SITE/category/cic-photoshoot-02.png" 2>/dev/null
# Off the Clock
cp "$PORTFOLIO/Working Files/Off the Clock CiC Event 2025/Step and Repeat 02.jpg" "$SITE/category/otc-steprepeat.jpg" 2>/dev/null
cp "$PORTFOLIO/Working Files/Off the Clock CiC Event 2025/Lanyard.png"             "$SITE/category/otc-lanyard.png"    2>/dev/null
cp "$PORTFOLIO/Working Files/Off the Clock CiC Event 2025/WaterBottle.png"         "$SITE/category/otc-merch.png"      2>/dev/null
echo "✅ Category Campaigns images"

# --- What's New ---
mkdir -p "$SITE/whats-new"
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/What's New at Indeed.png"  "$SITE/whats-new/whats-new-hero.png"  2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/What's New Work.png"       "$SITE/whats-new/whats-new-02.png"    2>/dev/null
cp "$PORTFOLIO/Working Files/Whats New at Indeed 2024/IMG_45B4EE8C5BF1-1.jpeg"  "$SITE/whats-new/whats-new-03.jpg"    2>/dev/null
echo "✅ What's New images"

# --- Costco ---
mkdir -p "$SITE/costco"
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Costco Invite.png"         "$SITE/costco/costco-invite.png"         2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Costco Mag Template.png"   "$SITE/costco/magazine-mockup.png"       2>/dev/null
cp "$PORTFOLIO/Working Files/z-Adobe Portfolio Assets/Costco Price Tags.png"     "$SITE/costco/costco-price-tags.png"     2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/Employee of the Month-19x13.png"   "$SITE/costco/employee-of-month.png"     2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/HBD BEN-01-13x19.png"              "$SITE/costco/hbd-ben-01.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/HBD BEN-02-13x19.png"              "$SITE/costco/hbd-ben-02.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/HBD BEN-03-13x19.png"              "$SITE/costco/hbd-ben-03.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/TASTETEST-11x16.png"               "$SITE/costco/taste-test.png"            2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/SELF-CHECKOUT 13x19.png"           "$SITE/costco/self-checkout.png"         2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/Greeting Card PSD MockUp.jpg"      "$SITE/costco/greeting-card.jpg"         2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/IMG_3110.jpeg"                     "$SITE/costco/event-photos-01.jpg"       2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/IMG_3111.jpeg"                     "$SITE/costco/event-photos-02.jpg"       2>/dev/null
cp "$PORTFOLIO/Working Files/Costco Ben Party/IMG_3112.jpeg"                     "$SITE/costco/event-photos-03.jpg"       2>/dev/null
echo "✅ Costco images"

echo ""
echo "🎉 Done! Open ginamarie-portfolio/index.html in your browser to preview."
echo ""
echo "💡 Tip: To view your site locally with live reload, run:"
echo "   cd ~/Desktop/ginamarie-portfolio && python3 -m http.server 8080"
echo "   Then open: http://localhost:8080"
