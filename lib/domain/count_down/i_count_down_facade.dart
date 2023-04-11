
import 'package:easy_pomodoro/domain/count_down/count_down_controller.dart';
import '../../presentation/home/widgets/timer_count_down.dart';

abstract class ICountDownFacade{
  CountdownController createController();
  TimerCountdown createCountDown();

}