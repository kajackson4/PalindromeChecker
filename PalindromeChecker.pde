public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(word.equals(word.toLowerCase()) && word.equals(noExtraSpace(word))){
      if(word.equals(reverse(word))){
        return true;
      } else{
        return false;
      }
    }
    return true;
}
public String reverse(String str)
{
    String sNew = new String();
     if(str.length() == 0){
        return str;
      }
      for(int i = str.length()-1; i >= 0; i--){
        sNew = sNew + str.charAt(i);
      }
    return sNew;
}

public String noExtraSpace(String sStr){
    String noSpace = "";
    for(int k = 0; k < sStr.length(); k++){
    if(sStr.charAt(k) != ' '){
      noSpace = noSpace + sStr.charAt(k);
    }
  }
  return noSpace;
  }
}

