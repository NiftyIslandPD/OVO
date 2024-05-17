select t.TokenId
from 
[OVOMemberToken] t 
Inner join [OVOVisitor] v on t.VisitorId = v.Id 
where 
v.ClientId = '6876d0a6-4762-4976-934d-29c3dbcea870' and v.EthWallet = '0x01bD3130833A1e6d7b1a19676414F5947182FabA'