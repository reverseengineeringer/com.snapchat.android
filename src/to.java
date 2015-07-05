import javax.inject.Inject;

final class to
  extends tf<Object, String>
{
  private final ato mGson;
  
  @Inject
  protected to(ato paramato)
  {
    super(Object.class);
    mGson = paramato;
  }
  
  private String c(@cgb Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (aud.a(paramObject.getClass())) {
      return paramObject.toString();
    }
    try
    {
      String str = mGson.a(paramObject);
      return str;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Trouble serializing: Class=" + paramObject.getClass().getName() + ", with toString()=" + paramObject.toString(), localException);
    }
  }
}

/* Location:
 * Qualified Name:     to
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */