// Project: My First Game 

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "My First Game" )
SetWindowSize( 1920, 1080, 1 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1920, 1080 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// Carregar fundo
bg = LoadImage("fundo.png")
CreateSprite(bg)

// Animação do botão PEDRA
CreateSprite(1, 0)
AddSpriteAnimationFrame ( 1, LoadImage ( "bot_pe1.png" ) )
AddSpriteAnimationFrame ( 1, LoadImage ( "bot_pe2.png" ) )
AddSpriteAnimationFrame ( 1, LoadImage ( "bot_pe3.png" ) )
AddSpriteAnimationFrame ( 1, LoadImage ( "bot_pe4.png" ) )
AddSpriteAnimationFrame ( 1, LoadImage ( "bot_pe5.png" ) )
SetSpritePosition(1, 510, 585)

// Animação do botão PAPEL
CreateSprite(2, 0)
AddSpriteAnimationFrame ( 2, LoadImage ( "bot_pa1.png" ) )
AddSpriteAnimationFrame ( 2, LoadImage ( "bot_pa2.png" ) )
AddSpriteAnimationFrame ( 2, LoadImage ( "bot_pa3.png" ) )
AddSpriteAnimationFrame ( 2, LoadImage ( "bot_pa4.png" ) )
AddSpriteAnimationFrame ( 2, LoadImage ( "bot_pa5.png" ) )
SetSpritePosition(2, 765, 585)

// Animação do botão TESOURA
CreateSprite(3, 0)
AddSpriteAnimationFrame ( 3, LoadImage ( "bot_te1.png" ) )
AddSpriteAnimationFrame ( 3, LoadImage ( "bot_te2.png" ) )
AddSpriteAnimationFrame ( 3, LoadImage ( "bot_te3.png" ) )
AddSpriteAnimationFrame ( 3, LoadImage ( "bot_te4.png" ) )
AddSpriteAnimationFrame ( 3, LoadImage ( "bot_te5.png" ) )
SetSpritePosition(3, 1020, 585)

// Animação Vitoria
vitoria_si as integer = 10
LoadImage(vitoria_si, "vitoria_si.png")
CreateSprite(vitoria_si, vitoria_si)
SetSpritePosition(vitoria_si, 664, 29)
SetSpriteAnimation(vitoria_si, 592, 375, 20)

vitoria_w as integer = 11
LoadImage(vitoria_w, "vitoria_w.png")
CreateSprite(vitoria_w, vitoria_w)
SetSpritePosition(vitoria_w, 664, 29)
SetSpriteAnimation(vitoria_w, 592, 375, 20)


// Animação Empate
empate_si as integer = 12
LoadImage(empate_si, "empate_si.png")
CreateSprite(empate_si, empate_si)
SetSpritePosition(empate_si, 664, 29)
SetSpriteAnimation(empate_si, 592, 375, 20)

empate_w as integer = 13
LoadImage(empate_w, "empate_w.png")
CreateSprite(empate_w, empate_w)
SetSpritePosition(empate_w, 664, 29)
SetSpriteAnimation(empate_w, 592, 375, 20)


// Animação Derrota
derrota_si as integer = 14
LoadImage(derrota_si, "derrota_si.png")
CreateSprite(derrota_si, derrota_si)
SetSpritePosition(derrota_si, 664, 29)
SetSpriteAnimation(derrota_si, 592, 375, 20)

derrota_w as integer = 15
LoadImage(derrota_w, "derrota_w.png")
CreateSprite(derrota_w, derrota_w)
SetSpritePosition(derrota_w, 664, 29)
SetSpriteAnimation(derrota_w, 592, 375, 20)

derrota_d as integer = 16
LoadImage(derrota_d, "derrota_d.png")
CreateSprite(derrota_d, derrota_d)
SetSpritePosition(derrota_d, 664, 29)
SetSpriteAnimation(derrota_d, 592, 375, 20)

// Criar Sprites pc
pcPe = CreateSprite( LoadImage( "pc_pe.png" ) )
SetSpriteVisible(pcPe, 0)
pcPa = CreateSprite( LoadImage( "pc_pa.png" ) )
SetSpriteVisible(pcPa, 0)
pcTe = CreateSprite( LoadImage( "pc_te.png") )
SetSpriteVisible(pcTe, 0)

// Definir tamanho dos sprites - pc
SetSpriteSize(pcPe, 117, 144)
SetSpriteSize(pcPa, 117, 144)
SetSpriteSize(pcTe, 117, 144)

// Posicionar sprites
SetSpritePosition(pcPe, 1420, 490)
SetSpritePosition(pcPa, 1420, 490)
SetSpritePosition(pcTe, 1420, 490)

// Botões invisíveis
pe =  CreateSprite( LoadImage( "pe.png") )
SetSpritePosition(pe, 509, 585)

pa =  CreateSprite( LoadImage( "pa.png") )
SetSpritePosition(pa, 765, 585)

te =  CreateSprite( LoadImage( "te.png") )
SetSpritePosition(te, 1023, 585)

// Quantidade de partidas

// Sons
LoadSound(1, "sound.wav")

LoadSound(2, "failed1.wav")
LoadSound(3, "failed2.wav")

LoadSound(4, "sucess1.wav")
LoadSound(5, "sucess2.wav")

// Musica de fundo
LoadMusic(1, "menu.mp3")
SetMusicFileVolume(1, 50)

// Setar configurações 
user as integer
pc as integer
result as integer
PlayMusic(1, 1)

placarU as integer = 201
placarP as integer = 202
user_score as integer = 0
pc_score as integer = 0
CreateText(placarU, str(user_score))
CreateText(placarP, str(pc_score))
LoadFont( 5, "PixelatedFont.ttf" )

SetTextString(placarU, "Sua pontuação: "+str(user_score))
SetTextString(placarP, "Computador: "+str(pc_score))
SetTextSize(placarU, 25)
SetTextSize(placarP, 25)
SetTextFont(placarP, 5)

SetTextPosition(placarU, 1480, 5)
SetTextPosition(placarP, 10, 5)
SetTextFont(placarU, 5)

opcao_pc as integer = 203
CreateText(opcao_pc, "Opção do computador")
SetTextSize(opcao_pc, 15)
SetTextPosition(opcao_pc, 1355, 450)
SetTextFont(opcao_pc, 5)

som1 as integer = 0
som2 as integer = 0
c1 as integer = 0
c2 as integer = 0
ran as integer

do	
	
	result = clickableSprite(pc, pe, pa, te, pcPe, pcPa, pcTe)
	if result = 1
		// Venceu
		ran = Random(0,1)

		SetSpriteVisible(12, 0)
		SetSpriteVisible(13, 0)
		SetSpriteVisible(14, 0)
		SetSpriteVisible(15, 0)
		SetSpriteVisible(16, 0)

		if ran = 0 
			SetSpriteVisible(10, 1)
			PlaySprite(10, 20, 0, 0, 20)
		elseif ran = 1
			SetSpriteVisible(11, 1)
			PlaySprite(11, 20, 0, 0, 20)
		endif
		
		user_score = user_score + 1
		SetTextString(placarU, "Sua pontuação: "+str(user_score))
			
	elseif result = 2
		//Empatou
		ran = Random(0,1)

		SetSpriteVisible(10, 0)
		SetSpriteVisible(11, 0)
		SetSpriteVisible(14, 0)
		SetSpriteVisible(15, 0)
		SetSpriteVisible(16, 0)

		if ran = 0
			SetSpriteVisible(12, 1)
			PlaySprite(12, 20, 0, 0, 20)
		elseif ran = 1
			SetSpriteVisible(13, 1)
			PlaySprite(13, 20, 0, 0, 20)
		endif

	elseif result = 3
		// Perdeu
		ran = Random(0, 2)

		SetSpriteVisible(10, 0)
		SetSpriteVisible(11, 0)
		SetSpriteVisible(12, 0)
		SetSpriteVisible(13, 0)

		if ran = 0
			SetSpriteVisible(14, 1)
			PlaySprite(14, 20, 0, 0, 20)
		elseif ran = 1
			SetSpriteVisible(15, 1)
			PlaySprite(15, 20, 0, 0, 20)
		elseif ran = 2
			SetSpriteVisible(16, 1)
			PlaySprite(16, 20, 0, 0, 20)
		endif

		pc_score = pc_score+1
		SetTextString(placarP, "Computador: "+str(pc_score))
			
	endif
	if user_score = 10 
		StopMusic()
		
		if som1 = 0
			som1 = som1 + 1
			playsound(5)
	
	
		endif
	endif	
	
	if pc_Score = 10
		StopMusic()
		if som2 = 0
			som2 = som2 + 1
			playsound(3)
			
		endif
	endif
	
	if som1 <> 0
		c1 = c1 + 1
		if c1 = 350
			end
		endif
	endif
	
	if som2 <> 0
		c2 = c2 + 1
		if c2 = 350
			end
		endif
	endif
	
	
	if GetRawKeyState(27) = 1
			end
	endif
    Sync()
loop

function  clickableSprite(pc, pe, pa, te, pcPe, pcPa, pcTe)
	user as integer
	
	if GetPointerReleased()
		if GetSpriteHitTest(pe, GetPointerX(), GetPointerY())
			user = 0
			pc = Random(0,2)
			if pc = 0
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPe, 1)
						
			elseif pc = 1
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPa, 1)
			
			elseif pc = 2
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 1)
			endif
			
			PlaySound(1)
			PlaySprite(1, 10, 0, 1, 5)
			vencedor(user, pc)
			result = vencedor(user, pc)
			
		elseif GetSpriteHitTest(pa, GetPointerX(), GetPointerY())
			user = 1
			pc = Random(0,2)
			if pc = 0
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPe, 1)

			elseif pc = 1
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPa, 1)

			elseif pc = 2
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 1)
			endif

			PlaySound(1)
			PlaySprite(2, 10, 0, 1, 5)
			vencedor(user, pc)
			result = vencedor(user, pc)
			
		elseif GetSpriteHitTest(te, GetPointerX(), GetPointerY())
			user = 2
			pc = Random(0,2)
			if pc = 0
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPe, 1)
							
			elseif pc = 1
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 0)
				SetSpriteVisible(pcPa, 1)
				
			elseif pc = 2
				SetSpriteVisible(pcPa, 0)
				SetSpriteVisible(pcPe, 0)
				SetSpriteVisible(pcTe, 1)
			endif
			
			PlaySound(1)
			PlaySprite(3, 10, 0, 1, 5)
			vencedor(user, pc)
			result = vencedor(user, pc)
		endif
	endif

	
	
endfunction	result

function vencedor(user, pc)
	result as integer
	
	if user = 0
		if pc = 0
			result = 2 // Empate 0pedra 1papel 2tesoura
			
		elseif pc = 1
			result = 3 // Derrota
			
		elseif pc = 2
			result = 1 // Vitoria
		endif
	endif
	
	if user = 1
		if pc = 0
			result = 1 // Vitoria
			
		elseif pc = 1
			result = 2 // Empate	
			
		elseif pc = 2
			result = 3 // Derrota
		endif
	endif
	
	if user = 2
		if pc = 0
			result = 3 // Derrota
			
		elseif pc = 1
			result = 1 // Vitoria
			
		elseif pc = 2
			result = 2 // Empate
		endif
	endif
endfunction result
