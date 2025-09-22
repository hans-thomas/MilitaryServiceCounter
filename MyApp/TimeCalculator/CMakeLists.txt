qt_add_qml_module(TimeCalculatorLib
    URI MyApp.TimeCalculator
    VERSION 1.0
    SOURCES
        TimeCalculator.cpp
        TimeCalculator.h
)
target_link_libraries(TimeCalculatorLib PRIVATE Qt6::Quick)
