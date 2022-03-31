# ZSH-Manager: The Ultimate Cross-Platform ZSH Configuration Framework

## 🚀 Introduction

**ZSH-Manager** is a powerful, lightweight, and flexible framework that enables you to maintain a single, unified ZSH configuration across **Linux, macOS, and Windows**. Designed for developers, system administrators, and power users, ZSH-Manager ensures a **consistent shell experience** across all operating systems.

## 🔥 Why Choose ZSH-Manager?

- ✅ **Seamless Cross-Platform Support**: Works flawlessly on **Linux, macOS, and Windows**.
- ✅ **Support Environment variables**: Easy and extensive way to use Environment variables.
- ✅ **Path Handling**: Easy and extensive way to handle Path variables.
- ✅ **Portable & Unified ZSH Configuration**: Manage all your shell settings from one place.
- ✅ **Customizable & Modular**: Use preloaded configurations and extend functionality with custom modules.
- ✅ **Compatible with All ZSH Frameworks**: Supports **Oh-My-Zsh, Prezto, Antigen, and Zim**.
- ✅ **Lightweight & Fast**: Minimal dependencies, designed for performance.
- ✅ **Effortless Synchronization**: Easily sync your settings via **Git, Dropbox, or cloud services**.
- ✅ **Automated Setup**: Quickly set up using the provided **symlink script**.

## 🏗️ Directory Structure

```
zsh-manager/
├── README.md                           # Documentation
├── run-to-symlink.sh                     # Setup script to symlink .zshrc
├── .zshrc                              # Main ZSH configuration file
├── preload_configs/                    # OS-specific preloaded configurations
│   ├── common/                         # Shared configurations
│   ├── linux/                          # Linux-specific configs
│   │   └── path.sh                     # Linux-specific path configurations
│   ├── macos/                          # macOS-specific modules
│   │   └── path.sh                     # macOS-specific path configurations
│   ├── windows/                        # Windows-specific configs
│   │   └── path.sh                     # Windows-specific path configurations
├── modules/                            # Custom modules (aliases, functions, etc.)
│   ├── common/                         # Cross-platform modules
│   ├── linux/                          # Linux-specific modules
│   ├── macos/                          # macOS-specific modules
│   ├── windows/                        # Windows-specific modules
```

## 📦 Installation & Setup

### 1️⃣ Clone the Repository

```bash
git clone git@github.com:MRZ07/zsh-manager.git
```

### 2️⃣ Move Your Existing ZSH Configuration
Move your existing `.zshrc` file to the framework’s root folder

### 3️⃣ Run the Setup Script
```bash
./run-to-symlink.sh
```
This script will create a **symlink** to the recently moved configuration in the framework’s root folder.

### 4️⃣ Customize Your Configuration

- Add **OS-specific** preloaded configs in `preload_configs/`
- Add **OS-specific** Environment/Path configs in `preload_configs/*os*/path.sh"`
- Extend functionality with  **custom modules** in `modules/`

## ⚙️ How ZSH-Manager Works

### **1️⃣ Dynamic Configuration Loading**
ZSH-Manager **automatically detects your operating system** and loads the appropriate configurations.

- **Common settings** (`preload_configs/common/`) are loaded first.
- **OS-specific settings** (`preload_configs/linux/`, `macos/`, `windows/`) are applied afterward.

### **2️⃣ Modular Architecture**
- Store **custom functions, aliases, and scripts** in `modules/`.
- Modules are categorized into **common** and **OS-specific** folders.
- Ignore specific modules or configurations by **prefixing folder names with `#`** (e.g., `#ignored_module/`).

### **3️⃣ Symlink-Based Setup**
- The **setup script** (`run-to-symlink.sh`) automatically links `.zshrc` to the framework.
- This allows **easy switching** between configurations without modifying system files.

## 🎯 Key Features

### 🔗 **Cross-Platform Compatibility**
- Works seamlessly on **Linux, macOS, and Windows (WSL, Git Bash, Cygwin, MSYS2)**.

### 🔄 **Auto-Loading of Preloaded Configurations**
- Automatically loads common and OS-specific **aliases, functions, and environment variables**.

### 🎨 **Custom Modules & Plugins Support**
- Organize your scripts with a modular structure.
- Supports **any additional ZSH plugins or external tools**.

### 🏎️ **Optimized for Speed & Performance**
- **Lightweight** with minimal overhead.
- **Fast execution** with optimized loading logic.

### ☁️ **Sync Anywhere**
- Easily sync configurations across devices using **Git, Dropbox, or cloud services**.

### 🛠️ **Works with Any ZSH Framework**
- Compatible with **Oh-My-Zsh, Prezto, Antigen, Zim, and more**.

### 🧩 **Fully Customizable**
- Add, remove, or modify configurations as needed.
- Ignore specific scripts or modules by naming them with `#`.

## 🛠️ Usage

### **Adding Custom Modules**
Place your custom ZSH scripts inside the corresponding **modules/** folder:

```bash
modules/
├── common/
│   ├── aliases.sh   # Shared aliases
│   ├── functions.sh # Shared functions
│   ├── style/
│   │   └── starship.toml  # Custom Starship prompt config
├── linux/
│   ├── linux_aliases.sh  # Linux-specific aliases
├── macos/
│   ├── macos_shortcuts.sh # macOS-specific functions
├── windows/
│   ├── win_helpers.sh     # Windows-specific helpers
```

### **Ignoring Folders & Scripts**
To prevent specific scripts from being loaded, **prefix the filename or folder with `#`**:

```bash
modules/
├── common/
│   ├── aliases.sh
│   ├── #deprecated_aliases.sh  # This file will be ignored
│   ├── #old_scripts/           # This folder will be ignored
```

### **Using Environment variables**
Place your env variables inside your home directory **~/.env.sh** folder:
```bash
export ENV_VAR1="Value1"
```

## 🤝 Contributing
We welcome contributions! Feel free to submit issues, feature requests, or pull requests.

## 📜 License
ZSH-Manager is open-source and available under the **MIT License**.

---

🔥 **Start using ZSH-Manager today and streamline your ZSH configuration across all platforms!** 🚀
