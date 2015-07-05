@cd
final class ct
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
}

/* Location:
 * Qualified Name:     ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */