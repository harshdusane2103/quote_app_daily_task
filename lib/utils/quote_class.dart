class QuotesModel {
  String? quote;
  String? author;
  List<QuotesModel> quoteModelList = [];

  QuotesModel({this.author, this.quote});

  factory QuotesModel.fromQuote(Map h1) {
    return QuotesModel(
      author: h1['author'], quote: h1['quote'],
    );
  }

  QuotesModel.toList(List hd) {
    for (int i = 0; i < hd.length; i++) {
      quoteModelList.add(QuotesModel.fromQuote(hd[i]));
    }
  }
}
