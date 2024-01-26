// Replace https://widget-weu.popdock.com/embed/aa3e51db-5e4e-ce57-53ec-b4117572b602 with your widget id
page 50103 PopdockRoleCenterCardPart
{
    PageType = CardPart;
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            usercontrol(widget; eOnePopdockFastTab)
            {
                ApplicationArea = All;

            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        Url: Text;
        Session: SessionSettings;
    begin
        Session.Init();
        Url := 'https://widget-weu.popdock.com/embed/aa3e51db-5e4e-ce57-53ec-b4117572b602?theme=dynamics_bc&locale=' + FORMAT(Session.LocaleId) + '&companyName=' + COMPANYNAME;
        CurrPage.widget.CreateUrl(Url);
    end;
}

pageextension 50103 "Popdock Role Center" extends "Business Manager Role Center"
{
    layout
    {
        addlast(rolecenter)
        {

            part(IframeFactBox; PopdockRoleCenterCardPart)
            {
                ApplicationArea = all;
                Caption = 'Popdock Details';
            }
        }
    }
}