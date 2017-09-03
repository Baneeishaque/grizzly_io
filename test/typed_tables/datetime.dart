// Copyright (c) 2017, teja. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:grizzly_io/grizzly_io.dart';
import 'package:test/test.dart';

void main() {
  group('TypedTable.DateTime', () {
    setUp(() {});

    test('toDateList', () {
      final dateStr = <String>['1989-02-21', '2003-01-25'];
      final List<DateTime> dates = TypeConverter.toDateList(dateStr);
      expect(dates, hasLength(2));
      expect(dates[0].toString(), '1989-02-21 00:00:00.000');
      expect(dates[1].toString(), '2003-01-25 00:00:00.000');
    });

    test('toDateColumn', () {
      final dateStr = <Map>[
        {'date': '1989-02-21', 'close': 72},
        {'date': '2003-01-25', 'close': 100}
      ];
      final List<Map> dates = TypeConverter.toDateTimeColumn(dateStr, 'date');
      expect(dates, hasLength(2));
      expect(dates[0]['date'].toString(), '1989-02-21 00:00:00.000');
      expect(dates[1]['date'].toString(), '2003-01-25 00:00:00.000');
    });
  });
}
