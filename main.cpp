#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>
#include <audioplayer.h>
#include <foldermodel.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlApplicationEngine engineExplorer;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    engineExplorer.load(QUrl(QStringLiteral("qrc:/Explorer.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    AudioPlayer player;
    FolderModel folder;

    engine.rootContext()->setContextProperty("myModelMVC", &player);
    engineExplorer.rootContext()->setContextProperty("myExplorerMVC", &folder);


    return app.exec();
}
