final class baf$1
  implements Runnable
{
  baf$1(baf parambaf, String paramString) {}
  
  public final void run()
  {
    String str = val$stackTrace;
    bag.a[] arrayOfa = bag.IGNORED_METHODS;
    int j = arrayOfa.length;
    int i = 0;
    while (i < j)
    {
      bag.a locala = arrayOfa[i];
      str = str.replaceAll(bag.a(mClassName, mMethodName), "ignore.$1");
      i += 1;
    }
    this$0.a(str);
  }
}

/* Location:
 * Qualified Name:     baf.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */