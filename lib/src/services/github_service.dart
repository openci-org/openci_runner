import 'dart:convert';
import 'package:http/http.dart' as http;

class GitHubService {
  Future<String> getInstallationToken(
    int appId,
    String privateKey,
    int installationId,
  ) async {
    const url = 'https://getinstallationtoken-wvluvdjkzq-uc.a.run.app';

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'appId': appId,
        'privateKey': privateKey,
        'installationId': installationId,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return data['installationToken'] as String;
    } else {
      throw Exception(
        'Failed to get installation token. Status code: ${response.statusCode}',
      );
    }
  }
}
