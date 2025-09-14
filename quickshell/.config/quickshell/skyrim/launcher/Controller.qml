pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
    id: root
    property bool active: false

    IpcHandler {
        target: "launcher"

        function toggle(): bool {
            root.active = !root.active;
        }
    }

    LazyLoader {
        active: root.active
        Overlay {
            controller: root
        }
    }

    // Empty function to ensure the singleton is initialized
    function init() {
    }
}
