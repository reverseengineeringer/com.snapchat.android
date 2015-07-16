@cd
final class cx
{
  static int a(int paramInt, String paramString)
  {
    if (paramInt < 0)
    {
      paramString = String.valueOf(String.valueOf(paramString));
      throw new IllegalArgumentException(paramString.length() + 40 + paramString + " cannot be negative but was: " + paramInt);
    }
    return paramInt;
  }
  
  static void a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
    {
      paramObject1 = String.valueOf(String.valueOf(paramObject2));
      throw new NullPointerException(((String)paramObject1).length() + 24 + "null key in entry: null=" + (String)paramObject1);
    }
    if (paramObject2 == null)
    {
      paramObject1 = String.valueOf(String.valueOf(paramObject1));
      throw new NullPointerException(((String)paramObject1).length() + 26 + "null value in entry: " + (String)paramObject1 + "=null");
    }
  }
}

/* Location:
 * Qualified Name:     cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */