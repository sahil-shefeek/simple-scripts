<h1 align=center>
  Simple Scripts
</h1>

Welcome to the Simple Scripts repository! This repository contains a collection of bash scripts designed to be easy to understand and useful for students learning bash scripting.

## Why Use This Repository?

If you're new to bash scripting or just want some examples to help you understand how bash works, you're in the right place! The scripts in this repository are written in plain, simple language with comments to explain what each part does. They cover various common tasks that students often encounter when learning bash scripting.

## Getting Started

To start using these scripts, simply clone this repository to your local machine:

```
git clone https://github.com/sahil-shefeek/simple-scripts.git
```

Once you have the repository cloned, you can navigate to the directory and start exploring the scripts.

<br><hr><br>

# Giving Execution Permissions to Scripts

Before you can execute a script file, you need to ensure that it has the necessary permissions. Here's how you can give execution permissions to your scripts:

## Using the `chmod` Command

The `chmod` command is used to change the permissions of a file. To give execution permissions to a script, you need to use the `+x` option with `chmod` or `774`.

```bash
chmod +x script_name.sh
```

or

```bash
chmod 774 script_name.sh
```

Replace `script_name.sh` with the name of your script file. After running this command, you'll have execution permissions for the script `my_script.sh`.

### Checking Permissions

You can verify the permissions of a file using the `ls` command with the `-l` option. This will list the permissions along with other information about the file. Here's an example:

```bash
ls -l my_script.sh
```

The output will look something like this:

```
-rwxr-xr-x 1 user user 123 Apr 13 12:00 my_script.sh
```

In this example, the permissions `-rwxr-xr-x` indicate that the file is readable, writable, and executable by the owner, and readable and executable by others.

Happy scripting! 🚀
