import javax.inject.Provider;

final class qg$1
  implements Runnable
{
  qg$1(qg paramqg, us paramus, bli parambli) {}
  
  public final void run()
  {
    akp localakp = (akp)this$0.mUserProvider.get();
    if ((val$networkResult.d()) && (val$response != null)) {
      if (avb.a(val$response.c())) {
        this$0.a(val$response, localakp);
      }
    }
    for (;;)
    {
      this$0.a(val$response, val$networkResult);
      return;
      this$0.a(val$networkResult, val$response.b(), localakp);
      continue;
      this$0.a(val$networkResult, val$networkResult.mResponseMessage, localakp);
    }
  }
}

/* Location:
 * Qualified Name:     qg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */