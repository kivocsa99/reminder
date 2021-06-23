import 'package:dartz/dartz.dart';
import 'package:reminder/domain/core/i.failure.dart';
abstract class IUseCase<TUseCaseInput,TUseCaseOutPut>{
Future<Either<IFailure, TUseCaseOutPut>> execute(TUseCaseInput input);

}