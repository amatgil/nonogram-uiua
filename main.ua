# Experimental!

# Setup is an two-array of the rules, rows first

# MarkEmpties ← ⍜⊙⍉⍜▽(↯⊙0⧻°¤) ⊙(⍜▽(↯⊙0⧻°¤)) ∩(={[]}) °⊟
Start     ← ↯⊙∞ ˙⊟⧻⊢                            # [Board] ? Setup
Next      ← ⊟⊃(⍜⊡⋅0|⍜⊡⋅1) ⊸(⊢⊚=∞)               # ? Board
Adv       ← /⊂≡Next                             # ? [Board]
LineValid ← ≍⟜⍜∩□↧ ˜(▽=₁)°▽                     # ? Line Rule
IsValid   ← /××∩≡(LineValid⊙°□) ⊃(⍉⊙⋅∘|⊙⊙◌) ⊙°⊟ # ? Setup Board
Solve     ← ⍢(▽⊃(≡IsValid|⊙∘) Adv dump⊣ ⊃(⊙∘|⊸&p⊂⧻⊙⋅∘)|±⧻ ⊚=∞)⊙⊙[]

Example ← [
  {[1 1] [1 1 1] [1 1 1] [] [1 1 1] [1 1 1] [1 1 3]}
  {[3] [3] [3] [] [3 3] [1] [2 1]}
]

Solve ∩¤⊸Start Example
