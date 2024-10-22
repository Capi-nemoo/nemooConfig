#!/bin/bash

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
show_ascii_art2() {
  echo -e "
${RED} _   _  ${ORANGE}______ ${YELLOW}__  __ ${GREEN} ____   ${BLUE}____  
${RED}| \ | |${ORANGE}|  ____|${YELLOW}  \/  |${GREEN}/ __ \ ${BLUE}/ __ \ 
${RED}|  \| |${ORANGE}| |__  ${YELLOW}| \  / |${GREEN}| | | |${BLUE}| | | |
${RED}| . \ |${ORANGE}|  __| ${YELLOW}| |\/| |${GREEN}| | | |${BLUE}| | | |
${RED}| |\  |${ORANGE}| |____${YELLOW}| |  | |${GREEN}| |_| |${BLUE}| |_| |
${RED}|_| \_|${ORANGE}|______${YELLOW}|_|  |_|${GREEN}\____/ ${BLUE}\____/ 
${NC}
"
}

show_ascii_art() {

  echo -e "\e[1;31m      ___           ___           ___                                ___           ___           ___           ___           ___     \e[0m"
  echo -e "\e[1;32m     /\  \         /\  \         /\  \          ___                 /\__\         /\  \         /\__\         /\  \         /\  \    \e[0m"
  echo -e "\e[1;33m    /::\  \       /::\  \       /::\  \        /\  \               /::|  |       /::\  \       /::|  |       /::\  \       /::\  \   \e[0m"
  echo -e "\e[1;34m   /:/\:\  \     /:/\:\  \     /:/\:\  \       \:\  \             /:|:|  |      /:/\:\  \     /:|:|  |      /:/\:\  \     /:/\:\  \  \e[0m"
  echo -e "\e[1;35m  /:/  \:\  \   /::\~\:\  \   /::\~\:\  \      /::\__\           /:/|:|  |__   /::\~\:\  \   /:/|:|__|__   /:/  \:\  \   /:/  \:\  \ \e[0m"
  echo -e "\e[1;36m /:/__/ \:\__\ /:/\:\ \:\__\ /:/\:\ \:\__\  __/:/\/__/          /:/ |:| /\__\ /:/\:\ \:\__\ /:/ |::::\__\ /:/__/ \:\__\ /:/__/ \:\__\\e[0m"
  echo -e "\e[1;31m \:\  \  \/__/ \/__\:\/:/  / \/__\:\/:/  / /\/:/  /             \/__|:|/:/  / \:\~\:\ \/__/ \/__/~~/:/  / \:\  \ /:/  / \:\  \ /:/  /\e[0m"
  echo -e "\e[1;32m  \:\  \            \::/  /       \::/  /  \::/__/                  |:/:/  /   \:\ \:\__\         /:/  /   \:\  /:/  /   \:\  /:/  / \e[0m"
  echo -e "\e[1;33m   \:\  \           /:/  /         \/__/    \:\__\                  |::/  /     \:\ \/__/        /:/  /     \:\/:/  /     \:\/:/  /  \e[0m"
  echo -e "\e[1;34m    \:\__\         /:/  /                    \/__/                  /:/  /       \:\__\         /:/  /       \::/  /       \::/  /   \e[0m"
  echo -e "\e[1;35m     \/__/         \/__/                                            \/__/         \/__/         \/__/         \/__/         \/__/    \e[0m"

}

