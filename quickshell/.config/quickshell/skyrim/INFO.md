### OKAY SO TO CALL FUNCTIONS I NEED TO USE IPC HANDLERS LIKE SO:

```qml
IpcHandler {
        target: "launcher"

        function open() {
            root.isOpen = true;
        }

        function close() {
            root.isOpen = false;
        }

        function toggle() {
            root.isOpen = !root.isOpen;
        }
    }

```

### THEN ON HYPRLAND CONF OR ANY OTHER KEYBIND THINGY I NEED TO DO AS THIS

```conf
    bind = $mainMod, KEY, qs ipc call "IPC-HANDLER" "ACTION"
```

# WORKS!!!11!!1!1
