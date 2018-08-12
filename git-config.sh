: << COMMENTBLOCK
1. Файл /etc/gitconfig содержит значения, общие для всех пользователей системы и для всех их репозиториев. Если при запуске git config указать параметр --system, то параметры будут читаться и сохраняться именно в этот файл.
2. Файл ~/.gitconfig или ~/.config/git/config хранит настройки конкретного пользователя. Этот файл используется при указании параметра --global.
3. Файл config в каталоге Git’а (т.е. .git/config) в том репозитории, который вы используете в данный момент, хранит настройки конкретного репозитория.
COMMENTBLOCK
echo "Код завершения "COMMENTBLOCK" = $?." # 0
# name un --global set for curent folder
git config --global user.name "Alex Andreevich"
git config --global user.email "kcdcloud@outlook.com"
# editor
git config --global core.editor emacs
# check settings
git config --list
git config user.name

#help
git help config
git config --help
man git-config