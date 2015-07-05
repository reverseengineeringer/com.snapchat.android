import javax.annotation.Nullable;

final class ch$1
  extends ch
{
  ch$1(ch paramch1, ch paramch2, String paramString)
  {
    super(paramch2, (byte)0);
  }
  
  public final ch a(String paramString)
  {
    throw new UnsupportedOperationException("already specified useForNull");
  }
  
  final CharSequence a(@Nullable Object paramObject)
  {
    if (paramObject == null) {
      return b;
    }
    return c.a(paramObject);
  }
}

/* Location:
 * Qualified Name:     ch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */