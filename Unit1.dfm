object Form1: TForm1
  Left = 353
  Top = 256
  Width = 916
  Height = 639
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 900
    Height = 600
    Align = alClient
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Label1: TLabel
    Left = 272
    Top = 272
    Width = 3
    Height = 13
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
  end
  object ImageList1: TImageList
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE000000
      000000000000FEFEFE0000000000FEFEFE0000000000FEFEFE00000000000000
      00000000000000000000FEFEFE0000000000FEFEFE00FBFAFC006367B5009996
      C300A99BBD00A6A1BE00B3AAC500C1BACF00DAD9E300E9E8F200F9F8FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FEFE
      FE0000000000FAFFFE00B2D2EF009EB9D300A4BAD600FBFDFD00FEFEFE000000
      000000000000FEFEFE00FEFEFE00FEFEFE00000000003F48C7000C1AC600060A
      BC001617C500292BC5004C51D200908EB200A299BA00BCB6C900DEDDE700F6F4
      FA00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE000000
      000000000000CEE6F800C2DBEF00AECFE900A7BFDD00A1B1CE0000000000FEFE
      FE0000000000000000000000000000000000000000004B50DB000208AF00161B
      C40000009B001714C8000301B8002626D000181FAC008B86C400B4ACC300DEDF
      E900FCFBFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE000000
      000000000000D7EAF900CCE5F500ADCBE400A0B7D10097ABCA00FEFEFE000000
      0000000000000000000000000000FDFDFD00000000006C6DDF001A20D1001920
      C9001616C8000006AD000309B0000505AD00090BAF0006108C002F35B600C3B9
      C900EEEAF500FCFBFD00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00FEFE
      FE0000000000CAE3F700C6E0F100AAC7E20091ABCF008799B800FEFEFE00FDFD
      FD0000000000000000000000000000000000000000003D47D100121CCE00080D
      AF00080AC2000809C9000709C1000202AC000100AC00080DB0000305A7004146
      A900CDC9D500F0ECF80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      000000000000C1DEED00C8E1F500ABC8E7008CA5C70091A6C20000000000FEFE
      FE0000000000FEFEFE00000000000000000000000000696BE1001619BB000F10
      C6000000A9000201C500676DFF000302C6004044F0000303B5000202AC000306
      8C00C1BDC900EDECF60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      000000000000F5FCFF00C2DDF700A0BBDD008DA6C6008CA1BD00FEFEFE00FEFE
      FE000000000000000000000000000000000000000000AAABF5000D0DC5000308
      C3000305BD00161CE1006E75FF000204BC00242BD4000503C1000001B5000409
      9A00BCB3D400526E6F00F3EFF400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FBFDFD00B7D2EC00ADC6F0005A6FA300495788006B718E007679
      9500F5FBFF00FEFEFE00FEFEFE00FEFEFE0000000000ADB0F4001B1BC5002E32
      E8000C0CBC000C0FC5000000C0000003A5000405BB000C0CAC000105B2000F12
      9D003A5F4F00EFE8F500FCFBFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000FEFEFE008190
      B7005C6CB80097A7D6007081BA002F418E0021357C0023306E00474C7900464C
      75004E548100E0E2EC00000000000000000000000000B7C2F6001F1ECC00080A
      CD000102BE000A0CCF000001BD0044618E00010895000200B300060884004660
      6C00E0E9F300F0F2F300FDFDFD00F9F8FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00A8B0CD00475E
      B4008291CF008F9DCD005365A2002C3E8B001E307700262F6E0044497600454B
      760043487500B2B2C20000000000FEFEFE0000000000FBFDFD002935D1000005
      D2000203D7000E17D2000B0FC200456B5F00225043000004350038574E004668
      5E00839D9D002A37350023332C00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00F1F5FF004D66
      BC00566BAF00909ECF00616CAA002031800026397C00222E680044477300464C
      7500333A6B00F9FDFF00FEFEFE000000000000000000000000002024B9000006
      C9000102CE000105C8000000A500070AA200426959003C726B0015302600C9C8
      D10035504600F4F4FA00F9F8FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD003C51
      A200394EA0007A86BC006772AB00233681001F2D6F003C457700454B7600474F
      77002E366500FFFEFF0000000000000000000000000000000000F0EEF4001919
      C3000206B8000A0CB10002088900000540002A595D00356664003E5B6400C0B9
      C000F2EBF800F0F3F800FAF9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE000000000000000000DDE2
      F1003C4D9C003E4E9A00414D8F002F4286002F3C7A00464B7C003F4574002B35
      6500EAECF60000000000FEFEFE0000000000FEFEFE000000000000000000D1DA
      FC000B05B000416C6300152376000C281B00203B4500607271003B5B5A003B62
      5300ECEBF500F7F6FA00FCFBFD00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00939EBA0053619B003F4D8F0025367900263371002E3A700059628400989C
      AE00FEFEFE00FEFEFE0000000000FEFEFE00000000000000000000000000FDFF
      FE004D737300628D84004B776A00265142002B513F00F2F7FA0034554E00486D
      5D00EFF0FA00FCFBFF00FCFBFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD0000000000FEFEFE000000
      000000000000FBFCFF008891B200747BA200727A9F00828AA700FBFDFE000000
      0000FEFEFE000000000000000000000000000000000000000000000000000000
      0000F9FEFD0068808000F9FBFB00FEFAFF00FAFFFF002F46380029453F005978
      6F00F7F5FB00FCFBFD00FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FDFDFD00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FDFDFD00FEFEFE000000
      0000FEFEFE00FEFEFE0000000000FEFEFE000000000000000000000000000000
      0000FDFFFF00FDFFFF00000000000000000000000000FFFFFE003E5148005476
      7000FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF005ABD001F000000008818800000000000
      582F800700000000581E800100000000C80F800300000000382B800300000000
      D80F800100000000000080010000000040038000000000000002800000000000
      0001C00100000000C003C0010000000060056000000000000002E00100000000
      5817F001000000000412F38700000000}
  end
end
