_MoveDeleterGreetingText::
;  text "Any move taught"
;  line "via HM can't be"
;  cont "easily forgotten."

;  para "I can help with"
;  line "that though!"

	text "Want me to make a"
	line "#MON forget a"
	cont "move?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	text_ram wStringBuffer
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Don't forget to"
	line "visit me again!"
	done

_MoveDeleterOneMoveText::
	text "Your #MON can't"
  line "forget its only"
  cont "move!"
	cont "Pick another?"
	done
