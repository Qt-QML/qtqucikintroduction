#include "flexwidgets.h"
#include <qdebug.h>
#include <QFrame>

FlexWidgets::FlexWidgets(QWidget *parent) : QWidget(parent)
{
    QFrame *lefFrame = new QFrame;
    QHBoxLayout *h = new QHBoxLayout;
    h->setObjectName("flexH");
    for(int i=0;i<5;i++){
        QPushButton *btn = new QPushButton(QString("-Button %1").arg(i));
        btn->setProperty("index",i);
        btn->setMinimumHeight(100);
        if(i == 0) {
            btn->setCheckable(true);
            btn->setChecked(true);
        }
        connect(btn,&QPushButton::clicked,[=](bool checked){
            qDebug()<<" clicked "<<btn->text()<<" checked "<<checked;
            if(btn->property("index").toInt() == 0){
                if(checked){
                    //expand
                    setButtonVisible(true);
                }else{
                    //collse
                    setButtonVisible(false);
                }
            }
        });
        h->addWidget(btn);
    }
    lefFrame->setLayout(h);
    QHBoxLayout *mainH = new QHBoxLayout;
    mainH->addWidget(lefFrame);
    mainH->addSpacerItem(new QSpacerItem(10,10,QSizePolicy::Expanding));
    setLayout(mainH);
}

void FlexWidgets::setButtonVisible(bool show)
{
    QHBoxLayout *h = this->findChild<QHBoxLayout*>("flexH");
    if( !h ) return;

    QList<QPushButton *> btnLst = this->findChildren<QPushButton *>();

    if(show){
        foreach (QPushButton *var, btnLst) {
            if(var->property("index").toInt() == 0) continue;
            var->show();
            h->insertWidget(var->property("index").toInt(),var);
        }
    }else{
        foreach (QPushButton *var, btnLst) {
            if(var->property("index").toInt() == 0) continue;
            h->removeWidget(var);
            var->hide();
        }
    }
}
