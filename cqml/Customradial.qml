import QtQuick 2.0
import QtGraphicalEffects 1.0

Item
{
    anchors.fill: parent
    RadialGradient
    {
        anchors.fill: parent
        GradientStop {position: 0.000;color: Qt.rgba(1, 0, 0, 1);}
        GradientStop {position: 0.167;color: Qt.rgba(1, 1, 0, 1);}
        GradientStop {position: 0.333;color: Qt.rgba(0, 1, 0, 1);}
        GradientStop {position: 0.500;color: Qt.rgba(0, 1, 1, 1);}
        GradientStop {position: 0.667;color: Qt.rgba(0, 0, 1, 1);}
        GradientStop {position: 0.833;color: Qt.rgba(1, 0, 1, 1);}
        GradientStop {position: 1.000;color: Qt.rgba(1, 0, 0, 1);}
    }
}
