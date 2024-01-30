using { cuid, managed, Currency } from '@sap/cds/common';
namespace my.booklist;

entity Books: cuid, managed {
    title: String(255) @title: 'Title';
    publisher: String @title: 'Publisher';
    publishedDate: Integer @title: 'Published Date';
    author: String(255) @title: 'Author';
    isbn: Integer @title: 'ISBN';
    price: Integer @title: 'Price';
    currency:  Currency;
    pageCount: Integer @title: 'Pages';
    readDate: Date @title: 'Read Date';
    comment: String(1000) @title: 'Comment';
}