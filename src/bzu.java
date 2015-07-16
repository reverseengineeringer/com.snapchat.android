import java.util.ArrayList;

public final class bzu
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    ArrayList localArrayList = byk.b(paramString);
    if (localArrayList.size() != 3) {
      throw new byi("One string argument and two character arguments are required.");
    }
    try
    {
      paramString = byk.a((String)localArrayList.get(0), a);
      String str = byk.a((String)localArrayList.get(1), a);
      parambya = byk.a((String)localArrayList.get(2), a);
      if (str.length() == 1)
      {
        char c = str.charAt(0);
        if (parambya.length() == 1)
        {
          parambya = paramString.replace(c, parambya.charAt(0));
          return new byl(parambya, 1);
        }
      }
      else
      {
        throw new byi("One string argument and two character arguments are required.");
      }
    }
    catch (byi parambya)
    {
      throw new byi(parambya.getMessage(), parambya);
      throw new byi("One string argument and two character arguments are required.");
    }
    catch (Exception parambya)
    {
      throw new byi("One string argument and two character arguments are required.", parambya);
    }
  }
  
  public final String a()
  {
    return "replace";
  }
}

/* Location:
 * Qualified Name:     bzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */