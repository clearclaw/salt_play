base__pkgs:
  pkg.latest:
    - pkgs:
      - byobu
      - tmux
      - screen
      - zsh
      - libpam-google-authenticator
      - libqrencode3
      - jed
      - htop
      - multitail
      - git
      - awscli

base__upgrades:

  pkg.uptodate:
    - refresh: True

