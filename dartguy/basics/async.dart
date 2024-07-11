void main() {
  // Async method to call web server
  Future<int> lookupTotalCookiesCountDatabase() async {
    // In a real world app we call the web server to retrieve live data
    return 33;
  }

  Future<int> totalCookiesCount() async {
    int cookiesCount = await lookupTotalCookiesCountDatabase(); // Returns 33
    return cookiesCount;
  }

  // User pressed button
  totalCookiesCount().then((count) {
    print('cookiesCount: ${count}');
  });
  print('This will print before cookiesCount');
}
