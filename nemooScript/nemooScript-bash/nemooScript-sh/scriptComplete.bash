#!/bin/bash
# messages.sh
# language_selection.sh
read -p "
Select language / Selecciona idioma (en/es): 
" lang

# Asegúrate de que la variable $lang está definida y exportada

# Definir mensajes según el idioma seleccionado
if [[ "$lang" == "es" ]]; then
  # Mensajes en Español
   # Mensajes en Español
  msg_welcome="¡Bienvenido al instalador!"
  msg_select_language="Selecciona idioma (es/en): "
  msg_options="Opciones:"
  msg_option1="1) Ver lista de paquetes"
  msg_option2="2) Ver descripción corta de los paquetes"
  msg_choose_option="Elige una opción (1/2): "
  msg_packages_list="Los siguientes paquetes se instalarán:"
  msg_proceed_install="¿Quieres proceder con la instalación? (s/n): "
  msg_installation_cancelled="Instalación cancelada."
  msg_installation_complete="¡Instalación completada con éxito!"
  msg_add_packages="¿Deseas agregar más paquetes a la instalación? (s/n): "
  msg_enter_package="Ingresa el nombre del paquete que quieres agregar: "
  msg_package_exists="El paquete '%s' existe y será instalado."
  msg_package_not_found="El paquete '%s' no existe en los repositorios."
  msg_add_another="¿Deseas agregar otro paquete? (s/n): "
  msg_no_additional_packages="No se agregarán más paquetes."
  msg_have_dotfiles_repo="¿Tienes un repositorio Git para tus dotfiles? (s/n): "
  msg_enter_repo_url="Ingresa la URL de tu repositorio de dotfiles: "
  msg_clone_location="¿Dónde deseas clonar tus dotfiles? (por defecto es ~/dotfiles): "
  msg_directory_exists="El directorio %s ya existe."
  msg_delete_and_reclone="¿Deseas eliminarlo y volver a clonarlo? (s/n): "
  msg_skipping_clone="Saltando clonación. Usando el directorio existente."
  msg_cloning_dotfiles="Clonando dotfiles en %s."
  msg_creating_symlinks="Creando enlaces simbólicos para los dotfiles..."
  msg_backup_existing="Respaldo del archivo/directorio existente en %s"
  msg_symlink_created="Enlace simbólico creado: %s -> %s"
  msg_dotfiles_complete="¡Instalación de dotfiles y configuración de enlaces simbólicos completa! 🎉"
  # Descripciones de paquetes en Español
  declare -A package_descriptions=(
    ["firefox"]="Navegador web popular y seguro."
    ["kitty"]="Emulador de terminal rápido y personalizable."
    ["neovim"]="Editor de texto avanzado basado en Vim."
    ["fastfetch"]="Herramienta rápida para mostrar información del sistema."
    ["yay"]="AUR helper para instalar paquetes de Arch User Repository."
    ["fzf"]="Herramienta de búsqueda rápida para la terminal."
    ["feh"]="Visor de imágenes ligero para la terminal."
    ["rofi"]="Lanzador de aplicaciones y cambiador de ventanas."
    ["vlc"]="Reproductor multimedia versátil."
    ["discord"]="Plataforma de comunicación para comunidades."
    ["polybar"]="Barra de estado personalizable para gestores de ventanas."
    ["picom"]="Compositor de ventanas para efectos como sombras y transparencias."
    ["arandr"]="Herramienta gráfica para configurar monitores."
    ["wine"]="Ejecuta aplicaciones de Windows en Linux."
    ["keepassxc"]="Gestor de contraseñas seguro."
    ["exa"]="Reemplazo moderno de 'ls' con colores y más funciones."
    ["steam"]="Plataforma de distribución de videojuegos."
    ["dolphin"]="Administrador de archivos para KDE."
    ["timeshift"]="Herramienta de respaldo y restauración del sistema."
    ["obs-studio"]="Software de grabación y transmisión de video."
    ["tor"]="Navegador para navegación anónima."
    ["bat"]="Reemplazo mejorado de 'cat' con resaltado de sintaxis."
    ["qbittorrent"]="Cliente de BitTorrent con interfaz gráfica."
    ["hyperfine"]="Benchmarking de tiempo de ejecución de comandos."
    ["taskwarrior"]="Gestor de tareas basado en la línea de comandos."
    ["nitrogen"]="Herramienta para configurar fondos de pantalla."
    ["obsidian"]="Aplicación de toma de notas basada en markdown. (AUR)"
    ["factorio"]="Videojuego de construcción y gestión de recursos. (AUR)"
    ["youtube-dl"]="Descargador de videos de YouTube y otros sitios. (AUR)"
    ["barrier"]="Comparte teclado y ratón entre múltiples PCs. (AUR)"
    ["zsh"]="Shell avanzada y personalizable."
    ["oh-my-zsh"]="Framework para gestionar configuraciones de zsh. (AUR)"
    ["lvim"]="Versión personalizada y extendida de Neovim. (AUR)"
  )

