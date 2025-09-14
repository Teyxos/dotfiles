import QtQuick
import Quickshell

import "launcher" as Launcher
import "notifications" as Notifications

ShellRoot {
    Component.onCompleted: () => {
        Launcher.Controller.init();
    // Notifications.Controller.init();
    // TODO: Obvs works bc im too good at this :3
    }
}
