using Advertisements as service from '../../srv/advertisement-service';

annotate service.Advertisements with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'valid_from',
            Value : valid_from,
        },
        {
            $Type : 'UI.DataField',
            Label : 'valid_to',
            Value : valid_to,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'type',
            Value : type,
        },
        {
            $Type : 'UI.DataField',
            Label : 'content',
            Value : content,
        },
    ]
);
annotate service.Advertisements with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'valid_from',
                Value : valid_from,
            },
            {
                $Type : 'UI.DataField',
                Label : 'valid_to',
                Value : valid_to,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'type',
                Value : type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'content',
                Value : content,
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
