using { my.booklist as db } from '../db/schema';

service BooklistService {
    @odata.draft.enabled
    @Common.DraftRoot.NewAction: 'BooklistService.createDraft'
    entity Books as projection on db.Books actions {
    action createDraft(in: many $self, title: String) returns Books;
  };
}