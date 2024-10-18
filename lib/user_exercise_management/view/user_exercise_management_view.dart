import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:training_app/app/app.dart';
import 'package:training_app/body_statistics/body_statistics.dart';
import 'package:training_app/training_sessions/training_sessions.dart';
import 'package:training_app/user_exercise/user_exercise.dart';
import 'package:training_app/user_exercise_management/user_exercise_management.dart';

class UserExerciseManagementView extends StatelessWidget {
  const UserExerciseManagementView({
    super.key,
    this.userExercise,
  });

  final UserExercise? userExercise;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserExerciseManagementCubit(
        userExercise: userExercise,
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: _buildTitle(context),
            ),
            body: SingleChildScrollView(
              padding: DesignSystem.padding,
              child: Column(
                children: <Widget>[
                  const _ExerciseNameInputField(),
                  const _TargetMuscleSelectionSection(),
                  DesignSystem.vSpace,
                  _FormDropdown<ExerciseType>(
                    hint: 'Select exercise type',
                    onSelected: (value) {
                      context
                          .read<UserExerciseManagementCubit>()
                          .setExerciseType(
                            type: value,
                          );
                    },
                    validatorText: 'Invalid exercise type',
                    items: ExerciseType.values,
                    initialValue: context
                        .read<UserExerciseManagementCubit>()
                        .state
                        .userExercise
                        .exerciseType,
                  ),
                  DesignSystem.vSpace,
                  _FormDropdown<EffortType>(
                    hint: 'Select effort type',
                    onSelected: (value) {
                      context.read<UserExerciseManagementCubit>().setEffortType(
                            type: value,
                          );
                    },
                    validatorText: 'Invalid effort type',
                    items: EffortType.values,
                    initialValue: context
                        .read<UserExerciseManagementCubit>()
                        .state
                        .userExercise
                        .effortType,
                  ),
                  DesignSystem.scrollableMargin,
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton.extended(
              label:
                  userExercise != null ? const Text('Save') : const Text('Add'),
              icon: const Icon(Icons.save),
              onPressed: () {
                final newUserExercise = context
                    .read<UserExerciseManagementCubit>()
                    .state
                    .userExercise;
                Navigator.of(context).pop(newUserExercise);
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    if (userExercise == null) {
      return const Text('Add exercise');
    }
    return const Text('Modify exercise');
  }
}

class _ExerciseNameInputField extends StatelessWidget {
  const _ExerciseNameInputField();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            initialValue: context
                .read<UserExerciseManagementCubit>()
                .state
                .userExercise
                .name,
            onChanged: (value) {
              context.read<UserExerciseManagementCubit>().setName(
                    name: value,
                  );
            },
            decoration: DesignSystem.textFieldBorder,
          ),
        ),
      ],
    );
  }
}

class _MuscleSelectionDropdown extends StatefulWidget {
  const _MuscleSelectionDropdown();

  @override
  State<_MuscleSelectionDropdown> createState() =>
      _MuscleSelectionDropdownState();
}

class _MuscleSelectionDropdownState extends State<_MuscleSelectionDropdown> {
  String? selectedValue;
  late final TextEditingController _textEditingController;
  late final MultiSelectController<MuscleGroup> _selectionController;

  @override
  void initState() {
    super.initState();
    _selectionController = MultiSelectController();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _selectionController.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown(
      hint: 'Select target muscles',
      controller: _selectionController,
      inputDecoration: DesignSystem.multiSelectionWidgetBorder,
      hintStyle: DesignSystem.getHintTextStyle(context),
      selectedOptions: context
          .read<UserExerciseManagementCubit>()
          .state
          .userExercise
          .targettedMuscleGroups
          .map(
            (e) => ValueItem(
              label: e.toString(),
              value: e,
            ),
          )
          .toList(),
      onOptionSelected: (options) {
        context.read<UserExerciseManagementCubit>().setTargetMuscles(
              muscleGroups: options.map((e) => e.value!).toList(),
            );
      },
      options: MuscleGroup.values
          .map(
            (e) => ValueItem(
              label: e.toString(),
              value: e,
            ),
          )
          .toList(),
      searchEnabled: true,
      dropdownHeight: 300,
      optionTextStyle: const TextStyle(fontSize: 16),
      selectedOptionIcon: const Icon(Icons.check_circle),
    );
  }
}

class _TargetMuscleSelectionSection extends StatefulWidget {
  const _TargetMuscleSelectionSection();

  @override
  State<_TargetMuscleSelectionSection> createState() =>
      _TargetMuscleSelectionSectionState();
}

class _TargetMuscleSelectionSectionState
    extends State<_TargetMuscleSelectionSection> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          BodySwitcher(
            behavior: BodyBehavior.muscleGroupsSelection,
          ),
          DesignSystem.vSpace,
          _MuscleSelectionDropdown(),
        ],
      ),
    );
    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Expanded(
    //       child: Column(
    //         children: [],
    //       ),
    //     ),
    //     Flexible(
    //       child: ListView.builder(
    //         physics: const NeverScrollableScrollPhysics(),
    //         shrinkWrap: true,
    //         itemCount: MuscleGroup.values.length,
    //         itemBuilder: (context, index) {
    //           final muscleGroup = MuscleGroup.values[index];
    //           final isSelected = selectedMuscleGroups[muscleGroup] ?? false;
    //           return _MuscleSelectionCard(
    //             muscleGroup: muscleGroup,
    //             isSelected: isSelected,
    //             onTap: (muscleGroup) {
    //               setState(() {
    //                 if (isSelected) {
    //                   selectedMuscleGroups.remove(muscleGroup);
    //                 } else {
    //                   selectedMuscleGroups[muscleGroup] = true;
    //                 }
    //                 widget.onChanged(selectedMuscleGroups.keys.toList());
    //               });
    //             },
    //           );
    //         },
    //       ),
    //     ),
    //   ],
    // );
  }
}

class _FormDropdown<T> extends StatelessWidget {
  const _FormDropdown({
    required this.onSelected,
    this.initialValue,
    this.hint = 'Select a value',
    this.validatorText = 'Invalid option',
    this.items = const [],
  });
  final T? initialValue;
  final String hint;
  final List<T> items;
  final String validatorText;
  final void Function(T value) onSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: DropdownButtonFormField2<T>(
        isExpanded: true,
        decoration: DesignSystem.dropdownBorder,
        hint: Text(
          initialValue?.toString() ?? hint,
          style: const TextStyle(fontSize: 14),
        ),
        items: items
            .map(
              (item) => DropdownMenuItem<T>(
                value: item,
                child: Text(
                  item.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            )
            .toList(),
        validator: (value) {
          if (value == null) {
            return validatorText;
          }
          return null;
        },
        onChanged: (value) {
          if (value != null) {
            onSelected(value);
          }
        },
        onSaved: (value) {},
        buttonStyleData: const ButtonStyleData(
          padding: EdgeInsets.only(right: 8),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}

class _MuscleSelectionCard extends StatelessWidget {
  const _MuscleSelectionCard({
    required this.muscleGroup,
    required this.isSelected,
    required this.onTap,
  });

  final MuscleGroup muscleGroup;
  final bool isSelected;
  final void Function(MuscleGroup muscleGroup) onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(muscleGroup),
      child: Card(
        child: Padding(
          padding: DesignSystem.padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  muscleGroup.toString(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (isSelected)
                const Icon(Icons.check_box_rounded)
              else
                const Icon(Icons.check_box_outline_blank_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
