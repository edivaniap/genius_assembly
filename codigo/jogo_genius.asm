.eqv CAPACIDADE 10
.eqv VERDE 0
.eqv AZUL 1
.eqv VERMELHO 2
.eqv AMARELO 3

.data
	arrayGenius: .space 40 # aloca espaço no random access memory
	
	strGenius: .asciiz "genius"
	strNome: .asciiz "********** GENIUS **********"
	strIniciar: .asciiz "\nDigite 1 para iniciar o jogo\nDigite 0 para sair\n"
	strPerdeu: .asciiz "\nVOCÊ PERDEU! :C"
	strGanhou: .asciiz "\n>>> VOCÊ GANHOU! <<<"
	strVezPC: .asciiz "\n -> Vez do Genius!"
	strVezUser: .asciiz "\n -> Sua vez! \n Você jogou:\n"
	strNivel: "\n NIVEL: "
	
.text

main:
	# s1 guarda o valor da pergunta inicial
	# s2 guarda do nivel que o jogador esta
	
	jal def_fundo_bitmap
	
	la $t6, inicializar_bitmap # set t6 to label's address
	jalr $t7, $t6 # set t0 to Program Counter (return address
		      # then jump to statement whose adress is in t6
	
	# exibir nome do jogo
	li $v0, 4
	la $a0, strNome
	syscall
	
	jal pergunta_inicial
		
	# s7 SERA USADO PARA AUXILIAR ONDE .DATA NAO EH DADO COMO INCORRECT TYPE
	
	#INICIALIZA OS INDEX
	addi, $t2, $zero, 0 # index i real = $t2 (para acesso aos dados)
	addi, $t3, $zero, 0 # index i auxiliar = $t3 (para impressao e condicao do loop)
	addi, $t4, $zero, 0 # tamanho atual do array = $t4
	addi, $t5, $zero, 0 # indice atual do array = $t5 para preencher
	
	# exibir nome do jogo
	li $v0, 4
	la $a0, strNome
	syscall
	
	game_loop:
		addi, $t4, $t4, 1 # tam_atual++
		
		# GERAR ALEATORIO DE 0 A 3
		li $a1, 4  # define em $a1 o limite maximo
    		li $v0, 42  # gera o aleatorio (que fica salvo em $a0)
    		syscall
        	   						
		sw $a0, arrayGenius($t5) # guarda o valor ($a0) no array
	
		# incrementa i para obter proximo indice
		addi, $t5, $t5, 4
	
		# exibe descricao rodada
		li $v0, 4
		la $a0, strNivel
		syscall
		
		# exibe valor do nivel
		li $v0, 1
		move $a0, $t4
		syscall
		
		# exibe vez do genius
		li $v0, 4
		la $a0, strVezPC
		syscall
		
		
		# DELAY DE 1s ANTES DA JOGADA DO GENIUS
		addi $t8, $zero, 1000
		move $a0, $t8
		li $v0, 32	# syscall 32: funcao de sleep
		syscall
		
		#### Jogadas do PC ####
		loop_jogadas_pc:
			lw $s7, arrayGenius($t2) # carrega o dado[i] no registrador auxiliar
		
			la $s2, ($s7) # seta o auxiliar $s2 com a jogada para o label processa_jogada
			la $t6, processa_jogada # set t6 to label's address
			jalr $t7, $t6 # set t0 to Program Counter (return address
		    		      # then jump to statement whose adress is in t6
			
			# DELAY DE 1/2s
			addi $t8, $zero, 500
			move $a0, $t8
			li $v0, 32	# syscall 32: funcao de sleep
			syscall
			
			# incrementa i para obter proximo indice
			addi, $t2, $t2, 4
			addi, $t3, $t3, 1
		
			# condicao do laco
			bne $t3, $t4, loop_jogadas_pc
				
		# reinicia o indices
		addi, $t2, $zero, 0
		addi, $t3, $zero, 0
		
		# exibe descricao rodada
		li $v0, 4
		la $a0, strVezUser
		syscall
		
		#### Jogadas do usuario ####
		loop_jogadas_user:
			# recebe o numero
			li $v0, 5
			syscall
			move $s1, $v0 # guarda o int em s1
					
			lw $s7, arrayGenius($t2) # carrega o dado[i] no registrador auxiliar
			
			
			la $s2, ($s1) # seta o auxiliar $s2 com a jogada para o label processa_jogada
			la $t6, processa_jogada # set t6 to label's address
			jalr $t7, $t6 # set t0 to Program Counter (return address
		    		      # then jump to statement whose adress is in t6
									
			bne $s1, $s7, perdeu
			
			# incrementa i para obter proximo indice
			addi, $t2, $t2, 4
			addi, $t3, $t3, 1
		
			# condicao do laco
			bne $t3, $t4, loop_jogadas_user
			
		# reinicia o indices
		addi, $t2, $zero, 0
		addi, $t3, $zero, 0
		
		# condicao do laco / quando atingir a capacidae max do array para
		addi, $s7, $zero, CAPACIDADE
		bne $t4, $s7, game_loop

	j ganhou

pergunta_inicial:
	# exibe strIniciar
	li $v0, 4
	la $a0, strIniciar
	syscall
	
	# recebe o numero
	li $v0, 5
	syscall
	move $s1, $v0 # guarda o int em s1
	
	beq $s1, $zero, encerrar
	bne $s1, 1, pergunta_inicial
	jr $ra

perdeu:
	# exibe mensagem de insucesso 
	li $v0, 4
	la $a0, strPerdeu
	syscall
	
	j encerrar
	

ganhou:
	# exibe mensagem de sucesso 
	li $v0, 4
	la $a0, strGanhou
	syscall
	
	j encerrar
	
processa_jogada:
	beq $s2, VERDE, piscar_verde
	beq $s2, AZUL, piscar_azul
	beq $s2, VERMELHO, piscar_vermelho
	beq $s2, AMARELO, piscar_amarelo
	
	continuar:
	jr $t7

piscar_verde:
	jal pinte_verde_lig
	
	# DELAY DE 1s
	addi $t8, $zero, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall	
	
	jal pinte_verde_desl
	j continuar
	
piscar_azul:
	jal pinte_azul_lig
	
	# DELAY DE 1s
	addi $t8, $zero, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall	
	
	jal pinte_azul_desl
	
	j continuar

piscar_vermelho:
	jal pinte_vermelho_lig
	# DELAY DE 1s
	addi $t8, $zero, 1000
	move $a0, $t8
	li $v0, 32	# syscall 32: funcao de sleep
	syscall
	jal pinte_vermelho_desl
	j continuar
	
piscar_amarelo:
	jal pinte_amarelo_lig
	
	# DELAY DE 1s
	addi $t8, $zero, 1000
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
