import java.util.ArrayList;

public final class byw
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    paramString = bxj.e(paramString);
    if (paramString.size() != 3) {
      throw new bxh("One string argument and two integer arguments are required.");
    }
    try
    {
      parambwz = bxj.a((String)paramString.get(0), a).substring(((Integer)paramString.get(1)).intValue(), ((Integer)paramString.get(2)).intValue());
      return new bxk(parambwz, 1);
    }
    catch (bxh parambwz)
    {
      throw new bxh(parambwz.getMessage(), parambwz);
    }
    catch (Exception parambwz)
    {
      throw new bxh("One string argument and two integer arguments are required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "substring";
  }
}

/* Location:
 * Qualified Name:     byw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */