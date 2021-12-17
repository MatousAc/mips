# Testing the processor 2... testing ( lbu, lhu, ll, lui, lw, sb, sc, sh, and sw )

	# store something into memory
	addi $s0, $zero, 8
	addi $s1, $zero, 4
	
	sw $s1, 4($s0)
	lw $t1, 4($s0)
