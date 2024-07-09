program ProjectPenjualan;

uses
  Forms,
  UnitKategori in 'UnitKategori.pas' {FormSatuan},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSatuan, FormSatuan);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
