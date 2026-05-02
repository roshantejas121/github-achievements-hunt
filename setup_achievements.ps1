# setup_achievements.ps1

# 1. Initialize Repo
git init
git checkout -b main
"Initial content" > README.md
git add README.md
git commit -m "Initial commit"

# 2. Prepare for "Pull Shark" & "YOLO"
# We need 2-3 branches to merge
for ($i = 1; $i -le 3; $i++) {
    git checkout -b "feature-$i"
    "Feature $i content" > "feature-$i.txt"
    git add .
    git commit -m "Add feature $i"
    git checkout main
}

# 3. Prepare for "Pair Extraordinaire"
# Create a branch with a co-authored commit
git checkout -b "pair-work"
"Collaborative content" > "collab.txt"
git add .
# Note: Replace with a real GitHub username/email if you have a partner
$coAuthor = "Co-authored-by: Antigravity-AI <antigravity@example.com>"
git commit -m "Collaborative feature`n`n$coAuthor"
git checkout main

Write-Host "`n--- Setup Complete! ---" -ForegroundColor Green
Write-Host "Next Steps:"
Write-Host "1. Create a NEW empty repository on GitHub."
Write-Host "2. Run these commands to push everything:"
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
Write-Host "   git push -u origin --all"
Write-Host "3. On GitHub, create Pull Requests for feature-1, feature-2, and pair-work."
Write-Host "4. Merge them IMMEDIATELY without asking for reviews to get YOLO and Pull Shark."
Write-Host "5. For 'Quickdraw', create an issue and close it within 1 minute manually."
