public final class byw
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    try
    {
      parambya = new Double(paramString);
      return new byl(new Double(Math.log(parambya.doubleValue())).toString(), 0);
    }
    catch (Exception parambya)
    {
      throw new byi("Invalid argument.", parambya);
    }
  }
  
  public final String a()
  {
    return "log";
  }
}

/* Location:
 * Qualified Name:     byw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */