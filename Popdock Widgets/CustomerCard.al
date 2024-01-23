// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 PopdockFastTab extends "Customer Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(PopdockFactBoxPart; PopdockFactBoxPart)
            {
                ApplicationArea = all;
                caption = 'Customer Entries';
                SubPageLink = "No." = FIELD("No.");
            }
        }
        addlast(Content)
        {
            Group("Customer Entries")
            {
                usercontrol(PopdockFastTab0; eOnePopdockFastTab)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        Url0: Text;
        Session: SessionSettings;
    begin
        if GuiAllowed then begin
            Session.Init();
            Url0 := 'https://widget-weu.popdock.com/embed/494647e3-0ee0-75ca-fb96-feb7ef200602?theme=dynamics_bc&locale=' + FORMAT(Session.LocaleId) + '&companyName=' + COMPANYNAME + '&No.=' + rec."No.";
            CurrPage.PopdockFastTab0.CreateUrl(Url0);
        end;
    end;
}

