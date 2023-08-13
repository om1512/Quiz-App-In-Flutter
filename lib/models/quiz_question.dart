class QuizQuestion {
  const QuizQuestion(this.text, this.ans);
  final String text;
  final List<String> ans;

  List<String> get shuffledAnswer {
    final shuffledList = List.of(ans);
    shuffledList.shuffle();
    return shuffledList;
  }
}
