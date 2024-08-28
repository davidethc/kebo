import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kebo_app/core/constants/app_animations.dart';
import 'package:kebo_app/core/constants/app_asset_images.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:kebo_app/core/utils/extensions/extension_on_widget.dart';
import 'package:kebo_app/core/utils/extensions/extentions.dart';
import 'package:kebo_app/core/utils/logger/logger.dart';
import 'package:kebo_app/core/utils/mixin/flash_bar_mixin.dart';
import 'package:kebo_app/core/utils/widgets/app_input.dart';
import 'package:kebo_app/core/utils/widgets/column/column_builder.dart';
import 'package:kebo_app/core/utils/widgets/shimmer/shimmer_widget.dart';
import 'package:kebo_app/features/ai/cubit/ai/ai_cubit.dart';
import 'package:lottie/lottie.dart';

import '../widgets/item_message.dart';

class AIScreen extends StatefulWidget {
  const AIScreen({super.key});

  @override
  State<AIScreen> createState() => _AIScreenState();
}

class _AIScreenState extends State<AIScreen>
    with TickerProviderStateMixin, FlashBarMixin {
  late AICubit cubit;
  final TextEditingController contentController = TextEditingController();
  final ScrollController controller = ScrollController();
  Timer? timer;
  int count = 0;

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
    cubit = context.read<AICubit>();
    cubit.initial();
  }

  void _blocListener(BuildContext context, AIState state) async {
    if (state.failure != null) {
      showFailureMessage(
        context,
        failure: state.failure!,
        onDismissed: cubit.onFlashBarDismissed,
      );
    }
    if (!state.isAdded) {
      await controller.animateTo(
        controller.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      if (timer != null) {
        timer?.cancel();
        timer = null;
      }
    }
    if (state.isAdded) {
      if (timer != null) {
        timer?.cancel();
        timer = null;
      }
      timer = Timer.periodic(
        const Duration(milliseconds: 50),
        (Timer t) => controller.animateTo(
          controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        ),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AICubit, AIState>(
      listener: _blocListener,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            _buildLogo()
                .animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                width: context.w,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe0e3e7)),
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    _buildSuggestion(),
                    _buildContent(),
                  ],
                ),
              ).animateOnPageLoad(
                animationsMap['textOnPageLoadAnimation2']!,
              ),
            ),
            const SizedBox(height: 20),
            _buildTextfield(),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return BlocBuilder<AICubit, AIState>(
      builder: (context, AIState state) {
        if (state.chats.isNotEmpty) {
          return GestureDetector(
            onTap: () => cubit.onUpdateAdded(),
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (controller.position.userScrollDirection ==
                    ScrollDirection.forward) {
                  cubit.onUpdateAdded();
                }
                return true;
              },
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  children: [
                    ColumnBuilder(
                      data: state.chats,
                      separatorItem: const SizedBox(height: 10),
                      itemBuilder: (index) => ItemMessage(
                        isMe: state.chats[index].isMe,
                        message: state.chats[index].message,
                        onFinished: () => cubit.onUpdateAdded(),
                      ),
                    ),
                    if (state.isProcessing) ...[
                      const SizedBox(height: 14),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: AppColors.greyText,
                              borderRadius: BorderRadius.circular(10)),
                          child: LottieBuilder.asset(AppAnimations.loadingChat),
                        ),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ],
                ),
              ),
            ),
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _buildSuggestion() {
    return BlocBuilder<AICubit, AIState>(
      builder: (context, AIState state) {
        if (state.chats.isEmpty) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.current.helloAgain,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 17)),
              const SizedBox(height: 4),
              Text(S.current.tellMe,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 12)),
              const SizedBox(height: 10),
              state.isLoading
                  ? ColumnBuilder(
                      data: List.generate(7, (index) => index),
                      itemBuilder: (index) => ShimmerWidget.rectangular(
                          height: 40, width: context.w))
                  : Expanded(
                      child: SingleChildScrollView(
                        child: ColumnBuilder(
                          data: state.suggestions,
                          separatorItem: const SizedBox(height: 4),
                          itemBuilder: (index) => GestureDetector(
                            onTap: () =>
                                _onSendMessage(state.suggestions[index]),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                state.suggestions[index],
                                style: context.theme.textTheme.bodyLarge
                                    ?.copyWith(
                                        color: AppColors.black, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }

  void _onSendMessage(String content) {
    contentController.clear();
    cubit.onChangedContent('');
    cubit.onSendMessage(content);
    controller.jumpTo(controller.position.maxScrollExtent);
  }

  Widget _buildTextfield() {
    return BlocBuilder<AICubit, AIState>(
      builder: (context, AIState state) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3)),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: AppInput(
                ted: contentController,
                onChanged: (value) => cubit.onChangedContent(value),
                onSubmit: (value) => _onSendMessage(value),
                inputDecoration: InputDecoration(
                    hintText: S.current.askKebo,
                    border: InputBorder.none,
                    hintStyle: context.theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 16, color: const Color(0xff999DA3)),
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    counterText: ''),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(),
            IconButton(
              onPressed: () => _onSendMessage(contentController.text),
              icon: Icon(Icons.send,
                  color: state.content.isEmpty
                      ? AppColors.grey
                      : AppColors.accentPrimary,
                  size: 30),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: 110,
        height: 60,
        child: Stack(
          children: [
            Image.asset(AppAssetImages.icLogo,
                width: 50, fit: BoxFit.fitHeight),
            Align(
              alignment: const AlignmentDirectional(1, 1),
              child: Text(S.current.keboWise,
                  style: context.theme.textTheme.bodyLarge
                      ?.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      ),
    );
  }

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-70.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-50.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 60.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };
}
