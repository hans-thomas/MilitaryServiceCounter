#ifndef TIMECALCULATOR_H
#define TIMECALCULATOR_H

#include <QQuickItem>

class TimeCalculator : public QQuickItem
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit TimeCalculator();

    Q_INVOKABLE int totalDays() const;

    Q_INVOKABLE int daysPassed() const;

signals:
};

#endif // TIMECALCULATOR_H
