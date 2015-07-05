import java.io.IOException;

final class bnw$b$1
  extends bmk
{
  bnw$b$1(bnw.b paramb, String paramString, Object[] paramArrayOfObject, bnx paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public final void a()
  {
    try
    {
      bnw.f(c.c).a(b);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     bnw.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */