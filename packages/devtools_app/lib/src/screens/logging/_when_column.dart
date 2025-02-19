// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../shared/table/table_data.dart';
import '../../shared/utils.dart';
import 'logging_controller.dart';

class WhenColumn extends ColumnData<LogData> {
  WhenColumn()
      : super(
          'When',
          fixedWidthPx: scaleByFontFactor(120),
        );

  @override
  bool get supportsSorting => false;

  @override
  String getValue(LogData dataObject) => dataObject.timestamp == null
      ? ''
      : timeFormat
          .format(DateTime.fromMillisecondsSinceEpoch(dataObject.timestamp!));
}
