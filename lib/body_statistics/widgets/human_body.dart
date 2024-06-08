import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/training_sessions/training_sessions.dart';

enum BodyView {
  front,
  back,
}

class _Back extends StatelessWidget {
  const _Back();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BodyStatisticsCubit, BodyStatisticsState,
        Map<MuscleGroup, int>>(
      selector: (state) {
        return state.setsCount;
      },
      builder: (context, setsCount) {
        return Stack(
          children: [
            SvgPicture.asset(
              BodyAssets.backBaseBody,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backOutline,
            ),
            SvgPicture.asset(
              BodyAssets.rearDelts,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.rearDelts] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backTricepsLong,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.tricepsLongHead] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backObliques,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.obliques] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.infraspinatus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.infraspinatus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.lats,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.lats] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.teresMajor,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.teresMajor] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.midTraps,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.midTraps] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.rhomboidMajor,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.rhomboid] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.semimembranosus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.semimembranosus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.upperTraps,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.upperTraps] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backGastrocnemius,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.gastrocnemius] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backSoleus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.soleus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backUpperObliques,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.upperObliques] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.extensorCarpi,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.extensorCarpi] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.extensorCarpiUlnaris,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.extensorCarpiUlnaris] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.gluteusMaximus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.gluteusMaximus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.gluteusMedius,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.gluteusMedius] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.adductor,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.adductor] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.bicepsFemoris,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.bicepsFemoris] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.backForearms,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.forearms] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.lowerBack,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.lowerBack] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.outerThigh,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.outerThigh] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.semiTendinosis,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.semiTendinosis] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.extensorDigitorum,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.extensorDigitorum] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Front extends StatelessWidget {
  const _Front();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BodyStatisticsCubit, BodyStatisticsState,
        Map<MuscleGroup, int>>(
      selector: (state) {
        return state.setsCount;
      },
      builder: (context, setsCount) {
        return Stack(
          children: [
            SvgPicture.asset(
              BodyAssets.frontBackground,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.pecMajor,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.pecMajor] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.frontDelts,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.frontDelts] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.adductorLongus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.adductor] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.bicepsBrachii,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.biceps] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.brachialis,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.brachialis] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.brachioradialis,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.brachioradialis] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.extensorCarpiRadialis,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.extensorCarpiRadialis] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.externalObliques,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.externalObliques] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.flexorCarpiRadialis,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.flexorCarpiRadialis] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.gastrocnemius,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.gastrocnemius] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.omohyoid,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.omohyoid] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.peroneusLongus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.peroneusLongus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.rectusAbdominusLower,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.lowerAbs] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.rectusAbdominus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.upperAbs] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.rectusFemoris,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.rectusFemoris] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.sartorius,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.sartorius] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.serratusAnterior,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.serratusAnterior] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.soleus,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.soleus] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.sternocleidomastoid,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.sternocleidomastoid] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.tfl,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.tfl] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.traps,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.upperTraps] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.tricepsLong,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.tricepsLongHead] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.tricepsMedial,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.tricepsMedialHead] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.vlo,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.vlo] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.vmo,
              colorFilter: ColorFilter.mode(
                HumanBodyUtils.getColorBySetsCount(
                  setsCount[MuscleGroup.vmo] ?? 0,
                ),
                BlendMode.srcIn,
              ),
            ),
            SvgPicture.asset(
              BodyAssets.frontBaseBody,
            ),
          ],
        );
      },
    );
  }
}

class HumanBody extends StatelessWidget {
  const HumanBody({
    required this.view,
    super.key,
  });

  final BodyView view;

  @override
  Widget build(BuildContext context) {
    final bodyView = switch (view) {
      BodyView.front => const _Front(),
      BodyView.back => const _Back(),
    };
    return SizedBox(height: 600, child: bodyView);
  }
}
