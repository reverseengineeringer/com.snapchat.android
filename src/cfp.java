final class cfp
  implements cfh
{
  Class a;
  String b;
  int c;
  
  cfp(Class paramClass, String paramString, int paramInt)
  {
    a = paramClass;
    b = paramString;
    c = paramInt;
  }
  
  public final String toString()
  {
    return b + ":" + c;
  }
}

/* Location:
 * Qualified Name:     cfp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */