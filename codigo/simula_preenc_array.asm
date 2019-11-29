# PESQUISAR O USO DE .globl
#.include "genius.asm"


 # JA USADOS $s0,  $s1, $s2,  $s3,  $s4,  $s5, $t0, $t1
 
 # SIGNIFICADO DOS DADOS NO ARRAY (PARA COR E TECLADO)
 # 0 = VERDE (CIMA), 1 = AZUL (DIREITA), 2 = VERMELHO (BAIXO), 3 = AMARELO (ESQUERDA)

# .eqv é como o define
.eqv CAPACIDADE 5


.data
	arrayGenius: .space 20 # aloca espaço no random access memory
	
	msg1: .asciiz "*** SIMULACAO DAS RODADAS ***"
	msg2: .asciiz "\n*** array preenchido ***"
	msg3: .asciiz "\n >>> RESULTADO: Array A[] = {"
	msg4: .asciiz ", "
	msg5: .asciiz "}"
	
.text
	# s7 SERA USADO PARA AUXILIAR ONDE .DATA NAO EH DADO COMO INCORRECT TYPE
	
	#INICIALIZA OS INDEX
	# index i real = $t2 (para acesso aos dados)
	addi, $t2, $zero, 0
	
	# index i auxiliar = $t3 (para impressao e condicao do loop)
	addi, $t3, $zero, 0
	
	# tamanho atual do array = $t4
	addi, $t4, $zero, 0
	
	# exibe mensagem 1
	li $v0, 4
	la $a0, msg1
	syscall
	
	game_loop:
		addi, $t4, $t4, 1 # tam_atual++
		
		loop_preencher:
			# GERAR ALEATORIO DE 0 A 3
			li $a1, 4  # define em $a1 o limite maximo
    			li $v0, 42  # gera o aleatorio (que fica salvo em $a0)
    			syscall
        	   						
			sw $a0, arrayGenius($t2) # guarda o valor ($a0) no array
		
			# incrementa i para obter proximo indice
			addi, $t2, $t2, 4
			addi, $t3, $t3, 1
		
			# condicao do laco
			bne $t3, $t4, loop_preencher
	
		# reinicia o indices
		addi, $t2, $zero, 0
		addi, $t3, $zero, 0
		
		
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
	
	# encerrar
	li $v0, 10
	syscall