else
  # Messages in English
    # Messages in English
  msg_welcome="Welcome to the installer!"
  msg_select_language="Select language (en/es): "
  msg_options="Options:"
  msg_option1="1) View package list"
  msg_option2="2) View short description of packages"
  msg_choose_option="Choose an option (1/2): "
  msg_packages_list="The following packages will be installed:"
  msg_proceed_install="Do you want to proceed with the installation? (y/n): "
  msg_installation_cancelled="Installation cancelled."
  msg_installation_complete="Installation completed successfully!"
  msg_add_packages="Do you want to add more packages to the installation? (y/n): "
  msg_enter_package="Enter the package name you want to add: "
  msg_package_exists="The package '%s' exists and will be installed."
  msg_package_not_found="The package '%s' does not exist in the repositories."
  msg_add_another="Do you want to add another package? (y/n): "
  msg_no_additional_packages="No additional packages will be added."
  msg_have_dotfiles_repo="Do you have a Git repository for your dotfiles? (y/n): "
  msg_enter_repo_url="Enter your dotfiles repository URL: "
  msg_clone_location="Where do you want to clone your dotfiles? (default is ~/dotfiles): "
  msg_directory_exists="Directory %s already exists."
  msg_delete_and_reclone="Do you want to delete and re-clone it? (y/n): "
  msg_skipping_clone="Skipping clone. Using the existing directory."
  msg_cloning_dotfiles="Cloning dotfiles into %s."
  msg_creating_symlinks="Creating symlinks for dotfiles..."
  msg_backup_existing="Backup of existing file/directory at %s"
  msg_symlink_created="Created symlink: %s -> %s"
  msg_dotfiles_complete="Dotfiles installation and symlinks setup complete! 🎉"

  # Package descriptions in English
  declare -A package_descriptions=(
    ["firefox"]="Popular and secure web browser."
    ["kitty"]="Fast and customizable terminal emulator."
    ["neovim"]="Advanced text editor based on Vim."
    ["fastfetch"]="Fast tool to display system information."
    ["yay"]="AUR helper to install packages from Arch User Repository."
    ["fzf"]="Fast search tool for the terminal."
    ["feh"]="Lightweight image viewer for the terminal."
    ["rofi"]="Application launcher and window switcher."
    ["vlc"]="Versatile multimedia player."
    ["discord"]="Communication platform for communities."
    ["polybar"]="Customizable status bar for window managers."
    ["picom"]="Window compositor for effects like shadows and transparency."
    ["arandr"]="Graphical tool to configure monitors."
    ["wine"]="Runs Windows applications on Linux."
    ["keepassxc"]="Secure password manager."
    ["exa"]="Modern replacement for 'ls' with colors and more features."
    ["steam"]="Video game distribution platform."
    ["dolphin"]="File manager for KDE."
    ["timeshift"]="System backup and restore tool."
    ["obs-studio"]="Video recording and streaming software."
    ["tor"]="Browser for anonymous browsing."
    ["bat"]="Enhanced replacement for 'cat' with syntax highlighting."
    ["qbittorrent"]="BitTorrent client with graphical interface."
    ["hyperfine"]="Command execution time benchmarking."
    ["taskwarrior"]="Command-line based task manager."
    ["nitrogen"]="Tool to set wallpapers."
    ["obsidian"]="Markdown-based note-taking application. (AUR)"
    ["factorio"]="Construction and resource management game. (AUR)"
    ["youtube-dl"]="Video downloader for YouTube and other sites. (AUR)"
    ["barrier"]="Share keyboard and mouse between multiple PCs. (AUR)"
    ["zsh"]="Advanced and customizable shell."
    ["oh-my-zsh"]="Framework to manage zsh configurations. (AUR)"
    ["lvim"]="Custom and extended version of Neovim. (AUR)"
  )
fi


# colors.sh
RED='\033[0;31m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
INDIGO='\033[0;35m'
VIOLET='\033[0;35m'
NC='\033[0m' # No Color


# banner.sh
# Mostrar "NEMOO" en colores de arcoíris
echo -e "
${RED} _   _  ${ORANGE}______ ${YELLOW}__  __ ${GREEN} ____   ${BLUE}____  
${RED}| \ | |${ORANGE}|  ____|${YELLOW}  \/  |${GREEN}/ __ \ ${BLUE}/ __ \ 
${RED}|  \| |${ORANGE}| |__  ${YELLOW}| \  / |${GREEN}| | | |${BLUE}| | | |
${RED}| . \ |${ORANGE}|  __| ${YELLOW}| |\/| |${GREEN}| | | |${BLUE}| | | |
${RED}| |\  |${ORANGE}| |____${YELLOW}| |  | |${GREEN}| |_| |${BLUE}| |_| |
${RED}|_| \_|${ORANGE}|______${YELLOW}|_|  |_|${GREEN}\____/ ${BLUE}\____/ 
${NC}
"

