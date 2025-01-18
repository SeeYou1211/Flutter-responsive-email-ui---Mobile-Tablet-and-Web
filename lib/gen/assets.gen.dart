/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $LibGen {
  const $LibGen();

  /// Directory path: lib/l10n
  $LibL10nGen get l10n => const $LibL10nGen();
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/Icons/Angle down.svg
  SvgGenImage get angleDown => const SvgGenImage('assets/Icons/Angle down.svg');

  /// File path: assets/Icons/Angle right.svg
  SvgGenImage get angleRight =>
      const SvgGenImage('assets/Icons/Angle right.svg');

  /// File path: assets/Icons/Download.svg
  SvgGenImage get download => const SvgGenImage('assets/Icons/Download.svg');

  /// File path: assets/Icons/Edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/Icons/Edit.svg');

  /// File path: assets/Icons/File.svg
  SvgGenImage get file => const SvgGenImage('assets/Icons/File.svg');

  /// File path: assets/Icons/Inbox.svg
  SvgGenImage get inbox => const SvgGenImage('assets/Icons/Inbox.svg');

  /// File path: assets/Icons/Markup filled.svg
  SvgGenImage get markupFilled =>
      const SvgGenImage('assets/Icons/Markup filled.svg');

  /// File path: assets/Icons/Markup.svg
  SvgGenImage get markup => const SvgGenImage('assets/Icons/Markup.svg');

  /// File path: assets/Icons/More vertical.svg
  SvgGenImage get moreVertical =>
      const SvgGenImage('assets/Icons/More vertical.svg');

  /// File path: assets/Icons/Paperclip.svg
  SvgGenImage get paperclip => const SvgGenImage('assets/Icons/Paperclip.svg');

  /// File path: assets/Icons/Plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/Icons/Plus.svg');

  /// File path: assets/Icons/Printer.svg
  SvgGenImage get printer => const SvgGenImage('assets/Icons/Printer.svg');

  /// File path: assets/Icons/Reply all.svg
  SvgGenImage get replyAll => const SvgGenImage('assets/Icons/Reply all.svg');

  /// File path: assets/Icons/Reply.svg
  SvgGenImage get reply => const SvgGenImage('assets/Icons/Reply.svg');

  /// File path: assets/Icons/Search.svg
  SvgGenImage get search => const SvgGenImage('assets/Icons/Search.svg');

  /// File path: assets/Icons/Send.svg
  SvgGenImage get send => const SvgGenImage('assets/Icons/Send.svg');

  /// File path: assets/Icons/Sort.svg
  SvgGenImage get sort => const SvgGenImage('assets/Icons/Sort.svg');

  /// File path: assets/Icons/Transfer.svg
  SvgGenImage get transfer => const SvgGenImage('assets/Icons/Transfer.svg');

  /// File path: assets/Icons/Trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/Icons/Trash.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        angleDown,
        angleRight,
        download,
        edit,
        file,
        inbox,
        markupFilled,
        markup,
        moreVertical,
        paperclip,
        plus,
        printer,
        replyAll,
        reply,
        search,
        send,
        sort,
        transfer,
        trash
      ];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Img_0.png
  AssetGenImage get img0 => const AssetGenImage('assets/images/Img_0.png');

  /// File path: assets/images/Img_1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/Img_1.png');

  /// File path: assets/images/Img_2.png
  AssetGenImage get img2 => const AssetGenImage('assets/images/Img_2.png');

  /// File path: assets/images/Logo Outlook.png
  AssetGenImage get logoOutlook =>
      const AssetGenImage('assets/images/Logo Outlook.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/user_1.png
  AssetGenImage get user1 => const AssetGenImage('assets/images/user_1.png');

  /// File path: assets/images/user_2.png
  AssetGenImage get user2 => const AssetGenImage('assets/images/user_2.png');

  /// File path: assets/images/user_3.png
  AssetGenImage get user3 => const AssetGenImage('assets/images/user_3.png');

  /// File path: assets/images/user_4.png
  AssetGenImage get user4 => const AssetGenImage('assets/images/user_4.png');

  /// File path: assets/images/user_5.png
  AssetGenImage get user5 => const AssetGenImage('assets/images/user_5.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        img0,
        img1,
        img2,
        logoOutlook,
        profile,
        user1,
        user2,
        user3,
        user4,
        user5
      ];
}

class $LibL10nGen {
  const $LibL10nGen();

  /// File path: lib/l10n/app_en.arb
  String get appEn => 'lib/l10n/app_en.arb';

  /// File path: lib/l10n/app_zh.arb
  String get appZh => 'lib/l10n/app_zh.arb';

  /// File path: lib/l10n/intl_en.arb
  String get intlEn => 'lib/l10n/intl_en.arb';

  /// File path: lib/l10n/intl_zh.arb
  String get intlZh => 'lib/l10n/intl_zh.arb';

  /// List of all assets
  List<String> get values => [appEn, appZh, intlEn, intlZh];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
