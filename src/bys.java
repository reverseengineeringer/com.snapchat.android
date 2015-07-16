public final class bys
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    try
    {
      parambya = new Double(paramString);
      return new byl(new Double(Math.cos(parambya.doubleValue())).toString(), 0);
    }
    catch (Exception parambya)
    {
      throw new byi("Invalid argument.", parambya);
    }
  }
  
  public final String a()
  {
    return "cos";
  }
}

/* Location:
 * Qualified Name:     bys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */