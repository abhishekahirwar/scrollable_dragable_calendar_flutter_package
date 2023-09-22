# scrollable_dragable_calendar

A flutter widget for boxing images.

## Features

 - scrollable calendar
   
## Getting started

To use this package, add scrollable_dragable_calendar as a dependency in your pubspec.yaml file.

## Usage

Minimal example:

```dart
    ScrollableDragableCalendar(initialDate: initialDate, firstDate: firstDate, lastDate: lastDate, onDateSelected: onDateSelected)
```

Custom settings:

```dart
   ScrollableDragableCalendar(
            initialDate: _selectedDate,
            firstDate: DateTime.utc(2000, 1, 1),
            lastDate: DateTime.utc(2100, 12, 31),
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
              });
            },
            leftMargin: 150,
            monthColor: Colors.black,
            activeDayColor: Colors.black,
            activeBackgroundDayColor: const Color(0xFFEBEDF9),
    )
```
