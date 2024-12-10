#this is test to simulate how git repo work with saltstack
create_user:
  user.present:
    - name: testuser
    - shell: /bin/bash
    - home: /home/testuser
    - createhome: True

add_ssh_key:
  ssh_auth.present:
    - user: testuser
    - source: salt://id_ed25519.pub
    - require:
      - user: create_user
