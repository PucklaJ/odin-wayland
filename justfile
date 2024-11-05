default: bindings
bindings: protocols client server util xdg-shell
build: build-wayland build-xdg-shell

BUILD_DIR := 'build'
CC := 'gcc'
AR := 'ar'

CC_FLAGS := '-O3'

client:
    runic client/rune.yml
    runic client/wrapper.yml
    sed -i -e 's/client_protocol\.//g' -e '/import \"client_protocol\"/d' client/wrapper.odin

server:
    runic server/rune.yml
    runic server/wrapper.yml
    sed -i -e 's/server_protocol\.//g' -e '/import \"server_protocol\"/d' server/wrapper.odin

util:
    runic util/rune.yml

xdg-shell:
    runic client/xdg-shell/rune.yml
    runic server/xdg-shell/rune.yml
    sed -i -e 's/client\.interface/util\.interface/g' -e 's/client\.array/util\.array/g' client/xdg-shell/xdg-shell.odin
    sed -i -e 's/server\.interface/util\.interface/g' -e 's/server\.array/util\.array/g' server/xdg-shell/xdg-shell.odin

protocols: (make-directory BUILD_DIR)
    wayland-scanner client-header shared/wayland/protocol/wayland.xml shared/wayland/src/wayland-client-protocol.h
    wayland-scanner server-header shared/wayland/protocol/wayland.xml shared/wayland/src/wayland-server-protocol.h
    wayland-scanner client-header shared/wayland-protocols/stable/xdg-shell/xdg-shell.xml  shared/wayland/src/xdg-shell-client-protocol.h
    wayland-scanner server-header shared/wayland-protocols/stable/xdg-shell/xdg-shell.xml shared/wayland/src/xdg-shell-server-protocol.h
    wayland-scanner -c private-code shared/wayland-protocols/stable/xdg-shell/xdg-shell.xml shared/wayland/src/xdg-shell-private-code.c
    sed -e 's/@WAYLAND_VERSION_MAJOR@/1/g' -e 's/@WAYLAND_VERSION_MINOR@/23/g' -e 's/@WAYLAND_VERSION_MICRO@/1/g' -e 's/@WAYLAND_VERSION@/1.23.1/g' shared/wayland/src/wayland-version.h.in > shared/wayland/src/wayland-version.h

build-wayland: protocols client server (make-directory 'lib') (make-directory BUILD_DIR / 'obj')
    {{ CC }} {{ CC_FLAGS }} -c -o "{{ BUILD_DIR / 'obj/wayland-client-wrapper.o' }}" shared/wayland/src/wayland-client-wrapper.c
    {{ CC }} {{ CC_FLAGS }} -c -o "{{ BUILD_DIR / 'obj/wayland-server-wrapper.o' }}" shared/wayland/src/wayland-server-wrapper.c
    {{ AR }} rs lib/libwayland-client-wrapper.a "{{ BUILD_DIR / 'obj/wayland-client-wrapper.o' }}"
    {{ AR }} rs lib/libwayland-server-wrapper.a "{{ BUILD_DIR / 'obj/wayland-server-wrapper.o' }}"

build-xdg-shell: protocols xdg-shell (make-directory 'lib') (make-directory BUILD_DIR / 'obj')
    {{ CC }} {{ CC_FLAGS }} -c -o "{{ BUILD_DIR / 'obj/xdg-shell-client-wrapper.o' }}" shared/wayland/src/xdg-shell-client-wrapper.c
    {{ CC }} {{ CC_FLAGS }} -c -o "{{ BUILD_DIR / 'obj/xdg-shell-private-code.o' }}" shared/wayland/src/xdg-shell-private-code.c
    {{ CC }} {{ CC_FLAGS }} -c -o "{{ BUILD_DIR / 'obj/xdg-shell-server-wrapper.o' }}" shared/wayland/src/xdg-shell-server-wrapper.c
    {{ AR }} rs lib/libxdg-shell-client.a "{{ BUILD_DIR / 'obj/xdg-shell-client-wrapper.o' }}" "{{ BUILD_DIR / 'obj/xdg-shell-private-code.o' }}"
    {{ AR }} rs lib/libxdg-shell-server.a "{{ BUILD_DIR / 'obj/xdg-shell-server-wrapper.o' }}" "{{ BUILD_DIR / 'obj/xdg-shell-private-code.o' }}"

example EXAMPLE='toplevel': build
    odin build "{{ 'examples' / EXAMPLE }}" -vet -error-pos-style:unix -debug -out:"{{ BUILD_DIR / 'example_' + EXAMPLE }}"

make-directory DIR:
    @mkdir -p "{{ DIR }}"

clean:
    rm -rf shared/wayland/src/wayland-client-protocol.h \
       shared/wayland/src/wayland-server-protocol.h \
       shared/wayland/src/xdg-shell-client-protocol.h \
       shared/wayland/src/xdg-shell-private-code.c \
       shared/wayland/src/xdg-shell-server-protocol.h \
       shared/wayland/src/wayland-client-wrapper.h \
       shared/wayland/src/wayland-client-wrapper.c \
       shared/wayland/src/xdg-shell-client-wrapper.h \
       shared/wayland/src/xdg-shell-client-wrapper.c \
       shared/wayland/src/xdg-shell-server-wrapper.h \
       shared/wayland/src/xdg-shell-server-wrapper.c \
       shared/wayland/src/wayland-server-wrapper.h \
       shared/wayland/src/wayland-server-wrapper.c \
       shared/wayland/src/wayland-version.h \
       lib/ \
       build/