show_ascii_art

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
  msg_choose_option="Elige una opción: "
  msg_packages_list="Los siguientes paquetes se instalarán:"
  msg_packages_description="Descripciones de paquetes:"
  msg_proceed_install="¿Quieres proceder con la instalación?: "
  msg_installation_cancelled="Instalación cancelada."
  msg_installation_complete="¡Instalación completada con éxito!"
  msg_add_packages="¿Deseas agregar más paquetes a la instalación?: "
  msg_enter_package="Ingresa el nombre del paquete que quieres agregar: "
  msg_package_exists="El paquete '%s' existe y será instalado."
  msg_package_not_found="El paquete '%s' no existe en los repositorios."
  msg_add_another="¿Deseas agregar otro paquete? [y/n] "
  msg_no_additional_packages="No se agregarán más paquetes."
  msg_have_dotfiles_repo="¿Tienes un repositorio Git para tus dotfiles? [1 = y]: "
  msg_enter_repo_url="Ingresa la URL de tu repositorio de dotfiles: "
  msg_clone_location="¿Dónde deseas clonar tus dotfiles? (por defecto es ~/dotfiles): "
  msg_directory_exists="El directorio %s ya existe."
  msg_delete_and_reclone="¿Deseas eliminarlo y volver a clonarlo? : "
  msg_skipping_clone="Saltando clonación. Usando el directorio existente."
  msg_cloning_dotfiles="Clonando dotfiles en %s."
  msg_creating_symlinks="Creando enlaces simbólicos para los dotfiles..."
  msg_backup_existing="Respaldo del archivo/directorio existente en %s"
  msg_symlink_created="Enlace simbólico creado: %s -> %s"
  msg_dotfiles_complete="¡Instalación de dotfiles y configuración de enlaces simbólicos completa! 🎉"
  msg_invalid_option="error4"
  msg_package_already_listed="El paquete '%s' ya está en la lista de instalación."
  msg_enter_description="Ingresa una descripción para el paquete:"
  msg_updating_system="Actualizando el sistema..."
  msg_installing_official_packages="Instalando paquetes desde los repositorios oficiales..."
  msg_installing_aur_packages="Instalando paquetes desde AUR..."
  msg_proceeding_installation="Procediendo con la instalación..."
  PROMPT_PACKAGES_AVAILABLE="Paquetes disponibles:"
  PROMPT_REMOVE_PACKAGE="¿Deseas eliminar algún paquete? [y/n] "
  PROMPT_ENTER_PACKAGE="Escribe el nombre de todos los paquetes que deseas eliminar, una vez que presiones enter los paquetes restantes se instalarán"
  PROMPT_PACKAGE_REMOVED="%s ha sido eliminado del listado."
  PROMPT_PACKAGE_NOT_FOUND="El paquete '%s' no está en la lista."
  PROMPT_PACKAGES_REMAINING="Deseas ver los paquetes restantes? [1 = y]:"
  confirm_remaining="¿Deseas ver los paquetes restantes? [1 = y]: "
  PROMPT_NO_PACKAGE_REMOVED="No se ha eliminado ningún paquete."
  Want_UPGRADE="¿Quieres actualizar el sistema? [y/n]: "
  itsinstalled="ya está instalado"
  installing="Instalando"

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
  msg_choose_option="Choose an option: [1/2]"
  msg_packages_list="The following packages will be installed:"
  msg_packages_description="Package descriptions:"
  msg_proceed_install="Do you want to proceed with the installation?: [y/n]"
  msg_installation_cancelled="Installation cancelled."
  msg_installation_complete="Installation completed successfully!"
  msg_add_packages="Do you want to add more packages to the installation?: [y/n] "
  msg_enter_package="Enter the package name you want to add: "
  msg_package_exists="The package '%s' exists and will be installed."
  msg_package_not_found="The package '%s' does not exist in the repositories."
  msg_add_another="Do you want to add another package? [y/n] "
  msg_no_additional_packages="No additional packages will be added."
  msg_have_dotfiles_repo="Do you have a Git repository for your dotfiles? [y/n]"
  msg_enter_repo_url="Enter your dotfiles repository URL: "
  msg_clone_location="Where do you want to clone your dotfiles? (default is ~/dotfiles): "
  msg_directory_exists="Directory %s already exists."
  msg_delete_and_reclone="Do you want to delete and re-clone it? [y/n] "
  msg_skipping_clone="Skipping clone. Using the existing directory."
  msg_cloning_dotfiles="Cloning dotfiles into %s."
  msg_creating_symlinks="Creating symlinks for dotfiles..."
  msg_backup_existing="Backup of existing file/directory at %s"
  msg_symlink_created="Created symlink: %s -> %s"
  msg_dotfiles_complete="Dotfiles installation and symlinks setup complete! 🎉"
  msg_invalid_option="error4"
  confirm_remaining="Do you want to see the remaining packages? [1 = y]: "
  msg_package_already_listed="The package '%s' is already in the installation list."
  msg_enter_description="Enter a description for the package:"
  msg_updating_system="Updating the system..."
  msg_installing_official_packages="Installing packages from official repositories..."
  msg_installing_aur_packages="Installing packages from AUR..."
  msg_proceeding_installation="Proceeding with installation..."
  PROMPT_PACKAGES_AVAILABLE="Available packages:"
  PROMPT_REMOVE_PACKAGE="Do you want to remove any package? [y/n] "
  PROMPT_ENTER_PACKAGE="Enter the name of ALL the packages you want to remove, once you press enter the remaining packages will install"
  PROMPT_PACKAGE_REMOVED="%s has been removed from the list."
  PROMPT_PACKAGE_NOT_FOUND="The package '%s' is not in the list."
  PROMPT_PACKAGES_REMAINING="Remaining packages:"
  PROMPT_NO_PACKAGE_REMOVED="No package has been removed."
  Want_UPGRADE="Do you want to upgrade the system? [y/n]"
  itsinstalled="is already installed"
  installing="Installing"

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
  "dolphin"
  "timeshift"
  "obs-studio"
  "tor"
  "bat"
  "qbittorrent"
  "hyperfine"
  "task"
  "nitrogen"
  "obsidian"
  "barrier"
  "zsh"
)

