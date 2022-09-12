# replicada-ruby
Replicada is a self-replicating file written in Python but recreated in Ruby, running it will mess up your directory.

watch [this](https://youtu.be/OF-MyzlaXW4) video to see how it looks like to be executed.

## requirements

- you must install module "dir" manually because idk why it wont auto import for you

## warnings

- this file may cause damage to your cwd (current working directory)

- this file may cause lags to your computer

- this file may lead to unexpected results

## processes

1. creates randomly named directories (will not stop until the script is being killed)

2. scans the currently working directory (cwd)

3. copies itself and pastes inside every directories that are inside cwd (and probably overwrites existed files)
