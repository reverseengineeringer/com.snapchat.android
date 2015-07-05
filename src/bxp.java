import java.util.ArrayList;

public final class bxp
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    parambwz = bxj.a(paramString);
    if (parambwz.size() != 2) {
      throw new bxh("Two numeric arguments are required.");
    }
    try
    {
      parambwz = new Double(Math.atan2(((Double)parambwz.get(0)).doubleValue(), ((Double)parambwz.get(1)).doubleValue()));
      return new bxk(parambwz.toString(), 0);
    }
    catch (Exception parambwz)
    {
      throw new bxh("Two numeric arguments are required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "atan2";
  }
}

/* Location:
 * Qualified Name:     bxp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */