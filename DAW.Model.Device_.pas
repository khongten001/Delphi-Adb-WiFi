unit DAW.Model.Device;

interface

type
  TdawDevice = record
  private
    FID: string;
    FName: string;
    FIP: string;
    FIsConnected: Boolean;
  public
    procedure SetIP(const Value: string);
    constructor Create(const AName, AID: string);
    procedure SetIsConnected(const Value: Boolean);
    function GetIsConnected: Boolean;
    property ID: string read FID write FID;
    property Name: string read FName write FName;
    property IP: string read FIP write SetIP;
    property IsConnected: Boolean read GetIsConnected write SetIsConnected;
  end;

implementation

{ TdawDevice }

constructor TdawDevice.Create(const AName, AID: string);
begin
  Self.FID := AID;
  Self.FName := AName;
  SetIsConnected(False);
end;

function TdawDevice.GetIsConnected: Boolean;
begin
  Result := FIsConnected;
end;

procedure TdawDevice.SetIP(const Value: string);
begin
  FIP := Value;
end;

procedure TdawDevice.SetIsConnected(const Value: Boolean);
begin
  FIsConnected := Value;
end;

end.
