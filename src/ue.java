import javax.inject.Inject;

final class ue
  extends tv<Object, String>
{
  private final aum mGson;
  
  @Inject
  protected ue(aum paramaum)
  {
    super(Object.class);
    mGson = paramaum;
  }
  
  private String c(@chc Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (avb.a(paramObject.getClass())) {
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
 * Qualified Name:     ue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */