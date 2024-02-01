using BooklistService as service from '../../srv/booklist-service';

annotate service.Books with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Value : publisher,
        },
        {
            $Type : 'UI.DataField',
            Value : publishedDate,
        },
        {
            $Type : 'UI.DataField',
            Value : author,
        },
        {
            $Type : 'UI.DataField',
            Value : isbn,
        },
    ]
);
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : publisher,
            },
            {
                $Type : 'UI.DataField',
                Value : publishedDate,
            },
            {
                $Type : 'UI.DataField',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Value : isbn,
            },
            {
                $Type : 'UI.DataField',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Value : pageCount,
            },
            {
                $Type : 'UI.DataField',
                Value : readDate,
            },
            {
                $Type : 'UI.DataField',
                Value : comment,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
