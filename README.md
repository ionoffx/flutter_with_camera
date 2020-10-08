# flutter에서 카메라를 사용해보자
- 카메라 api, image saver 플러그인 사용
1. 플러터 카메라 플러그인을 사용해서 사진 촬영
2. 사진 촬영 후 이미지 저장
3. 페이지 이동 후 저장된 이미지를 보여줌

- image_picker 플러그인 사용
1. 갤러리에서 사진 가져와서 보여주기
2. 사진 촬영 후 이미지 저장, 저장된 이미지를 화면에 보여줌

# 필요한 세팅

Flutter
```
- pubspec.yaml

path: ^1.7.0
camera: ^0.5.8+7
path_provider: ^1.6.18
gallery_saver: ^2.0.1
image_picker: ^0.6.7+11

```



Android
```
- android/build.gradle
minSdkVersion 21 // 최소 21

- android/app/src/main/androidManifest.xml
// 내부 저장소 쓰기 권한을 위해 퍼미션 추가 
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>

```


IOS
```
- ios/Runner/Info.plist
<key>NSCameraUsageDescription</key>
    <string>Explanation on why the camera access is needed.</string>
<key>NSPhotoLibraryUsageDescription</key>
    <string>This app requires access to the photo library.</string>
    
```
