final class bbf$1
  implements Runnable
{
  bbf$1(bbf parambbf, String paramString) {}
  
  public final void run()
  {
    String str = val$stackTrace;
    bbg.a[] arrayOfa = bbg.IGNORED_METHODS;
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      bbg.a locala = arrayOfa[i];
      str = str.replaceAll(bbg.a(mClassName, mMethodName), "ignore.$1");
      i += 1;
    }
    this$0.a(str);
  }
}

/* Location:
 * Qualified Name:     bbf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */