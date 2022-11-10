
// import 'dart:convert';
// import 'dart:io';

// import 'package:hot_buy_india/core/values/app_strings.dart';
// import 'package:http/http.dart' as http;


// import '../../../core/utils/custom_exception.dart';
// import '../../../core/utils/responses.dart';

// class ApiProvider {
//   Future<dynamic> getProduct() async {
//     var responseJson;
//     try {
//       final response = await http.get(
//           Uri.parse(AppStrings.ApiBase + 'store/apis/views/product-list-api-view/'),
//           headers: {HttpHeaders.contentTypeHeader: "application/json"},

//       );

//       responseJson = _response(response);
//     //  print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
//   Future<dynamic> getProductImage({id}) async {
//     var responseJson;
//     print(id);
//     try {
//       final response = await http.get(
//         Uri.parse(AppStrings.ApiBase + 'store/apis/views/product-photos-list-api-view/'+id+'/'),
//         headers: {HttpHeaders.contentTypeHeader: "application/json"},

//       );

//       responseJson = _response(response);
//       //  print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }

//   Future<dynamic> login({email, password}) async {
//     var responseJson;
//     try {
//       print(email + password);
//       final response = await http.post(
//         Uri.parse(AppStrings.ApiBase + 'auth/users/authentication/jwt/create/'),
//         headers: {HttpHeaders.contentTypeHeader: "application/json"},
//         body: jsonEncode({
//           "email": email,
//           "password": password
//         })

//       );

//       responseJson = Responses(
//           data:  _response(response),
//           statusCode: response.statusCode
//       );

//       //  print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
//   Future<dynamic> searchProduct({query}) async {
//     var responseJson;
//     try {
//       print(query);
//       final response = await http.get(
//         Uri.parse(AppStrings.ApiBase + 'store/apis/views/store-search-api-view/?$query'),
//         headers: {HttpHeaders.contentTypeHeader: "application/json"},

//       );



//       responseJson = _response(response);

//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
//   Future<dynamic> getUserInfo({token, id}) async {
//     var responseJson;
//     try {

//       final response = await http.get(
//         Uri.parse(AppStrings.ApiBase + 'accounts/apis/views/user-profile/'+id+'/'),
//         headers: {
//           HttpHeaders.contentTypeHeader: "application/json",
//           HttpHeaders.authorizationHeader: "Bearer $token"

//         },

//       );



//       responseJson = Responses(
//           data:  _response(response),
//           statusCode: response.statusCode
//       );

//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
//   Future<dynamic> addWishlist({token, slug}) async {
//     var responseJson;
//     try {

//       final response = await http.get(
//         Uri.parse(AppStrings.ApiBase + 'store/apis/views/first-store-company/products/'+slug+'/wishlist/api/'),
//         headers: {
//           HttpHeaders.contentTypeHeader: "application/json",
//           HttpHeaders.authorizationHeader: "Bearer $token"

//         },

//       );



//       responseJson = Responses(
//           data:  _response(response),
//           statusCode: response.statusCode
//       );

//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
//   Future<dynamic> getWishlist({token}) async {
//     var responseJson;
//     try {

//       final response = await http.get(
//         Uri.parse(AppStrings.ApiBase + 'store/apis/views/products/wishlist/api/'),
//         headers: {
//           HttpHeaders.contentTypeHeader: "application/json",
//           HttpHeaders.authorizationHeader: "Bearer $token"

//         },

//       );



//       responseJson = Responses(
//           data:  _response(response),
//           statusCode: response.statusCode
//       );

//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }


//   Future<dynamic> signup({email, password, username, re_password, firstName, lastName}) async {
//     var responseJson;
//     try {
//         print(email + password);
//       final response = await http.post(
//           Uri.parse(AppStrings.ApiBase + 'accounts/apis/views/register/'),
//           headers: {HttpHeaders.contentTypeHeader: "application/json"},
//           body: jsonEncode({

//               "username": username,
//               "first_name": firstName,
//               "last_name": lastName,
//               "email": email,
//               "password": password,
//               "password2": re_password

//           })

//       );

//       responseJson = Responses(
//           data:  _response(response),
//           statusCode: response.statusCode
//       );
//          print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }

//   Future<dynamic> forgetPassword({email,}) async {
//     var responseJson;
//     try {

//       final response = await http.post(
//           Uri.parse(AppStrings.ApiBase + 'accounts/apis/views/forgot-password/'),
//           headers: {HttpHeaders.contentTypeHeader: "application/json"},
//           body: jsonEncode({

//             "email": email,


//           })

//       );

//       responseJson = Responses(
//           data:  [],
//           statusCode: response.statusCode
//       );
//       print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }
// Future<dynamic> resetPassword({code,password,cpassword}) async {
//     var responseJson;
//     try {

//       final response = await http.post(
//           Uri.parse(AppStrings.ApiBase + 'accounts/apis/views/forgot-password/enter-new/'),
//           headers: {HttpHeaders.contentTypeHeader: "application/json"},
//           body: jsonEncode({
//             "forgot_password_code": code,
//             "password": password,
//             "confirm_password":cpassword

//           })

//       );

//       responseJson = Responses(
//           data:  [],
//           statusCode: response.statusCode
//       );
//       print(responseJson);
//     } on SocketException {
//       throw FetchDataException('No Internet connection');
//     } catch (error) {
//       rethrow;
//     }
//     return responseJson;
//   }

// }

//   dynamic _response(http.Response response) {
//     switch (response.statusCode) {
//       case 200:
//         var responseJson = json.decode(response.body.toString());
//         // print(responseJson);
//         return  responseJson;
//       case 201:
//         var responseJson = json.decode(response.body.toString());
//         // print(responseJson);
//         return responseJson;
//       case 204:
//         var responseJson = json.decode(response.body.toString());
//         // print(responseJson);
//         return responseJson;
//       case 400:
//         var responseJson = json.decode(response.body.toString());
//         return responseJson;
//       case 401: var responseJson = json.decode(response.body.toString());
//       return responseJson;
//       case 404:
//         var responseJson = json.decode(response.body.toString());
//         return responseJson;
//       case 403:
//         var responseJson = json.decode(response.body.toString());
//         return responseJson;
//       case 500:

//       default:
//         print(
//             'Error occured while Communication with Server with StatusCode : ${response.statusCode}, message: ${response.body}');
//         var errorList = response.body.split('"error":');
//         throw FetchDataException(errorList[1]);
//     }
//   }

