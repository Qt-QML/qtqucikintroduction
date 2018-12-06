import QtQuick 2.10

Rectangle {
    width: 640
    height: 480
    Loader {
        id: squareLoader
        onLoaded:{
            console.log("==============>")
            squareLoader.item.x = 0;
            squareLoader.item.y = 0;
            squareLoader.item.width = 640
            squareLoader.item.height = 480;
            squareLoader.item.visible = true;
        }

        anchors.fill: parent
    }
    Component.onCompleted: {
        squareLoader.setSource("./cqml/MyWindow.qml");
    }
}
