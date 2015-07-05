import java.util.ArrayList;

public final class byq
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    paramString = bxj.d(paramString);
    if (paramString.size() != 3) {
      throw new bxh("Two string arguments and one integer argument are required.");
    }
    try
    {
      parambwz = new Integer(bxj.a((String)paramString.get(0), a).indexOf(bxj.a((String)paramString.get(1), a), ((Integer)paramString.get(2)).intValue()));
      return new bxk(parambwz.toString(), 0);
    }
    catch (bxh parambwz)
    {
      throw new bxh(parambwz.getMessage(), parambwz);
    }
    catch (Exception parambwz)
    {
      throw new bxh("Two string arguments and one integer argument are required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "indexOf";
  }
}

/* Location:
 * Qualified Name:     byq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */