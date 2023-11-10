import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAIService {
  Future<String> fetchCompletions(String text) async {
    print("fetchCompletions called");
    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      body: jsonEncode({
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            'role': 'system',
            'content':
                'You are a person who identifies the mental state of the given person by the answers given by him for certain questions and the predifined mental startes are depressed, motivated, happy, normal.Answer in only one word',
          },
          {
            'role': 'user',
            'content':
                "this is the questions and answers I have done,  $text, identify me my mental state and help me to get out of it",
          }
        ],
      }),
    );
    print('status code is ${response.statusCode}');
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      String content = data["choices"][0]["message"]["content"];
      print(content); // Output: No expiry date.
      return content.toString();
    } else {
      return response.statusCode.toString();
    }
  }
}
