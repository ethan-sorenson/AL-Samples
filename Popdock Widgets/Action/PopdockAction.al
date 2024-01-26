page 50102 eOnePopdockAction
{
    PageType = Card;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            usercontrol(PopdockWidget; eOnePopdockFastTab)
            {
                ApplicationArea = All;
            }
        }
    }
    var
        url: Text;

    procedure seturl(srcurl: Text)
    begin
        url := srcurl;
    end;

    trigger OnOpenPage()
    begin
        CurrPage.PopdockWidget.CreateUrl(url);
    end;
}