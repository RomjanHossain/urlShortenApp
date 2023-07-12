/// {@template result}
sealed class Result<S, E extends Exception> {
  Result();
}

/// success
class Success<S, E extends Exception> extends Result<S, E> {
  final S data;

  Success(this.data);
}

/// {@template failure}
class ServerFailor<S, E extends Exception> extends Result<S, E> {
  final E error;

  ServerFailor(this.error);
}

/// rate limit
class RateLimitFailor<S, E extends Exception> extends Result<S, E> {
  final E error;

  RateLimitFailor(this.error);
}

/// ip block
class IpBlockFailor<S, E extends Exception> extends Result<S, E> {
  final E error;

  IpBlockFailor(this.error);
}
