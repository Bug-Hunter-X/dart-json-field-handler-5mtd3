# Handling Missing JSON Fields in Dart

This repository demonstrates a common error when handling JSON responses in Dart and provides a solution using null-aware operators.

## The Problem
When fetching data from an API, the JSON response structure might not always be consistent. Attempting to access a field that may be missing will result in a runtime exception.  The provided `bug.dart` file shows this problem.

## The Solution
The `bugSolution.dart` file shows how to handle missing fields using Dart's null-aware operators (`?.` and `??`). This prevents runtime exceptions and allows the code to gracefully handle inconsistent data.