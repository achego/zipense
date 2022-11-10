// import 'dart:developer';
// import 'dart:io';

// import 'package:hot_buy_india/core/utils/app_styles.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_trimmer/video_trimmer.dart';

// class FileService {
//   static final _picker = ImagePicker();
//   static final _cropper = ImageCropper();
//   static final _trimmer = Trimmer();

//   static Future<XFile?> pickImage() async {
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//     return image;
//   }

//   static Future<XFile?> pickVideo() async {
//     final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
//     return video;
//   }

//   static Future<CroppedFile?> cropImage(String imagePath) async {
//     final CroppedFile? croppedFile =
//         await _cropper.cropImage(sourcePath: imagePath, uiSettings: [
//       AndroidUiSettings(
//         initAspectRatio: CropAspectRatioPreset.square,
//         hideBottomControls: true,
//         showCropGrid: true,
//       ),
//     ]);
//     return croppedFile;
//   }

//   static Future<CroppedFile?> trimVideo(File video) async {
//     log('in');
//     final me = await _trimmer.loadVideo(videoFile: video);
//     log('out');
//   }
// }
