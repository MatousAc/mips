# Testing the processor 2... testing ( lbu, lhu, ll, lui, lw, sb, sc, sh, and sw )

	# store something into memory
	addi $s0, $zero, 8
	addi $s1, $zero, 4
	
	sw $s1, 4($s0)
	lw $t1, 4($s0)
<<<<<<< HEAD
=======
	lhu $t2, 8($s0)
	ll $t3, 12($s0)
	
	lui $t4, 384		# 0000 0001 1000 0000
>>>>>>> db91354a6f26e43429177ab0e38d5dee73dd3058
