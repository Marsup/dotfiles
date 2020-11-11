function plugins_list
  echo jethrokuan/z
  echo danhper/fish-ssh-agent
  echo nickeb96/puffer-fish
  echo james2doyle/omf-plugin-fnm
end

function plugins_install --on-event plugins_install
  for plugin in (plugins_list)
    fisher install $plugin
  end
end

function plugins_uninstall --on-event plugins_uninstall
  fisher remove (plugins_list)
end

