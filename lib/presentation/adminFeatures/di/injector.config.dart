// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i42;

import '../../../data/datasources/remote/api/absencenotice/absencenotice_api.dart'
    as _i85;
import '../../../data/datasources/remote/api/activity_log/activity_log_api_provider.dart'
    as _i90;
import '../../../data/datasources/remote/api/add-address/add_address_api_provider.dart'
    as _i92;
import '../../../data/datasources/remote/api/advancedFilter/advanced_filter_api_provider.dart'
    as _i121;
import '../../../data/datasources/remote/api/attendance/attendance_api_provider.dart'
    as _i128;
import '../../../data/datasources/remote/api/auth/auth_api_provider.dart'
    as _i131;
import '../../../data/datasources/remote/api/bail_requests/bail_requests_api.dart'
    as _i134;
import '../../../data/datasources/remote/api/bank/bank_api_provider.dart'
    as _i140;
import '../../../data/datasources/remote/api/collect_cash/collect_cash_api_provider.dart'
    as _i147;
import '../../../data/datasources/remote/api/evaluation/evaluation_api_provider.dart'
    as _i161;
import '../../../data/datasources/remote/api/favorite_projects/favorite_projects_api.dart'
    as _i163;
import '../../../data/datasources/remote/api/home/home_api_provider.dart'
    as _i172;
import '../../../data/datasources/remote/api/job_offers/job_offers_api_provider.dart'
    as _i176;
import '../../../data/datasources/remote/api/loans_request/loans_request_api.dart'
    as _i181;
import '../../../data/datasources/remote/api/logger/logger_api_provider.dart'
    as _i43;
import '../../../data/datasources/remote/api/notificationOffers/notification_offers_api_provider.dart'
    as _i186;
import '../../../data/datasources/remote/api/profile/profile_api_provider.dart'
    as _i195;
import '../../../data/datasources/remote/api/resume/resume_api_provider.dart'
    as _i209;
import '../../../data/datasources/remote/api/salary-definition-request/salary_definition_api.dart'
    as _i213;
import '../../../data/datasources/remote/api/service/service_api.dart' as _i217;
import '../../../data/datasources/remote/api/terms/terms_api_provider.dart'
    as _i224;
import '../../../data/datasources/remote/api/wallet/wallet_api_provider.dart'
    as _i76;
import '../../../data/datasources/remote/api/workerWorkPlaces/worker_work_places_api.dart'
    as _i81;
import '../../../data/repositories/absencenotice/absencenotice.dart' as _i86;
import '../../../data/repositories/activitylog/activity_log_repository.dart'
    as _i91;
import '../../../data/repositories/add-address/add_address_repository.dart'
    as _i93;
import '../../../data/repositories/advancedFilter/advanced_filter_repository.dart'
    as _i122;
import '../../../data/repositories/attendance/attendance_repository.dart'
    as _i130;
import '../../../data/repositories/bail_requests/bail_requests_repository.dart'
    as _i135;
import '../../../data/repositories/bank/wallet_repository.dart' as _i77;
import '../../../data/repositories/collect_cash/collect_cash_repository.dart'
    as _i148;
import '../../../data/repositories/device/deviceinfo_repository.dart' as _i18;
import '../../../data/repositories/evaluation/evaluation_repository.dart'
    as _i162;
import '../../../data/repositories/financial_requests/loans_request_repository.dart'
    as _i182;
import '../../../data/repositories/home/home_repository.dart' as _i173;
import '../../../data/repositories/joboffers/job_offers_repository.dart'
    as _i177;
import '../../../data/repositories/local/local_repository.dart' as _i41;
import '../../../data/repositories/logger/logger_repository.dart' as _i183;
import '../../../data/repositories/login/auth_repository.dart' as _i132;
import '../../../data/repositories/notificationOffers/notification_offers_repository.dart'
    as _i187;
import '../../../data/repositories/profile/profile_repository.dart' as _i196;
import '../../../data/repositories/projects/projects_repository.dart' as _i199;
import '../../../data/repositories/resume/resume_repository.dart' as _i210;
import '../../../data/repositories/salary-definition-request/salary_definition_repository.dart'
    as _i214;
import '../../../data/repositories/service/service_repository.dart' as _i218;
import '../../../data/repositories/terms/terms_repository.dart' as _i226;
import '../../../data/repositories/user/user_repository.dart' as _i65;
import '../../../data/repositories/wallet/bank_repository.dart' as _i141;
import '../../../data/repositories/workerWorkPlaces/worker_work_places_repository.dart'
    as _i82;
import '../../../domain/entities/shared/device.dart' as _i17;
import '../../../domain/usecases/respond_dashboard_required_action_usecase.dart'
    as _i207;
import '../../../domain/usecases/respond_required_task_usecase.dart' as _i208;
import '../../../domain/usecases/tasks_notifications_usecase.dart' as _i206;
import '../../../network/source/admin_endpoint.dart' as _i3;
import '../../../network/source/configuration_endpoint.dart' as _i16;
import '../../../network/source/user_endpoint.dart' as _i64;
import '../../presentationUser/absencenotice/bloc/absencenotice_cubit.dart'
    as _i250;
import '../../presentationUser/activity_log/bloc/activity_log_cubit.dart'
    as _i251;
import '../../presentationUser/advancedFilter/bloc/advanced_filter_cubit.dart'
    as _i265;
import '../../presentationUser/appliedoffers/bloc/applied_offers_cubit.dart'
    as _i266;
import '../../presentationUser/appliedoffers/cancelOpprtunity/bloc/cancel_opportunity_apologizing_bloc.dart'
    as _i271;
import '../../presentationUser/attendance/overtimeAttendance/bloc/overtime_attendance_cubit.dart'
    as _i189;
import '../../presentationUser/attendance/recordAttendance/bloc/cashift_attendance_cubit.dart'
    as _i272;
import '../../presentationUser/attendance/registerfacerecognition/bloc/face_recognition_cubit.dart'
    as _i285;
import '../../presentationUser/attendance/shiftAttendance/bloc/attendance_cubit.dart'
    as _i268;
import '../../presentationUser/AttendanceAndDepartureNotifications/data/datasource/attendance_and_departure_notifications_provider.dart'
    as _i126;
import '../../presentationUser/AttendanceAndDepartureNotifications/data/repositories/attendance_and_departure_notifications_repository.dart'
    as _i127;
import '../../presentationUser/AttendanceAndDepartureNotifications/presentation/pages/add/cubit/add_attendance_and_departure_notifications_cubit.dart'
    as _i253;
import '../../presentationUser/AttendanceAndDepartureNotifications/presentation/pages/view/cubit/attendance_and_departure_notifications_cubit.dart'
    as _i267;
import '../../presentationUser/bail_requests/bloc/bail_requests_cubit.dart'
    as _i269;
import '../../presentationUser/collect_cash/bloc/collect_cash_cubit.dart'
    as _i277;
import '../../presentationUser/copyrights/bloc/copy_rights_bloc.dart' as _i280;
import '../../presentationUser/deliveryAndReceipt/bloc/delivery_and_receipt_cubit.dart'
    as _i152;
import '../../presentationUser/employeesCertificates/data/datasource/employees_certificates_provider.dart'
    as _i154;
import '../../presentationUser/employeesCertificates/data/repositories/employees_certificates_repository.dart'
    as _i155;
import '../../presentationUser/employeesCertificates/presentation/employeeCertificateDetails/bloc/employee_certificate_details_cubit.dart'
    as _i282;
import '../../presentationUser/employeesCertificates/presentation/employeesCertificates/bloc/employees_certificates_cubit.dart'
    as _i283;
import '../../presentationUser/favoriteprojects/bloc/favorite_projects_cubit.dart'
    as _i287;
import '../../presentationUser/files_preview/bloc/files_preview_cubit.dart'
    as _i28;
import '../../presentationUser/joboffers/bloc/job_offers_cubit.dart' as _i292;
import '../../presentationUser/loan_requests/add_new_loan_request/bloc/add_loan_request_bloc.dart'
    as _i259;
import '../../presentationUser/loan_requests/loan_requests/bloc/loan_requests_cubit.dart'
    as _i293;
import '../../presentationUser/mainnavigation/overview/bloc/overview_bloc.dart'
    as _i295;
import '../../presentationUser/mainnavigation/overview/bloc/overview_cubit.dart'
    as _i296;
import '../../presentationUser/mainnavigation/wallet/apply_details/bloc/apply_details_cubit.dart'
    as _i124;
import '../../presentationUser/mainnavigation/wallet/balances/bloc/balances_cubit.dart'
    as _i136;
import '../../presentationUser/mainnavigation/wallet/bloc/wallet_bloc.dart'
    as _i244;
import '../../presentationUser/mainnavigation/wallet/user_qrcode/bloc/qrcode_bloc.dart'
    as _i299;
import '../../presentationUser/mainnavigation/wallet/withdraw/bloc/withdraw_cubit.dart'
    as _i245;
import '../../presentationUser/map_picker/bloc/map_picker_cubit.dart' as _i44;
import '../../presentationUser/notificationOffers/bloc/notification_offers_cubit.dart'
    as _i294;
import '../../presentationUser/pledgesAndGeneralization/data/datasource/pledges_and_generalization_provider.dart'
    as _i193;
import '../../presentationUser/pledgesAndGeneralization/data/repositories/pledges_and_generalization_repository.dart'
    as _i194;
import '../../presentationUser/pledgesAndGeneralization/presentation/bloc/pledges_and_generalization_cubit.dart'
    as _i297;
import '../../presentationUser/profile/addHomeAddress/bloc/add_home_address_cubit.dart'
    as _i258;
import '../../presentationUser/profile/addresess/bloc/add_address_cubit.dart'
    as _i252;
import '../../presentationUser/profile/attachment/cubit/attachment_employees_bloc.dart'
    as _i125;
import '../../presentationUser/profile/change_password/bloc/change_password_cubit.dart'
    as _i274;
import '../../presentationUser/profile/requests/data/data_sources/requests_user_api_provider.dart'
    as _i204;
import '../../presentationUser/profile/requests/data/repositories/requests_user_repository.dart'
    as _i205;
import '../../presentationUser/profile/requests/presentation/pages/add/add_file_request/bloc/add_file_requests_cubit.dart'
    as _i256;
import '../../presentationUser/profile/requests/presentation/pages/add/add_request/bloc/add_requests_user_cubit.dart'
    as _i262;
import '../../presentationUser/profile/requests/presentation/pages/add/confairm/bloc/confirm_user_cubit.dart'
    as _i279;
import '../../presentationUser/profile/requests/presentation/pages/add/term_and_condation_request/bloc/term_and_condation_request_cubit.dart'
    as _i223;
import '../../presentationUser/profile/requests/presentation/pages/view/bloc/requests_user_cubit.dart'
    as _i302;
import '../../presentationUser/profile/view/bloc/profile_cubit.dart' as _i298;
import '../../presentationUser/rate/bloc/evaluation_cubit.dart' as _i284;
import '../../presentationUser/required_tasks/bloc/required_tasks_cubit.dart'
    as _i303;
import '../../presentationUser/required_tasks/confirm_attendance/bloc/confirm_attendance_cubit.dart'
    as _i278;
import '../../presentationUser/resume/bloc/resume_bloc.dart' as _i304;
import '../../presentationUser/resume/pages/favoritejobs/bloc/favorite_job_cubit.dart'
    as _i286;
import '../../presentationUser/salarydefinitionrequest/newrequest/bloc/salary_definition_request_bloc.dart'
    as _i263;
import '../../presentationUser/salarydefinitionrequest/requests/bloc/salary_definition_request_cubit.dart'
    as _i215;
import '../../presentationUser/vehiclesOperation/data/datasource/vehicles_operation_provider.dart'
    as _i201;
import '../../presentationUser/vehiclesOperation/data/repositories/vehicles_operation_repository.dart'
    as _i202;
import '../../presentationUser/vehiclesOperation/presentation/currentTourMap/chnage_operating_plane/bloc/change_operating_plane_cubit.dart'
    as _i273;
import '../../presentationUser/vehiclesOperation/presentation/currentTourMap/chnage_operating_plane/bloc/tour_history_cubit.dart'
    as _i227;
import '../../presentationUser/vehiclesOperation/presentation/currentTourMap/gasStationsPlan/cubit/gas_stations_plane_cubit.dart'
    as _i289;
import '../../presentationUser/vehiclesOperation/presentation/currentTourMap/tour_history/bloc/tour_history_cubit.dart'
    as _i228;
import '../../presentationUser/vehiclesOperation/presentation/currentTourMap/view/bloc/current_tour_map_cubit.dart'
    as _i281;
import '../../presentationUser/vehiclesOperation/presentation/pages/add/vehicle_components/bloc/vehicles_components_cubit.dart'
    as _i237;
import '../../presentationUser/vehiclesOperation/presentation/pages/add/vehicle_covenant/bloc/vehicles_custodies_cubit.dart'
    as _i240;
import '../../presentationUser/vehiclesOperation/presentation/pages/add/vehicle_info/bloc/info_vehicles_cubit.dart'
    as _i291;
import '../../presentationUser/vehiclesOperation/presentation/pages/view/bloc/receive_vehicles_cubit.dart'
    as _i301;
import '../../presentationUser/vehiclesOperation/presentation/receiveVehicle/details/bloc/receive_vehicle_details_cubit.dart'
    as _i300;
import '../../presentationUser/vehiclesOperation/presentation/startTour/bloc/start_tour_bloc.dart'
    as _i221;
import '../../presentationUser/verification/bloc/verification_bloc.dart'
    as _i242;
import '../../presentationUser/violations/data/data_sources/violations_user_api.dart'
    as _i74;
import '../../presentationUser/violations/data/repositories/violations_user_repository.dart'
    as _i75;
import '../../presentationUser/violations/presentation/bloc/violations_user_cubit.dart'
    as _i243;
import '../../presentationUser/withdraw_accounts/add_phone_wallet/bloc/phone_wallet_cubit.dart'
    as _i192;
import '../../presentationUser/withdraw_accounts/bankaccont/bloc/bank_account_cubit.dart'
    as _i270;
import '../../presentationUser/workerWorkPlaces/bloc/worker_work_places_cubit.dart'
    as _i248;
import '../../presentationUser/workHazards/data/datasource/work_hazards_provider.dart'
    as _i78;
import '../../presentationUser/workHazards/data/models/index.dart' as _i80;
import '../../presentationUser/workHazards/data/repositories/work_hazards_repository.dart'
    as _i79;
import '../../presentationUser/workHazards/presentation/addWorkHazard/bloc/add_work_hazard_bloc.dart'
    as _i115;
import '../../presentationUser/workHazards/presentation/details/bloc/work_hazard_details_cubit.dart'
    as _i246;
import '../../presentationUser/workHazards/presentation/view/bloc/work_hazards_cubit.dart'
    as _i247;
import '../../presentationUser/working_document/data/datasource/working_document_provider.dart'
    as _i83;
import '../../presentationUser/working_document/data/repositories/working_document_repository.dart'
    as _i84;
import '../../presentationUser/working_document/presentation/Installment_postponement/bloc/Installment_postponement_cubit.dart'
    as _i174;
import '../../presentationUser/working_document/presentation/installment_with_cashift/bloc/installment_with_cashift_cubit.dart'
    as _i175;
import '../../presentationUser/working_document/presentation/pay_with_salary/bloc/pay_with_salary_cubit.dart'
    as _i190;
import '../../presentationUser/working_document/presentation/terms_conditions_certificate_payment/bloc/terms_conditions_certificate_payment_cubit.dart'
    as _i225;
import '../../presentationUser/working_document/presentation/workingDocument/bloc/working_document_cubit.dart'
    as _i249;
import '../../shared/authorization/forgetpassword/bloc/forgetpassword_bloc.dart'
    as _i167;
import '../../shared/authorization/login/bloc/login_bloc.dart' as _i184;
import '../../shared/home/bloc/home_bloc.dart' as _i290;
import '../../shared/loans/data/data_sources/chashift_lons_provider.dart'
    as _i144;
import '../../shared/loans/data/repositories/chashift_loans_repository.dart'
    as _i145;
import '../../shared/loans/presentation/collectionData/cubit/CollectionDataCubit.dart'
    as _i15;
import '../../shared/loans/presentation/view/bloc/chashift_loans_cubit.dart'
    as _i275;
import '../../shared/services/bloc/services_cubit.dart' as _i219;
import '../../shared/splash/bloc/splash_cubit.dart' as _i220;
import '../addOpportunity/data/datasource/add_opp_api_provider.dart' as _i106;
import '../addOpportunity/data/models/index.dart' as _i158;
import '../addOpportunity/data/repositories/add_opportunity_repository.dart'
    as _i107;
import '../addOpportunity/presentations/bloc/add_opportunity_cubit.dart'
    as _i261;
import '../addOpportunity/presentations/employees_opportunities/bloc/employees_opportunities_cubit.dart'
    as _i157;
import '../admin_wallet/data/data_sources/admin_wallet_provider.dart' as _i5;
import '../admin_wallet/data/models/index.dart' as _i120;
import '../admin_wallet/data/repositories/admin_wallet_repository.dart' as _i6;
import '../admin_wallet/presentation/cubit/admin_wallet_bloc.dart' as _i119;
import '../areapolygones/data/datasource/vehicles_zone_provider.dart' as _i72;
import '../areapolygones/data/repositories/vehicles_zone_repository.dart'
    as _i73;
import '../areapolygones/presentation/add/bloc/add_vehicles_zone_bloc.dart'
    as _i114;
import '../areapolygones/presentation/filter/bloc/filter_vehicles_zone_cubit.dart'
    as _i164;
import '../areapolygones/presentation/polygonsmap/bloc/draw_polygon_cubit.dart'
    as _i19;
import '../areapolygones/presentation/view/bloc/vehicles_zone_cubit.dart'
    as _i241;
import '../attendanceNotificationsReports/data/datasource/attendance_notifications_reports_provider.dart'
    as _i7;
import '../attendanceNotificationsReports/data/repositories/attendance_notifications_reports_repository.dart'
    as _i8;
import '../attendanceNotificationsReports/presentation/pages/cubit/attendance_notifications_reports_cubit.dart'
    as _i129;
import '../attendanceNotificationsReports/presentation/pages/cubit/fillter_attendance_notifications_reports_cubit.dart'
    as _i29;
import '../available_opportunities/presentation/opportunities/bloc/available%20_opportunities_cubit.dart'
    as _i133;
import '../banEmployees/data/datasource/ban_employees_provider.dart' as _i9;
import '../banEmployees/data/models/index.dart' as _i138;
import '../banEmployees/data/repositories/ban_employees_repository.dart'
    as _i10;
import '../banEmployees/presentation/banEmployeeDetails/bloc/ban_employee_details_cubit.dart'
    as _i137;
import '../banEmployees/presentation/banEmployees/bloc/ban_employees_cubit.dart'
    as _i139;
import '../cashiftersLoans/data/datasource/cashifters_loans_provider.dart'
    as _i11;
import '../cashiftersLoans/data/repositories/cashifters_loans_repository.dart'
    as _i12;
import '../cashiftersLoans/presentation/add_cashifter_loan/bloc/add_cashifter_loan_bloc.dart'
    as _i94;
import '../classification/data/datasource/classification_provider.dart' as _i13;
import '../classification/data/repositories/classification_repository.dart'
    as _i14;
import '../classification/presentation/addClassification/bloc/classification_cubit.dart'
    as _i95;
import '../classification/presentation/classification/bloc/classification_cubit.dart'
    as _i146;
import '../employeeMap/data/datasource/employee_map_provider.dart' as _i20;
import '../employeeMap/data/repositories/emp_map_repository.dart' as _i21;
import '../employeeMap/presentation/bloc/filter_employee_map_cubit.dart'
    as _i288;
import '../employeeMap/presentation/bloc/search_employee_map_cubit.dart'
    as _i216;
import '../employees/data/datasource/employees_provider.dart' as _i22;
import '../employees/data/models/index.dart' as _i104;
import '../employees/data/repositories/employees_repository.dart' as _i23;
import '../employees/presentation/addNewEmployees/bloc/add_new_employees_bloc.dart'
    as _i103;
import '../employees/presentation/employees/bloc/employees_cubit.dart' as _i156;
import '../employees/presentation/employees/pages/attendance/cubit/employees_attendance_cubit.dart'
    as _i153;
import '../employmentManagement/data/datasource/employment_management_provider.dart'
    as _i24;
import '../employmentManagement/data/models/index.dart' as _i51;
import '../employmentManagement/data/repositories/employment_management_repository.dart'
    as _i25;
import '../employmentManagement/presentation/employmentManagement/bloc/employment_management_cubit.dart'
    as _i159;
import '../employmentManagement/presentation/resetMobileNumber/bloc/reset_mobile_number_cubit.dart'
    as _i50;
import '../employmentOfficials/data/datasource/employment_officials_provider.dart'
    as _i26;
import '../employmentOfficials/data/models/index.dart' as _i255;
import '../employmentOfficials/data/repositories/employment_officials_repository.dart'
    as _i27;
import '../employmentOfficials/presentation/addEmploymentOfficial/bloc/add_employment_official_bloc.dart'
    as _i254;
import '../employmentOfficials/presentation/employmentOfficials/bloc/employment_officials_cubit.dart'
    as _i160;
import '../focusPoints/data/datasource/focus_point_api_provider.dart' as _i30;
import '../focusPoints/data/models/index.dart' as _i97;
import '../focusPoints/data/repositories/focus_points_repository.dart' as _i31;
import '../focusPoints/presentations/add_focus_point/bloc/add_covenant_received_cubit.dart'
    as _i150;
import '../focusPoints/presentations/add_focus_point/bloc/add_focus_point_data_cubit.dart'
    as _i96;
import '../focusPoints/presentations/add_focus_point/bloc/add_focus_point_times_cubit.dart'
    as _i98;
import '../focusPoints/presentations/focusPoints/bloc/focus_point_cubit.dart'
    as _i165;
import '../focusPoints/presentations/trackingFocusPoints/bloc/tracking_focus_points_cubit.dart'
    as _i63;
import '../gasStations/data/data_sources/gas_stations_provider.dart' as _i32;
import '../gasStations/data/repositories/gas_stations_repository.dart' as _i33;
import '../gasStations/presentation/pages/add/bloc/add_gas_stations_bloc.dart'
    as _i257;
import '../gasStations/presentation/pages/view/bloc/gas_stations_bloc.dart'
    as _i168;
import '../generalViolations/data/datasource/general_violations_provider.dart'
    as _i34;
import '../generalViolations/data/models/index.dart' as _i36;
import '../generalViolations/data/repositories/general_violations_repository.dart'
    as _i35;
import '../generalViolations/presentation/addTypeViolation/bloc/add_type_violation_bloc.dart'
    as _i112;
import '../generalViolations/presentation/addViolation/bloc/add_general_violation_bloc.dart'
    as _i99;
import '../generalViolations/presentation/details/bloc/general_violation_details_cubit.dart'
    as _i170;
import '../generalViolations/presentation/followUpViolations/bloc/action_follow_up_violation_cubit.dart'
    as _i87;
import '../generalViolations/presentation/followUpViolations/bloc/follow_up_violations_cubit.dart'
    as _i166;
import '../generalViolations/presentation/view/bloc/general_violations_cubit.dart'
    as _i171;
import '../generalViolations/presentation/viewTypesViolations/bloc/general_types_violations_cubit.dart'
    as _i169;
import '../jobRequirements/data/data_sources/job_requirements_api.dart' as _i37;
import '../jobRequirements/data/models/index.dart' as _i179;
import '../jobRequirements/data/repositories/job_requirement_repo.dart' as _i38;
import '../jobRequirements/presentation/bloc/job_requirements_cubit.dart'
    as _i178;
import '../jobUniform/data/datasource/job_uniform_provider.dart' as _i39;
import '../jobUniform/data/repositories/job_uniform_repository.dart' as _i40;
import '../jobUniform/presentation/bloc/add_job_uniform_bloc.dart' as _i102;
import '../opportunity_details/applied_details/bloc/applied_details_cubit.dart'
    as _i123;
import '../opportunity_details/bloc/opportunity_details_cubit.dart' as _i188;
import '../overview/presentation/bloc/admin_overview_cubit.dart' as _i264;
import '../projectsManagement/data/datasource/projects_management_provider.dart'
    as _i45;
import '../projectsManagement/data/models/index.dart' as _i100;
import '../projectsManagement/data/repositories/projects_management_repository.dart'
    as _i46;
import '../projectsManagement/presentation/addNewProject/bloc/add_additional_locations_bloc.dart'
    as _i117;
import '../projectsManagement/presentation/addNewProject/bloc/add_new_project_bloc.dart'
    as _i260;
import '../projectsManagement/presentation/addNewProject/bloc/add_period_pricing_cubit.dart'
    as _i191;
import '../projectsManagement/presentation/addNewProject/bloc/add_working_period_bloc.dart'
    as _i116;
import '../projectsManagement/presentation/addNewProject/bloc/map_project_gates_bloc.dart'
    as _i185;
import '../projectsManagement/presentation/addNewProject/bloc/project_successfully_bloc.dart'
    as _i197;
import '../projectsManagement/presentation/projectsManagement/bloc/projects_management_cubit.dart'
    as _i198;
import '../punishments/data/datasource/punishments_provider.dart' as _i48;
import '../punishments/data/models/index.dart' as _i109;
import '../punishments/data/repositories/punishments_repository.dart' as _i49;
import '../punishments/presentation/addPunishment/bloc/add_punishment_bloc.dart'
    as _i108;
import '../punishments/presentation/punishments/bloc/punishments_cubit.dart'
    as _i200;
import '../reviewShifts/data/data_sources/review_opportunities_api.dart'
    as _i52;
import '../reviewShifts/data/models/index.dart' as _i212;
import '../reviewShifts/data/repositories/review_opportunities_repository.dart'
    as _i53;
import '../reviewShifts/presentation/bloc/review_opportunities_cubit.dart'
    as _i211;
import '../reviewShifts/presentation/shiftPaymentRequest/bloc/shift_payment_request%20_cubit.dart'
    as _i54;
import '../shared/data/data_sources/today_opportunity_api_provider.dart'
    as _i59;
import '../shared/data/repositories/today_opportunity_repository.dart' as _i60;
import '../shared/domain/usecases/citys_usecase.dart' as _i276;
import '../shared/domain/usecases/companies_usecase.dart' as _i149;
import '../shared/domain/usecases/jobs_usecase.dart' as _i180;
import '../shared/domain/usecases/projects_usecase.dart' as _i47;
import '../terms_and_conditions/data/data_sources/terms_and_conditions_api.dart'
    as _i55;
import '../terms_and_conditions/data/models/index.dart' as _i58;
import '../terms_and_conditions/data/repositories/terms_and_conditions_repo.dart'
    as _i56;
import '../terms_and_conditions/presentation/tasksAndResponsibilities/add/bloc/add_task_and_responsibility_cubit.dart'
    as _i110;
import '../terms_and_conditions/presentation/tasksAndResponsibilities/view/bloc/tasks_and_responsibilities_cubit.dart'
    as _i222;
import '../terms_and_conditions/presentation/termsAndConditions/add/bloc/add_term_and_condition_cubit.dart'
    as _i111;
import '../terms_and_conditions/presentation/termsAndConditions/view/bloc/terms_and_conditions_cubit.dart'
    as _i57;
import '../trackAttendanceDeparture/data/datasource/track_attendance_departure_provider.dart'
    as _i61;
import '../trackAttendanceDeparture/data/repositories/track_attendance_departure_repository.dart'
    as _i62;
import '../trackAttendanceDeparture/presentation/add/bloc/request_track_attendance_departure_bloc.dart'
    as _i203;
import '../trackAttendanceDeparture/presentation/details/bloc/track_attendance_departure_details_cubit.dart'
    as _i230;
import '../trackAttendanceDeparture/presentation/view/bloc/track_attendance_departure_cubit.dart'
    as _i229;
import '../usersManagement/data/datasource/users_management_provider.dart'
    as _i66;
import '../usersManagement/data/models/index.dart' as _i101;
import '../usersManagement/data/repositories/users_management_repository.dart'
    as _i67;
import '../usersManagement/presentation/addNewUser/bloc/add_new_user_bloc.dart'
    as _i105;
import '../usersManagement/presentation/changeUserPassword/bloc/change_user_password_bloc.dart'
    as _i143;
import '../usersManagement/presentation/usersManagement/bloc/users_management_cubit.dart'
    as _i232;
import '../usersRequests/data/datasource/users_requests_provider.dart' as _i68;
import '../usersRequests/data/repositories/users_requests_repository.dart'
    as _i69;
import '../usersRequests/presentation/bloc/user_request_terms_cubit.dart'
    as _i231;
import '../usersRequests/presentation/bloc/users_requests_cubit.dart' as _i233;
import '../vehicles/data/datasource/vehicles_provider.dart' as _i70;
import '../vehicles/data/models/index.dart' as _i89;
import '../vehicles/data/repositories/vehicles_repository.dart' as _i71;
import '../vehicles/presentation/add/bloc/additional_vehicle_specifications_cubit.dart'
    as _i118;
import '../vehicles/presentation/add/bloc/basic_vehicle_info_cubit.dart'
    as _i142;
import '../vehicles/presentation/add/bloc/covenants_vehicles_cubit.dart'
    as _i151;
import '../vehicles/presentation/add/bloc/vehicle_plate_license_info_cubit.dart'
    as _i234;
import '../vehicles/presentation/vehicleReceiveRequests/bloc/action_vehicle_receive_request_cubit.dart'
    as _i88;
import '../vehicles/presentation/vehicleReceiveRequests/bloc/vehicle_receive_requests_cubit.dart'
    as _i235;
import '../vehicles/presentation/view/bloc/vehicles_cubit.dart' as _i238;
import '../vehicles/presentation/violations/add/bloc/add_vehicle_violation_bloc.dart'
    as _i113;
import '../vehicles/presentation/violations/details/bloc/vehicle_violation_details_cubit.dart'
    as _i236;
import '../vehicles/presentation/violations/view/bloc/vehicle_violations_cubit.dart'
    as _i239;
