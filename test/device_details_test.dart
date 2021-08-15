import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ble_lib_example/device_details/device_details_bloc.dart';
//import 'package:mockito/mockito.dart';

void main() {
  DeviceDetailsBloc deviceDetailsBloc;

  setUp(() {
    //deviceDetailsBloc = DeviceDetailsBloc(<some arguments here?>);
    deviceDetailsBloc = DeviceDetailsBloc();
  });

  tearDown(() {
    deviceDetailsBloc?.close();
  });

  test('initial state is correct', () {
    expect(DeviceDetailsInitial(), deviceDetailsBloc.initialState);
  });

  test('close does not emit new states', () {
    expectLater(
      deviceDetailsBloc,
      emitsInOrder([DeviceDetailsInitial(), emitsDone]),
    );
    deviceDetailsBloc.close();
  });

  group('DeviceDetailsButtonPressed', () {
    test('emits token on success', () {
      final expectedResponse = [
        DeviceDetailsInitial(),
        DeviceDetailsLoading(),
        DeviceDetailsInitial(),
      ];

      expectLater(
        deviceDetailsBloc,
        emitsInOrder(expectedResponse),
      ).then((_) {
        //verify(deviceDetailsBloc.add(Connected(deviceId: deviceDetailsBloc.device.id))).called(1);
      });

      deviceDetailsBloc.add(ConnectButtonPressed());
    });
  });
}
