set -l plugins_list \
  jethrokuan/z \
  danhper/fish-ssh-agent \
  nickeb96/puffer-fish \
  james2doyle/omf-plugin-fnm

function plugins_install --on-event plugins_install
  fisher install (plugins_list)
end

function plugins_uninstall --on-event plugins_uninstall
  fisher remove (plugins_list)
end

