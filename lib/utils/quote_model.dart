class QuoteModel{
  String? author;
  String? quote;

  QuoteModel ({this.author,this.quote});

  List<QuoteModel> quoteModelList = [];

  factory QuoteModel.fromQuote(Map m1){
    return QuoteModel(author: m1['author'],quote: m1['quote'] );
  }

  QuoteModel.toList(List l1)
  {
    for(int i=0; i<l1.length;i++)
      {
        quoteModelList.add(QuoteModel.fromQuote(l1[i]));
      }
  }
}