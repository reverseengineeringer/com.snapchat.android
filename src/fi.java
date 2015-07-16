@cfu
public final class fi
{
  static
  {
    try
    {
      a = new fi();
      return;
    }
    catch (Throwable localThrowable)
    {
      b = localThrowable;
    }
  }
  
  public static fi a()
  {
    if (a == null) {
      throw new cfm("com.googlecode.mp4parser.RequiresParseDetailAspect", b);
    }
    return a;
  }
  
  @cfv
  public static void a(cfl paramcfl)
  {
    if ((paramcfl.a() instanceof fc))
    {
      if (!((fc)paramcfl.a()).isParsed()) {
        ((fc)paramcfl.a()).parseDetails();
      }
      return;
    }
    throw new RuntimeException("Only methods in subclasses of " + fc.class.getName() + " can  be annotated with ParseDetail");
  }
}

/* Location:
 * Qualified Name:     fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */