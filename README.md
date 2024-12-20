# Odin Wayland

Odin Bindings for the wayland client and server protocols. These bindings have been automatically generated by [runic](https://github.com/Samudevv/runic).

# Supported Protocols

| Protocol  | Client Import                                  | Server Import                                  |
| --------  | ---------------------------------------------- | ---------------------------------------------- |
| core      | `import wl "shared:wayland/client"`            | `import wl "shared:wayland/server"`            |
| xdg-shell | `import xdg "shared:wayland/client/xdg-shell"` | `import xdg "shared:wayland/server/xdg-shell"` |
| egl       | `import wl_egl "shared:wayland/egl"`           |                       ⛔                       |

# Usage

Just copy or clone the repository into your codebase (make sure to include the submodules wayland and wayland-protocols) and install the following packages to work with the bindings:

+ [runic](https://github.com/Samudevv/runic)
+ [just](https://just.systems)
+ gcc
+ wayland

Then you need to generated the protocols source code and build it:

```console
just build
```

You can also just build certain protocols that you require for your project. For example to build the xdg-shell protocol you can type:

```console
just build-xdg-shell
```

After that you can just import it into your odin project and everything gets linked statically automatically. The core protocols will be linked dynamically from `libwayland-client.so` and `libwayland-server.so` respectively.
