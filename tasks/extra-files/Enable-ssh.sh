- name: Update & upgrade pacman
  pacman:
    update_cache: yes
    upgrade: yes

-name: Install Openssh
  pacman:
    name:
      - openssh
    state: Present


- name: enable service httpd and ensure it is not masked
  systemd:
    name: openssh
    enabled: yes

- name: Make sure a service is running
  systemd:
    state: started
    name: openssh

#-name: Allow Root Login
   lineinfile:
    path:/etc/ssh/sshd_config
    backup: yes
    regexp: 'PermitRootLogin'
    line: PermitRootLogin yes
#-name: Allow Root Password Auth
   lineinfile:
    path:/etc/ssh/sshd_config
    backup: yes
    regexp: 'PasswordAuthentication'
    line: PasswordAuthentication yes
- name: Restart openssh service
  systemd:
    state: restarted
    name: openssh