dotfiles_folders() {
  mkdir -p ~/.dotfiles
  cowsay -f hellokitty folder "dotfiles created"
  mkdir -p ~/.dotfiles/alacritty
  mkdir -p ~/.dotfiles/i3
  mkdir -p ~/.dotfiles/picom
  mkdir -p ~/.dotfiles/zsh
  mkdir -p ~/.dotfiles/starship
  mkdir -p ~/.dotfiles/polybar
  mkdir -p ~/.dotfiles/
  mkdir -p ~/.dotfiles/
}

# Actualizar el sistema
read -p "$Want_UPGRADE" confirmacion
if [[ "$confirmacion" =~ ^(y|yes|s|si|1)$ ]]; then
  echo "$msg_updating_system"
  sudo pacman -Syu --noconfirm
fi

# Función para instalar paquetes
install_packages() {
  #Se pasa el arrat de packages a in for i in range
  for package in "${packages[@]}"; do
    #por cada paquete en el array va a ....
    if pacman -Qi $package &>/dev/null; then
      #verificar si pacman -Qi (que es un comando de pacman para checar si esta instalado
      #arroja algun resultado, si lo hace entonces muestra el mensaje de abajo
      echo "$package $itsinstalled"
    else
      echo "$installing $package..."
      #si no es ta instalado lo instala, (muestra el mensaje de arriba y luego..
      # checa con Ss el paquete a ver si esta en el repositorio
      # si lo esta, lo instala sino sale
      if pacman -Ss $package &>/dev/null; then
        sudo pacman -S --noconfirm $package
      else
        # LUEGO DE verificar si esta o no (en este caso no estaria en pacman
        # asi que usa yay para instalarlo
        yay -S --noconfirm $package
      fi
    fi
  done
}

# Preguntar si desea ver la lista de paquetes o una descripción antes de instalar
echo -e "$msg_options"
echo -e "$msg_option1"
echo -e "$msg_option2"
read -p "$msg_choose_option" option

# Mostrar lista de paquetes o descripciones según la opción seleccionada
if [[ $option =~ ^(Y|y|yes|s|S|si|1)$ ]]; then
  echo "$msg_packages_list"
  for pkg in "${packages[@]}"; do
    echo "- $pkg"
  done
else
  echo "$msg_packages_description"
  for pkg in "${packages[@]}"; do
    description="${package_descriptions[$pkg]}"
    echo -e "- \e[1m$pkg\e[0m: $description"
  done
fi

