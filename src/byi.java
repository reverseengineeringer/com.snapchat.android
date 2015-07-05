import java.util.ArrayList;

public final class byi
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    paramString = bxj.c(paramString);
    if (paramString.size() != 2) {
      throw new bxh("One string and one integer argument are required.");
    }
    try
    {
      parambwz = new String(new char[] { bxj.a((String)paramString.get(0), a).charAt(((Integer)paramString.get(1)).intValue()) });
      return new bxk(parambwz, 1);
    }
    catch (bxh parambwz)
    {
      throw new bxh(parambwz.getMessage(), parambwz);
    }
    catch (Exception parambwz)
    {
      throw new bxh("One string and one integer argument are required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "charAt";
  }
}

/* Location:
 * Qualified Name:     byi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */