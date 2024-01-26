pageextension 50101 PopdockFactBox extends "Purchase Invoice"
{
    layout
    {
        addfirst(factboxes)
        {

            part(PopdockFactBox; PopdockPurchFactBoxPart)
            {
                ApplicationArea = all;
                Caption = 'Item Inventory';
                Provider = PurchLines;
                SubPageLink = "No." = FIELD("No.");
            }
        }
    }
}