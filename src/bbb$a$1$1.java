final class bbb$a$1$1
  implements Runnable
{
  bbb$a$1$1(bbb.a.1 param1, long paramLong) {}
  
  public final void run()
  {
    long l = System.currentTimeMillis();
    this$1.val$uiLatencyAggregator.a(l - val$enqueueTime);
  }
}

/* Location:
 * Qualified Name:     bbb.a.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */