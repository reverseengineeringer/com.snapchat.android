import android.content.Context;

public final class aoa
{
  @cgc
  public static bpd a(Context paramContext)
  {
    try
    {
      paramContext = new bpd.a(paramContext);
      aoa.a locala = new aoa.a((byte)0);
      if (c != null) {
        throw new IllegalStateException("Transformer already set.");
      }
      c = locala;
      paramContext = paramContext.a();
      return paramContext;
    }
    catch (NullPointerException paramContext) {}
    return null;
  }
  
  public static boolean a()
  {
    try
    {
      bpd.a(null);
      return false;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return true;
  }
  
  static final class a
    implements bpd.f
  {
    public final bpg a(bpg parambpg)
    {
      throw new RuntimeException("Attempt to make request on disabled Picasso instance");
    }
  }
}

/* Location:
 * Qualified Name:     aoa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */