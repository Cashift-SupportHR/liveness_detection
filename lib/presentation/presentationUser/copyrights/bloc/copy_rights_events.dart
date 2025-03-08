part of 'copy_rights_bloc.dart';


@immutable
abstract class CopyRightsEvent {
  Stream<CommonState> applyAsync(
      {required CommonState currentState,
        required CopyRightsBloc bloc});
}



class FetchTerms extends CopyRightsEvent {

  @override
  Stream<CommonState> applyAsync({required CommonState currentState, required CopyRightsBloc bloc}) async* {
    yield LoadingState();
    try {
      final response = await bloc._termsRepository.fetchPublicTermsAndCondition();
      yield Initialized(data: response);
    }catch(e,s){
      print(s);
      yield ErrorState(e);

    }
  }

}
