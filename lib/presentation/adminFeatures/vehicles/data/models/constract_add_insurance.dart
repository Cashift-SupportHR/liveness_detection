import '../../domain/entities/insurances.dart';
import 'insurances_dto.dart';

class  ConstractAddInsurance{
 final Insurances? insurancesDto;
 final int? vehicleId;

  ConstractAddInsurance({  this.insurancesDto,   this.vehicleId});

}