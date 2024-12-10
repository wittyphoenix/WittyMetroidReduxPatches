; Change the default button mappings on new save file creation
org $81B324
	LDA.W #$0080
	STA.W $09B4	; Jump button 	= A
	LDA.W #$8000
	STA.W $09B6	; Run button 	= B
	LDA.W #$0040
	STA.W $09B2	; X-Ray scope 	= Y
	LDA.W #$4000
	STA.W $09B8	; Shoot button 	= X
	LDA.W #$2000
	STA.W $09BA	; Item Switch 	= Select
	LDA.W #$0010
	STA.W $09BC	; Aim button 	= R
	LDA.W #$0020
	STA.W $09BE	; Brandish	= L
	STZ.W $09DA	;\
	STZ.W $09DC	;|
	STZ.W $09DE	;} In-game timer = 0:0:0.0
	STZ.W $09E0	;/
	STZ.W $09E2	; Disable japanese text
	STZ.W $09EA	; Disable HUD auto-cancel
	STZ.W $09EA	; Disable autorun by default
	LDA.W #$0001	;\



; Game options - Controller settings - Change Default bindings
org $82F22C
	LDA.W #$0040
	STA.W $09B2 
	LDA.W #$0080
	STA.W $09B4 
	LDA.W #$8000
	STA.W $09B6 
	LDA.W #$4000
	STA.W $09B8 
	LDA.W #$2000
	STA.W $09BA 
	LDA.W #$0010
	STA.W $09BC 
	LDA.W #$0020
	STA.W $09BE 


