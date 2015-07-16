import java.util.ArrayList;

public final class bzx
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    paramString = byk.e(paramString);
    if (paramString.size() != 3) {
      throw new byi("One string argument and two integer arguments are required.");
    }
    try
    {
      parambya = byk.a((String)paramString.get(0), a).substring(((Integer)paramString.get(1)).intValue(), ((Integer)paramString.get(2)).intValue());
      return new byl(parambya, 1);
    }
    catch (byi parambya)
    {
      throw new byi(parambya.getMessage(), parambya);
    }
    catch (Exception parambya)
    {
      throw new byi("One string argument and two integer arguments are required.", parambya);
    }
  }
  
  public final String a()
  {
    return "substring";
  }
}

/* Location:
 * Qualified Name:     bzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */