import 'package:injectable/injectable.dart';
import 'package:shiftapp/core/bloc/base_cubit.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';

import '../../../data/repositories/punishments_repository.dart';
import '../../../domain/entities/punishment.dart';

@Injectable()
class PunishmentsCubit extends BaseCubit {
  final PunishmentsRepository repository;

  PunishmentsCubit(this.repository);

  Future<void> fetchPunishments(int type) async {
    executeBuilder(() => repository.fetchPunishments(type), onSuccess: (data) {
      final punishments = data.map((e) => Punishment.fromDto(e)).toList();
      emit(Initialized<List<Punishment>>(data: punishments));
    });
  }

  Future<void> activePunishment(int id) async {
    executeEmitterListener(() => repository.activePunishment(id));
  }

  Future<void> deletePunishment(int id) async {
    executeEmitterListener(() => repository.deletePunishment(id));
  }

}
