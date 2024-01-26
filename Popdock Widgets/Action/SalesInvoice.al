// Replace https://widget-weu.popdock.com/embed/aa3e51db-5e4e-ce57-53ec-b4117572b602 with your widget id
pageextension 50102 "PopdockWidgetAction" extends "Sales Invoice"
{
    actions
    {
        addafter("&Invoice")
        {
            action("eOnePopdockPageAction")
            {
                Caption = 'Popdock';
                Promoted = true;
                PromotedCategory = Category7;
                image = Report;
                ApplicationArea = All;
                trigger OnAction()
                var
                    urlstring: Text;
                    eOnePopdockPopup: Page eOnePopdockAction;
                    Session: SessionSettings;
                begin
                    Session.Init();
                    eOnePopdockPopup.seturl('https://widget-weu.popdock.com/embed/494647e3-0ee0-75ca-fb96-feb7ef200602?theme=dynamics_bc&locale=' + FORMAT(Session.LocaleId) + '&companyName=' + COMPANYNAME + '&No.=' + rec."No.");
                    eOnePopdockPopup.Run();
                end;

            }
        }
    }
}