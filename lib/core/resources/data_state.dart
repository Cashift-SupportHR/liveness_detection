abstract class DataState<T> {
  final T ? data;
  final dynamic error;

  const DataState({this.data, this.error});
}

class UnInitState<T> extends DataState<T> {}

/**
 * this state for observe state with bloc builder
 **/

abstract class DataStateFBuilder<T> extends DataState<T> {
  const DataStateFBuilder({data, error}):super(data: data,error: error);
}

class DataFailed<T> extends DataStateFBuilder<T> {
  const DataFailed(error) : super(error: error);
}

class DataSuccess<T> extends DataStateFBuilder<T> {
  const DataSuccess({required T data}) : super(data: data);
}

class DataLoading<T> extends DataStateFBuilder<T> {
}