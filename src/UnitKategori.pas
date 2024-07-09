unit UnitKategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormSatuan = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhapus: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btnbatal: TBitBtn;
    lbl3: TLabel;
    edt3: TEdit;
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSatuan: TFormSatuan;
  a: string;

implementation

uses
  UnitDataModule;

{$R *.dfm}

procedure TFormSatuan.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
end;

procedure TFormSatuan.btnsimpanClick(Sender: TObject);
begin
if edt1.Text = '' then
begin
  ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if DataModule1.zqrysatuan.Locate('nama',edt1.Text,[]) then
begin
  ShowMessage('Nama Satuan '+edt1.Text+' Sudah Ada Didalam Sistem');
end else
Begin // simpan
  with DataModule1.zqrysatuan do
  begin
    SQL.Clear;
    SQL.Add('insert into satuan values(null,"'+edt1.Text+'","'+edt3.Text+'")');
    ExecSQL;
    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
    ShowMessage('Data Berhasil Disimpan');
posisiawal;
end;
end;

procedure TFormSatuan.btneditClick(Sender: TObject);
begin //kode edit
  with DataModule1.zqrysatuan do
  begin
    SQL.Clear;
    SQL.Add('update satuan set nama="'+edt1.text+'", deskripsi="'+edt3.text+'" where id= "'+a+'"');
    ExecSQL ;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Diedit!');
posisiawal;
end;

procedure TFormSatuan.btnhapusClick(Sender: TObject);
begin  //kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
  with DataModule1.zqrysatuan do
  begin
    SQL.Clear;
    SQL.Add('delete from satuan where id= "'+a+'"');
    ExecSQL ;

    SQL.Clear;
    SQL.Add('select * from satuan');
    Open;
  end;
  ShowMessage('Data Berhasil Dihapus!');
end else
begin
  ShowMessage('Data Batal Dihapus!');
end;
posisiawal;end;

procedure TFormSatuan.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule1.zqrysatuan.Fields[1].AsString;
edt3.Text:= DataModule1.zqrysatuan.Fields[2].AsString;
a:= DataModule1.zqrysatuan.Fields[0].AsString;
end;


procedure TFormSatuan.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSatuan.posisiawal;
begin
  bersih;
end;


procedure TFormSatuan.edt2Change(Sender: TObject);
begin
  with DataModule1.zqrysatuan do
  begin
    SQL.Clear;
    SQL.Add('select * from satuan where nama like "%'+edt2.Text+'%"');
    Open;
  end;
end;
procedure TFormSatuan.btnbatalClick(Sender: TObject);
begin
bersih;
end;

end.
