# Selective Windows Package Manager Update Script
# This script updates all installed packages except JetBrains and Spotify applications

# Get the list of available updates and process each line
winget upgrade | ForEach-Object {
    # Skip packages matching JetBrains or Spotify patterns
    if ($_ -notmatch "JetBrains\.|Spotify") {
        # Extract package ID from the second column (splitting by multiple spaces)
        $pkg = ($_ -split '\s{2,}')[1]

        # Verify package ID is valid (not empty and not a separator line)
        if ($pkg -and $pkg -notmatch "^-+$") {
            # Upgrade the package silently with automatic agreement acceptance
            # -h: silent mode (no user interaction)
            # --accept-package-agreements: automatically accept package license agreements
            # --accept-source-agreements: automatically accept source agreements
            winget upgrade --id $pkg --accept-package-agreements --accept-source-agreements -h
        }
    }
}
