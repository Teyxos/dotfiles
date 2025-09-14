pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Services.Notifications

Singleton {
    id: root
    property bool active: false

    NotificationServer {
        id: notificationServer
        property Notification currentNotification: null

        onNotification: function (notif) {
            currentNotification = notif;
            root.active = true;
        }
    }

    LazyLoader {
        active: root.active
        Overlay {
            controller: root
            notificationServer: notificationServer
        }
    }

    // Empty function to ensure the singleton is initialized
    function init() {
    }
}
