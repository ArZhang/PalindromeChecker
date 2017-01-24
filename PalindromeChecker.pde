public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


public boolean palindrome(String word)
{
  String g="";
  String s= "";
  String output = "";
  for (int i = 0; i <word.length(); i++)
  {
      if(Character.isLetter(word.charAt(i)))
        g+=word.charAt(i);
  }
  
    s= s+g.toLowerCase();

  return (s.equals(reverse(word)));
}
  

public String reverse(String str)
{
  String output = "";
  String n="";
  for (int i = str.length()-1; i >= 0; i--)
      {
        if(Character.isLetter(str.charAt(i)))
        {
          output+=str.charAt(i);
        }
      }
return output.toLowerCase();

}