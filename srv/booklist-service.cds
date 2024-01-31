using { my.booklist as db } from '../db/schema';

service BooklistService {
    @odata.draft.enabled
    entity Books as projection on db.Books;
}