{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "raylib-zig dev env";

  buildInputs = with pkgs; [
    glfw-wayland
    zig
  ];

  nativeBuildInputs = [
    pkgs.libGL
    pkgs.libxkbcommon

    # X11 dependencies
    pkgs.xorg.libX11
    pkgs.xorg.libX11.dev
    pkgs.xorg.libXcursor
    pkgs.xorg.libXi
    pkgs.xorg.libXinerama
    pkgs.xorg.libXrandr

    # Wayland
    pkgs.wayland.dev
  ];

  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath (with pkgs; [
    wayland
  ]);
}
