import java.util.HashMap;

final class aze$3
  implements Runnable
{
  aze$3(aze paramaze) {}
  
  public final void run()
  {
    synchronized (this$0.mMap)
    {
      int i = this$0.mMap.size();
      if (i <= 0) {
        break label77;
      }
      if (this$0.b()) {}
    }
    synchronized (this$0.mMap)
    {
      this$0.mMap.clear();
      this$0.e();
      return;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
    label77:
    this$0.e();
  }
}

/* Location:
 * Qualified Name:     aze.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */