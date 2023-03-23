page 50110 "Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption ='Data Type Card';
   
    trigger OnOpenPage()
    begin
        YesOrNo := true;
        Message('The value of  %1 is %2' ,'YesOrNo',YesOrNo);
        Amount := 3.14;
        Message('The value of %1 is %2','Amount',Amount);
        "When Was It" := Today();
        Message('The value of %1 is %2','When Was It',"When Was It");
        "What Time" := Time();
        Message('The value of %1 is %2','What Time',"What Time");
        Description :='This is Project3';
        Message('The value of %1 is %2','Description',Description);
        "Code Number" :='C0001';
        Message('The value of %1 is %2','Code Number',"Code Number");
        Ch :='a';
        Message('The value of %1 is %2','Ch',Ch);
        Message('The value of %1 is %2','Color',Color);
    end;
   
    var
        myInt: Integer;
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": Code[10];
        Ch: Char;
        Color: Option Red, Orange, Yellow, Green, Blue, Violet;
}
