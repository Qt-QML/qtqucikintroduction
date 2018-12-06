#ifndef FLEXWIDGETS_H
#define FLEXWIDGETS_H

#include <QObject>
#include <QWidget>
#include <QLayout>
#include <QPushButton>

class FlexFrame{
public:
    virtual void setWidget(QWidget *w);
    virtual QWidget *getWidget();
};
///
/// \brief The FlexWidgets class
/// 简单控制多个面板的显示和隐藏
///
class FlexWidgets : public QWidget
{
    Q_OBJECT
public:
    explicit FlexWidgets(QWidget *parent = nullptr);
public slots:
private:
    void setButtonVisible(bool show);
};

#endif // FLEXWIDGETS_H
