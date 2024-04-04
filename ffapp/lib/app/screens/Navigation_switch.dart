import 'package:flutter/material.dart';
import 'package:fyp/app/screens/Dua/dua_level1/feeling_afraid.dart';
import 'package:fyp/app/screens/Dua/dua_level1/upon_sneezing.dart';
import 'package:fyp/app/screens/dua/dua_level1/forgiveness.dart';
import 'package:fyp/app/screens/dua/dua_level1/forrain.dart';
import 'package:fyp/app/screens/dua/dua_level1/increase_knowledge.dart';
import 'package:fyp/app/screens/dua/dua_level1/smiling.dart';
import 'package:fyp/app/screens/dua/dua_level1/stairs.dart';
import 'package:fyp/app/screens/dua/dua_level1/thanking_someone.dart';
import 'package:fyp/app/screens/dua/dua_level1/visiting_ill.dart';
import 'package:fyp/app/screens/dua/dua_level1/when_rain.dart';
import 'package:fyp/app/screens/dua/dua_level2/aftermeal3.dart';
import 'package:fyp/app/screens/dua/dua_level2/badnews10.dart';
import 'package:fyp/app/screens/dua/dua_level2/beforemeal1.dart';
import 'package:fyp/app/screens/dua/dua_level2/dining5.dart';
import 'package:fyp/app/screens/dua/dua_level2/drinkingmilk4.dart';
import 'package:fyp/app/screens/dua/dua_level2/entringtoilet8.dart';
import 'package:fyp/app/screens/dua/dua_level2/forgetBismillah2.dart';
import 'package:fyp/app/screens/dua/dua_level2/goingbed6.dart';
import 'package:fyp/app/screens/dua/dua_level2/leavingtoilet9.dart';
import 'package:fyp/app/screens/dua/dua_level2/wakingup7.dart';
import 'package:fyp/app/screens/dua/dua_level3/afterwuduScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/doingwudu.dart';
import 'package:fyp/app/screens/dua/dua_level3/entringMasjidScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/entringhouse.dart';
import 'package:fyp/app/screens/dua/dua_level3/leavingMasjidScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/leavinghouseScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/newclothesScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/seeingmirror.dart';
import 'package:fyp/app/screens/dua/dua_level3/undressingdua.dart';
import 'package:fyp/app/screens/dua/dua_level3/wearingclothsScreen.dart';
import 'package:fyp/app/screens/dua/dua_level4/Iftartime.dart';
import 'package:fyp/app/screens/dua/dua_level4/afterAdhan.dart';
import 'package:fyp/app/screens/dua/dua_level4/afterSalah.dart';
import 'package:fyp/app/screens/dua/dua_level4/boardingvehicle.dart';
import 'package:fyp/app/screens/dua/dua_level4/duringdonkeyvoice.dart';
import 'package:fyp/app/screens/dua/dua_level4/excessiverain.dart';
import 'package:fyp/app/screens/dua/dua_level4/lailatulqadar.dart';
import 'package:fyp/app/screens/dua/dua_level4/seeingnewmoon.dart';
import 'package:fyp/app/screens/dua/dua_level4/visitinggraveyard.dart';
import 'package:fyp/app/screens/dua/dua_level4/worldandakhirah.dart';

class ScreenFactory {
  static Widget createScreen(String screenName) {
    switch (screenName) {
      case 'Feeling Afraid':
        return const FifthScreen();
      case 'Forgivness':
        return const NinthScreen();
      case 'For increase knowledge':
        return const EightScreen();
      case 'When seeing Muslim smiling':
        return const SeventhScreen();
      case 'Ascending or descending':
        return const TwelfthScreen();
      case 'Thanking someone':
        return const SixthScreen();
      case 'Sneezing':
        return const FourthScreen();
      case 'Visiting ill':
        return const EleventhScreen();
      case 'When it rains':
        return const TenthScreen();
      case 'For rain':
        return const RainsScreen();
      case 'Before meal':
        return const BeforeMealScreen();
      case 'Forget dua before meal':
        return const ForgetduaScreen();
      case 'After meal':
        return const AfterMealScreen();
      case 'Drinking milk':
        return const MilkduaScreen();
      case 'When dining someones house':
        return const DiningScreen();
      case 'Before going to bed':
        return const BedduaScreen();
      case 'When waking up':
        return const WakingupScreen();
      case 'When entring the toilet':
        return const EntringScreen();
      case 'When leaving the toilet':
        return const LeavingScreen();
      case 'When hear bad news':
        return const BadnewsScreen();

      case 'Wearing clothes':
        return const WearingclothsScreen();
      case 'Before undressing':
        return const UndressingDuaScreen();
      case 'Wearing new clothes':
        return const WearingnewClothesScreen();
      case 'When seeing mirror':
        return const SeeingmirrorScreen();
      case 'When Entring the house':
        return const EntringhouseScreen();
      case 'When leaving the house':
        return const LeavinghouseScreen();
      case 'When entring the Masjid':
        return const EntringMasjidScreen();
      case 'When leaving the Masjid':
        return const LeavingMasjidScreen();
      case 'When doing Wudu':
        return const DoingWuduScreen();
      case 'After Wudu':
        return const AfterWuduScreen();

      case 'Feelingafraid':
        return const AfteradhanScreen();
      case 'After Salah':
        return const AfterSalahScreen();
      case 'Boarding a vehicle':
        return const BoardingvehicleScreen();
      case 'Seeing new moon':
        return const SeeingnewmoonScreen();
      case 'Hear the voice of donkey':
        return const DuringdonkeyvoiceduaScreen();
      case 'At the time of Iftar':
        return const IftartimeScreen();
      case 'For Lailatulqadar':
        return const LailatulqadarScreen();
      case 'Seeking good in this world and Akhirah':
        return const WorldandAkhirahScreen();
      case 'Visting graveyard':
        return const VisitingGraveyardScreen();
      case 'During rainstorm':
        return const ExcessiveRainScreen();
      default:
        return Container();
    }
  }
}
