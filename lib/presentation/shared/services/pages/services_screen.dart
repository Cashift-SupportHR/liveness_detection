import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/service/service_model.dart';
import '../../components/base_stateless_widget.dart';
import '../widgets/services_item.dart';

class ServicesScreen extends BaseStatelessWidget {
  final List<ServiceModel> services;
  ServicesScreen( {Key? key,required this.services,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ServicesItem(services: services);
  }

}


