import QtQuick 2.0
import QtQuick.Layouts 1.3

import "../views"
import "../components"

// Basicaly sets the layout for the main app views & theme

Rectangle {
    id: root

    property int mainStackLayoutIndex: 0
    property int currentMenuIndex: 0
    property alias menuDrawer: menuDrawer

    anchors.fill: parent
    color: "#010028"

    StackLayout
    {
        anchors.fill: parent
        currentIndex: mainStackLayoutIndex

        SplashView
        {
            id: splashView
        }

        LoginView
        {
            id: loginView
        }

        NewAccountView
        {
            id: newAccountViewS
        }

        HomeView
        {
            id: homeView
        }
    }

    MenuDrawer
    {
        id: menuDrawer

    }
}
