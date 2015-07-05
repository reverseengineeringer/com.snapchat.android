public final class byz
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    try
    {
      parambwz = bxj.a(paramString, a).trim();
      return new bxk(parambwz, 1);
    }
    catch (bxh parambwz)
    {
      throw new bxh(parambwz.getMessage(), parambwz);
    }
    catch (Exception parambwz)
    {
      throw new bxh("One string argument is required.", parambwz);
    }
  }
  
  public final String a()
  {
    return "trim";
  }
}

/* Location:
 * Qualified Name:     byz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */