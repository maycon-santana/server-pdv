unit contracts.entity.cidade;

interface

uses
  contracts.entity.uf;

type
  ICidade = interface
    ['{9D6C1A61-7BEC-4E6D-8644-23423E3F154B}']
    function CodIbge(Value: string): ICidade; overload;
    function CodIbge: String; overload;
    function Descricao(Value: string): ICidade; overload;
    function Descricao: String; overload;
    function Uf: IUf<ICidade>;
    function Build: ICidade;
  end;

implementation

end.
