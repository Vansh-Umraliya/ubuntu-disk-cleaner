

---

```markdown
# 🧹 Ubuntu Disk Cleaner

A simple, safe, and emoji-powered shell script to clean up disk space on Ubuntu systems — perfect for DevOps labs, local VMs, and developer machines.

> 📌 This script is open-source and available on GitHub:  
> 👉 **https://github.com/Vansh-Umraliya/ubuntu-disk-cleaner**

---

## 🚀 What It Does

This script helps you automatically free up disk space on any Ubuntu machine by cleaning up:

- 🧹 APT cache  
- 🧽 Unused packages  
- 🗃️ System logs older than 7 days  
- 🧊 Temporary files  
- 🔧 Old kernels (excluding the one in use)  

All with a clean, emoji-based terminal output.

---

## ✨ Features

✅ Safe for production/testing  
✅ Emoji-rich, clean CLI output  
✅ No critical data touched  
✅ One-line confirmation before execution  
✅ Shows disk usage before & after cleanup  
✅ Works on all Ubuntu versions (18.04+)  

---

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

---

## 📷 Sample Output

```bash
🚀 Starting Safe Disk Cleanup...
📊 Disk Usage BEFORE Cleanup:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1         50G   47G   2.3G  96%

❓ Are you sure you want to delete waste files? (y/n): y
🧹 Cleaning APT Cache...
✅ APT cache of size 2.1G cleaned!
🧽 Removing Unused Packages...
✅ Unused packages removed!
🗃️ Clearing Old Logs...
🗑️  Logs of size approx. 420M cleared!
🧊 Removing Temporary Files...
🧼 Temp files of size 580M deleted!
🔧 Removing Old Kernels...
🧯 Removed: linux-image-5.4.0-90-generic

📈 Disk Usage AFTER Cleanup:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1         50G   35G   14G  70%

🎉 Cleanup completed successfully!
```

---

## 📎 License

This script is released under the MIT License.

---

## 💬 Contributing

Thank you for considering contributing to this project! We welcome all contributions that improve the script, documentation, or overall project quality.

### 🛠️ Ways to Contribute

- 🔍 Find and report bugs
- ✍️ Improve or optimize the script
- 🧹 Add new safe cleanup features
- 📝 Improve this documentation
- 🌐 Fix typos or grammar
- 📦 Test on different Ubuntu versions

### 📋 How to Contribute

1. **Fork this repository**
2. **Create a new branch** for your changes:
   ```bash
   git checkout -b your-feature-name
   ```
3. **Make your changes** and commit:
   ```bash
   git commit -m "Your clear and descriptive commit message"
   ```
4. **Push to your forked repo**:
   ```bash
   git push origin your-feature-name
   ```
5. **Open a Pull Request** describing what you changed and why

### ✅ Contribution Guidelines

- Keep the code **clean, readable, and safe** (no risky deletions)
- Use **descriptive commit messages**
- If you're suggesting something major, please **open an issue first** to discuss it

---

> 💬 Want to contribute? Found a bug? PRs are welcome!
```

---

