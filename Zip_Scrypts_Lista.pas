unit Zip_Scrypts_Lista;

interface

Uses
  Data.DB, 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, 
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxTextEdit, cxMemo, Vcl.StdCtrls, cxButtons, cxGroupBox;

type
  TTela_Zip_Scrypts_Lista = class(TForm)
    Panel1: TcxGroupBox;
    mmLista: TcxMemo;
    btOk: TcxButton;
    btCancela: TcxButton;
    procedure btOkClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cTexto, cTpObjeto : String;
  end;

var
  Tela_Zip_Scrypts_Lista: TTela_Zip_Scrypts_Lista;

implementation

{$R *.dfm}

uses Zip_Scrypts;

procedure TTela_Zip_Scrypts_Lista.btCancelaClick(Sender: TObject);
begin
    Close;
end;

procedure TTela_Zip_Scrypts_Lista.btOkClick(Sender: TObject);
var i : integer;
    ADataSet : TDataSet;
begin

    ADataSet := Tela_Zip_Scrypts.Tb_Lista3;

    for I := 0 to mmLista.Lines.Count - 1 do
    begin
        mmLista.Lines[I] := trim(mmLista.Lines[I]);

        if mmLista.Lines[I] = '' then
            continue;

        if UpperCase(copy(mmLista.Lines[I],1,length(cTexto))) <> UpperCase(cTexto) then
        begin
            showmessage('Objeto ( ' + mmLista.Lines[I] + ' ) Divergente com o tópico selecionado!');
            exit;
        end;

        ADataSet.First;
        if not ADataSet.Locate('NmObjeto',mmLista.Lines[I],[] ) then
        begin
            ADataSet.Append;
            ADataSet.FieldByName('TpObjeto').Value    := cTpObjeto;
            ADataSet.FieldByName('NmObjeto').Value    := mmLista.Lines[I];
            ADataSet.FieldByName('CampoChave1').Value := mmLista.Lines[I];
            ADataSet.FieldByName('CampoChave2').Value := '';
            ADataSet.FieldByName('CampoChave3').Value := '';
            ADataSet.FieldByName('CampoChave4').Value := '';
            ADataSet.FieldByName('TpOperacao').Value  := 'I';
            ADataSet.Post;
        end;
    end;

    Close;
end;

procedure TTela_Zip_Scrypts_Lista.FormShow(Sender: TObject);
begin
    if mmLista.CanFocus then
       mmLista.SetFocus;

    //tempo do hint
    Application.HintHidePause := 20000;
end;

end.
