# jupyter_termux_installer

This is script for installing jupyter notebook on android with termux

How to install?

```
pkg install git
git clone https://github.com/hilmifaturahman/jupyter_termux_installer.git
cd jupyter_termux_installer
chmod +x install.sh
./install.sh
```

Copy the script above and paste it in termux then type enter.

When updating a package if there is a question (Y/I/O/N/D/Z) [default=N] ?
Just type Y and enter.

Please wait when installing maturin and jupyter, because manual builds take a long time, patiently wait until the installation is complete, do not force stop termux.

After the installation is complete, run jupyter with the command
```
jupyter notebook
```
then enter

Copy and paste the url in termux to browser format like this:

http://localhost:8888/tree?token=yourtoken

or

http://127.0.0.1:8888/tree?token=yourtoken

Jupyter notebook is ready to use on android.

![ss_jupyter](https://github.com/hilmifaturahman/jupyter_termux_installer/blob/master/ss_jupyter.jpg)
