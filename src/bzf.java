public final class bzf
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    try
    {
      parambya = new Double(paramString);
      return new byl(new Double(Math.sqrt(parambya.doubleValue())).toString(), 0);
    }
    catch (Exception parambya)
    {
      throw new byi("Invalid argument.", parambya);
    }
  }
  
  public final String a()
  {
    return "sqrt";
  }
}

/* Location:
 * Qualified Name:     bzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */