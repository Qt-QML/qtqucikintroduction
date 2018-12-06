#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "flexwidgets.h"
#define Widget2
#include <QApplication>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

#ifdef Widget
    QApplication app(argc, argv);
    FlexWidgets flxW;
    flxW.resize(400,600);
    flxW.show();
#else
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl::fromLocalFile(QStringLiteral("./../qmldemo/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
#endif
    return app.exec();
}