# Esta funcion la remuevo pq me doy cuenta de que es mi script asi que yo se si lo que quiero esta ono xdxd
#remove_packages() {
#  # Preguntar si el usuario quiere eliminar paquetes
read -p "$PROMPT_REMOVE_PACKAGE" confirm
if [[ "$confirm" =~ ^([Yy]|[Yy][Ee][Ss]|[Ss][Ii]|1)$ ]]; then
  # Pedir los nombres de los paquetes a eliminar, separados por espacios
  read -p "$PROMPT_ENTER_PACKAGE" packages_to_remove_input

  # Convertir la entrada en un array
  IFS=' ' read -r -a packages_to_remove <<<"$packages_to_remove_input"

  # Inicializar arrays para rastrear eliminaciones y no encontrados
  removed_packages=()
  not_found_packages=()

  #   Iterar sobre cada paquete a eliminar
  for package in "${packages_to_remove[@]}"; do
    if [[ " ${packages[@]} " =~ " ${package} " ]]; then
      removed_packages+=("$package")
    else
      not_found_packages+=("$package")
    fi
  done

  # Crear un nuevo array excluyendo los paquetes eliminados
  new_packages=()
  for package in "${packages[@]}"; do
    if [[ ! " ${removed_packages[@]} " =~ " ${package} " ]]; then
      new_packages+=("$package")
    fi
  done

  # Actualizar el array original con los paquetes restantes
  packages=("${new_packages[@]}")

  ## Informar al usuario sobre los paquetes eliminados
  if [ ${#removed_packages[@]} -gt 0 ]; then
    printf "$PROMPT_PACKAGE_REMOVED\n" "${removed_packages[@]}"
  fi

  # Informar al usuario sobre los paquetes no encontrados
  if [ ${#not_found_packages[@]} -gt 0 ]; then
    printf "$PROMPT_PACKAGE_NOT_FOUND\n" "${not_found_packages[@]}"
  fi

  # Preguntar si desea ver los paquetes restantes
  read -p "$PROMPT_PACKAGES_REMAINING [y/n]: " confirm_remaining

  if [[ "$confirm_remaining" =~ ^([Yy]|[Yy][Ee][Ss]|[Ss][Ii]|1)$ ]]; then
    echo "$PROMPT_PACKAGES_REMAINING ${packages[@]}"
  fi

else
  echo "$PROMPT_NO_PACKAGE_REMOVED"
fi

# Llamar a la función
install_packages

# Inicializar arrays para paquetes oficiales y de AUR
official_packages=()
aur_packages=()

###
# Clasificar los paquetes
for pkg in "${custom_packages[@]}"; do
  if pacman -Si "$pkg" >/dev/null 2>&1; then
    official_packages+=("$pkg")
  elif yay -Si "$pkg" >/dev/null 2>&1; then
    aur_packages+=("$pkg")
  else
    echo "⚠️  El paquete '$pkg' no se encontró en los repositorios oficiales ni en AUR."
  fi
done
###

# Instalar paquetes desde los repositorios oficiales
if [ ${#official_packages[@]} -ne 0 ]; then
  echo "$msg_installing_official_packages"
  sudo pacman -S --noconfirm "${official_packages[@]}"
fi

# Instalar paquetes desde AUR usando yay
if [ ${#aur_packages[@]} -ne 0 ]; then
  echo "$msg_installing_aur_packages"
  yay -S --noconfirm "${aur_packages[@]}"
fi

# Preguntar si el usuario desea agregar más paquetes
read -p "$msg_add_packages" add_more

if [[ "$add_more" =~ ^(Y|y|yes|s|S|si|1)$ ]]; then
  while true; do
    # Pedir el nombre del paquete
    read -p "$msg_enter_package" package_name

    # Verificar si el paquete ya está en la lista
    if [[ " ${packages[@]} " =~ " ${package_name} " ]]; then
      printf "$msg_package_already_listed\n" "$package_name"
    else
      # Verificar si el paquete existe
      if pacman -Si "$package_name" >/dev/null 2>&1 || yay -Si "$package_name" >/dev/null 2>&1; then
        printf "$msg_package_exists\n" "$package_name"
        packages+=("$package_name")
        # Opcional: Solicitar una descripción para el paquete
        read -p "$msg_enter_description" package_desc
        package_descriptions["$package_name"]="$package_desc"
      else
        printf "$msg_package_not_found\n" "$package_name"
      fi
    fi

    # Preguntar si desea agregar otro paquete
    read -p "$msg_add_another" add_another
    add_another=${add_another,,} # Convierte a minúsculas
    if [[ ! "$add_another" =~ ^(y|Y|yes|s|S|si|1)$ ]]; then
      echo "$msg_no_additional_packages"
      break
    fi
  done
else
  echo "$msg_no_additional_packages"
fi
