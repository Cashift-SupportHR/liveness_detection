export 'package:flutter/material.dart';


import 'package:rxdart/rxdart.dart';

import '../../../core/resources/data_state.dart';

abstract class StreamDataState<T> {

  final _streamController = BehaviorSubject<DataState<T>>();
  Stream<DataState<T>> get stream => _streamController.stream;

  T? data;

  start(){
    _streamController.add(DataLoading());
  }
  setError(dynamic initError) {
    _streamController.add(DataFailed(initError));
    data = null;
  }

  setData(T initData) {
    data = initData;
    _streamController.add(DataSuccess(data: initData));
  }

  getData(){
    return _streamController.stream;
  }

  clearData(){
    _streamController.add(UnInitState());
  }

  setFutureData(Future<T> Function() invoke,{Function(dynamic e)? onError}) async {
    try {
      T response = await invoke();
      setData(response);
    } catch (e) {
      setError(e);
      if(onError!=null)onError(e);
    }
  }

  close() {
    _streamController.sink.close();
  }
}

class StreamDataStateInitial<T> extends StreamDataState<T> {

}