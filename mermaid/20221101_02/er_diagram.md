```mermaid
erDiagram

books ||--|{ book_categories: ""

categories ||--|{ book_categories: ""

books {
  int id
  string title
}

categories {
  int book_id
  int book_category_id
}

book_categories {
  int id
  string name
}
```
