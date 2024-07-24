import 'package:alo/common/utils/app_colors.dart';
import 'package:alo/training_flow/presentation/training_flow/training_flow_cubit.dart';
import 'package:alo/training_flow/presentation/training_flow/training_flow_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainingFlowPage extends StatelessWidget {
  const TrainingFlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingFlowCubit()..getTrainingFlow(),
      child: Scaffold(
        body: BlocBuilder<TrainingFlowCubit, TrainingFlowState>(
          builder: (context, state) {
            if (state.trainingFlow.isSuccess) {
              final data = state.trainingFlow.data;
              return Column(
                children: [
                  Image.network(
                    data?.coverImage ?? '',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    data?.seriesName ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    data?.coachesName ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  MaterialButton(
                    color: AppColors.primary_700Main,
                    onPressed: () {},
                    child: const Text('Start'),
                  )
                ],
              );
            }
            if (state.trainingFlow.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Text(state.trainingFlow.errorMessage ?? 'error'),
            );
          },
        ),
      ),
    );
  }
}
