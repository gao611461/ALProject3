page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';


    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    Caption = 'Value1';
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    Caption = 'Value2';
                }
            }
            group(Ouput)
            {
                field(Result; Result)
                {
                    ApplicationArea = All;
                    Caption = 'Result';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}
