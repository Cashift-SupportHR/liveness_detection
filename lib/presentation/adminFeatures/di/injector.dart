import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftapp/presentation/adminFeatures/di/injector.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async => await $initGetIt(getIt);

/**final getIt = GetIt.instance;

    @InjectableInit(
    initializerName: 'init', // default
    preferRelativeImports: true, // default
    asExtension: false, // default
    )
    void configureDependencies() => getIt.init(); */
