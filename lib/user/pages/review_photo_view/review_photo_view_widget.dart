import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'review_photo_view_model.dart';
export 'review_photo_view_model.dart';

class ReviewPhotoViewWidget extends StatefulWidget {
  const ReviewPhotoViewWidget({
    super.key,
    required this.review,
  });

  final ReviewsRecord? review;

  @override
  State<ReviewPhotoViewWidget> createState() => _ReviewPhotoViewWidgetState();
}

class _ReviewPhotoViewWidgetState extends State<ReviewPhotoViewWidget>
    with TickerProviderStateMixin {
  late ReviewPhotoViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasIconTriggered1 = false;
  var hasIconTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewPhotoViewModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Builder(
                builder: (context) {
                  final images = widget.review?.reviewImages.toList() ?? [];
                  return SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage:
                                      max(0, min(0, images.length - 1))),
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          itemBuilder: (context, imagesIndex) {
                            final imagesItem = images[imagesIndex];
                            return Image.network(
                              valueOrDefault<String>(
                                imagesItem,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-z41xqa/assets/16wakgf6zmns/thumbnail-2.png',
                              ),
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/error_image.png',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 136.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewController ??=
                                  PageController(
                                      initialPage:
                                          max(0, min(0, images.length - 1))),
                              count: images.length,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) async {
                                await _model.pageViewController!.animateToPage(
                                  i,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                                setState(() {});
                              },
                              effect: smooth_page_indicator.ExpandingDotsEffect(
                                expansionFactor: 3.0,
                                spacing: 6.0,
                                radius: 16.0,
                                dotWidth: 8.0,
                                dotHeight: 3.0,
                                dotColor: FlutterFlowTheme.of(context).accent1,
                                activeDotColor:
                                    FlutterFlowTheme.of(context).primary,
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 120.0,
                  decoration: const BoxDecoration(
                    color: Color(0x4D000000),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF00AA07),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget.review?.rating.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.star_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (widget.review?.userRef != null) {
                                    return StreamBuilder<UsersRecord>(
                                      stream: UsersRecord.getDocument(
                                          widget.review!.userRef!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textUsersRecord = snapshot.data!;
                                        return Text(
                                          textUsersRecord
                                                          .address.city !=
                                                      ''
                                              ? '${textUsersRecord.displayName}, ${textUsersRecord.address.city}'
                                              : textUsersRecord.displayName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 11.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        );
                                      },
                                    );
                                  } else {
                                    return Text(
                                      'NeoMart User',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    );
                                  }
                                },
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.verified,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 12.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Verified Purchase',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.review!.dislikes
                                      .contains(currentUserReference)) {
                                    await widget.review!.reference.update({
                                      ...mapToFirestore(
                                        {
                                          'dislikes': FieldValue.arrayRemove(
                                              [currentUserReference]),
                                        },
                                      ),
                                    });

                                    await widget.review!.reference.update({
                                      ...mapToFirestore(
                                        {
                                          'likes': FieldValue.arrayUnion(
                                              [currentUserReference]),
                                        },
                                      ),
                                    });
                                    if (animationsMap[
                                            'iconOnActionTriggerAnimation1'] !=
                                        null) {
                                      setState(() => hasIconTriggered1 = true);
                                      SchedulerBinding.instance
                                          .addPostFrameCallback((_) async =>
                                              await animationsMap[
                                                      'iconOnActionTriggerAnimation1']!
                                                  .controller
                                                  .forward(from: 0.0));
                                    }
                                    return;
                                  } else {
                                    if (widget.review!.likes
                                        .contains(currentUserReference)) {
                                      await widget.review!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'likes': FieldValue.arrayRemove(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                      return;
                                    } else {
                                      await widget.review!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'likes': FieldValue.arrayUnion(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                      if (animationsMap[
                                              'iconOnActionTriggerAnimation1'] !=
                                          null) {
                                        setState(
                                            () => hasIconTriggered1 = true);
                                        SchedulerBinding.instance
                                            .addPostFrameCallback((_) async =>
                                                await animationsMap[
                                                        'iconOnActionTriggerAnimation1']!
                                                    .controller
                                                    .forward(from: 0.0));
                                      }
                                      return;
                                    }
                                  }
                                },
                                child: Builder(
                                  builder: (context) {
                                    if (widget.review?.likes
                                            .contains(currentUserReference) ??
                                        false) {
                                      return Icon(
                                        Icons.thumb_up,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 12.0,
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'iconOnActionTriggerAnimation1']!,
                                          hasBeenTriggered: hasIconTriggered1);
                                    } else {
                                      return Icon(
                                        Icons.thumb_up_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 12.0,
                                      );
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.review?.likes.length.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (widget.review!.likes
                                        .contains(currentUserReference)) {
                                      await widget.review!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'likes': FieldValue.arrayRemove(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });

                                      await widget.review!.reference.update({
                                        ...mapToFirestore(
                                          {
                                            'dislikes': FieldValue.arrayUnion(
                                                [currentUserReference]),
                                          },
                                        ),
                                      });
                                      if (animationsMap[
                                              'iconOnActionTriggerAnimation2'] !=
                                          null) {
                                        setState(
                                            () => hasIconTriggered2 = true);
                                        SchedulerBinding.instance
                                            .addPostFrameCallback((_) async =>
                                                await animationsMap[
                                                        'iconOnActionTriggerAnimation2']!
                                                    .controller
                                                    .forward(from: 0.0));
                                      }
                                      return;
                                    } else {
                                      if (widget.review!.dislikes
                                          .contains(currentUserReference)) {
                                        await widget.review!.reference.update({
                                          ...mapToFirestore(
                                            {
                                              'dislikes':
                                                  FieldValue.arrayRemove(
                                                      [currentUserReference]),
                                            },
                                          ),
                                        });
                                        return;
                                      } else {
                                        await widget.review!.reference.update({
                                          ...mapToFirestore(
                                            {
                                              'dislikes': FieldValue.arrayUnion(
                                                  [currentUserReference]),
                                            },
                                          ),
                                        });
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation2'] !=
                                            null) {
                                          setState(
                                              () => hasIconTriggered2 = true);
                                          SchedulerBinding.instance
                                              .addPostFrameCallback((_) async =>
                                                  await animationsMap[
                                                          'iconOnActionTriggerAnimation2']!
                                                      .controller
                                                      .forward(from: 0.0));
                                        }
                                        return;
                                      }
                                    }
                                  },
                                  child: Builder(
                                    builder: (context) {
                                      if (widget.review?.dislikes.contains(
                                              currentUserReference) ??
                                          false) {
                                        return Icon(
                                          Icons.thumb_down_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 12.0,
                                        ).animateOnActionTrigger(
                                            animationsMap[
                                                'iconOnActionTriggerAnimation2']!,
                                            hasBeenTriggered:
                                                hasIconTriggered2);
                                      } else {
                                        return Icon(
                                          Icons.thumb_down_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 12.0,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.review?.dislikes.length.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: const Color(0x1AFFFFFF),
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
