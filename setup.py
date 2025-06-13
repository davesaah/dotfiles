#!/usr/bin/python3

import subprocess


def link(item: str, curdir: str):
    subprocess.run("ln -s {}/{} ~/.config/".format(curdir, item), shell=True)
    print("{} linked successfully".format(item))


cmd = subprocess.run(
    "fd -d 1 -t d --path-separator ''",
    capture_output=True,
    text=True,
    shell=True,
)

dirs = cmd.stdout.split("\n")
pwd = subprocess.run("pwd", capture_output=True, text=True)
curdir = pwd.stdout.strip()

for i in range(len(dirs) - 1):
    print("linking {}".format(dirs[i]))
    link(dirs[i], curdir)
    print()

print("all your configs have been imported")
