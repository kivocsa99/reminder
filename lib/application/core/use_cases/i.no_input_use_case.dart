import 'package:dartz/dartz.dart';
import 'package:reminder/domain/core/i.failure.dart';
abstract class IUseCase<TUseCaseNoInput,TUseCaseOutPut>{
Future<Either<IFailure, TUseCaseOutPut>> execute(TUseCaseNoInput noInput);

}