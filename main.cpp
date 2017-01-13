#include "widget.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDir>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
//    engine.load(QUrl(QString::fromLatin1 ("%1/main.qml").arg(QDir::currentPath())));
    engine.load(QUrl("qrc:/main.qml"));

    return app.exec();
}
