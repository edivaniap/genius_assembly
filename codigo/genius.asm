.text


def_cor:
	addi, $20, $0, 0xB22222 #vermelho apagado


def_fundo:
	addi, $9, $0, 4096 #quantidade de pontos na tela (256*256/4*4)
	add, $10, $0, $9 #mapeamento
	lui, $10, 0x1001 #inicio

pinte_genius:
	sw $20, 10340($10)
	sw $20, 10344($10)
	sw $20, 10348($10)
	sw $20, 10380($10)
	sw $20, 10384($10)
	sw $20, 10388($10)