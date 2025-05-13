unit csPersonel;

interface

type
  TPersonel = class(TObject)
    pAd: string;
    pSoyad: string;
    pYas: integer;
    function tamAd(): string;
  end;

implementation

function TPersonel.tamAd(): string;
begin
  Result := pAd + ' ' + pSoyad;
end;

end.
