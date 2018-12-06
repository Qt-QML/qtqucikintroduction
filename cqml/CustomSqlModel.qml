import QtQuick 2.0

Item {


    ListModel{
        id:modeA
    }
    ListView{
        id:idA
        model: modeA
    }
    //======2个不同的model实例 何来蹿乱数据=======================
    ListModel{
        id:modeB
    }
    ListView{
        id:idB
        model: modeB
    }
}
