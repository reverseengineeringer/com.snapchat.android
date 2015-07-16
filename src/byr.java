public final class byr
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    try
    {
      parambya = new Double(paramString);
      return new byl(new Double(Math.ceil(parambya.doubleValue())).toString(), 0);
    }
    catch (Exception parambya)
    {
      throw new byi("Invalid argument.", parambya);
    }
  }
  
  public final String a()
  {
    return "ceil";
  }
}

/* Location:
 * Qualified Name:     byr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */