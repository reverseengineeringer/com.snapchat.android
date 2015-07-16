import java.util.ArrayList;

public final class bzr
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    paramString = byk.d(paramString);
    if (paramString.size() != 3) {
      throw new byi("Two string arguments and one integer argument are required.");
    }
    try
    {
      parambya = new Integer(byk.a((String)paramString.get(0), a).indexOf(byk.a((String)paramString.get(1), a), ((Integer)paramString.get(2)).intValue()));
      return new byl(parambya.toString(), 0);
    }
    catch (byi parambya)
    {
      throw new byi(parambya.getMessage(), parambya);
    }
    catch (Exception parambya)
    {
      throw new byi("Two string arguments and one integer argument are required.", parambya);
    }
  }
  
  public final String a()
  {
    return "indexOf";
  }
}

/* Location:
 * Qualified Name:     bzr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */