for folder in $(ls .config/); do
  ln -s .config/$folder ~/.config/$folder
done

for file in *; do
  ln -s $file ~/$file
done
