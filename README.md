# 🧹 Ubuntu Disk Cleaner

A simple, safe, and emoji-powered shell script to clean up disk space on Ubuntu systems — perfect for DevOps labs, local VMs, and developer machines.

> 📌 This script is open-source and available here on GitHub:  
> 👉 **https://github.com/Vansh-Umraliya/ubuntu-disk-cleaner.git**

---

## 🚀 What It Does

This script helps you **automatically free up disk space** on any Ubuntu machine by cleaning up:

- 🧹 APT cache
- 🧽 Unused packages
- 🗃️ System logs older than 7 days
- 🧊 Temporary files
- 🔧 Old kernels (excluding the one in use)

All with a clean, emoji-based terminal output — easy to read, fun to use 😄

---

## ✨ Features

✅ Safe for production/testing  
✅ Emoji-rich, clean CLI output  
✅ No critical data touched  
✅ One-line confirmation before execution  
✅ Shows disk usage before & after cleanup  
✅ Works on all Ubuntu versions (18.04+)

```markdown
## 🛠️ How to Use

1. 📥 Clone this repo and navigate into it:
   ```bash
   git clone https://github.com/Vansh-Umraliya/ubuntu-disk-cleaner.git
   cd ubuntu-disk-cleaner
   ```

2. ⚙️ Make the script executable and run it with root permissions:
   ```bash
   chmod +x clean_disk.sh
   sudo ./clean_disk.sh
   ```

