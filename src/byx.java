public final class byx
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    try
    {
      parambwz = bxj.a(paramString, a).toLowerCase();
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
    return "toLowerCase";
  }
}

/* Location:
 * Qualified Name:     byx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */