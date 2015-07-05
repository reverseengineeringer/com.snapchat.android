public final class byc
  implements bxg
{
  public final bxk a(bwz parambwz, String paramString)
  {
    try
    {
      parambwz = new Double(paramString);
      return new bxk(new Long(Math.round(parambwz.doubleValue())).toString(), 0);
    }
    catch (Exception parambwz)
    {
      throw new bxh("Invalid argument.", parambwz);
    }
  }
  
  public final String a()
  {
    return "round";
  }
}

/* Location:
 * Qualified Name:     byc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */