import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user/components/rating_bar/rating_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'reviews_model.dart';
export 'reviews_model.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({
    super.key,
    required this.ref,
  });

  final DocumentReference? ref;

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget>
    with TickerProviderStateMixin {
  late ReviewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasIconTriggered1 = false;
  var hasIconTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewsModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'All Reviews',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Manrope',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
        body: StreamBuilder<List<ReviewsRecord>>(
          stream: queryReviewsRecord(
            queryBuilder: (reviewsRecord) => reviewsRecord.where(
              'productRef',
              isEqualTo: widget.ref,
            ),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<ReviewsRecord> containerReviewsRecordList = snapshot.data!;
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              formatNumber(
                                                functions.averageRating(
                                                    containerReviewsRecordList
                                                        .map((e) => e.rating)
                                                        .toList(),
                                                    containerReviewsRecordList
                                                        .length),
                                                formatType: FormatType.custom,
                                                format: '#.#',
                                                locale: 'en_US',
                                              ),
                                              '0',
                                            ),
                                            style: const TextStyle(),
                                          ),
                                          TextSpan(
                                            text: '/',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryText,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          const TextSpan(
                                            text: '5',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 9.0, 0.0, 0.0),
                                      child: RatingBarIndicator(
                                        itemBuilder: (context, index) => const Icon(
                                          Icons.star_rounded,
                                          color: Color(0xFFFFC107),
                                        ),
                                        direction: Axis.horizontal,
                                        rating: valueOrDefault<double>(
                                          functions.averageRating(
                                              containerReviewsRecordList
                                                  .map((e) => e.rating)
                                                  .toList(),
                                              containerReviewsRecordList
                                                  .length),
                                          0.0,
                                        ),
                                        unratedColor: const Color(0xFF9E9E9E),
                                        itemCount: 5,
                                        itemSize: 16.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 6.0, 12.0, 0.0),
                                      child: Text(
                                        '${valueOrDefault<String>(
                                          containerReviewsRecordList.length
                                              .toString(),
                                          '0',
                                        )} ratings and ${valueOrDefault<String>(
                                          containerReviewsRecordList
                                              .where((e) =>
                                                  e.review != '')
                                              .toList()
                                              .length
                                              .toString(),
                                          '0',
                                        )} reviews',
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 4.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.ratingBarModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const RatingBarWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.ratingBarModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const RatingBarWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.ratingBarModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const RatingBarWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.ratingBarModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const RatingBarWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model.ratingBarModel5,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const RatingBarWidget(),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final reviewImages = containerReviewsRecordList
                              .where((e) => e.reviewImages.isNotEmpty)
                              .toList();
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(reviewImages.length,
                                      (reviewImagesIndex) {
                                final reviewImagesItem =
                                    reviewImages[reviewImagesIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ReviewPhotoView',
                                      queryParameters: {
                                        'review': serializeParam(
                                          reviewImagesItem,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'review': reviewImagesItem,
                                      },
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        reviewImagesItem.reviewImages.first,
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-z41xqa/assets/16wakgf6zmns/thumbnail-2.png',
                                      ),
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/error_image.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              })
                                  .divide(const SizedBox(width: 12.0))
                                  .addToStart(const SizedBox(width: 20.0))
                                  .addToEnd(const SizedBox(width: 20.0)),
                            ),
                          );
                        },
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final reviews = containerReviewsRecordList
                            .where((e) => e.review != '')
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: reviews.length,
                          itemBuilder: (context, reviewsIndex) {
                            final reviewsItem = reviews[reviewsIndex];
                            return Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              reviewsItem.reviewTitle !=
                                                          ''
                                                  ? reviewsItem.reviewTitle
                                                  : 'Mind-blowing purchase',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            RatingBarIndicator(
                                              itemBuilder: (context, index) =>
                                                  const Icon(
                                                Icons.star_rounded,
                                                color: Color(0xFFFFC107),
                                              ),
                                              direction: Axis.horizontal,
                                              rating: valueOrDefault<double>(
                                                reviewsItem.rating > 5.0
                                                    ? 0.0
                                                    : reviewsItem.rating,
                                                0.0,
                                              ),
                                              unratedColor:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              itemCount: 5,
                                              itemSize: 12.0,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (reviewsItem.userRef !=
                                                      null) {
                                                    return StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              reviewsItem
                                                                  .userRef!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 12.0,
                                                              height: 12.0,
                                                              child:
                                                                  SpinKitCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 12.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textUsersRecord =
                                                            snapshot.data!;
                                                        return Text(
                                                          textUsersRecord
                                                                          .address
                                                                          .city !=
                                                                      ''
                                                              ? '${textUsersRecord.displayName}, ${textUsersRecord.address.city}'
                                                              : textUsersRecord
                                                                  .displayName,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    return Text(
                                                      'NeoMart User',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Manrope',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            fontSize: 11.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    );
                                                  }
                                                },
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.verified,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 12.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Verified Purchase',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: const BoxDecoration(),
                                            child: Text(
                                              reviewsItem.review
                                                  .maybeHandleOverflow(
                                                maxChars: 200,
                                                replacement: '…',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (reviewsItem.dislikes
                                                      .contains(
                                                          currentUserReference)) {
                                                    await reviewsItem.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'dislikes': FieldValue
                                                              .arrayRemove([
                                                            currentUserReference
                                                          ]),
                                                        },
                                                      ),
                                                    });

                                                    await reviewsItem.reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'likes': FieldValue
                                                              .arrayUnion([
                                                            currentUserReference
                                                          ]),
                                                        },
                                                      ),
                                                    });
                                                    if (animationsMap[
                                                            'iconOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasIconTriggered1 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'iconOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    return;
                                                  } else {
                                                    if (reviewsItem.likes.contains(
                                                        currentUserReference)) {
                                                      await reviewsItem
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'likes': FieldValue
                                                                .arrayRemove([
                                                              currentUserReference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                      return;
                                                    } else {
                                                      await reviewsItem
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'likes': FieldValue
                                                                .arrayUnion([
                                                              currentUserReference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                      if (animationsMap[
                                                              'iconOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        setState(() =>
                                                            hasIconTriggered1 =
                                                                true);
                                                        SchedulerBinding
                                                            .instance
                                                            .addPostFrameCallback((_) async =>
                                                                await animationsMap[
                                                                        'iconOnActionTriggerAnimation1']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                      }
                                                      return;
                                                    }
                                                  }
                                                },
                                                child: Builder(
                                                  builder: (context) {
                                                    if (reviewsItem.likes.contains(
                                                        currentUserReference)) {
                                                      return Icon(
                                                        Icons.thumb_up,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 12.0,
                                                      ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'iconOnActionTriggerAnimation1']!,
                                                          hasBeenTriggered:
                                                              hasIconTriggered1);
                                                    } else {
                                                      return Icon(
                                                        Icons.thumb_up_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 12.0,
                                                      );
                                                    }
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    reviewsItem.likes.length
                                                        .toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 11.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (reviewsItem.likes.contains(
                                                        currentUserReference)) {
                                                      await reviewsItem
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'likes': FieldValue
                                                                .arrayRemove([
                                                              currentUserReference
                                                            ]),
                                                          },
                                                        ),
                                                      });

                                                      await reviewsItem
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'dislikes':
                                                                FieldValue
                                                                    .arrayUnion([
                                                              currentUserReference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                      if (animationsMap[
                                                              'iconOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        setState(() =>
                                                            hasIconTriggered2 =
                                                                true);
                                                        SchedulerBinding
                                                            .instance
                                                            .addPostFrameCallback((_) async =>
                                                                await animationsMap[
                                                                        'iconOnActionTriggerAnimation2']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                      }
                                                      return;
                                                    } else {
                                                      if (reviewsItem.dislikes
                                                          .contains(
                                                              currentUserReference)) {
                                                        await reviewsItem
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'dislikes': FieldValue
                                                                  .arrayRemove([
                                                                currentUserReference
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                        return;
                                                      } else {
                                                        await reviewsItem
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'dislikes':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                currentUserReference
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                        if (animationsMap[
                                                                'iconOnActionTriggerAnimation2'] !=
                                                            null) {
                                                          setState(() =>
                                                              hasIconTriggered2 =
                                                                  true);
                                                          SchedulerBinding
                                                              .instance
                                                              .addPostFrameCallback((_) async =>
                                                                  await animationsMap[
                                                                          'iconOnActionTriggerAnimation2']!
                                                                      .controller
                                                                      .forward(
                                                                          from:
                                                                              0.0));
                                                        }
                                                        return;
                                                      }
                                                    }
                                                  },
                                                  child: Builder(
                                                    builder: (context) {
                                                      if (reviewsItem.dislikes
                                                          .contains(
                                                              currentUserReference)) {
                                                        return Icon(
                                                          Icons
                                                              .thumb_down_sharp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 12.0,
                                                        ).animateOnActionTrigger(
                                                            animationsMap[
                                                                'iconOnActionTriggerAnimation2']!,
                                                            hasBeenTriggered:
                                                                hasIconTriggered2);
                                                      } else {
                                                        return Icon(
                                                          Icons
                                                              .thumb_down_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 12.0,
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    reviewsItem.dislikes.length
                                                        .toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                  Divider(
                                    height: 24.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ]
                      .divide(const SizedBox(height: 16.0))
                      .addToStart(const SizedBox(height: 16.0))
                      .addToEnd(const SizedBox(height: 24.0)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
