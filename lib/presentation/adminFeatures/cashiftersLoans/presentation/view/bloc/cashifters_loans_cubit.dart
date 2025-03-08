// //ChashiftLoans
//
// import 'package:injectable/injectable.dart';
// import 'package:shiftapp/core/bloc/base_cubit.dart';
//
// import '../../../../../presentationUser/chashiftLonsView/data/repositories/chashift_loans_repository.dart';
// import '../../../../../presentationUser/chashiftLonsView/domain/entities/loan_data.dart';
// import '../../../../../presentationUser/chashiftLonsView/domain/entities/tabs_and_total_loans.dart';
// import '../../../../../presentationUser/common/common_state.dart';
//
//
// @Injectable()
// class AdminChashiftLoansCubit extends BaseCubit {
//   final ChashiftLonsRepository repository;
//   AdminChashiftLoansCubit(this.repository);
//
//   StreamState<List<LoanData>?> loansStream = StreamStateInitial();
//
//   List<LoanData> listLoans = [];
//
//   Future<void> fetchTabAndTotalLoans() async {
//     executeBuilder(() => repository.fetchTabsAndTotalLoans(false), onSuccess: (value) async {
//       final data = TabsAndTotalLoans.fromDto(value);
//       final loansDto = await repository.fetchLoans(isAdmin: false, status: data.tabLoans?.first.value ?? 45);
//       listLoans = loansDto.map((e) => LoanData.fromDto(e)).toList();
//       emit(InitializedLoansTabsData(dataTab: data, loanData: listLoans));
//     });
//   }
//
//   Future<void> fetchLoans({required int status}) async {
//     executeBuilder(() => repository.fetchLoans(status: status, isAdmin: false), onSuccess: (value) {
//       listLoans = value.map((e) => LoanData.fromDto(e)).toList();
//     });
//   }
//
//   fetchLoansStream({required int status}) async {
//     loansStream.setData(null);
//     try {
//       final result = await repository.fetchLoans(isAdmin: false, status: status);
//       listLoans = result.map((e) => LoanData.fromDto(e)).toList();
//       loansStream.setData(listLoans);
//     } on Exception catch (e) {
//       loansStream.setError(e);
//     }
//   }
// }
