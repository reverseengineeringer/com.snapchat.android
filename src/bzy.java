public final class bzy
  implements byh
{
  public final byl a(bya parambya, String paramString)
  {
    try
    {
      parambya = byk.a(paramString, a).toLowerCase();
      return new byl(parambya, 1);
    }
    catch (byi parambya)
    {
      throw new byi(parambya.getMessage(), parambya);
    }
    catch (Exception parambya)
    {
      throw new byi("One string argument is required.", parambya);
    }
  }
  
  public final String a()
  {
    return "toLowerCase";
  }
}

/* Location:
 * Qualified Name:     bzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */