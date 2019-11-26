.text

# CORES LIGADAS
# VERDE: 0x00FF00 # AMARELO: 0xFFFF00 # VERMELHO: 0xFF0000 # AZUL: 0x0000FF

# CORES DESLIGADAS
# VERDE: 0x90EE90 # AMARELO: 0xFFFFE0 # VERMELHO: 0xFF6347 # AZUL: 0x00BFFF
def_cores:
	addi, $s0, $zero, 0x696969 # cinza
	addi, $s1, $zero, 0xFFFFFF # branco
	addi, $s2, $zero, 0x90EE90 # verde
	addi, $s3, $zero, 0xF0E68C # amarelo
	addi, $s4, $zero, 0xFF6347 # vermelho
	addi, $s5, $zero, 0x00BFFF # azul
	
def_fundo:
	addi, $t0, $zero, 4096 # quantidade de pontos na tela (256*256/4*4)
	add, $t1, $zero, $t0 # mapeamento
	lui, $t1, 0x1001 # inicio

pinte_genius:
	# pintar de cinza
	sw $s0, 1640($t1)
	sw $s0, 1644($t1)
	sw $s0, 1648($t1)
	sw $s0, 1652($t1)
	sw $s0, 1656($t1)
	sw $s0, 1660($t1)
	sw $s0, 1664($t1)
	sw $s0, 1668($t1)
	sw $s0, 1672($t1)
	sw $s0, 1676($t1)
	sw $s0, 1680($t1)
	sw $s0, 1884($t1)
	sw $s0, 1888($t1)
	sw $s0, 1892($t1)
	sw $s0, 1940($t1)
	sw $s0, 1944($t1)
	sw $s0, 1948($t1)
	sw $s0, 2132($t1)
	sw $s0, 2136($t1)
	sw $s0, 2208($t1)
	sw $s0, 2212($t1)
	sw $s0, 2380($t1)
	sw $s0, 2384($t1)
	sw $s0, 2472($t1)
	sw $s0, 2476($t1)
	sw $s0, 2628($t1)
	sw $s0, 2632($t1)
	sw $s0, 2736($t1)
	sw $s0, 2740($t1)
	sw $s0, 2880($t1)
	sw $s0, 3000($t1)
	sw $s0, 3132($t1)
	sw $s0, 3260($t1)
	sw $s0, 3384($t1)
	sw $s0, 3520($t1)
	sw $s0, 3636($t1)
	sw $s0, 3780($t1)
	sw $s0, 3888($t1)
	sw $s0, 4040($t1)
	sw $s0, 4140($t1)
	sw $s0, 4300($t1)
	sw $s0, 4392($t1)
	sw $s0, 4560($t1)
	sw $s0, 4648($t1)
	sw $s0, 4816($t1)
	sw $s0, 4900($t1)
	sw $s0, 5076($t1)
	sw $s0, 5156($t1)
	sw $s0, 5332($t1)
	sw $s0, 5408($t1)
	sw $s0, 5592($t1)
	sw $s0, 5664($t1)
	sw $s0, 5848($t1)
	sw $s0, 5916($t1)
	sw $s0, 6108($t1)
	sw $s0, 6172($t1)
	sw $s0, 6364($t1)
	sw $s0, 6428($t1)
	sw $s0, 6620($t1)
	sw $s0, 6680($t1)
	sw $s0, 6880($t1)
	sw $s0, 6936($t1)
	sw $s0, 7136($t1)
	sw $s0, 7192($t1)
	sw $s0, 7392($t1)
	sw $s0, 7448($t1)
	sw $s0, 7648($t1)
	sw $s0, 7704($t1)
	sw $s0, 7904($t1)
	sw $s0, 7960($t1)
	sw $s0, 8160($t1)
	sw $s0, 8216($t1)
	sw $s0, 8416($t1)
	sw $s0, 8472($t1)
	sw $s0, 8672($t1)
	sw $s0, 8728($t1)
	sw $s0, 8928($t1)
	sw $s0, 8984($t1)
	sw $s0, 9184($t1)
	sw $s0, 9240($t1)
	sw $s0, 9440($t1)
	sw $s0, 9500($t1)
	sw $s0, 9692($t1)
	sw $s0, 9756($t1)
	sw $s0, 9948($t1)
	sw $s0, 10012($t1)
	sw $s0, 10204($t1)
	sw $s0, 10272($t1)
	sw $s0, 10456($t1)
	sw $s0, 10528($t1)
	sw $s0, 10712($t1)
	sw $s0, 10788($t1)
	sw $s0, 10964($t1)
	sw $s0, 11044($t1)
	sw $s0, 11220($t1)
	sw $s0, 11304($t1)
	sw $s0, 11472($t1)
	sw $s0, 11560($t1)
	sw $s0, 11728($t1)
	sw $s0, 11820($t1)
	sw $s0, 11980($t1)
	sw $s0, 12080($t1)
	sw $s0, 12232($t1)
	sw $s0, 12340($t1)
	sw $s0, 12484($t1)
	sw $s0, 12600($t1)
	sw $s0, 12736($t1)
	sw $s0, 12860($t1)
	sw $s0, 12988($t1)
	sw $s0, 13120($t1)
	sw $s0, 13240($t1)
	sw $s0, 13380($t1)
	sw $s0, 13384($t1)
	sw $s0, 13488($t1)
	sw $s0, 13492($t1)
	sw $s0, 13644($t1)
	sw $s0, 13648($t1)
	sw $s0, 13736($t1)
	sw $s0, 13740($t1)
	sw $s0, 13908($t1)
	sw $s0, 13912($t1)
	sw $s0, 13984($t1)
	sw $s0, 13988($t1)
	sw $s0, 14172($t1)
	sw $s0, 14176($t1)
	sw $s0, 14180($t1)
	sw $s0, 14228($t1)
	sw $s0, 14232($t1)
	sw $s0, 14236($t1)
	sw $s0, 14440($t1)
	sw $s0, 14444($t1)
	sw $s0, 14448($t1)
	sw $s0, 14452($t1)
	sw $s0, 14456($t1)
	sw $s0, 14460($t1)
	sw $s0, 14464($t1)
	sw $s0, 14468($t1)
	sw $s0, 14472($t1)
	sw $s0, 14476($t1)
	sw $s0, 14480($t1)
	
	# pintar de branco
	sw $s1, 6260($t1)
	sw $s1, 6264($t1)
	sw $s1, 6268($t1)
	sw $s1, 6272($t1)
	sw $s1, 6276($t1)
	sw $s1, 6508($t1)
	sw $s1, 6512($t1)
	sw $s1, 6536($t1)
	sw $s1, 6540($t1)
	sw $s1, 6760($t1)
	sw $s1, 6800($t1)
	sw $s1, 7012($t1)
	sw $s1, 7060($t1)
	sw $s1, 7268($t1)
	sw $s1, 7292($t1)
	sw $s1, 7316($t1)
	sw $s1, 7520($t1)
	sw $s1, 7540($t1)
	sw $s1, 7548($t1)
	sw $s1, 7556($t1)
	sw $s1, 7576($t1)
	sw $s1, 7776($t1)
	sw $s1, 7792($t1)
	sw $s1, 7804($t1)
	sw $s1, 7816($t1)
	sw $s1, 7832($t1)
	sw $s1, 8032($t1)
	sw $s1, 8048($t1)
	sw $s1, 8072($t1)
	sw $s1, 8088($t1)
	sw $s1, 8288($t1)
	sw $s1, 8304($t1)
	sw $s1, 8328($t1)
	sw $s1, 8344($t1)
	sw $s1, 8544($t1)
	sw $s1, 8560($t1)
	sw $s1, 8564($t1)
	sw $s1, 8580($t1)
	sw $s1, 8584($t1)
	sw $s1, 8600($t1)
	sw $s1, 8804($t1)
	sw $s1, 8820($t1)
	sw $s1, 8824($t1)
	sw $s1, 8828($t1)
	sw $s1, 8832($t1)
	sw $s1, 8836($t1)
	sw $s1, 8852($t1)
	sw $s1, 9060($t1)
	sw $s1, 9108($t1)
	sw $s1, 9320($t1)
	sw $s1, 9360($t1)
	sw $s1, 9580($t1)
	sw $s1, 9584($t1)
	sw $s1, 9608($t1)
	sw $s1, 9612($t1)
	sw $s1, 9844($t1)
	sw $s1, 9848($t1)
	sw $s1, 9852($t1)
	sw $s1, 9856($t1)
	sw $s1, 9860($t1)
	
	# pintar verde apagado
	sw $s2, 2668($t1)
	sw $s2, 2672($t1)
	sw $s2, 2676($t1)
	sw $s2, 2680($t1)
	sw $s2, 2684($t1)
	sw $s2, 2688($t1)
	sw $s2, 2692($t1)
	sw $s2, 2696($t1)
	sw $s2, 2700($t1)
	sw $s2, 2908($t1)
	sw $s2, 2912($t1)
	sw $s2, 2916($t1)
	sw $s2, 2920($t1)
	sw $s2, 2924($t1)
	sw $s2, 2928($t1)
	sw $s2, 2932($t1)
	sw $s2, 2936($t1)
	sw $s2, 2940($t1)
	sw $s2, 2944($t1)
	sw $s2, 2948($t1)
	sw $s2, 2952($t1)
	sw $s2, 2956($t1)
	sw $s2, 2960($t1)
	sw $s2, 2964($t1)
	sw $s2, 2968($t1)
	sw $s2, 2972($t1)
	sw $s2, 3156($t1)
	sw $s2, 3160($t1)
	sw $s2, 3164($t1)
	sw $s2, 3168($t1)
	sw $s2, 3172($t1)
	sw $s2, 3176($t1)
	sw $s2, 3180($t1)
	sw $s2, 3184($t1)
	sw $s2, 3188($t1)
	sw $s2, 3192($t1)
	sw $s2, 3196($t1)
	sw $s2, 3200($t1)
	sw $s2, 3204($t1)
	sw $s2, 3208($t1)
	sw $s2, 3212($t1)
	sw $s2, 3216($t1)
	sw $s2, 3220($t1)
	sw $s2, 3224($t1)
	sw $s2, 3228($t1)
	sw $s2, 3232($t1)
	sw $s2, 3236($t1)
	sw $s2, 3408($t1)
	sw $s2, 3412($t1)
	sw $s2, 3416($t1)
	sw $s2, 3420($t1)
	sw $s2, 3424($t1)
	sw $s2, 3428($t1)
	sw $s2, 3432($t1)
	sw $s2, 3436($t1)
	sw $s2, 3440($t1)
	sw $s2, 3444($t1)
	sw $s2, 3448($t1)
	sw $s2, 3452($t1)
	sw $s2, 3456($t1)
	sw $s2, 3460($t1)
	sw $s2, 3464($t1)
	sw $s2, 3468($t1)
	sw $s2, 3472($t1)
	sw $s2, 3476($t1)
	sw $s2, 3480($t1)
	sw $s2, 3484($t1)
	sw $s2, 3488($t1)
	sw $s2, 3492($t1)
	sw $s2, 3496($t1)
	sw $s2, 3660($t1)
	sw $s2, 3664($t1)
	sw $s2, 3668($t1)
	sw $s2, 3672($t1)
	sw $s2, 3676($t1)
	sw $s2, 3680($t1)
	sw $s2, 3684($t1)
	sw $s2, 3688($t1)
	sw $s2, 3692($t1)
	sw $s2, 3696($t1)
	sw $s2, 3700($t1)
	sw $s2, 3704($t1)
	sw $s2, 3708($t1)
	sw $s2, 3712($t1)
	sw $s2, 3716($t1)
	sw $s2, 3720($t1)
	sw $s2, 3724($t1)
	sw $s2, 3728($t1)
	sw $s2, 3732($t1)
	sw $s2, 3736($t1)
	sw $s2, 3740($t1)
	sw $s2, 3744($t1)
	sw $s2, 3748($t1)
	sw $s2, 3752($t1)
	sw $s2, 3756($t1)
	sw $s2, 3912($t1)
	sw $s2, 3916($t1)
	sw $s2, 3920($t1)
	sw $s2, 3924($t1)
	sw $s2, 3928($t1)
	sw $s2, 3932($t1)
	sw $s2, 3936($t1)
	sw $s2, 3940($t1)
	sw $s2, 3944($t1)
	sw $s2, 3948($t1)
	sw $s2, 3952($t1)
	sw $s2, 3956($t1)
	sw $s2, 3960($t1)
	sw $s2, 3964($t1)
	sw $s2, 3968($t1)
	sw $s2, 3972($t1)
	sw $s2, 3976($t1)
	sw $s2, 3980($t1)
	sw $s2, 3984($t1)
	sw $s2, 3988($t1)
	sw $s2, 3992($t1)
	sw $s2, 3996($t1)
	sw $s2, 4000($t1)
	sw $s2, 4004($t1)
	sw $s2, 4008($t1)
	sw $s2, 4012($t1)
	sw $s2, 4016($t1)
	sw $s2, 4172($t1)
	sw $s2, 4176($t1)
	sw $s2, 4180($t1)
	sw $s2, 4184($t1)
	sw $s2, 4188($t1)
	sw $s2, 4192($t1)
	sw $s2, 4196($t1)
	sw $s2, 4200($t1)
	sw $s2, 4204($t1)
	sw $s2, 4208($t1)
	sw $s2, 4212($t1)
	sw $s2, 4216($t1)
	sw $s2, 4220($t1)
	sw $s2, 4224($t1)
	sw $s2, 4228($t1)
	sw $s2, 4232($t1)
	sw $s2, 4236($t1)
	sw $s2, 4240($t1)
	sw $s2, 4244($t1)
	sw $s2, 4248($t1)
	sw $s2, 4252($t1)
	sw $s2, 4256($t1)
	sw $s2, 4260($t1)
	sw $s2, 4264($t1)
	sw $s2, 4268($t1)
	sw $s2, 4432($t1)
	sw $s2, 4436($t1)
	sw $s2, 4440($t1)
	sw $s2, 4444($t1)
	sw $s2, 4448($t1)
	sw $s2, 4452($t1)
	sw $s2, 4456($t1)
	sw $s2, 4460($t1)
	sw $s2, 4464($t1)
	sw $s2, 4468($t1)
	sw $s2, 4472($t1)
	sw $s2, 4476($t1)
	sw $s2, 4480($t1)
	sw $s2, 4484($t1)
	sw $s2, 4488($t1)
	sw $s2, 4492($t1)
	sw $s2, 4496($t1)
	sw $s2, 4500($t1)
	sw $s2, 4504($t1)
	sw $s2, 4508($t1)
	sw $s2, 4512($t1)
	sw $s2, 4516($t1)
	sw $s2, 4520($t1)
	sw $s2, 4692($t1)
	sw $s2, 4696($t1)
	sw $s2, 4700($t1)
	sw $s2, 4704($t1)
	sw $s2, 4708($t1)
	sw $s2, 4712($t1)
	sw $s2, 4716($t1)
	sw $s2, 4720($t1)
	sw $s2, 4724($t1)
	sw $s2, 4728($t1)
	sw $s2, 4732($t1)
	sw $s2, 4736($t1)
	sw $s2, 4740($t1)
	sw $s2, 4744($t1)
	sw $s2, 4748($t1)
	sw $s2, 4752($t1)
	sw $s2, 4756($t1)
	sw $s2, 4760($t1)
	sw $s2, 4764($t1)
	sw $s2, 4768($t1)
	sw $s2, 4772($t1)
	sw $s2, 4952($t1)
	sw $s2, 4956($t1)
	sw $s2, 4960($t1)
	sw $s2, 4964($t1)
	sw $s2, 4968($t1)
	sw $s2, 4972($t1)
	sw $s2, 4976($t1)
	sw $s2, 4980($t1)
	sw $s2, 4984($t1)
	sw $s2, 4988($t1)
	sw $s2, 4992($t1)
	sw $s2, 4996($t1)
	sw $s2, 5000($t1)
	sw $s2, 5004($t1)
	sw $s2, 5008($t1)
	sw $s2, 5012($t1)
	sw $s2, 5016($t1)
	sw $s2, 5020($t1)
	sw $s2, 5024($t1)
	sw $s2, 5212($t1)
	sw $s2, 5216($t1)
	sw $s2, 5220($t1)
	sw $s2, 5224($t1)
	sw $s2, 5228($t1)
	sw $s2, 5232($t1)
	sw $s2, 5236($t1)
	sw $s2, 5240($t1)
	sw $s2, 5244($t1)
	sw $s2, 5248($t1)
	sw $s2, 5252($t1)
	sw $s2, 5256($t1)
	sw $s2, 5260($t1)
	sw $s2, 5264($t1)
	sw $s2, 5268($t1)
	sw $s2, 5272($t1)
	sw $s2, 5276($t1)
	sw $s2, 5472($t1)
	sw $s2, 5476($t1)
	sw $s2, 5480($t1)
	sw $s2, 5484($t1)
	sw $s2, 5488($t1)
	sw $s2, 5492($t1)
	sw $s2, 5496($t1)
	sw $s2, 5500($t1)
	sw $s2, 5504($t1)
	sw $s2, 5508($t1)
	sw $s2, 5512($t1)
	sw $s2, 5516($t1)
	sw $s2, 5520($t1)
	sw $s2, 5524($t1)
	sw $s2, 5528($t1)
	sw $s2, 5732($t1)
	sw $s2, 5736($t1)
	sw $s2, 5740($t1)
	sw $s2, 5772($t1)
	sw $s2, 5776($t1)
	sw $s2, 5780($t1)
	
	# pintar de amarelo apagado
	sw $s3, 4668($t1)
	sw $s3, 4920($t1)
	sw $s3, 4924($t1)
	sw $s3, 4928($t1)
	sw $s3, 5172($t1)
	sw $s3, 5176($t1)
	sw $s3, 5180($t1)
	sw $s3, 5184($t1)
	sw $s3, 5188($t1)
	sw $s3, 5424($t1)
	sw $s3, 5428($t1)
	sw $s3, 5432($t1)
	sw $s3, 5436($t1)
	sw $s3, 5440($t1)
	sw $s3, 5444($t1)
	sw $s3, 5448($t1)
	sw $s3, 5680($t1)
	sw $s3, 5684($t1)
	sw $s3, 5688($t1)
	sw $s3, 5692($t1)
	sw $s3, 5696($t1)
	sw $s3, 5700($t1)
	sw $s3, 5704($t1)
	sw $s3, 5708($t1)
	sw $s3, 5932($t1)
	sw $s3, 5936($t1)
	sw $s3, 5940($t1)
	sw $s3, 5944($t1)
	sw $s3, 5948($t1)
	sw $s3, 5952($t1)
	sw $s3, 5956($t1)
	sw $s3, 5960($t1)
	sw $s3, 5964($t1)
	sw $s3, 5968($t1)
	sw $s3, 6188($t1)
	sw $s3, 6192($t1)
	sw $s3, 6196($t1)
	sw $s3, 6200($t1)
	sw $s3, 6204($t1)
	sw $s3, 6208($t1)
	sw $s3, 6212($t1)
	sw $s3, 6216($t1)
	sw $s3, 6220($t1)
	sw $s3, 6224($t1)
	sw $s3, 6228($t1)
	sw $s3, 6444($t1)
	sw $s3, 6448($t1)
	sw $s3, 6452($t1)
	sw $s3, 6456($t1)
	sw $s3, 6460($t1)
	sw $s3, 6464($t1)
	sw $s3, 6468($t1)
	sw $s3, 6472($t1)
	sw $s3, 6476($t1)
	sw $s3, 6480($t1)
	sw $s3, 6484($t1)
	sw $s3, 6488($t1)
	sw $s3, 6700($t1)
	sw $s3, 6704($t1)
	sw $s3, 6708($t1)
	sw $s3, 6712($t1)
	sw $s3, 6716($t1)
	sw $s3, 6720($t1)
	sw $s3, 6724($t1)
	sw $s3, 6728($t1)
	sw $s3, 6732($t1)
	sw $s3, 6736($t1)
	sw $s3, 6740($t1)
	sw $s3, 6744($t1)
	sw $s3, 6952($t1)
	sw $s3, 6956($t1)
	sw $s3, 6960($t1)
	sw $s3, 6964($t1)
	sw $s3, 6968($t1)
	sw $s3, 6972($t1)
	sw $s3, 6976($t1)
	sw $s3, 6980($t1)
	sw $s3, 6984($t1)
	sw $s3, 6988($t1)
	sw $s3, 6992($t1)
	sw $s3, 6996($t1)
	sw $s3, 7000($t1)
	sw $s3, 7208($t1)
	sw $s3, 7212($t1)
	sw $s3, 7216($t1)
	sw $s3, 7220($t1)
	sw $s3, 7224($t1)
	sw $s3, 7228($t1)
	sw $s3, 7232($t1)
	sw $s3, 7236($t1)
	sw $s3, 7240($t1)
	sw $s3, 7244($t1)
	sw $s3, 7248($t1)
	sw $s3, 7252($t1)
	sw $s3, 7464($t1)
	sw $s3, 7468($t1)
	sw $s3, 7472($t1)
	sw $s3, 7476($t1)
	sw $s3, 7480($t1)
	sw $s3, 7484($t1)
	sw $s3, 7488($t1)
	sw $s3, 7492($t1)
	sw $s3, 7496($t1)
	sw $s3, 7500($t1)
	sw $s3, 7504($t1)
	sw $s3, 7508($t1)
	sw $s3, 7720($t1)
	sw $s3, 7724($t1)
	sw $s3, 7728($t1)
	sw $s3, 7732($t1)
	sw $s3, 7736($t1)
	sw $s3, 7740($t1)
	sw $s3, 7744($t1)
	sw $s3, 7748($t1)
	sw $s3, 7752($t1)
	sw $s3, 7756($t1)
	sw $s3, 7760($t1)
	sw $s3, 7764($t1)
	sw $s3, 7976($t1)
	sw $s3, 7980($t1)
	sw $s3, 7984($t1)
	sw $s3, 7988($t1)
	sw $s3, 7992($t1)
	sw $s3, 7996($t1)
	sw $s3, 8000($t1)
	sw $s3, 8004($t1)
	sw $s3, 8008($t1)
	sw $s3, 8012($t1)
	sw $s3, 8016($t1)
	sw $s3, 8020($t1)
	sw $s3, 8232($t1)
	sw $s3, 8236($t1)
	sw $s3, 8240($t1)
	sw $s3, 8244($t1)
	sw $s3, 8248($t1)
	sw $s3, 8252($t1)
	sw $s3, 8256($t1)
	sw $s3, 8260($t1)
	sw $s3, 8264($t1)
	sw $s3, 8268($t1)
	sw $s3, 8272($t1)
	sw $s3, 8276($t1)
	sw $s3, 8488($t1)
	sw $s3, 8492($t1)
	sw $s3, 8496($t1)
	sw $s3, 8500($t1)
	sw $s3, 8504($t1)
	sw $s3, 8508($t1)
	sw $s3, 8512($t1)
	sw $s3, 8516($t1)
	sw $s3, 8520($t1)
	sw $s3, 8524($t1)
	sw $s3, 8528($t1)
	sw $s3, 8532($t1)
	sw $s3, 8744($t1)
	sw $s3, 8748($t1)
	sw $s3, 8752($t1)
	sw $s3, 8756($t1)
	sw $s3, 8760($t1)
	sw $s3, 8764($t1)
	sw $s3, 8768($t1)
	sw $s3, 8772($t1)
	sw $s3, 8776($t1)
	sw $s3, 8780($t1)
	sw $s3, 8784($t1)
	sw $s3, 8788($t1)
	sw $s3, 9000($t1)
	sw $s3, 9004($t1)
	sw $s3, 9008($t1)
	sw $s3, 9012($t1)
	sw $s3, 9016($t1)
	sw $s3, 9020($t1)
	sw $s3, 9024($t1)
	sw $s3, 9028($t1)
	sw $s3, 9032($t1)
	sw $s3, 9036($t1)
	sw $s3, 9040($t1)
	sw $s3, 9044($t1)
	sw $s3, 9048($t1)
	sw $s3, 9260($t1)
	sw $s3, 9264($t1)
	sw $s3, 9268($t1)
	sw $s3, 9272($t1)
	sw $s3, 9276($t1)
	sw $s3, 9280($t1)
	sw $s3, 9284($t1)
	sw $s3, 9288($t1)
	sw $s3, 9292($t1)
	sw $s3, 9296($t1)
	sw $s3, 9300($t1)
	sw $s3, 9304($t1)
	sw $s3, 9516($t1)
	sw $s3, 9520($t1)
	sw $s3, 9524($t1)
	sw $s3, 9528($t1)
	sw $s3, 9532($t1)
	sw $s3, 9536($t1)
	sw $s3, 9540($t1)
	sw $s3, 9544($t1)
	sw $s3, 9548($t1)
	sw $s3, 9552($t1)
	sw $s3, 9556($t1)
	sw $s3, 9560($t1)
	sw $s3, 9772($t1)
	sw $s3, 9776($t1)
	sw $s3, 9780($t1)
	sw $s3, 9784($t1)
	sw $s3, 9788($t1)
	sw $s3, 9792($t1)
	sw $s3, 9796($t1)
	sw $s3, 9800($t1)
	sw $s3, 9804($t1)
	sw $s3, 9808($t1)
	sw $s3, 9812($t1)
	sw $s3, 10028($t1)
	sw $s3, 10032($t1)
	sw $s3, 10036($t1)
	sw $s3, 10040($t1)
	sw $s3, 10044($t1)
	sw $s3, 10048($t1)
	sw $s3, 10052($t1)
	sw $s3, 10056($t1)
	sw $s3, 10060($t1)
	sw $s3, 10064($t1)
	sw $s3, 10288($t1)
	sw $s3, 10292($t1)
	sw $s3, 10296($t1)
	sw $s3, 10300($t1)
	sw $s3, 10304($t1)
	sw $s3, 10308($t1)
	sw $s3, 10312($t1)
	sw $s3, 10316($t1)
	sw $s3, 10544($t1)
	sw $s3, 10548($t1)
	sw $s3, 10552($t1)
	sw $s3, 10556($t1)
	sw $s3, 10560($t1)
	sw $s3, 10564($t1)
	sw $s3, 10568($t1)
	sw $s3, 10804($t1)
	sw $s3, 10808($t1)
	sw $s3, 10812($t1)
	sw $s3, 10816($t1)
	sw $s3, 10820($t1)
	sw $s3, 11064($t1)
	sw $s3, 11068($t1)
	sw $s3, 11072($t1)
	sw $s3, 11324($t1)
	
	# pintar de vermelho apagado
	sw $s4, 10340($t1)
	sw $s4, 10344($t1)
	sw $s4, 10348($t1)
	sw $s4, 10380($t1)
	sw $s4, 10384($t1)
	sw $s4, 10388($t1)
	sw $s4, 10592($t1)
	sw $s4, 10596($t1)
	sw $s4, 10600($t1)
	sw $s4, 10604($t1)
	sw $s4, 10608($t1)
	sw $s4, 10612($t1)
	sw $s4, 10616($t1)
	sw $s4, 10620($t1)
	sw $s4, 10624($t1)
	sw $s4, 10628($t1)
	sw $s4, 10632($t1)
	sw $s4, 10636($t1)
	sw $s4, 10640($t1)
	sw $s4, 10644($t1)
	sw $s4, 10648($t1)
	sw $s4, 10844($t1)
	sw $s4, 10848($t1)
	sw $s4, 10852($t1)
	sw $s4, 10856($t1)
	sw $s4, 10860($t1)
	sw $s4, 10864($t1)
	sw $s4, 10868($t1)
	sw $s4, 10872($t1)
	sw $s4, 10876($t1)
	sw $s4, 10880($t1)
	sw $s4, 10884($t1)
	sw $s4, 10888($t1)
	sw $s4, 10892($t1)
	sw $s4, 10896($t1)
	sw $s4, 10900($t1)
	sw $s4, 10904($t1)
	sw $s4, 10908($t1)
	sw $s4, 11096($t1)
	sw $s4, 11100($t1)
	sw $s4, 11104($t1)
	sw $s4, 11108($t1)
	sw $s4, 11112($t1)
	sw $s4, 11116($t1)
	sw $s4, 11120($t1)
	sw $s4, 11124($t1)
	sw $s4, 11128($t1)
	sw $s4, 11132($t1)
	sw $s4, 11136($t1)
	sw $s4, 11140($t1)
	sw $s4, 11144($t1)
	sw $s4, 11148($t1)
	sw $s4, 11152($t1)
	sw $s4, 11156($t1)
	sw $s4, 11160($t1)
	sw $s4, 11164($t1)
	sw $s4, 11168($t1)
	sw $s4, 11348($t1)
	sw $s4, 11352($t1)
	sw $s4, 11356($t1)
	sw $s4, 11360($t1)
	sw $s4, 11364($t1)
	sw $s4, 11368($t1)
	sw $s4, 11372($t1)
	sw $s4, 11376($t1)
	sw $s4, 11380($t1)
	sw $s4, 11384($t1)
	sw $s4, 11388($t1)
	sw $s4, 11392($t1)
	sw $s4, 11396($t1)
	sw $s4, 11400($t1)
	sw $s4, 11404($t1)
	sw $s4, 11408($t1)
	sw $s4, 11412($t1)
	sw $s4, 11416($t1)
	sw $s4, 11420($t1)
	sw $s4, 11424($t1)
	sw $s4, 11428($t1)
	sw $s4, 11600($t1)
	sw $s4, 11604($t1)
	sw $s4, 11608($t1)
	sw $s4, 11612($t1)
	sw $s4, 11616($t1)
	sw $s4, 11620($t1)
	sw $s4, 11624($t1)
	sw $s4, 11628($t1)
	sw $s4, 11632($t1)
	sw $s4, 11636($t1)
	sw $s4, 11640($t1)
	sw $s4, 11644($t1)
	sw $s4, 11648($t1)
	sw $s4, 11652($t1)
	sw $s4, 11656($t1)
	sw $s4, 11660($t1)
	sw $s4, 11664($t1)
	sw $s4, 11668($t1)
	sw $s4, 11672($t1)
	sw $s4, 11676($t1)
	sw $s4, 11680($t1)
	sw $s4, 11684($t1)
	sw $s4, 11688($t1)
	sw $s4, 11852($t1)
	sw $s4, 11856($t1)
	sw $s4, 11860($t1)
	sw $s4, 11864($t1)
	sw $s4, 11868($t1)
	sw $s4, 11872($t1)
	sw $s4, 11876($t1)
	sw $s4, 11880($t1)
	sw $s4, 11884($t1)
	sw $s4, 11888($t1)
	sw $s4, 11892($t1)
	sw $s4, 11896($t1)
	sw $s4, 11900($t1)
	sw $s4, 11904($t1)
	sw $s4, 11908($t1)
	sw $s4, 11912($t1)
	sw $s4, 11916($t1)
	sw $s4, 11920($t1)
	sw $s4, 11924($t1)
	sw $s4, 11928($t1)
	sw $s4, 11932($t1)
	sw $s4, 11936($t1)
	sw $s4, 11940($t1)
	sw $s4, 11944($t1)
	sw $s4, 11948($t1)
	sw $s4, 12104($t1)
	sw $s4, 12108($t1)
	sw $s4, 12112($t1)
	sw $s4, 12116($t1)
	sw $s4, 12120($t1)
	sw $s4, 12124($t1)
	sw $s4, 12128($t1)
	sw $s4, 12132($t1)
	sw $s4, 12136($t1)
	sw $s4, 12140($t1)
	sw $s4, 12144($t1)
	sw $s4, 12148($t1)
	sw $s4, 12152($t1)
	sw $s4, 12156($t1)
	sw $s4, 12160($t1)
	sw $s4, 12164($t1)
	sw $s4, 12168($t1)
	sw $s4, 12172($t1)
	sw $s4, 12176($t1)
	sw $s4, 12180($t1)
	sw $s4, 12184($t1)
	sw $s4, 12188($t1)
	sw $s4, 12192($t1)
	sw $s4, 12196($t1)
	sw $s4, 12200($t1)
	sw $s4, 12204($t1)
	sw $s4, 12208($t1)
	sw $s4, 12364($t1)
	sw $s4, 12368($t1)
	sw $s4, 12372($t1)
	sw $s4, 12376($t1)
	sw $s4, 12380($t1)
	sw $s4, 12384($t1)
	sw $s4, 12388($t1)
	sw $s4, 12392($t1)
	sw $s4, 12396($t1)
	sw $s4, 12400($t1)
	sw $s4, 12404($t1)
	sw $s4, 12408($t1)
	sw $s4, 12412($t1)
	sw $s4, 12416($t1)
	sw $s4, 12420($t1)
	sw $s4, 12424($t1)
	sw $s4, 12428($t1)
	sw $s4, 12432($t1)
	sw $s4, 12436($t1)
	sw $s4, 12440($t1)
	sw $s4, 12444($t1)
	sw $s4, 12448($t1)
	sw $s4, 12452($t1)
	sw $s4, 12456($t1)
	sw $s4, 12460($t1)
	sw $s4, 12624($t1)
	sw $s4, 12628($t1)
	sw $s4, 12632($t1)
	sw $s4, 12636($t1)
	sw $s4, 12640($t1)
	sw $s4, 12644($t1)
	sw $s4, 12648($t1)
	sw $s4, 12652($t1)
	sw $s4, 12656($t1)
	sw $s4, 12660($t1)
	sw $s4, 12664($t1)
	sw $s4, 12668($t1)
	sw $s4, 12672($t1)
	sw $s4, 12676($t1)
	sw $s4, 12680($t1)
	sw $s4, 12684($t1)
	sw $s4, 12688($t1)
	sw $s4, 12692($t1)
	sw $s4, 12696($t1)
	sw $s4, 12700($t1)
	sw $s4, 12704($t1)
	sw $s4, 12708($t1)
	sw $s4, 12712($t1)
	sw $s4, 12884($t1)
	sw $s4, 12888($t1)
	sw $s4, 12892($t1)
	sw $s4, 12896($t1)
	sw $s4, 12900($t1)
	sw $s4, 12904($t1)
	sw $s4, 12908($t1)
	sw $s4, 12912($t1)
	sw $s4, 12916($t1)
	sw $s4, 12920($t1)
	sw $s4, 12924($t1)
	sw $s4, 12928($t1)
	sw $s4, 12932($t1)
	sw $s4, 12936($t1)
	sw $s4, 12940($t1)
	sw $s4, 12944($t1)
	sw $s4, 12948($t1)
	sw $s4, 12952($t1)
	sw $s4, 12956($t1)
	sw $s4, 12960($t1)
	sw $s4, 12964($t1)
	sw $s4, 13148($t1)
	sw $s4, 13152($t1)
	sw $s4, 13156($t1)
	sw $s4, 13160($t1)
	sw $s4, 13164($t1)
	sw $s4, 13168($t1)
	sw $s4, 13172($t1)
	sw $s4, 13176($t1)
	sw $s4, 13180($t1)
	sw $s4, 13184($t1)
	sw $s4, 13188($t1)
	sw $s4, 13192($t1)
	sw $s4, 13196($t1)
	sw $s4, 13200($t1)
	sw $s4, 13204($t1)
	sw $s4, 13208($t1)
	sw $s4, 13212($t1)
	sw $s4, 13420($t1)
	sw $s4, 13424($t1)
	sw $s4, 13428($t1)
	sw $s4, 13432($t1)
	sw $s4, 13436($t1)
	sw $s4, 13440($t1)
	sw $s4, 13444($t1)
	sw $s4, 13448($t1)
	sw $s4, 13452($t1)
	
	# pintar de azul
	sw $s5, 4796($t1)
	sw $s5, 5048($t1)
	sw $s5, 5052($t1)
	sw $s5, 5056($t1)
	sw $s5, 5300($t1)
	sw $s5, 5304($t1)
	sw $s5, 5308($t1)
	sw $s5, 5312($t1)
	sw $s5, 5316($t1)
	sw $s5, 5552($t1)
	sw $s5, 5556($t1)
	sw $s5, 5560($t1)
	sw $s5, 5564($t1)
	sw $s5, 5568($t1)
	sw $s5, 5572($t1)
	sw $s5, 5576($t1)
	sw $s5, 5804($t1)
	sw $s5, 5808($t1)
	sw $s5, 5812($t1)
	sw $s5, 5816($t1)
	sw $s5, 5820($t1)
	sw $s5, 5824($t1)
	sw $s5, 5828($t1)
	sw $s5, 5832($t1)
	sw $s5, 6056($t1)
	sw $s5, 6060($t1)
	sw $s5, 6064($t1)
	sw $s5, 6068($t1)
	sw $s5, 6072($t1)
	sw $s5, 6076($t1)
	sw $s5, 6080($t1)
	sw $s5, 6084($t1)
	sw $s5, 6088($t1)
	sw $s5, 6092($t1)
	sw $s5, 6308($t1)
	sw $s5, 6312($t1)
	sw $s5, 6316($t1)
	sw $s5, 6320($t1)
	sw $s5, 6324($t1)
	sw $s5, 6328($t1)
	sw $s5, 6332($t1)
	sw $s5, 6336($t1)
	sw $s5, 6340($t1)
	sw $s5, 6344($t1)
	sw $s5, 6348($t1)
	sw $s5, 6560($t1)
	sw $s5, 6564($t1)
	sw $s5, 6568($t1)
	sw $s5, 6572($t1)
	sw $s5, 6576($t1)
	sw $s5, 6580($t1)
	sw $s5, 6584($t1)
	sw $s5, 6588($t1)
	sw $s5, 6592($t1)
	sw $s5, 6596($t1)
	sw $s5, 6600($t1)
	sw $s5, 6604($t1)
	sw $s5, 6816($t1)
	sw $s5, 6820($t1)
	sw $s5, 6824($t1)
	sw $s5, 6828($t1)
	sw $s5, 6832($t1)
	sw $s5, 6836($t1)
	sw $s5, 6840($t1)
	sw $s5, 6844($t1)
	sw $s5, 6848($t1)
	sw $s5, 6852($t1)
	sw $s5, 6856($t1)
	sw $s5, 6860($t1)
	sw $s5, 7072($t1)
	sw $s5, 7076($t1)
	sw $s5, 7080($t1)
	sw $s5, 7084($t1)
	sw $s5, 7088($t1)
	sw $s5, 7092($t1)
	sw $s5, 7096($t1)
	sw $s5, 7100($t1)
	sw $s5, 7104($t1)
	sw $s5, 7108($t1)
	sw $s5, 7112($t1)
	sw $s5, 7116($t1)
	sw $s5, 7120($t1)
	sw $s5, 7332($t1)
	sw $s5, 7336($t1)
	sw $s5, 7340($t1)
	sw $s5, 7344($t1)
	sw $s5, 7348($t1)
	sw $s5, 7352($t1)
	sw $s5, 7356($t1)
	sw $s5, 7360($t1)
	sw $s5, 7364($t1)
	sw $s5, 7368($t1)
	sw $s5, 7372($t1)
	sw $s5, 7376($t1)
	sw $s5, 7588($t1)
	sw $s5, 7592($t1)
	sw $s5, 7596($t1)
	sw $s5, 7600($t1)
	sw $s5, 7604($t1)
	sw $s5, 7608($t1)
	sw $s5, 7612($t1)
	sw $s5, 7616($t1)
	sw $s5, 7620($t1)
	sw $s5, 7624($t1)
	sw $s5, 7628($t1)
	sw $s5, 7632($t1)
	sw $s5, 7844($t1)
	sw $s5, 7848($t1)
	sw $s5, 7852($t1)
	sw $s5, 7856($t1)
	sw $s5, 7860($t1)
	sw $s5, 7864($t1)
	sw $s5, 7868($t1)
	sw $s5, 7872($t1)
	sw $s5, 7876($t1)
	sw $s5, 7880($t1)
	sw $s5, 7884($t1)
	sw $s5, 7888($t1)
	sw $s5, 8100($t1)
	sw $s5, 8104($t1)
	sw $s5, 8108($t1)
	sw $s5, 8112($t1)
	sw $s5, 8116($t1)
	sw $s5, 8120($t1)
	sw $s5, 8124($t1)
	sw $s5, 8128($t1)
	sw $s5, 8132($t1)
	sw $s5, 8136($t1)
	sw $s5, 8140($t1)
	sw $s5, 8144($t1)
	sw $s5, 8356($t1)
	sw $s5, 8360($t1)
	sw $s5, 8364($t1)
	sw $s5, 8368($t1)
	sw $s5, 8372($t1)
	sw $s5, 8376($t1)
	sw $s5, 8380($t1)
	sw $s5, 8384($t1)
	sw $s5, 8388($t1)
	sw $s5, 8392($t1)
	sw $s5, 8396($t1)
	sw $s5, 8400($t1)
	sw $s5, 8612($t1)
	sw $s5, 8616($t1)
	sw $s5, 8620($t1)
	sw $s5, 8624($t1)
	sw $s5, 8628($t1)
	sw $s5, 8632($t1)
	sw $s5, 8636($t1)
	sw $s5, 8640($t1)
	sw $s5, 8644($t1)
	sw $s5, 8648($t1)
	sw $s5, 8652($t1)
	sw $s5, 8656($t1)
	sw $s5, 8868($t1)
	sw $s5, 8872($t1)
	sw $s5, 8876($t1)
	sw $s5, 8880($t1)
	sw $s5, 8884($t1)
	sw $s5, 8888($t1)
	sw $s5, 8892($t1)
	sw $s5, 8896($t1)
	sw $s5, 8900($t1)
	sw $s5, 8904($t1)
	sw $s5, 8908($t1)
	sw $s5, 8912($t1)
	sw $s5, 9120($t1)
	sw $s5, 9124($t1)
	sw $s5, 9128($t1)
	sw $s5, 9132($t1)
	sw $s5, 9136($t1)
	sw $s5, 9140($t1)
	sw $s5, 9144($t1)
	sw $s5, 9148($t1)
	sw $s5, 9152($t1)
	sw $s5, 9156($t1)
	sw $s5, 9160($t1)
	sw $s5, 9164($t1)
	sw $s5, 9168($t1)
	sw $s5, 9376($t1)
	sw $s5, 9380($t1)
	sw $s5, 9384($t1)
	sw $s5, 9388($t1)
	sw $s5, 9392($t1)
	sw $s5, 9396($t1)
	sw $s5, 9400($t1)
	sw $s5, 9404($t1)
	sw $s5, 9408($t1)
	sw $s5, 9412($t1)
	sw $s5, 9416($t1)
	sw $s5, 9420($t1)
	sw $s5, 9632($t1)
	sw $s5, 9636($t1)
	sw $s5, 9640($t1)
	sw $s5, 9644($t1)
	sw $s5, 9648($t1)
	sw $s5, 9652($t1)
	sw $s5, 9656($t1)
	sw $s5, 9660($t1)
	sw $s5, 9664($t1)
	sw $s5, 9668($t1)
	sw $s5, 9672($t1)
	sw $s5, 9676($t1)
	sw $s5, 9892($t1)
	sw $s5, 9896($t1)
	sw $s5, 9900($t1)
	sw $s5, 9904($t1)
	sw $s5, 9908($t1)
	sw $s5, 9912($t1)
	sw $s5, 9916($t1)
	sw $s5, 9920($t1)
	sw $s5, 9924($t1)
	sw $s5, 9928($t1)
	sw $s5, 9932($t1)
	sw $s5, 10152($t1)
	sw $s5, 10156($t1)
	sw $s5, 10160($t1)
	sw $s5, 10164($t1)
	sw $s5, 10168($t1)
	sw $s5, 10172($t1)
	sw $s5, 10176($t1)
	sw $s5, 10180($t1)
	sw $s5, 10184($t1)
	sw $s5, 10188($t1)
	sw $s5, 10412($t1)
	sw $s5, 10416($t1)
	sw $s5, 10420($t1)
	sw $s5, 10424($t1)
	sw $s5, 10428($t1)
	sw $s5, 10432($t1)
	sw $s5, 10436($t1)
	sw $s5, 10440($t1)
	sw $s5, 10672($t1)
	sw $s5, 10676($t1)
	sw $s5, 10680($t1)
	sw $s5, 10684($t1)
	sw $s5, 10688($t1)
	sw $s5, 10692($t1)
	sw $s5, 10696($t1)
	sw $s5, 10932($t1)
	sw $s5, 10936($t1)
	sw $s5, 10940($t1)
	sw $s5, 10944($t1)
	sw $s5, 10948($t1)
	sw $s5, 11192($t1)
	sw $s5, 11196($t1)
	sw $s5, 11200($t1)
	sw $s5, 11452($t1)