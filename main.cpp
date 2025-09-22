#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    //qmlRegisterType<TimeCalculator>("MyApp.TimeCalculator", 1, 0, "TimeCalculator");

    engine.loadFromModule("MyApp", "Main");

    return app.exec();
}
