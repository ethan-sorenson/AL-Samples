// Replace https://widget-weu.popdock.com/embed/aa3e51db-5e4e-ce57-53ec-b4117572b602 with your widget id
page 50101 PopdockPurchFactBoxPart
{
    PageType = CardPart;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    SourceTable = "Purchase Line";

    layout
    {
        area(Content)
        {
            usercontrol(Sidebar; eOnePopdockFactBox)
            {
                ApplicationArea = All;

            }
        }
    }
    trigger OnAfterGetRecord()
    var
        Url: Text;
        Session: SessionSettings;
    begin
        Session.Init();
        Url := 'https://widget-weu.popdock.com/embed/aa3e51db-5e4e-ce57-53ec-b4117572b602?theme=dynamics_bc&locale=' + FORMAT(Session.LocaleId) + '&companyName=' + COMPANYNAME + '&No.=' + rec."No.";
        CurrPage.Sidebar.CreateSidebar(Url);
    end;
}