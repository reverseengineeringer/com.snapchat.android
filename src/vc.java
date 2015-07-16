public final class vc
  implements uh
{
  private String mString;
  
  public vc(String paramString)
  {
    mString = paramString;
  }
  
  public final bmv a(String paramString)
  {
    return bmv.a(new String[] { "Content-Disposition", "form-data; name=\"" + paramString + "\"" });
  }
  
  public final bnc a()
  {
    return bnc.a(ub.STRING_MEDIA_TYPE, mString);
  }
}

/* Location:
 * Qualified Name:     vc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */