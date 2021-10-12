
import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:camerawesome/models/orientations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../features/feature.dart';
import '../../../../widgets/widget.dart';

class CameraScreen extends StatefulWidget {
  static const String route = 'camera';

  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  @override
  void dispose() {
    _previewAnimationController?.dispose();
    _photoSize.dispose();
    _captureMode.dispose();
    _sensor.dispose();
    _orientation.dispose();

    super.dispose();
  }

  void _initCamera() {
    _previewAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _previewAnimation = Tween<Offset>(
      begin: const Offset(-2.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _previewAnimationController!,
        curve: Curves.elasticOut,
        reverseCurve: Curves.elasticIn,
      ),
    );
  }

  ValueNotifier<Size> _photoSize = ValueNotifier(Size(720, 1080));
  ValueNotifier<Sensors> _sensor = ValueNotifier(Sensors.FRONT);
  ValueNotifier<CaptureModes> _captureMode = ValueNotifier(CaptureModes.PHOTO);
  ValueNotifier<CameraOrientations> _orientation =
  ValueNotifier(CameraOrientations.PORTRAIT_UP);
  PictureController _pictureController = PictureController();

  AnimationController? _previewAnimationController;
  Animation<Offset>? _previewAnimation;
  String? _lastPhotoPath;

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          CameraAwesome(
            photoSize: _photoSize,
            captureMode: _captureMode,
            sensor: _sensor,
            orientation: DeviceOrientation.portraitUp,
            selectDefaultSize: (List<Size> availableSizes) {
              return Size(1080, 720);
            },
          ),
          _buildPreview(),
          CameraTopBar(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CameraToolBar(
              onCapture: (path) async {
                await _pictureController.takePicture(path);
                _showPreview(path);
              },
              onPickImage: (path) {
                _showPreview(path);
              },
              onFlipCamera: () {
                _sensor.value = _sensor.value == Sensors.BACK
                    ? Sensors.FRONT
                    : Sensors.BACK;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreview() {
    return PreviewCardWidget(
      lastPhotoPath: _lastPhotoPath ?? '',
      orientation: _orientation,
      previewAnimation: _previewAnimation!,
      onDismiss: () {
        _previewAnimationController?.reverse();
      },
      onDone: (value) {
        pop(value);
      },
    );
  }

  void _showPreview(String path) {
    HapticFeedback.mediumImpact();
    _lastPhotoPath = path;
    setState(() {});
    if (_previewAnimationController?.status == AnimationStatus.completed) {
      _previewAnimationController?.reset();
    }
    _previewAnimationController?.forward();
  }
}
