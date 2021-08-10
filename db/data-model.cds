namespace db;

entity Author {
    key IDA   : Integer;
        Name  : String;
        Books : Association to many Book
                    on Books.IDA = IDA;
}

entity Book {
    key ID    : Integer;
    key IDA   : Integer;
        Title : String;
        Price : Decimal(12, 2);
        Stock : Integer;
}
