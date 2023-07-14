windows();berplot()


LengthTabQ <- table(ddt$LENGTH)
LengthTabQ
mean(LengthTabQ)

DDTTABQ =with(ddt, ddt[DDT>30,])
DDTTABQ
summary(DDTTABQ)
