```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse) {
        final String? name = item['name']; // Use null-aware operator
        final String displayName = name ?? 'Unknown'; // Use null-coalescing operator
        print('Name: $displayName');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```