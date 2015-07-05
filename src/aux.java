import com.snapchat.android.util.StartupPath;

public final class aux
{
  private static StartupPath mStartupPath = StartupPath.UNKNOWN;
  private static aux sStartupContext = new aux();
  private boolean isAppStart = false;
  
  public static aux a()
  {
    return sStartupContext;
  }
  
  public static StartupPath b()
  {
    return mStartupPath;
  }
  
  public final void a(int paramInt)
  {
    switch (aux.1.$SwitchMap$com$snapchat$android$util$StartupContext$Checkpoint[(paramInt - 1)])
    {
    default: 
      mStartupPath = StartupPath.UNKNOWN;
      return;
    case 1: 
      mStartupPath = StartupPath.FROM_KILLED_STATE;
      isAppStart = true;
      return;
    case 2: 
      if (!isAppStart) {
        mStartupPath = StartupPath.FROM_DESTROYED_STATE;
      }
      isAppStart = false;
      return;
    }
    mStartupPath = StartupPath.FROM_BACKGROUNDED_STATE;
  }
  
  public static enum a
  {
    static
    {
      ACTIVITY_CREATE_CHECKPOINT$6dad94c5 = 2;
      ACTIVITY_RESTART_CHECKPOINT$6dad94c5 = 3;
    }
    
    public static int[] a()
    {
      return (int[])$VALUES$25e79240.clone();
    }
  }
}

/* Location:
 * Qualified Name:     aux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */