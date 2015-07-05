import com.snapchat.android.Timber;

public final class mj$2
  implements Runnable
{
  public mj$2(mj parammj, ml paramml, String paramString) {}
  
  public final void run()
  {
    try
    {
      this$0.c(val$adPlacement);
      return;
    }
    catch (Exception localException)
    {
      Timber.c("AdManager", "EndAdSplash for adKey:%s threw exception:%s", new Object[] { val$adKey, localException });
    }
  }
}

/* Location:
 * Qualified Name:     mj.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */