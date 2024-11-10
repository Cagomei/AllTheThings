#!/bin/zsh
set -e

link_wowfolder() {
  if [[ -d "$1" ]]; then
    link_expansion "$1/_classic_"
    link_expansion "$1/_classic_era_"
    link_expansion "$1/_classic_beta_"
    link_expansion "$1/_classic_ptr_"
    link_expansion "$1/_classic_era_ptr_"
    link_expansion "$1/_retail_"
    link_beta "$1/_beta_"
    link_ptr "$1/_ptr_"
    link_ptr "$1/_xptr_"
  fi
}

link_expansion() {
  if [[ -d "$1" ]]; then
    echo "Linking Expansion $1"
    if [[ -d "$1/Interface/AddOns/AllTheThings" ]]; then
      echo "Removing ATT in $1"
      rm -rf "$1/Interface/AddOns/AllTheThings"
    fi
    if [[ ! -d "$1/Interface/AddOns/AllTheThings" ]]; then
      echo "Adding ATT in $1"
      mkdir -p "$1/Interface/AddOns"
      rsync -a  --link-dest="$PWD/" --exclude='.*' "$PWD/" "$1/Interface/AddOns/AllTheThings"
    fi
  fi
}

link_beta() {
  if [[ -d "$1" ]]; then
    echo "Linking BETA $1"
    link_beta_files "$1/Interface/AddOns/AllTheThings"
  fi
}

link_beta_files() {
  echo "Linking BETA Files $1"
  if [[ -d "$1" ]]; then
    rm -rf "$1"
  fi
  if [[ ! -d "$1" ]]; then
    mkdir -p "$1/db/Retail"
    rsync -a --link-dest="$PWD/db/Presets.lua" "$PWD/db/Presets.lua" "$1/db/Presets.lua"
    rsync -a --link-dest="$PWD/db/Retail/.beta/Categories.lua" "$PWD/db/Retail/.beta/Categories.lua" "$1/db/Retail/Categories.lua"
    rsync -a --link-dest="$PWD/db/Retail/ExplorationDB.lua" "$PWD/db/Retail/ExplorationDB.lua" "$1/db/Retail/ExplorationDB.lua"
    rsync -a --link-dest="$PWD/db/Retail/.beta/LocalizationDB.lua" "$PWD/db/Retail/.beta/LocalizationDB.lua" "$1/db/Retail/LocalizationDB.lua"
    rsync -a --link-dest="$PWD/db/Retail/.beta/ReferenceDB.lua" "$PWD/db/Retail/.beta/ReferenceDB.lua" "$1/db/Retail/ReferenceDB.lua"

    rsync -a --link-dest="$PWD/assets/" "$PWD/assets/" "$1/assets"
    rsync -a --link-dest="$PWD/lib/" "$PWD/lib/" "$1/lib"
    rsync -a --link-dest="$PWD/locales/" "$PWD/locales/" "$1/locales"
    rsync -a --link-dest="$PWD/src/" "$PWD/src/" "$1/src"

    rsync -a --link-dest="$PWD/AllTheThings.lua" "$PWD/AllTheThings.lua" "$1/AllTheThings.lua"
    rsync -a --link-dest="$PWD/AllTheThings.toc" "$PWD/AllTheThings.toc" "$1/AllTheThings.toc"
    rsync -a --link-dest="$PWD/Bindings.xml" "$PWD/Bindings.xml" "$1/Bindings.xml"
  fi
}

link_ptr() {
  if [[ -d "$1" ]]; then
    echo "Linking PTR $1"
    link_ptr_files "$1/Interface/AddOns/AllTheThings"
  fi
}

link_ptr_files() {
  echo "Linking PTR Files $1"
  if [[ -d "$1" ]]; then
    rm -rf "$1"
  fi
  if [[ ! -d "$1" ]]; then
    mkdir -p "$1/db/Retail"
    rsync -a --link-dest="$PWD/db/Presets.lua" "$PWD/db/Presets.lua" "$1/db/Presets.lua"
    rsync -a --link-dest="$PWD/db/Retail/.ptr/Categories.lua" "$PWD/db/Retail/.ptr/Categories.lua" "$1/db/Retail/Categories.lua"
    rsync -a --link-dest="$PWD/db/Retail/ExplorationDB.lua" "$PWD/db/Retail/ExplorationDB.lua" "$1/db/Retail/ExplorationDB.lua"
    rsync -a --link-dest="$PWD/db/Retail/.ptr/LocalizationDB.lua" "$PWD/db/Retail/.ptr/LocalizationDB.lua" "$1/db/Retail/LocalizationDB.lua"
    rsync -a --link-dest="$PWD/db/Retail/.ptr/ReferenceDB.lua" "$PWD/db/Retail/.ptr/ReferenceDB.lua" "$1/db/Retail/ReferenceDB.lua"

    rsync -a --link-dest="$PWD/assets/" "$PWD/assets/" "$1/assets"
    rsync -a --link-dest="$PWD/lib/" "$PWD/lib/" "$1/lib"
    rsync -a --link-dest="$PWD/locales/" "$PWD/locales/" "$1/locales"
    rsync -a --link-dest="$PWD/src/" "$PWD/src/" "$1/src"

    rsync -a --link-dest="$PWD/AllTheThings.lua" "$PWD/AllTheThings.lua" "$1/AllTheThings.lua"
    rsync -a --link-dest="$PWD/AllTheThings.toc" "$PWD/AllTheThings.toc" "$1/AllTheThings.toc"
    rsync -a --link-dest="$PWD/Bindings.xml" "$PWD/Bindings.xml" "$1/Bindings.xml"
  fi
}

report_taskcomplete() {
  echo "Task Complete!"
}

# run the script
link_wowfolder "/Applications/World of Warcraft"
report_taskcomplete