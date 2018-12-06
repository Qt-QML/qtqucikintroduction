import QtQuick 2.0
import QtQuick.Window 2.10
/*
  网友疑问：QQmlEngine 是否可以加载Item
  可以 以下是一个做法
  当然 个人觉得没必要
*/

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //    Text {
    //        id: name
    //        text: qsTr("基于Item创建一个Window\n 意义在哪里 不懂")
    //        anchors.fill: parent
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //        font.pixelSize: 30
    //        color: "red"
    //    }

    CustomGroupBox{
        anchors.centerIn: parent
        width: 200
        height: 200
    }
//    Customradial{
//        anchors.fill: parent
//    }
}
