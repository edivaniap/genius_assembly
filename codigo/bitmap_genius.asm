 # SIGNIFICADO DOS DADOS NO ARRAY (PARA COR E TECLADO)
 # 0 = VERDE (CIMA), 1 = AZUL (DIREITA), 2 = VERMELHO (BAIXO), 3 = AMARELO (ESQUERDA)

.eqv CAPACIDADE 5
.eqv VERDE 0
.eqv AZUL 1
.eqv VERMELHO 2
.eqv AMARELO 3

.data
	arrayGenius: .space 20 # aloca espaço no random access memory
	
	msg1: .asciiz "*** SIMULACAO DAS RODADAS ***"
	msg2: .asciiz "\n*** array preenchido ***"
	msg3: .asciiz "\n >>> RESULTADO: Array A[] = {"
	msg4: .asciiz ", "
	msg5: .asciiz "}"
	msg6: .asciiz " :  novo aleatorio gerado: "
	
.text
	#jal inicializar_bitmap
	jal def_fundo_bitmap
	
	la $t6, inicializar_bitmap # set t6 to label's address
	jalr $t7, $t6 # set t0 to Program Counter (return address
			# then jump to statement whose adress is in t6
			
			
			
	# s7 SERA USADO PARA AUXILIAR ONDE .DATA NAO EH DADO COMO INCORRECT TYPE
	
	#INICIALIZA OS INDEX
	# index i real = $t2 (para acesso aos dados)
	addi, $t2, $zero, 0
	
	# index i auxiliar = $t3 (para impressao e condicao do loop)
	addi, $t3, $zero, 0
	
	# tamanho atual do array = $t4
	addi, $t4, $zero, 0
	
	# indice atual do array = $t5 para preencher
	addi, $t5, $zero, 0
	
	game_loop:
		addi, $t4, $t4, 1 # tam_atual++
		
		# GERAR ALEATORIO DE 0 A 3
		li $a1, 4  # define em $a1 o limite maximo
    		li $v0, 42  # gera o aleatorio (que fica salvo em $a0)
    		syscall
        	   						
		sw $a0, arrayGenius($t5) # guarda o valor ($a0) no array
	
		# incrementa i para obter proximo indice
		addi, $t5, $t5, 4
	
		# exibe mensagem 3
		li $v0, 4
		la $a0, msg3
		syscall
	
		loop_exibir:
			lw $s7, arrayGenius($t2) # carrega o dado[i] no registrador auxiliar
		
			# exibe o dado
			li $v0, 1
			move $a0, $s7
			syscall
		
			# exibe a virgula - mensagem 4
			li $v0, 4
			la $a0, msg4
			syscall
			
			beq $s7, VERDE, piscar_verde
			beq $s7, AZUL, piscar_azul
			beq $s7, VERMELHO, piscar_vermelho
			beq $s7, AMARELO, piscar_amarelo
			
			continuar:
			
			# DELAY DE 1s
			addi $t8, $0, 500
			move $a0, $t8
			li $v0, 32	# syscall 32: funcao de sleep
			syscall
			
			# incrementa i para obter proximo indice
			addi, $t2, $t2, 4
			addi, $t3, $t3, 1
		
			# condicao do laco
			bne $t3, $t4, loop_exibir
		
		# exibe a chave - mensagem 4
		li $v0, 4
		la $a0, msg5
		syscall
		
		# reinicia o indices
		addi, $t2, $zero, 0
		addi, $t3, $zero, 0
		
		# condicao do laco / quando atingir a capacidae max do array para
		addi, $s7, $zero, CAPACIDADE
		bne $t4, $s7, game_loop

	j encerrar

piscar_verde:
	jal pinte_verde_lig
	
	# DELAY DE 1s
	addi $t8, $0, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall	
	
	jal pinte_verde_desl
	j continuar
	
piscar_azul:
	jal pinte_azul_lig
	
	# DELAY DE 1s
	addi $t8, $0, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall	
	
	jal pinte_azul_desl
	
	j continuar

piscar_vermelho:
	jal pinte_vermelho_lig
	# DELAY DE 1s
	addi $t8, $0, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall
	jal pinte_vermelho_desl
	j continuar
	
piscar_amarelo:
	jal pinte_amarelo_lig
	
	# DELAY DE 1s
	addi $t8, $0, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall	
	
	jal pinte_amarelo_desl
	
	j continuar

def_fundo_bitmap:
	# DEFINE FUNDO
	addi, $t0, $zero, 4096 # quantidade de pontos na tela (256*256/4*4)
	add, $t1, $zero, $t0 # mapeamento
	lui, $t1, 0x1001 # inicio
	jr $ra
	
inicializar_bitmap:
	# DESENHA O GENIUS
	jal pinte_cinza
	jal pinte_branco
	jal pinte_amarelo_desl
	jal pinte_verde_desl
	jal pinte_vermelho_desl
	jal pinte_azul_desl
	jr $t7

encerrar:
	li $v0, 10
	syscall
