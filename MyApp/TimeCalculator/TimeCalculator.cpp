#include "TimeCalculator.h"
#include <QDate>

TimeCalculator::TimeCalculator()
    : QQuickItem()
{}

int TimeCalculator::totalDays() const
{
    return 730;
}

int TimeCalculator::daysPassed() const
{
    QDate start(2024, 10, 22);

    int passed = start.daysTo(QDate::currentDate());

    return passed;
}
