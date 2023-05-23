#ifndef CONTROL_H
#define CONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QDebug>
#include <iostream>
#include <QtQuick/QQuickView>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QGuiApplication>


class Control: public QObject
{
    Q_OBJECT
public:
    Control();
    ~Control();

    void show();
    void hide();


signals:

private slots:
    void onModeChangedSlot(int naviMode);

private:
    QQmlApplicationEngine engine;
    QQuickWindow* window;
    QObject *rootObject;

    QQmlApplicationEngine S36Engine;


};

#endif // CONTROL_H
