#A=65
#Z=90
#a=97
#z=122

def caeser_cipher(sent, shift)
  p "sentence= #{sent}"
  arr=sent.split("")
  #p arr
  sentence=""
  arr.each do |letter|
    letter=letter.ord
    #p letter 
    
    if letter!=32 and letter!=65 and letter !=97  
      letter=letter-shift
    elsif letter == 65
      shift=shift-1
      letter=90-shift
    elsif letter == 97
      shift=shift-1
      letter=122-shift      
    else
      sentence=sentence+" "
    end 
    new=letter.chr
    sentence=sentence+new
  end 
  p "ciphered sentence= #{sentence} "
end 

caeser_cipher("how are you", 5)
