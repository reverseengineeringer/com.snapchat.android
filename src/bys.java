public final class bys
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    try
    {
      parambwz = new Integer(bxj.a(paramString, a).length());
      return new bxk(parambwz.toString(), 0);
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
    return "length";
  }
}

/* Location:
 * Qualified Name:     bys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */