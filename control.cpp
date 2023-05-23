#include "control.h"

Control::Control(){

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    //Windowポインタを取得
    window = dynamic_cast<QQuickWindow*>(engine.rootObjects().first());
    //Windowオブジェクトを取得
    rootObject = engine.rootObjects().first();

    S36Engine.load(QUrl(QStringLiteral("qrc:/S36.qml")));
    QObject *S36Object = S36Engine.rootObjects().first();

    connect(S36Object, SIGNAL(onModeChangedSignal(int)),
            this, SLOT(onModeChangedSlot(int)));

}

//デストラクタ
Control::~Control()
{
}

void Control::show(){
    window->show();
}

void Control::hide(){
    window->hide();
}

void Control::onModeChangedSlot(int naviMode){
    std::cout << naviMode;
}
