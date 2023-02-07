using Advertisements as service from '../../srv/advertisement-service';

annotate service.Advertisements with @(
    
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>valid_from}',
            Value : valid_from,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>valid_to}',
            Value : valid_to,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>description}',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>type}',
            Value : type,
        }
    ]
);
annotate service.Advertisements with @(
    UI.FieldGroup #Advertisement : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>valid_from}',
                Value : valid_from,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>valid_to}',
                Value : valid_to,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>description}',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>type}',
                Value : type,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Facet1',
            Label : '{i18n>advertisement}',
            Target : '@UI.FieldGroup#Advertisement',
        },
    ]
);
