import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'similar_products_model.dart';
export 'similar_products_model.dart';

class SimilarProductsWidget extends StatefulWidget {
  const SimilarProductsWidget({
    super.key,
    this.productTitle,
    this.salePrice,
    this.regularPrice,
    this.productRating,
    this.productBrand,
    this.thumbnail,
    this.ref,
  });

  final String? productTitle;
  final double? salePrice;
  final double? regularPrice;
  final double? productRating;
  final String? productBrand;
  final ImageStruct? thumbnail;
  final DocumentReference? ref;

  @override
  State<SimilarProductsWidget> createState() => _SimilarProductsWidgetState();
}

class _SimilarProductsWidgetState extends State<SimilarProductsWidget>
    with TickerProviderStateMixin {
  late SimilarProductsModel _model;

  var hasIconTriggered1 = false;
  var hasIconTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimilarProductsModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'ProductDetails',
          queryParameters: {
            'ref': serializeParam(
              widget.ref,
              ParamType.DocumentReference,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 180.0,
        height: 226.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.network(
                      widget.thumbnail!.path,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/error_image.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if ((currentUserDocument?.likedProducts.toList() ??
                                    [])
                                .contains(widget.ref)) {
                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'Liked_products':
                                        FieldValue.arrayRemove([widget.ref]),
                                  },
                                ),
                              });
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation2'] !=
                                  null) {
                                setState(() => hasIconTriggered2 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => await animationsMap[
                                            'iconOnActionTriggerAnimation2']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                            } else {
                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'Liked_products':
                                        FieldValue.arrayUnion([widget.ref]),
                                  },
                                ),
                              });
                              if (animationsMap[
                                      'iconOnActionTriggerAnimation1'] !=
                                  null) {
                                setState(() => hasIconTriggered1 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => await animationsMap[
                                            'iconOnActionTriggerAnimation1']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                            }
                          },
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if ((currentUserDocument?.likedProducts
                                            .toList() ??
                                        [])
                                    .contains(widget.ref))
                                  AuthUserStreamWidget(
                                    builder: (context) => Icon(
                                      FFIcons.kheart3Fill,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 18.0,
                                    ).animateOnActionTrigger(
                                        animationsMap[
                                            'iconOnActionTriggerAnimation1']!,
                                        hasBeenTriggered: hasIconTriggered1),
                                  ),
                                if (!(currentUserDocument?.likedProducts
                                            .toList() ??
                                        [])
                                    .contains(widget.ref))
                                  AuthUserStreamWidget(
                                    builder: (context) => Icon(
                                      FFIcons.kheart3Line,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 18.0,
                                    ).animateOnActionTrigger(
                                        animationsMap[
                                            'iconOnActionTriggerAnimation2']!,
                                        hasBeenTriggered: hasIconTriggered2),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.productBrand,
                      'NA',
                    ),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.productTitle,
                      'NA',
                    ),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.salePrice?.toString(),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'USD',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    fontSize: 9.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.regularPrice?.toString(),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    color: const Color(0xFFFF3535),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  RatingBarIndicator(
                    itemBuilder: (context, index) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFC107),
                    ),
                    direction: Axis.horizontal,
                    rating: valueOrDefault<double>(
                      widget.productRating,
                      0.0,
                    ),
                    unratedColor: FlutterFlowTheme.of(context).lineColor,
                    itemCount: 5,
                    itemSize: 15.0,
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ].divide(const SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
