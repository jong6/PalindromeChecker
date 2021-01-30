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
  String backwards = reverse(word);
  String answer = noSpaces(noCapitals(onlyLetters(word)));
  if(backwards.equals(answer))
  {
    return true;
  }else
  {
  return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=str.length()-1;i>=0;i--)
    {
      sNew = sNew + str.charAt(i);
    }
    sNew = noSpaces(noCapitals(onlyLetters(sNew)));
    return sNew;
}
public String onlyLetters(String sString)
{
  String word = new String();
  for(int i=0;i<sString.length();i++)
  {
    if(Character.isLetter(sString.charAt(i))==true)
    {
      word = word + sString.charAt(i);
    }
  }
  return word;
}
public String noSpaces(String sWord){
  String space = new String();
  int count = 0;
  for(int i=0;i<sWord.length();i++)
  {
    if(Character.isLetter(sWord.charAt(i))==true)
    {
      space = space + sWord.charAt(count);
      count = count +1;
    }else
    {
      count = count + 1;
    }
  }
  return space;
}
public String noCapitals(String sWord)
{
  return sWord.toLowerCase();
}
