import java.util.ArrayList;

public final class byt
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    ArrayList localArrayList = bxj.b(paramString);
    if (localArrayList.size() != 3) {
      throw new bxh("One string argument and two character arguments are required.");
    }
    try
    {
      paramString = bxj.a((String)localArrayList.get(0), a);
      String str = bxj.a((String)localArrayList.get(1), a);
      parambwz = bxj.a((String)localArrayList.get(2), a);
      if (str.length() == 1)
      {
        char c = str.charAt(0);
        if (parambwz.length() == 1)
        {
          parambwz = paramString.replace(c, parambwz.charAt(0));
          return new bxk(parambwz, 1);
        }
      }
      else
      {
        throw new bxh("One string argument and two character arguments are required.");
      }
    }
    catch (bxh parambwz)
    {
      throw new bxh(parambwz.getMessage(), parambwz);
      throw new bxh("One string argument and two character arguments are required.");
    }
    catch (Exception parambwz)
    {
      throw new bxh("One string argument and two character arguments are required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "replace";
  }
}

/* Location:
 * Qualified Name:     byt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */