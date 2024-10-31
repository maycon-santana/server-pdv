unit contracts.entity.cstcofins;

interface

type
  ICstCofins<T: IInterface> = interface
    ['{641AA3DC-3EF3-45C9-B6A3-A1A1BF83D99B}']
    function Id(Value: String): ICstCofins<T>; overload;
    function Id: String; overload;
    function Descricao(Value: String): ICstCofins<T>; overload;
    function Descricao: String; overload;
    function Build: T;
  end;

implementation

end.
