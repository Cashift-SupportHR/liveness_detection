import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../../../../data/models/wallet/name_by_id_number.dart';
import '../../../../../../domain/entities/bankaccount/bank_account_info.dart';
import '../../../../../../domain/entities/bankaccount/electronic_wallet.dart';
import '../../../../../../domain/entities/wallet/wallet_balance_item.dart';
import '../../../../../../domain/entities/wallet/withdraw_method.dart';

class InitializedWithdraw extends CommonStateFBuilder{
  final  List<WalletBalanceItem> ?  availableCompanies ;
  final  List<WithdrawMethod> ?  availableMethods ;
  final  StreamStateInitial<List<ElectronicWallet>?> phoneWalletsStream;
  final  StreamStateInitial<BankAccountInfo?> bankAccountStream;
  final  StreamStateInitial<NameByIdNumber?> nameByIdNumberStream;

  InitializedWithdraw({ this.availableCompanies , this.availableMethods , required this.bankAccountStream , required this.phoneWalletsStream, required this.nameByIdNumberStream});
}