@cet
public final class ez
{
  static
  {
    try
    {
      a = new ez();
      return;
    }
    catch (Throwable localThrowable)
    {
      b = localThrowable;
    }
  }
  
  public static ez a()
  {
    if (a == null) {
      throw new cel("com.googlecode.mp4parser.RequiresParseDetailAspect", b);
    }
    return a;
  }
  
  @ceu
  public static void a(cek paramcek)
  {
    if ((paramcek.a() instanceof et))
    {
      if (!((et)paramcek.a()).isParsed()) {
        ((et)paramcek.a()).parseDetails();
      }
      return;
    }
    throw new RuntimeException("Only methods in subclasses of " + et.class.getName() + " can  be annotated with ParseDetail");
  }
}

/* Location:
 * Qualified Name:     ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */