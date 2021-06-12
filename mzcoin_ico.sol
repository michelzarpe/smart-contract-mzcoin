//ico mzcoin
//versao
pragma solidity ^0.4.11

contract mzcoin_ico {
    //numero maximo de mzcoin que serão introduzidas no ico
    uint public max_mzcoin = 1000000;
    //taxa cotacao de mzcoin para dollar
    uint public usd_to_mzcoin = 1000;
    //total de mzcoin que foram comprados por investidores
    uint public total_mzcoin_bought = 0; 
    
    //funcao de equivalencia para mzcoin
    //address endereco do investidor
    mapping(address => uint) equity_mzcoin;
    //funcao de equivalencia para dollar
    mapping(address => uint) equity_usd;    
    
    //verificar se o investidor pode comprar a quantidade que ele deseja de mzcoin
    modifier con_by_mzcoins(uint usd_invested){
        require (usd_invested * usd_to_mzcoin + total_mzcoin_bought <= max_mzcoin);
        _;//funcao só sera aplicada onde a condição for verdadeira
    }    
	
	//retorna o valor do investimento em mzcoins
	function equity_in_mzcoins(address investor)external constant returns(unit){
		return equity_mzcoin[investor];
	}
	
	//retorna o valor do investimento em dolares
	function equity_in_usd(address investor)external constant returns(unit){
		return equity_usd[investor];
	}


	
}