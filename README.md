# tocoq
A simple script to translate logical instructions from unicode to coq-legible syntax.

**Replacements:**
>	⊤ : True  
	⊥ : False  
	∧ : /\  
	∨ : \\/  
	¬ : ~  
	→&#xFE0E; : ->  
	↔&#xFE0E; : <->  
	⊢ : ->  
	⊨ : ->  

## Usage
To use simply run `ruby tocoq.rb` and append the instruction you want to translate as an argument. The results will automatically be copied to your clipboard.

**Example:**  
`ruby tocoq.rb "(A∧(B→¬A))→(A∧¬B)"`
> ⇒ `(A/\(B->~A))->(A/\~B)`
  
&nbsp;

Alternatively running the script without any arguments will open a prompt to enter as many instructions as you like. Type `quit` or `exit` to end the program.

**Example:**  
`ruby tocoq.rb `
> \>\>`(A → B) ∨ (B → A)`  
⇒ `(A -> B) \/ (B -> A)`  
\>\>`quit`
