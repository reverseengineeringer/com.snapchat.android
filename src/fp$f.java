import java.util.HashMap;

final class fp$f
{
  HashMap<String, String> a = new HashMap();
  
  private fp$f(String paramString)
  {
    paramString = paramString.split(";");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramString[i].split(":");
      if (arrayOfString.length == 2) {
        a.put(arrayOfString[0], arrayOfString[1]);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     fp.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */