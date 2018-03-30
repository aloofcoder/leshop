package net.le.exception;

public class AppException extends RuntimeException {

    public AppException () {

    }

    public AppException(String message) {
        super(message);
    }
}
