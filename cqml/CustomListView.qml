import QtQuick 2.0
/*
  自定义listview  主要学习model的使用
*/
Rectangle {
    width: 200; height: 200
    //测试的例子
    property string jsonString: "{\"0\":{\"createTime\":\"2018年12月5日13:35:47\"}
,\"1\":{\"createTime\":\"2018年12月5日13:35:47\"},\"2\":{\"createTime\":\"2018年12月5日13:35:47\"}}"

    property string jsonString2: "[{\"createTime\":\"2018年12月5日13:35:47\"}
,{\"createTime\":\"2018年12月5日13:35:47\"},{\"createTime\":\"2018年12月5日13:35:47\"}]"

    ListModel {
        id: fruitModel
    }
    Component {
        id: fruitDelegate
        Row {
            spacing: 10
            Text { text: createTime }//就是每个对象的字段的名字
            Text { text: '$' + createTime }
        }
    }
    ListView {
        id:listId
        anchors.fill: parent
        model: fruitModel
        delegate: fruitDelegate
    }
//    Component.onCompleted: {
//       var obj  = JSON.parse(jsonString);
//        for(var key in obj){
//             console.log(obj[key].createTime);
//            fruitModel.append(obj[key]);
//        }
//    }
    Component.onCompleted: {
       var obj  = JSON.parse(jsonString2);
        fruitModel.append(obj)
        //或者下面操作
//        for(var i in obj){
//             console.log(obj[i]);
//            fruitModel.append(obj[i]);
//        }
    }
}
