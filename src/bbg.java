public final class bbg
  extends bbh
{
  public static final bbg.a[] IGNORED_METHODS = { new bbg.a("WaitDoneHandler", "waitDone") };
  private static final String IGNORE_PACKAGE_PREFIX = "ignore.";
  private static final String SNAPCHAT_PACKAGE_AS_REGEX = "com\\.snapchat\\.android";
  
  public static String a(String paramString1, String paramString2)
  {
    return "(com\\.snapchat\\.android.*" + paramString1 + "\\." + paramString2 + ")";
  }
  
  public static final class a
  {
    public final String mClassName;
    public final String mMethodName;
    
    a(String paramString1, String paramString2)
    {
      mClassName = paramString1;
      mMethodName = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     bbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */