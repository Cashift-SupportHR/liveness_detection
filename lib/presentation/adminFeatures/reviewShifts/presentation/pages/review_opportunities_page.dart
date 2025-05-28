 import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
 import 'package:shiftapp/presentation/presentationUser/attendance/facerecognation/index.dart';
import 'package:shiftapp/presentation/presentationUser/common/common_state.dart';
 import '../../../../shared/components/base/stream_state_widget_v2.dart';
import '../../../../shared/components/pagination/custom_footer_builder.dart';
import '../../../../shared/components/search_widget.dart';
import '../../../../shared/components/stream/stream_data_state_widget.dart';
import '../../data/models/complet_opportunity_dto.dart';
 import '../../data/models/review_shiftsprams.dart';
 import '../bloc/review_opportunities_cubit.dart';
import 'review_opportunities_list_screen.dart';
import 'package:shiftapp/presentation/shared/components/base_widget_bloc.dart';


class ReviewOpportunitiesPage extends BaseBlocWidget<
    UnInitState, ReviewOpportunitiesCubit> {
  final int status;

  ReviewOpportunitiesPage({required this.status});

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchOpportunityDataPagination(
        params:
            ReviewShiftsprams(pageNumber: 1, statusId: status, pageSize: 10));
  }

  @override
  bool detectRequiredTasks() {
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SearchWidget(
            search: (String value) {
              bloc.fetchOpportunityDataPagination(
                  params: ReviewShiftsprams(
                      pageNumber: 1,
                      statusId: status,
                      pageSize: 10,
                      searchString: value));
            },
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  ScrollController _scrollController = ScrollController();

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return StreamDataStateWidget<List<CompletedOpportunityData>?>(
        stream: bloc.opportunityStream,
         onReload: () {
          onRefresh();

        },
        builder: (context, snapshot) {
          return SmartRefresher(
            enablePullUp: true,
            footer: CustomFooterBuilder(),
            controller: _refreshController,
            onRefresh: () => onRefresh(),
            scrollController: _scrollController,
            onLoading: status != 0 ? () => onLoading(snapshot!) : null,
            child: ReviewOpportunitiesListScreen(
              data: snapshot! ,
              selectable: false,
              onUpdate: () {
                loadInitialData(context);
              },
            ),
          );
        });

  }

  void onRefresh() {
    bloc.fetchOpportunityDataPagination(
      isRefresh: true,
      params: ReviewShiftsprams(
        statusId: status,
        pageSize: 10,
      ),
    );
    _refreshController.refreshCompleted();
    _refreshController.loadComplete();
  }

  void onLoading(List<CompletedOpportunityData> state) async {
    await bloc.fetchOpportunityDataPagination(
      params: ReviewShiftsprams(
        statusId: status,
        pageSize: 10,
      ),
    );

    if (bloc.opportunityes.isEmpty) {
      _refreshController.loadNoData();
    } else {
      _refreshController.loadComplete();
    }
  }
}
