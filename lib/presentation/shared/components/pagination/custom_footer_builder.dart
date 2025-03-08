import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../base_stateless_widget.dart';



class CustomFooterBuilder extends BaseStatelessWidget {
   CustomFooterBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomFooter(
      builder: (BuildContext context,LoadStatus? mode){
        print('mode $mode');
        Widget body ;
        if(mode== LoadStatus.noMore){
          // strings.no_more_data
          body =  const Text('');
        }
        else if(mode==LoadStatus.loading){
          body =  const CircularProgressIndicator(strokeWidth: 2);
        }
        else if(mode == LoadStatus.failed){
          body = Text(strings.load_failed_refresh_data);
        }
        else if(mode == LoadStatus.canLoading){
          body = Text(strings.load_more);
        }
        else if(mode==LoadStatus.idle){
          body = Text(strings.load_more);
        }
        else {
          body = Text(strings.load_more);
        }
        return Container(
          height: 55.0,
          alignment: Alignment.center,
          child: body,
        );
      },
    );
  }
}
