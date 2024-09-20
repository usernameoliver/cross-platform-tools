# cross-platform-tools
## Vim Configuration Setup

This guide provides instructions to set up a custom `.vimrc` configuration file to enhance your Vim experience.

### 1. Create or Edit Your `.vimrc` File

To customize Vim, you need to edit your `.vimrc` file. Follow these steps:

1. **Open Terminal**.
   
2. **Open the `.vimrc` file**:
   - If the `.vimrc` file doesn't exist yet, create it by running:
     ```bash
     vim ~/.vimrc
     ```
   - If the file already exists, this command will open it for editing.

3. **Edit the `.vimrc` file**:
   - Once inside Vim, press `i` to enter **Insert mode**.
   - Add the following configuration settings:
     ```vim
     set number               " Show line numbers
     set tabstop=4            " Set tab width to 4 spaces
     set shiftwidth=4         " Set indentation width to 4 spaces
     set expandtab            " Use spaces instead of tabs
     set hlsearch             " Highlight search results
     au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " Restore cursor position when reopening a file
     syntax on                " Enable syntax highlighting
     ```

4. **Save and Exit**:
   - To save your changes and exit, press `Esc` to leave Insert mode and type:
     ```vim
     :wq
     ```
   - If you want to exit without saving, use:
     ```vim
     :q!
     ```

### 2. Vim Configuration Overview

Here’s a brief explanation of each setting in the `.vimrc`:

- `set number`: Enables line numbers on the left side of the editor.
- `set tabstop=4`: Sets the width of a tab character to 4 spaces.
- `set shiftwidth=4`: Sets the number of spaces used for indentation.
- `set expandtab`: Converts tabs to spaces when typing.
- `set hlsearch`: Highlights search results.
- `au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif`: Automatically restores the cursor position when reopening files.
- `syntax on`: Enables syntax highlighting for easier code reading.

### 3. Additional Tips

- You can customize Vim further by adding more settings to your `.vimrc` file.
- Refer to Vim's built-in help for more configuration options by typing `:help`.
