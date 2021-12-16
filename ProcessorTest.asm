# Testing the processor


	# Add
	add $t0, $zero, $zero		# t0 = 0 + 0
	addi $t1, $t0, 18		# t1 = 0 + 18
	addi $t2, $t1, -20		# t2 = 18 + -20 (-2)
	
	addiu $t3, $zero, 2		# t3 = 0 + 2
	addiu $t4, $t3, 0xffffffff	# t4 = 2 + 0xffffffff (1)		5
	addu $t5, $t3, $t4		# t5 = 2 + 1
	
	# And
	and $t6, $t3, $t5		# t6 = 2 && 3 (2)
	and $t7, $t3, 0x0000ffff	# t7 = 2 && 0x0000ffff (2)
	
	# Branch
	beq $t7, 3, b1			# doesn't branch
	beq $t7, 2, b1			# branch to b1 if t7 == 2 (branches)
	
b2:	addi $t7, $t7, 1	# adds 1 to t7 so branch is taken		10
	
b1:	bne $t7, 3, b2			# branch to b2 if t7 != 3 (branches then doesn't)

	j j1				# jumps to j1
	
j2:	addi $s0, $zero, 32		# adds for no reason
	jr $ra				# returns to "jal j2"
	
j1:	jal j2				# jumps to j2				15

# skipping lbu, lhu, ll, lui, and lw for now
	# Or
	or $s1, $t3, $t5		# 3 || 2 (2)
	ori $s2, $s0, 48		# 32 || 48 (48)
	
	# slt
	slt $s3, $s2, $s1		# s3 = 1 if s2 < s1... 48 < 2 (0)
	slti $s4, $s2, 50		# s3 gets 1
	sltu $s5, $s2, $s1		# same as s3				20
	sltiu $s6, $s2, 50		# same as s4
	
	# shift
	sll $s7, $t5, 2			# shift 2 left by two (8)
	srl $t1, $t5, 1			# shift 2 right by one (1)
	sllv $t2, $t5, $t1		# shift 2 left by 1 (8)
	srlv $t3, $t5, $t1		# shift 2 right by 1 (1)		25
	
# skipping sb, sc, sh, and sw for now
	# Sub
	sub $t4, $s2, $t1		# 48 - 1 (47)
	sub $t5, $t4, 15		# 47 - 15 (32)
	subu $t6, $s2, $t1		# same as t4
	subu $t7, $t4, 15		# same as t5