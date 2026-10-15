program ZipUpdate;

uses
  Vcl.Forms,
  Zip_Config in 'Zip_Config.pas',
  Zip_Menu in 'Zip_Menu.pas' {Tela_Zip_Menu},
  Zip_Menu_Login in 'Zip_Menu_Login.pas' {Tela_Zip_Menu_Login},
  Zip_Scrypts in 'Zip_Scrypts.pas' {Tela_Zip_Scrypts},
  Zip_Scrypts_Lista in 'Zip_Scrypts_Lista.pas' {Tela_Zip_Scrypts_Lista},
  Zip_Transfer in 'Zip_Transfer.pas' {Tela_Zip_Transfer},
  Zip_Logos in 'Zip_Logos.pas' {Tela_Zip_Logos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTela_Zip_Menu, Tela_Zip_Menu);
  Application.Run;
end.