import 'injection_module.dart' as _i305;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.AdminEndpoint>(() => _i3.AdminEndpoint(gh<_i4.Dio>()));
  gh.factory<_i5.AdminWalletAPI>(
      () => _i5.AdminWalletAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i6.AdminWalletRepository>(
      () => _i6.AdminWalletRepository(gh<_i5.AdminWalletAPI>()));
  gh.factory<_i7.AttendanceNotificationsReportsAPI>(() =>
      _i7.AttendanceNotificationsReportsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i8.AttendanceNotificationsReportsRepository>(() =>
      _i8.AttendanceNotificationsReportsRepository(
          gh<_i7.AttendanceNotificationsReportsAPI>()));
  gh.factory<_i9.BanEmployeesAPI>(
      () => _i9.BanEmployeesAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i10.BanEmployeesRepository>(
      () => _i10.BanEmployeesRepository(gh<_i9.BanEmployeesAPI>()));
  gh.factory<_i11.CashiftersLoansAPI>(
      () => _i11.CashiftersLoansAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i12.CashiftersLoansRepository>(
      () => _i12.CashiftersLoansRepository(gh<_i11.CashiftersLoansAPI>()));
  gh.factory<_i13.ClassificationAPI>(
      () => _i13.ClassificationAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i14.ClassificationRepository>(
      () => _i14.ClassificationRepository(gh<_i13.ClassificationAPI>()));
  gh.factory<_i15.CollectionDataCubit>(() => _i15.CollectionDataCubit());
  gh.factory<_i16.ConfigurationEndpoint>(
      () => _i16.ConfigurationEndpoint(gh<_i4.Dio>()));
  await gh.factoryAsync<_i17.Device>(
    () => injectionModule.deviceInfo,
    preResolve: true,
  );
  gh.factory<_i18.DeviceInfoRepository>(() => _i18.DeviceInfoRepository());
  gh.factory<_i19.DrawPolygonWithMarkersCubit>(
      () => _i19.DrawPolygonWithMarkersCubit());
  gh.factory<_i20.EmployeeMapAPI>(
      () => _i20.EmployeeMapAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i21.EmployeeMapRepository>(
      () => _i21.EmployeeMapRepository(gh<_i20.EmployeeMapAPI>()));
  gh.factory<_i22.EmployeesAPI>(
      () => _i22.EmployeesAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i23.EmployeesRepository>(
      () => _i23.EmployeesRepository(gh<_i22.EmployeesAPI>()));
  gh.factory<_i24.EmploymentManagementAPI>(
      () => _i24.EmploymentManagementAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i25.EmploymentManagementRepository>(() =>
      _i25.EmploymentManagementRepository(gh<_i24.EmploymentManagementAPI>()));
  gh.factory<_i26.EmploymentOfficialsAPI>(
      () => _i26.EmploymentOfficialsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i27.EmploymentOfficialsRepository>(() =>
      _i27.EmploymentOfficialsRepository(gh<_i26.EmploymentOfficialsAPI>()));
  gh.factory<_i28.FilesPreviewCubit>(() => _i28.FilesPreviewCubit());
  gh.factory<_i29.FilterAttendanceNotificationsReportsCubit>(() =>
      _i29.FilterAttendanceNotificationsReportsCubit(
          gh<_i23.EmployeesRepository>()));
  gh.factory<_i30.FocusPointsAPI>(
      () => _i30.FocusPointsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i31.FocusPointsRepository>(
      () => _i31.FocusPointsRepository(gh<_i30.FocusPointsAPI>()));
  gh.factory<_i32.GasStationsAPI>(
      () => _i32.GasStationsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i33.GasStationsRepository>(
      () => _i33.GasStationsRepository(gh<_i32.GasStationsAPI>()));
  gh.factory<_i34.GeneralViolationsAPI>(
      () => _i34.GeneralViolationsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i35.GeneralViolationsRepository>(
      () => _i35.GeneralViolationsRepository(gh<_i36.GeneralViolationsAPI>()));
  gh.factory<_i37.JobRequirementsAPI>(
      () => _i37.JobRequirementsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i38.JobRequirementsRepository>(
      () => _i38.JobRequirementsRepository(gh<_i37.JobRequirementsAPI>()));
  gh.factory<_i39.JobUniformAPI>(
      () => _i39.JobUniformAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i40.JobUniformRepository>(
      () => _i40.JobUniformRepository(gh<_i39.JobUniformAPI>()));
  gh.factory<_i41.LocalRepository>(
      () => _i41.LocalRepository(preferences: gh<_i42.SharedPreferences>()));
  gh.factory<_i43.LoggerAPI>(() => _i43.LoggerAPI(gh<_i4.Dio>()));
  gh.factory<_i44.MapPickerCubit>(() => _i44.MapPickerCubit());
  gh.factory<_i45.ProjectsManagementAPI>(
      () => _i45.ProjectsManagementAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i46.ProjectsManagementRepository>(() =>
      _i46.ProjectsManagementRepository(gh<_i45.ProjectsManagementAPI>()));
  gh.factory<_i47.ProjectsUseCase>(
      () => _i47.ProjectsUseCase(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i48.PunishmentsAPI>(
      () => _i48.PunishmentsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i49.PunishmentsRepository>(
      () => _i49.PunishmentsRepository(gh<_i48.PunishmentsAPI>()));
  gh.factory<_i50.ResetMobileNumberCubit>(() =>
      _i50.ResetMobileNumberCubit(gh<_i51.EmploymentManagementRepository>()));
  gh.factory<_i52.ReviewOpportunitiesApi>(
      () => _i52.ReviewOpportunitiesApi(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i53.ReviewOpportunitiesRepository>(() =>
      _i53.ReviewOpportunitiesRepository(gh<_i52.ReviewOpportunitiesApi>()));
  await gh.factoryAsync<_i42.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i54.ShiftPaymentCubitCubit>(() =>
      _i54.ShiftPaymentCubitCubit(gh<_i53.ReviewOpportunitiesRepository>()));
  gh.factory<_i55.TermandConditionAPI>(
      () => _i55.TermandConditionAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i56.TermandConditionRepository>(
      () => _i56.TermandConditionRepository(gh<_i55.TermandConditionAPI>()));
  gh.factory<_i57.TermsAndConditionsCubit>(() => _i57.TermsAndConditionsCubit(
        gh<_i58.TermandConditionRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
      ));
  gh.factory<_i59.TodayOpportunityApiProvider>(
      () => _i59.TodayOpportunityApiProvider(gh<_i3.AdminEndpoint>()));
  gh.factory<_i60.TodayOpportunityRepository>(() =>
      _i60.TodayOpportunityRepository(gh<_i59.TodayOpportunityApiProvider>()));
  gh.factory<_i61.TrackAttendanceDepartureAPI>(
      () => _i61.TrackAttendanceDepartureAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i62.TrackAttendanceDepartureRepository>(() =>
      _i62.TrackAttendanceDepartureRepository(
          gh<_i61.TrackAttendanceDepartureAPI>()));
  gh.factory<_i63.TrackingFocusPointsCubit>(
      () => _i63.TrackingFocusPointsCubit(gh<_i31.FocusPointsRepository>()));
  gh.factory<_i64.UserEndpoint>(() => _i64.UserEndpoint(gh<_i4.Dio>()));
  gh.factory<_i65.UserRepository>(
      () => _i65.UserRepository(gh<_i42.SharedPreferences>()));
  gh.factory<_i66.UsersManagementAPI>(
      () => _i66.UsersManagementAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i67.UsersManagementRepository>(
      () => _i67.UsersManagementRepository(gh<_i66.UsersManagementAPI>()));
  gh.factory<_i68.UsersRequestsAPI>(
      () => _i68.UsersRequestsAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i69.UsersRequestsRepository>(
      () => _i69.UsersRequestsRepository(gh<_i68.UsersRequestsAPI>()));
  gh.factory<_i70.VehiclesAPI>(
      () => _i70.VehiclesAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i71.VehiclesRepository>(
      () => _i71.VehiclesRepository(gh<_i70.VehiclesAPI>()));
  gh.factory<_i72.VehiclesZoneAPI>(
      () => _i72.VehiclesZoneAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i73.VehiclesZoneRepository>(
      () => _i73.VehiclesZoneRepository(gh<_i72.VehiclesZoneAPI>()));
  gh.factory<_i74.ViolationsUserAPI>(
      () => _i74.ViolationsUserAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i75.ViolationsUserRepository>(
      () => _i75.ViolationsUserRepository(gh<_i74.ViolationsUserAPI>()));
  gh.factory<_i76.WalletAPI>(() => _i76.WalletAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i77.WalletRepository>(
      () => _i77.WalletRepository(gh<_i76.WalletAPI>()));
  gh.factory<_i78.WorkHazardsAPI>(
      () => _i78.WorkHazardsAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i79.WorkHazardsRepository>(
      () => _i79.WorkHazardsRepository(gh<_i80.WorkHazardsAPI>()));
  gh.factory<_i81.WorkerWorkPlacesAPI>(
      () => _i81.WorkerWorkPlacesAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i82.WorkerWorkPlacesRepository>(
      () => _i82.WorkerWorkPlacesRepository(gh<_i81.WorkerWorkPlacesAPI>()));
  gh.factory<_i83.WorkingDocumentAPI>(
      () => _i83.WorkingDocumentAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i84.WorkingDocumentRepository>(
      () => _i84.WorkingDocumentRepository(gh<_i83.WorkingDocumentAPI>()));
  gh.factory<_i85.AbsenceNoticeAPI>(
      () => _i85.AbsenceNoticeAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i86.AbsenceNoticeRepository>(
      () => _i86.AbsenceNoticeRepository(gh<_i85.AbsenceNoticeAPI>()));
  gh.factory<_i87.ActionFollowUpViolationsCubit>(() =>
      _i87.ActionFollowUpViolationsCubit(
          gh<_i36.GeneralViolationsRepository>()));
  gh.factory<_i88.ActionVehicleReceiveRequestCubit>(() =>
      _i88.ActionVehicleReceiveRequestCubit(gh<_i89.VehiclesRepository>()));
  gh.factory<_i90.ActivityLogAPI>(
      () => _i90.ActivityLogAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i91.ActivityLogRepository>(
      () => _i91.ActivityLogRepository(gh<_i90.ActivityLogAPI>()));
  gh.factory<_i92.AddAddressAPI>(
      () => _i92.AddAddressAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i93.AddAddressRepository>(
      () => _i93.AddAddressRepository(gh<_i92.AddAddressAPI>()));
  gh.factory<_i94.AddCashifterLoanCubit>(() => _i94.AddCashifterLoanCubit(
        gh<_i12.CashiftersLoansRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
      ));
  gh.factory<_i95.AddClassificationCubit>(() => _i95.AddClassificationCubit(
        gh<_i14.ClassificationRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
      ));
  gh.factory<_i96.AddFocusPointDataCubit>(
      () => _i96.AddFocusPointDataCubit(gh<_i97.FocusPointsRepository>()));
  gh.factory<_i98.AddFocusPointTimesCubit>(
      () => _i98.AddFocusPointTimesCubit(gh<_i97.FocusPointsRepository>()));
  gh.factory<_i99.AddGeneralViolationCubit>(() => _i99.AddGeneralViolationCubit(
        gh<_i36.GeneralViolationsRepository>(),
        gh<_i100.ProjectsManagementRepository>(),
        gh<_i101.UsersManagementRepository>(),
        gh<_i97.FocusPointsRepository>(),
      ));
  gh.factory<_i102.AddJobUniformCubit>(() => _i102.AddJobUniformCubit(
        gh<_i40.JobUniformRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
      ));
  gh.factory<_i103.AddNewEmployeesCubit>(() => _i103.AddNewEmployeesCubit(
        gh<_i104.EmployeesRepository>(),
        gh<_i45.ProjectsManagementAPI>(),
        gh<_i67.UsersManagementRepository>(),
      ));
  gh.factory<_i105.AddNewUserCubit>(() => _i105.AddNewUserCubit(
        gh<_i101.UsersManagementRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
        gh<_i31.FocusPointsRepository>(),
      ));
  gh.factory<_i106.AddOpportunityAPI>(
      () => _i106.AddOpportunityAPI(api: gh<_i3.AdminEndpoint>()));
  gh.factory<_i107.AddOpportunityRepository>(
      () => _i107.AddOpportunityRepository(gh<_i106.AddOpportunityAPI>()));
  gh.factory<_i108.AddPunishmentCubit>(
      () => _i108.AddPunishmentCubit(gh<_i109.PunishmentsRepository>()));
  gh.factory<_i110.AddTaskAndResponsibilityCubit>(
      () => _i110.AddTaskAndResponsibilityCubit(
            gh<_i58.TermandConditionRepository>(),
            gh<_i100.ProjectsManagementRepository>(),
            gh<_i101.UsersManagementRepository>(),
          ));
  gh.factory<_i111.AddTermAndConditionCubit>(
      () => _i111.AddTermAndConditionCubit(
            gh<_i58.TermandConditionRepository>(),
            gh<_i46.ProjectsManagementRepository>(),
          ));
  gh.factory<_i112.AddTypeViolationCubit>(() => _i112.AddTypeViolationCubit(
        gh<_i36.GeneralViolationsRepository>(),
        gh<_i100.ProjectsManagementRepository>(),
        gh<_i101.UsersManagementRepository>(),
        gh<_i97.FocusPointsRepository>(),
      ));
  gh.factory<_i113.AddVehicleViolationCubit>(
      () => _i113.AddVehicleViolationCubit(gh<_i89.VehiclesRepository>()));
  gh.factory<_i114.AddVehiclesZoneCubit>(() => _i114.AddVehiclesZoneCubit(
        gh<_i73.VehiclesZoneRepository>(),
        gh<_i100.ProjectsManagementRepository>(),
        gh<_i101.UsersManagementRepository>(),
        gh<_i97.FocusPointsRepository>(),
        gh<_i89.VehiclesRepository>(),
      ));
  gh.factory<_i115.AddWorkHazardCubit>(() => _i115.AddWorkHazardCubit(
        gh<_i80.WorkHazardsRepository>(),
        gh<_i100.ProjectsManagementRepository>(),
        gh<_i101.UsersManagementRepository>(),
        gh<_i97.FocusPointsRepository>(),
      ));
  gh.factory<_i116.AddWorkingPeriodCubit>(() =>
      _i116.AddWorkingPeriodCubit(gh<_i100.ProjectsManagementRepository>()));
  gh.factory<_i117.AdditionalLocationsCubit>(() =>
      _i117.AdditionalLocationsCubit(gh<_i100.ProjectsManagementRepository>()));
  gh.factory<_i118.AdditionalVehicleSpecificationsCubit>(() =>
      _i118.AdditionalVehicleSpecificationsCubit(
          gh<_i71.VehiclesRepository>()));
  gh.factory<_i119.AdminWalletCubit>(() => _i119.AdminWalletCubit(
        gh<_i120.AdminWalletRepository>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i121.AdvancedFilterAPI>(
      () => _i121.AdvancedFilterAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i122.AdvancedFilterRepository>(
      () => _i122.AdvancedFilterRepository(gh<_i121.AdvancedFilterAPI>()));
  gh.factory<_i123.AppliedDetailsCubit>(() => _i123.AppliedDetailsCubit(
        gh<_i60.TodayOpportunityRepository>(),
        gh<_i25.EmploymentManagementRepository>(),
      ));
  gh.factory<_i124.ApplyDetailsCubit>(
      () => _i124.ApplyDetailsCubit(gh<_i77.WalletRepository>()));
  gh.factory<_i125.AttachmentEmployeesCubit>(
      () => _i125.AttachmentEmployeesCubit(gh<_i23.EmployeesRepository>()));
  gh.factory<_i126.AttendanceAndDepartureNotificationsAPI>(() =>
      _i126.AttendanceAndDepartureNotificationsAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i127.AttendanceAndDepartureNotificationsRepository>(() =>
      _i127.AttendanceAndDepartureNotificationsRepository(
          gh<_i126.AttendanceAndDepartureNotificationsAPI>()));
  gh.factory<_i128.AttendanceApi>(
      () => _i128.AttendanceApi(gh<_i64.UserEndpoint>()));
  gh.factory<_i129.AttendanceNotificationsReportsCubit>(
      () => _i129.AttendanceNotificationsReportsCubit(
            gh<_i8.AttendanceNotificationsReportsRepository>(),
            gh<_i23.EmployeesRepository>(),
          ));
  gh.factory<_i130.AttendanceRepository>(
      () => _i130.AttendanceRepository(gh<_i128.AttendanceApi>()));
  gh.factory<_i131.AuthAPI>(() => _i131.AuthAPI(api: gh<_i64.UserEndpoint>()));
  gh.factory<_i132.AuthRepository>(() => _i132.AuthRepository(
        gh<_i131.AuthAPI>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i133.AvailableOpportunitiesCubit>(
      () => _i133.AvailableOpportunitiesCubit(
            gh<_i60.TodayOpportunityRepository>(),
            gh<_i122.AdvancedFilterRepository>(),
          ));
  gh.factory<_i134.BailRequestsAPI>(
      () => _i134.BailRequestsAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i135.BailRequestsRepository>(
      () => _i135.BailRequestsRepository(gh<_i134.BailRequestsAPI>()));
  gh.factory<_i136.BalancesCubit>(
      () => _i136.BalancesCubit(gh<_i77.WalletRepository>()));
  gh.factory<_i137.BanEmployeeDetailsCubit>(
      () => _i137.BanEmployeeDetailsCubit(gh<_i138.BanEmployeesRepository>()));
  gh.factory<_i139.BanEmployeesCubit>(
      () => _i139.BanEmployeesCubit(gh<_i138.BanEmployeesRepository>()));
  gh.factory<_i140.BankAPI>(() => _i140.BankAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i141.BankRepository>(
      () => _i141.BankRepository(gh<_i140.BankAPI>()));
  gh.factory<_i142.BasicVehicleInformationCubit>(
      () => _i142.BasicVehicleInformationCubit(
            gh<_i71.VehiclesRepository>(),
            gh<_i100.ProjectsManagementRepository>(),
            gh<_i101.UsersManagementRepository>(),
          ));
  gh.factory<_i143.ChangeUserPasswordCubit>(() =>
      _i143.ChangeUserPasswordCubit(gh<_i67.UsersManagementRepository>()));
  gh.factory<_i144.ChashiftLonsAPI>(
      () => _i144.ChashiftLonsAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i145.ChashiftLonsRepository>(
      () => _i145.ChashiftLonsRepository(gh<_i144.ChashiftLonsAPI>()));
  gh.factory<_i146.ClassificationCubit>(
      () => _i146.ClassificationCubit(gh<_i14.ClassificationRepository>()));
  gh.factory<_i147.CollectCashAPI>(
      () => _i147.CollectCashAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i148.CollectCashRepository>(
      () => _i148.CollectCashRepository(gh<_i147.CollectCashAPI>()));
  gh.factory<_i149.CompaniesUseCase>(
      () => _i149.CompaniesUseCase(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i150.CovenantReceivedCubit>(() => _i150.CovenantReceivedCubit(
        gh<_i31.FocusPointsRepository>(),
        gh<_i82.WorkerWorkPlacesRepository>(),
      ));
  gh.factory<_i151.CovenantsVehiclesCubit>(
      () => _i151.CovenantsVehiclesCubit(gh<_i71.VehiclesRepository>()));
  gh.factory<_i152.DeliveryAndReceiptCubit>(() =>
      _i152.DeliveryAndReceiptCubit(gh<_i82.WorkerWorkPlacesRepository>()));
  gh.factory<_i153.EmployeesAttendanceCubit>(
      () => _i153.EmployeesAttendanceCubit(gh<_i23.EmployeesRepository>()));
  gh.factory<_i154.EmployeesCertificatesAPI>(
      () => _i154.EmployeesCertificatesAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i155.EmployeesCertificatesItemRepository>(() =>
      _i155.EmployeesCertificatesItemRepository(
          gh<_i154.EmployeesCertificatesAPI>()));
  gh.factory<_i156.EmployeesCubit>(
      () => _i156.EmployeesCubit(gh<_i23.EmployeesRepository>()));
  gh.factory<_i157.EmployeesOpportunitiesCubit>(() =>
      _i157.EmployeesOpportunitiesCubit(gh<_i158.AddOpportunityRepository>()));
  gh.factory<_i159.EmploymentManagementCubit>(
      () => _i159.EmploymentManagementCubit(
            gh<_i51.EmploymentManagementRepository>(),
            gh<_i31.FocusPointsRepository>(),
          ));
  gh.factory<_i160.EmploymentOfficialsCubit>(() =>
      _i160.EmploymentOfficialsCubit(gh<_i27.EmploymentOfficialsRepository>()));
  gh.factory<_i161.EvaluationApi>(
      () => _i161.EvaluationApi(gh<_i64.UserEndpoint>()));
  gh.factory<_i162.EvaluationRepository>(
      () => _i162.EvaluationRepository(gh<_i161.EvaluationApi>()));
  gh.factory<_i163.FavoriteProjectsApi>(
      () => _i163.FavoriteProjectsApi(gh<_i64.UserEndpoint>()));
  gh.factory<_i164.FilterVehiclesZoneCubit>(() => _i164.FilterVehiclesZoneCubit(
        gh<_i73.VehiclesZoneRepository>(),
        gh<_i97.FocusPointsRepository>(),
        gh<_i101.UsersManagementRepository>(),
        gh<_i100.ProjectsManagementRepository>(),
      ));
  gh.factory<_i165.FocusPointCubit>(
      () => _i165.FocusPointCubit(gh<_i31.FocusPointsRepository>()));
  gh.factory<_i166.FollowUpViolationsCubit>(() =>
      _i166.FollowUpViolationsCubit(gh<_i36.GeneralViolationsRepository>()));
  gh.factory<_i167.ForgetPasswordCubit>(
      () => _i167.ForgetPasswordCubit(gh<_i132.AuthRepository>()));
  gh.factory<_i168.GasStationsCubit>(
      () => _i168.GasStationsCubit(gh<_i33.GasStationsRepository>()));
  gh.factory<_i169.GeneralTypesViolationsCubit>(() =>
      _i169.GeneralTypesViolationsCubit(
          gh<_i35.GeneralViolationsRepository>()));
  gh.factory<_i170.GeneralViolationCubit>(() =>
      _i170.GeneralViolationCubit(gh<_i36.GeneralViolationsRepository>()));
  gh.factory<_i171.GeneralViolationsCubit>(() =>
      _i171.GeneralViolationsCubit(gh<_i35.GeneralViolationsRepository>()));
  gh.factory<_i172.HomeAPI>(() => _i172.HomeAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i173.HomeRepository>(
      () => _i173.HomeRepository(gh<_i172.HomeAPI>()));
  gh.factory<_i174.InstallmentPostponementCubit>(() =>
      _i174.InstallmentPostponementCubit(gh<_i84.WorkingDocumentRepository>()));
  gh.factory<_i175.InstallmentWithCashiftCubit>(() =>
      _i175.InstallmentWithCashiftCubit(gh<_i84.WorkingDocumentRepository>()));
  gh.factory<_i176.JobOffersAPI>(
      () => _i176.JobOffersAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i177.JobOffersRepository>(
      () => _i177.JobOffersRepository(gh<_i176.JobOffersAPI>()));
  gh.factory<_i178.JobRequirementsCubit>(
      () => _i178.JobRequirementsCubit(gh<_i179.JobRequirementsRepository>()));
  gh.factory<_i180.JobsUseCase>(
      () => _i180.JobsUseCase(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i181.LoansRequestAPI>(
      () => _i181.LoansRequestAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i182.LoansRequestRepository>(
      () => _i182.LoansRequestRepository(gh<_i181.LoansRequestAPI>()));
  gh.factory<_i183.LoggerRepository>(
      () => _i183.LoggerRepository(gh<_i65.UserRepository>()));
  gh.factory<_i184.LoginBloc>(() => _i184.LoginBloc(
        gh<_i132.AuthRepository>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i185.MapProjectGatesCubit>(() =>
      _i185.MapProjectGatesCubit(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i186.NotificationOffersAPI>(
      () => _i186.NotificationOffersAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i187.NotificationOffersRepository>(() =>
      _i187.NotificationOffersRepository(gh<_i186.NotificationOffersAPI>()));
  gh.factory<_i188.OpportunityDetailsCubit>(() =>
      _i188.OpportunityDetailsCubit(gh<_i60.TodayOpportunityRepository>()));
  gh.factory<_i189.OvertimeAttendanceCubit>(
      () => _i189.OvertimeAttendanceCubit(gh<_i130.AttendanceRepository>()));
  gh.factory<_i190.PayWithSalaryCubit>(
      () => _i190.PayWithSalaryCubit(gh<_i84.WorkingDocumentRepository>()));
  gh.factory<_i191.PeriodPricingCubit>(
      () => _i191.PeriodPricingCubit(gh<_i100.ProjectsManagementRepository>()));
  gh.factory<_i192.PhoneWalletCubit>(
      () => _i192.PhoneWalletCubit(gh<_i141.BankRepository>()));
  gh.factory<_i193.PledgesAndGeneralizationAPI>(
      () => _i193.PledgesAndGeneralizationAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i194.PledgesAndGeneralizationRepository>(() =>
      _i194.PledgesAndGeneralizationRepository(
          gh<_i193.PledgesAndGeneralizationAPI>()));
  gh.factory<_i195.ProfileAPI>(() => _i195.ProfileAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i196.ProfileRepository>(() => _i196.ProfileRepository(
        gh<_i195.ProfileAPI>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i197.ProjectSuccessfullyCubit>(() =>
      _i197.ProjectSuccessfullyCubit(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i198.ProjectsManagementCubit>(() =>
      _i198.ProjectsManagementCubit(gh<_i46.ProjectsManagementRepository>()));
  gh.factory<_i199.ProjectsRepository>(
      () => _i199.ProjectsRepository(gh<_i163.FavoriteProjectsApi>()));
  gh.factory<_i200.PunishmentsCubit>(
      () => _i200.PunishmentsCubit(gh<_i49.PunishmentsRepository>()));
  gh.factory<_i201.ReceiveVehiclesAPI>(
      () => _i201.ReceiveVehiclesAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i202.ReceiveVehiclesRepository>(
      () => _i202.ReceiveVehiclesRepository(gh<_i201.ReceiveVehiclesAPI>()));
  gh.factory<_i203.RequestTrackAttendanceDepartureCubit>(
      () => _i203.RequestTrackAttendanceDepartureCubit(
            gh<_i62.TrackAttendanceDepartureRepository>(),
            gh<_i101.UsersManagementRepository>(),
          ));
  gh.factory<_i204.RequestsUserAPI>(
      () => _i204.RequestsUserAPI(api: gh<_i64.UserEndpoint>()));
  gh.factory<_i205.RequestsUserRepository>(
      () => _i205.RequestsUserRepository(gh<_i204.RequestsUserAPI>()));
  gh.factory<_i206.RequiredTasksUseCase>(
      () => _i206.RequiredTasksUseCase(gh<_i177.JobOffersRepository>()));
  gh.factory<_i207.RespondDashboardRequiredActionUseCase>(() =>
      _i207.RespondDashboardRequiredActionUseCase(
          gh<_i177.JobOffersRepository>()));
  gh.factory<_i208.RespondRequiredTaskUseCase>(
      () => _i208.RespondRequiredTaskUseCase(gh<_i177.JobOffersRepository>()));
  gh.factory<_i209.ResumeAPI>(() => _i209.ResumeAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i210.ResumeRepository>(() => _i210.ResumeRepository(
        gh<_i209.ResumeAPI>(),
        gh<_i42.SharedPreferences>(),
      ));
  gh.factory<_i211.ReviewOpportunitiesCubit>(() =>
      _i211.ReviewOpportunitiesCubit(
          gh<_i212.ReviewOpportunitiesRepository>()));
  gh.factory<_i213.SalaryDefinitionAPI>(
      () => _i213.SalaryDefinitionAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i214.SalaryDefinitionRepository>(
      () => _i214.SalaryDefinitionRepository(gh<_i213.SalaryDefinitionAPI>()));
  gh.factory<_i215.SalaryDefinitionRequestCubit>(() =>
      _i215.SalaryDefinitionRequestCubit(
          gh<_i214.SalaryDefinitionRepository>()));
  gh.factory<_i216.SearchEmployeeMapCubit>(() => _i216.SearchEmployeeMapCubit(
        gh<_i21.EmployeeMapRepository>(),
        gh<_i210.ResumeRepository>(),
      ));
  gh.factory<_i217.ServiceAPI>(() => _i217.ServiceAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i218.ServiceRepository>(
      () => _i218.ServiceRepository(gh<_i217.ServiceAPI>()));
  gh.factory<_i219.ServicesCubit>(() => _i219.ServicesCubit(
        gh<_i218.ServiceRepository>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i220.SplashCubit>(() => _i220.SplashCubit(
        gh<_i210.ResumeRepository>(),
        gh<_i65.UserRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i41.LocalRepository>(),
      ));
  gh.factory<_i221.StartTourCubit>(
      () => _i221.StartTourCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i222.TasksAndResponsibilitiesCubit>(
      () => _i222.TasksAndResponsibilitiesCubit(
            gh<_i58.TermandConditionRepository>(),
            gh<_i100.ProjectsManagementRepository>(),
          ));
  gh.factory<_i223.TermCondationRequestsUserCubit>(() =>
      _i223.TermCondationRequestsUserCubit(gh<_i205.RequestsUserRepository>()));
  gh.factory<_i224.TermsAPI>(() => _i224.TermsAPI(gh<_i64.UserEndpoint>()));
  gh.factory<_i225.TermsConditionsCertificatePaymentCubit>(() =>
      _i225.TermsConditionsCertificatePaymentCubit(
          gh<_i84.WorkingDocumentRepository>()));
  gh.factory<_i226.TermsRepository>(
      () => _i226.TermsRepository(gh<_i224.TermsAPI>()));
  gh.factory<_i227.TourHistoryCubit>(
      () => _i227.TourHistoryCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i228.TourHistoryCubit>(
      () => _i228.TourHistoryCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i229.TrackAttendanceDepartureCubit>(() =>
      _i229.TrackAttendanceDepartureCubit(
          gh<_i62.TrackAttendanceDepartureRepository>()));
  gh.factory<_i230.TrackAttendanceDepartureDetailsCubit>(() =>
      _i230.TrackAttendanceDepartureDetailsCubit(
          gh<_i62.TrackAttendanceDepartureRepository>()));
  gh.factory<_i231.UserRequestTermsCubit>(
      () => _i231.UserRequestTermsCubit(gh<_i69.UsersRequestsRepository>()));
  gh.factory<_i232.UsersManagementCubit>(
      () => _i232.UsersManagementCubit(gh<_i67.UsersManagementRepository>()));
  gh.factory<_i233.UsersRequestsCubit>(
      () => _i233.UsersRequestsCubit(gh<_i69.UsersRequestsRepository>()));
  gh.factory<_i234.VehiclePlateLicenseInfoCubit>(
      () => _i234.VehiclePlateLicenseInfoCubit(gh<_i71.VehiclesRepository>()));
  gh.factory<_i235.VehicleReceiveRequestsCubit>(
      () => _i235.VehicleReceiveRequestsCubit(gh<_i89.VehiclesRepository>()));
  gh.factory<_i236.VehicleViolationDetailsCubit>(
      () => _i236.VehicleViolationDetailsCubit(gh<_i89.VehiclesRepository>()));
  gh.factory<_i237.VehiclesComponentsCubit>(() =>
      _i237.VehiclesComponentsCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i238.VehiclesCubit>(
      () => _i238.VehiclesCubit(gh<_i71.VehiclesRepository>()));
  gh.factory<_i239.VehiclesCubit>(
      () => _i239.VehiclesCubit(gh<_i71.VehiclesRepository>()));
  gh.factory<_i240.VehiclesCustodiesCubit>(() =>
      _i240.VehiclesCustodiesCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i241.VehiclesZoneCubit>(
      () => _i241.VehiclesZoneCubit(gh<_i73.VehiclesZoneRepository>()));
  gh.factory<_i242.VerificationBloc>(
      () => _i242.VerificationBloc(gh<_i132.AuthRepository>()));
  gh.factory<_i243.ViolationsUserCubit>(
      () => _i243.ViolationsUserCubit(gh<_i75.ViolationsUserRepository>()));
  gh.factory<_i244.WalletCubit>(() => _i244.WalletCubit(
        gh<_i77.WalletRepository>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i245.WithdrawCubit>(() => _i245.WithdrawCubit(
        gh<_i77.WalletRepository>(),
        gh<_i141.BankRepository>(),
      ));
  gh.factory<_i246.WorkHazardDetailsCubit>(
      () => _i246.WorkHazardDetailsCubit(gh<_i79.WorkHazardsRepository>()));
  gh.factory<_i247.WorkHazardsCubit>(
      () => _i247.WorkHazardsCubit(gh<_i79.WorkHazardsRepository>()));
  gh.factory<_i248.WorkerWorkPlacesCubit>(
      () => _i248.WorkerWorkPlacesCubit(gh<_i82.WorkerWorkPlacesRepository>()));
  gh.factory<_i249.WorkingDocumentCubit>(
      () => _i249.WorkingDocumentCubit(gh<_i84.WorkingDocumentRepository>()));
  gh.factory<_i250.AbsenceNoticeCubit>(() => _i250.AbsenceNoticeCubit(
        gh<_i86.AbsenceNoticeRepository>(),
        gh<_i130.AttendanceRepository>(),
      ));
  gh.factory<_i251.ActivityLogCubit>(
      () => _i251.ActivityLogCubit(gh<_i91.ActivityLogRepository>()));
  gh.factory<_i252.AddAddressCubit>(
      () => _i252.AddAddressCubit(gh<_i93.AddAddressRepository>()));
  gh.factory<_i253.AddAttendanceAndDepartureNotificationsCubit>(() =>
      _i253.AddAttendanceAndDepartureNotificationsCubit(
          gh<_i127.AttendanceAndDepartureNotificationsRepository>()));
  gh.factory<_i254.AddEmploymentOfficialCubit>(
      () => _i254.AddEmploymentOfficialCubit(
            gh<_i255.EmploymentOfficialsRepository>(),
            gh<_i210.ResumeRepository>(),
          ));
  gh.factory<_i256.AddFileRequestsUserCubit>(
      () => _i256.AddFileRequestsUserCubit(gh<_i205.RequestsUserRepository>()));
  gh.factory<_i257.AddGasStationsCubit>(() => _i257.AddGasStationsCubit(
        gh<_i33.GasStationsRepository>(),
        gh<_i47.ProjectsUseCase>(),
        gh<_i149.CompaniesUseCase>(),
      ));
  gh.factory<_i258.AddHomeAddressCubit>(() => _i258.AddHomeAddressCubit(
        gh<_i93.AddAddressRepository>(),
        gh<_i210.ResumeRepository>(),
      ));
  gh.factory<_i259.AddLoanRequestCubit>(
      () => _i259.AddLoanRequestCubit(gh<_i182.LoansRequestRepository>()));
  gh.factory<_i260.AddNewProjectCubit>(() => _i260.AddNewProjectCubit(
        gh<_i100.ProjectsManagementRepository>(),
        gh<_i107.AddOpportunityRepository>(),
      ));
  gh.factory<_i261.AddOpportunityCubit>(() => _i261.AddOpportunityCubit(
        gh<_i158.AddOpportunityRepository>(),
        gh<_i46.ProjectsManagementRepository>(),
        gh<_i67.UsersManagementRepository>(),
      ));
  gh.factory<_i262.AddRequestsUserCubit>(
      () => _i262.AddRequestsUserCubit(gh<_i205.RequestsUserRepository>()));
  gh.factory<_i263.AddSalaryDefinitionRequestCubit>(() =>
      _i263.AddSalaryDefinitionRequestCubit(
          gh<_i214.SalaryDefinitionRepository>()));
  gh.factory<_i264.AdminOverviewCubit>(() => _i264.AdminOverviewCubit(
        gh<_i65.UserRepository>(),
        gh<_i60.TodayOpportunityRepository>(),
        gh<_i206.RequiredTasksUseCase>(),
      ));
  gh.factory<_i265.AdvancedFilterCubit>(() => _i265.AdvancedFilterCubit(
        gh<_i122.AdvancedFilterRepository>(),
        gh<_i42.SharedPreferences>(),
      ));
  gh.factory<_i266.AppliedOffersCubit>(() => _i266.AppliedOffersCubit(
        gh<_i177.JobOffersRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i183.LoggerRepository>(),
      ));
  gh.factory<_i267.AttendanceAndDepartureNotificationsCubit>(() =>
      _i267.AttendanceAndDepartureNotificationsCubit(
          gh<_i127.AttendanceAndDepartureNotificationsRepository>()));
  gh.factory<_i268.AttendanceCubit>(() => _i268.AttendanceCubit(
      attendanceRepository: gh<_i130.AttendanceRepository>()));
  gh.factory<_i269.BailRequestsCubit>(
      () => _i269.BailRequestsCubit(gh<_i135.BailRequestsRepository>()));
  gh.factory<_i270.BankAccountCubit>(
      () => _i270.BankAccountCubit(gh<_i141.BankRepository>()));
  gh.factory<_i271.CancelOpportunityApologizingCubit>(() =>
      _i271.CancelOpportunityApologizingCubit(gh<_i177.JobOffersRepository>()));
  gh.factory<_i272.CashiftAttendanceCubit>(() => _i272.CashiftAttendanceCubit(
        gh<_i196.ProfileRepository>(),
        gh<_i177.JobOffersRepository>(),
        gh<_i130.AttendanceRepository>(),
      ));
  gh.factory<_i273.ChangeOperatingPlaneCubit>(() =>
      _i273.ChangeOperatingPlaneCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i274.ChangePasswordCubit>(() => _i274.ChangePasswordCubit(
        gh<_i65.UserRepository>(),
        gh<_i196.ProfileRepository>(),
      ));
  gh.factory<_i275.ChashiftLoansCubit>(
      () => _i275.ChashiftLoansCubit(gh<_i145.ChashiftLonsRepository>()));
  gh.factory<_i276.CityUseCase>(
      () => _i276.CityUseCase(gh<_i210.ResumeRepository>()));
  gh.factory<_i277.CollectCashCubit>(
      () => _i277.CollectCashCubit(gh<_i148.CollectCashRepository>()));
  gh.factory<_i278.ConfirmAttendanceCubit>(() =>
      _i278.ConfirmAttendanceCubit(gh<_i208.RespondRequiredTaskUseCase>()));
  gh.factory<_i279.ConfirmRequestsUserCubit>(
      () => _i279.ConfirmRequestsUserCubit(gh<_i205.RequestsUserRepository>()));
  gh.factory<_i280.CopyRightsBloc>(
      () => _i280.CopyRightsBloc(gh<_i226.TermsRepository>()));
  gh.factory<_i281.CurrentTourMapCubit>(
      () => _i281.CurrentTourMapCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i282.EmployeeCertificateDetailsCubit>(() =>
      _i282.EmployeeCertificateDetailsCubit(
          gh<_i155.EmployeesCertificatesItemRepository>()));
  gh.factory<_i283.EmployeesCertificatesCubit>(() =>
      _i283.EmployeesCertificatesCubit(
          gh<_i155.EmployeesCertificatesItemRepository>()));
  gh.factory<_i284.EvaluationCubit>(
      () => _i284.EvaluationCubit(gh<_i162.EvaluationRepository>()));
  gh.factory<_i285.FaceRecognitionCubit>(
      () => _i285.FaceRecognitionCubit(gh<_i196.ProfileRepository>()));
  gh.factory<_i286.FavoriteJobsCubit>(
      () => _i286.FavoriteJobsCubit(gh<_i210.ResumeRepository>()));
  gh.factory<_i287.FavoriteProjectsCubit>(
      () => _i287.FavoriteProjectsCubit(gh<_i199.ProjectsRepository>()));
  gh.factory<_i288.FilterEmployeeMapCubit>(() => _i288.FilterEmployeeMapCubit(
        gh<_i46.ProjectsManagementRepository>(),
        gh<_i210.ResumeRepository>(),
      ));
  gh.factory<_i289.GasStationsPlaneCubit>(
      () => _i289.GasStationsPlaneCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i290.HomeBloc>(() => _i290.HomeBloc(
        gh<_i173.HomeRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i65.UserRepository>(),
        gh<_i202.ReceiveVehiclesRepository>(),
      ));
  gh.factory<_i291.InfoVehiclesCubit>(() => _i291.InfoVehiclesCubit(
        gh<_i202.ReceiveVehiclesRepository>(),
        gh<_i31.FocusPointsRepository>(),
      ));
  gh.factory<_i292.JobOffersCubit>(() => _i292.JobOffersCubit(
        gh<_i177.JobOffersRepository>(),
        gh<_i65.UserRepository>(),
      ));
  gh.factory<_i293.LoanRequestsCubit>(
      () => _i293.LoanRequestsCubit(gh<_i182.LoansRequestRepository>()));
  gh.factory<_i294.NotificationOffersCubit>(() =>
      _i294.NotificationOffersCubit(gh<_i187.NotificationOffersRepository>()));
  gh.factory<_i295.OverviewBloc>(() => _i295.OverviewBloc(
        gh<_i177.JobOffersRepository>(),
        gh<_i65.UserRepository>(),
        gh<_i91.ActivityLogRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i206.RequiredTasksUseCase>(),
        gh<_i196.ProfileRepository>(),
      ));
  gh.factory<_i296.OverviewCubit>(() => _i296.OverviewCubit(
        gh<_i177.JobOffersRepository>(),
        gh<_i65.UserRepository>(),
        gh<_i91.ActivityLogRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i206.RequiredTasksUseCase>(),
        gh<_i196.ProfileRepository>(),
      ));
  gh.factory<_i297.PledgesAndGeneralizationCubit>(() =>
      _i297.PledgesAndGeneralizationCubit(
          gh<_i194.PledgesAndGeneralizationRepository>()));
  gh.factory<_i298.ProfileCubit>(() => _i298.ProfileCubit(
        gh<_i65.UserRepository>(),
        gh<_i196.ProfileRepository>(),
        gh<_i210.ResumeRepository>(),
      ));
  gh.factory<_i299.QrCodeCubit>(
      () => _i299.QrCodeCubit(gh<_i210.ResumeRepository>()));
  gh.factory<_i300.ReceiveVehicleDetailsCubit>(() =>
      _i300.ReceiveVehicleDetailsCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i301.ReceiveVehiclesCubit>(
      () => _i301.ReceiveVehiclesCubit(gh<_i202.ReceiveVehiclesRepository>()));
  gh.factory<_i302.RequestsUserCubit>(
      () => _i302.RequestsUserCubit(gh<_i205.RequestsUserRepository>()));
  gh.factory<_i303.RequiredTasksCubit>(
      () => _i303.RequiredTasksCubit(gh<_i208.RespondRequiredTaskUseCase>()));
  gh.factory<_i304.ResumeBloc>(() => _i304.ResumeBloc(
        gh<_i210.ResumeRepository>(),
        gh<_i65.UserRepository>(),
      ));
  return getIt;
}

class _$InjectionModule extends _i305.InjectionModule {}
