import java.util.ArrayList;

public final class bzj
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    paramString = byk.c(paramString);
    if (paramString.size() != 2) {
      throw new byi("One string and one integer argument are required.");
    }
    try
    {
      parambya = new String(new char[] { byk.a((String)paramString.get(0), a).charAt(((Integer)paramString.get(1)).intValue()) });
      return new byl(parambya, 1);
    }
    catch (byi parambya)
    {
      throw new byi(parambya.getMessage(), parambya);
    }
    catch (Exception parambya)
    {
      throw new byi("One string and one integer argument are required.", parambya);
    }
  }
  
  public final String a()
  {
    return "charAt";
  }
}

/* Location:
 * Qualified Name:     bzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */