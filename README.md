# A GCC-15 compile recipe

## Configure
I have compiled a list of configuration options that seem sensible, modify if you wish

Now just run build to apply the configuration

```bash
./build.sh
```


## Build gcc
You should now have a `Makefile` in `objdir`, change to that directory and run make

```bash
cd objdir
make -j 32
```

> [!TIP]
> Replace `32` with however many threads/cpus you wish to compile with


## Install
If you wish to make this gcc a permanent resident of your system, install it with

```bash
sudo make install
```

> [!NOTE]
> This will install in the directory specified by the option `--prefix` when configuring the build, by default this is `/usr/local/bin`

