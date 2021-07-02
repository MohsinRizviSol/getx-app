// TODO Implement this library.import 'package:dio/dio.dart';
import 'package:dio/dio.dart';

class HttpServices{
  Dio _dio;
  final urlbase="https://reqres.in/";
  HttpServices(){
_dio= Dio (BaseOptions(
    baseUrl:urlbase,

    ));
  
    initializeInterceptors();
  
  }
  Future<Response> getRequest(String EndPoint)async{
    Response response2;
    try{
response2=await getRequest(EndPoint);
    }on DioError
    catch(e){
      print(e.message);
throw Exception(e.error);
    } 
    return response2;
 
  }
  initializeInterceptors(){
    _dio.interceptors.add(InterceptorsWrapper(
onError: (error){
 print(error.message);
},
onRequest: (request){
    print("${request.method} ${request.path}");
},
onResponse:(response){
    print(response.data);
}
    )
);
      }
}
// // import 'package:dio/dio.dart';
// // import 'package:get/get_connect/http/src/request/request.dart';

// // class httpservices{
// //   Dio _dio;
// //   final urlbase="https://reqres.in/";
// //   httpservices(){
// //     _dio= Dio(BaseOptions(
// // baseUrl: urlbase,
// //     ));
// //     initializeinterceptors();
// //   }
// //   Future<Response> getRequest(String endPoint)async {
// // Response R2;
// // try{
// //   R2= await getRequest(endPoint);
// // }on DioError catch(errorr){
// //   print(errorr.message);
// //   throw Exception(errorr.error);
// // }
// // return R2;
// //   }
// //   initializeinterceptors(){
// //     _dio.interceptors.add(InterceptorsWrapper(
// //       onError: (Error){
// // print(Error.error);
// //       },
// // onResponse:(response){
// //     print(response.data);
// // }
// //     )
// // );
// //       }
// // }
// import 'package:dio/dio.dart';

// class httpservices{
//   Dio _dio;
//   final urlbase="https://reqres.in/";
//   httpservices(){
// _dio =Dio(BaseOptions(
// baseUrl: urlbase,
//   ));
//   initializeinterceptors();
//   }
//    Future<Response> getRequest(String endPoint)async {
// Response R2;
// try{
//   R2= await getRequest(endPoint);
// }on DioError catch(errorr){
//   print(errorr.message);
//   throw Exception(errorr.error);
// }
// return R2;
//   }
//   initializeinterceptors(){
//     _dio.interceptors.add(InterceptorsWrapper(
//       onError: (Error){
// print(Error.error);
//       },
// onResponse:(response){
//     print(response.data);
// }
//     )
// );
//       }
// }