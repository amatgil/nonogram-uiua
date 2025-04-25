# Experimental!

# Setup is an two-array of the rules, rows first

MarkEmpties ← ⍜⊙⍉⍜▽(↯⊙0⧻°¤) ⊙(⍜▽(↯⊙0⧻°¤)) ∩(={[]}) °⊟
MarkFulls   ← ⍜⊙⍉⍜▽(↯⊙1⧻°¤) ⊙(⍜▽(↯⊙1⧻°¤)) ⊃(=⊙◌|=◌)⊃°⊟(□⊸⧻)
Start       ← ↯⊙∞ ˙⊟⧻⊢                            # [Board] ? Setup
Next        ← ⊟⊃(⍜⊡⋅0|⍜⊡⋅1) ⊸(⊢⊚=∞)               # ? Board
Adv         ← /⊂≡Next                             # ? [Board]
LineValid   ← ×⊃(≥∩/+▽⊸≠∞|≍⟜⍜∩□↧ ˜(▽=₁)°▽)        # ? Line Hint
IsValid     ← /××∩≡(LineValid⊙°□) ⊃(⍉⊙⋅∘|⊙⊙◌) ⊙°⊟ # ? Setup Board
Solve       ← ⍢(▽⊃(≡IsValid|⊙∘) Adv dump⊣ ⊃(⊙∘|⊸&p⊂⧻⊙⋅∘)|±⧻ ⊚=∞)⊙⊙[]

Example ← [
  {[1 1] [1 1 1] [1 1 1] [] [1 1 1] [1 1 1] [1 1 3]}
  {[3] [3] [3] [] [3 3] [1] [2 1]}
]

# Solve ∩¤⊸Start Example
⟜Start Example
∩⤚≡(=+-₁⊃/+⧻°□)⊙: ∩°⊟ ⊸⊙△
# dipdip(fork) # next step would be to fill the 0s and 1s of the lines that are trivially found (e.g. 1_1_3 with width=7 -> 1_0_1_0_1_1_1)