# links.sh
# Mostrar enlaces a GitHub y YouTube
echo -e "\nPara más scripts y tutoriales, visita:"
echo -e "
\e[94mGitHub: https://github.com/Capi-nemoo\e[0m
"
echo -e "
\e[91mYouTube: https://www.youtube.com/@capi_nemoo\e[0m\n
"

packages=(
  "firefox"
  "kitty"
  "neovim"
  "fastfetch"
  "yay"
  "fzf"
  "feh"
  "rofi"
  "vlc"
  "discord"
  "polybar"
  "picom"
  "arandr"
  "wine"
  "keepassxc"
  "exa"
  "steam"
  "dolphin"
  "timeshift"
  "obs-studio"
  "tor"
  "bat"
  "qbittorrent"
  "hyperfine"
  "taskwarrior"
  "nitrogen"
  "obsidian"
  "factorio"
  "youtube-dl"
  "barrier"
  "zsh"
  "oh-my-zsh"
  "lvim"
)

# Preguntar si desea ver la lista de paquetes o una descripción antes de instalar
echo -e "$msg_options"
echo -e "$msg_option1"
echo -e "$msg_option2"
read -p "$msg_choose_option" option

# Mostrar lista de paquetes o descripciones según la opción seleccionada
if [[ $option == "1" ]]; then
  echo "$msg_packages_list"
  for pkg in "${packages[@]}"; do
    echo "- $pkg"
  done
elif [[ $option == "2" ]]; then
  echo "$msg_packages_description"
  for pkg in "${packages[@]}"; do
    description="${package_descriptions[$pkg]}"
    echo -e "- \e[1m$pkg\e[0m: $description"
  done
else
  echo "$msg_invalid_option"
  exit 1
fi
#

# confirm_installation.sh
source language_selection.sh

# Confirmación antes de proceder
if [[ $lang == "es" ]]; then
  read -p "¿Quieres proceder con la instalación? (s/n): " confirm
else
  read -p "Do you want to proceed with the installation? (y/n): " confirm
fi

if [[ $confirm == "s" || $confirm == "S" || $confirm == "y" || $confirm == "Y" ]]; then
  echo "Proceeding with installation..."
else
  if [[ $lang == "es" ]]; then
    echo "Instalación cancelada."
  else
    echo "Installation cancelled."
  fi
  exit 0
fi

# Función para verificar si el paquete existe en los repositorios
function check_package_exists() {
  local package_name=$1
  if pacman -Si "$package_name" > /dev/null 2>&1; then
    return 0  # El paquete existe
  else
    return 1  # no existe
  fi
}

# Preguntar si el usuario desea agregar más paquetes
read -p "Do you want to add more packages to the installation? (y/n): " add_more

if [[ "$add_more" == "y" || "$add_more" == "Y" ]]; then
  while true; do
    # Pedir el nombre del paquete
    read -p "Enter the package name you want to add: " package_name
    
    # Verificar si el paquete existe
    if check_package_exists "$package_name"; then
      echo "The package '$package_name' exists and will be installed."
      sudo pacman -S --noconfirm "$package_name"
    else
      echo "The package '$package_name' does not exist in the repositories."
    fi

    # Preguntar 
    read -p "Do you want to add another package? (y/n): " add_another
    if [[ "$add_another" != "y" && "$add_another" != "Y" ]]; then
      break
    fi
  done
else
  echo "No additional packages will be added."
fi

# install_packages.sh
# Actualizar el sistema
sudo pacman -Syu --noconfirm

# Instalar paquetes desde los repos oficiales
sudo pacman -S --noconfirm \
  firefox \
  kitty \
  neovim \
  fastfetch \
  fzf \
  feh \
  rofi \
  vlc \
  discord \
  polybar \
  picom \
  arandr \
  wine \
  keepassxc \
  exa \
  steam \
  dolphin \
  timeshift \
  obs-studio \
  tor \
  bat \
  qbittorrent \
  hyperfine \
  nitrogen \
  zsh

# Instalar paquetes desde AUR usando yay
yay -S --noconfirm \
  obsidian \
  factorio \
  youtube-dl \
  barrier \
  oh-my-zsh \
  lvim \
  taskwarrior

# set_default_shell.sh
# Configurar zsh como shell predeterminada
chsh -s $(which zsh)

if [[ $lang == "es" ]]; then
  echo "¡Instalación completada con éxito!"
else
  echo "Installation completed successfully!"
fi





