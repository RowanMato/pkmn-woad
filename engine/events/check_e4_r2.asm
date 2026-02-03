CheckE4R2::
	CheckEvent EVENT_BEAT_BROCK_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_MISTY_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_SURGE_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_ERIKA_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_KOGA_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_SABRINA_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_BLAINE_R2
	jp z, .not_round_2
	CheckEvent EVENT_BEAT_GIOVANNI_R2
	jp z, .not_round_2
	scf ; All checks passed, so set carry flag
.not_round_2
	ret
