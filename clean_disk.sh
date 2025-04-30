#!/bin/bash

# 🛑 Require root permissions
if [ "$(id -u)" -ne 0 ]; then
  echo "⚠️  Please run the script as root (use sudo)."
  exit 1
fi

# 📊 Show disk usage before cleanup
show_disk_usage_before() {
  echo "📊 Disk Usage BEFORE Cleanup:"
  echo "------------------------------------"
  df -h /
  echo "------------------------------------"
  echo ""
}

# 📊 Show disk usage after cleanup
show_disk_usage_after() {
  echo ""
  echo "📈 Disk Usage AFTER Cleanup:"
  echo "------------------------------------"
  df -h /
  echo "------------------------------------"
  echo ""
}

# 🧹 Clean APT cache
clean_apt_cache() {
  echo "🧹 Cleaning APT Cache..."
  apt_cache_size=$(du -sh /var/cache/apt/archives 2>/dev/null | awk '{print $1}')
  sudo apt-get clean -qq
  echo "✅ APT cache of size $apt_cache_size cleaned!"
}

# 🧽 Remove unused packages
remove_unused_packages() {
  echo "🧽 Removing Unused Packages..."
  sudo apt-get autoremove -y -qq
  echo "✅ Unused packages removed!"
}

# 🗃️ Clear old logs
clear_old_logs() {
  echo "🗃️ Clearing Old Logs (older than 7 days)..."
  old_logs_size=$(journalctl --disk-usage 2>/dev/null | awk '{print $3 $4}')
  sudo journalctl --vacuum-time=7d &>/dev/null
  echo "🗑️  Logs of size approx. $old_logs_size cleared!"
}

# 🧊 Clear temp files
remove_temp_files() {
  echo "🧊 Removing Temporary Files..."
  temp_files_size=$(du -sh /tmp 2>/dev/null | awk '{print $1}')
  sudo rm -rf /tmp/* 2>/dev/null
  echo "🧼 Temp files of size $temp_files_size deleted!"
}

# 🔧 Remove old kernels
remove_old_kernels() {
  echo "🔧 Removing Old Kernels..."
  current_kernel=$(uname -r)
  old_kernels=$(dpkg --list | grep 'linux-image' | awk '{print $2}' | grep -v "$current_kernel")

  for kernel in $old_kernels; do
    sudo apt-get purge -y -qq "$kernel" && echo "🧯 Removed: $kernel"
  done
}

# ❓ Confirm before proceeding
confirm_deletion() {
  read -rp "❓ Are you sure you want to delete waste files? (y/n): " confirm
  if [[ "$confirm" != "y" ]]; then
    echo "🚫 Cleanup cancelled by user."
    exit 0
  fi
}

# 🚀 Begin process
echo "🚀 Starting Safe Disk Cleanup..."
show_disk_usage_before
confirm_deletion

clean_apt_cache
remove_unused_packages
clear_old_logs
remove_temp_files
remove_old_kernels

show_disk_usage_after

echo "🎉 Cleanup completed successfully!"
