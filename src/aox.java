import android.content.Context;

public final class aox
{
  @chd
  public static bqe a(Context paramContext)
  {
    try
    {
      paramContext = new bqe.a(paramContext);
      aox.a locala = new aox.a((byte)0);
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
      bqe.a(null);
      return false;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return true;
  }
  
  static final class a
    implements bqe.f
  {
    public final bqh a(bqh parambqh)
    {
      throw new RuntimeException("Attempt to make request on disabled Picasso instance");
    }
  }
}

/* Location:
 * Qualified Name:     aox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */