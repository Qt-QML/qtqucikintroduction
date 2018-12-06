import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.2
/*
  自定义分组样式 使用control2.0 1.0 可模拟出来
*/
GroupBox {
    id: control
    title: qsTr("自定义分组箱子")
    FontMetrics {
        id: fontMetrics
        font.family: "微软雅黑"
        font.pixelSize: 14
    }
    ColumnLayout {
        anchors.fill: parent
        CheckBox { text: qsTr("E-mail") }
        CheckBox { text: qsTr("Calendar") }
        CheckBox { text: qsTr("Contacts") }
    }
    background: Rectangle {
        y: control.topPadding - control.padding
        width: parent.width
        height: parent.height - control.topPadding + control.padding
        color: "transparent"
        border.color: "#21be2b"
        radius: 4
    }
    label: Rectangle {
        x: (control.width-width)/2
        y: -10
        width: fontMetrics.advanceWidth(control.title)
        height: 20
        Label{
            text: control.title
            color: "#21be2b"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.fill: parent
            font: fontMetrics.font
        }
    }
}
