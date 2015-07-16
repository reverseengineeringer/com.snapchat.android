import java.util.Set;

final class ayo$3
  implements Runnable
{
  ayo$3(ayo paramayo, String paramString) {}
  
  public final void run()
  {
    ayo localayo = this$0;
    String str = val$pingId;
    if (mPingIds.remove(str)) {
      mInterface.f();
    }
  }
}

/* Location:
 * Qualified Name:     ayo.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */