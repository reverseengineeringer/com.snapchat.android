import javax.inject.Provider;

final class pp$1
  implements Runnable
{
  pp$1(pp parampp, uc paramuc, bkh parambkh) {}
  
  public final void run()
  {
    ajv localajv = (ajv)this$0.mUserProvider.get();
    if ((val$networkResult.d()) && (val$response != null)) {
      if (aud.a(val$response.c())) {
        this$0.a(val$response, localajv);
      }
    }
    for (;;)
    {
      this$0.a(val$response, val$networkResult);
      return;
      this$0.a(val$networkResult, val$response.b(), localajv);
      continue;
      this$0.a(val$networkResult, val$networkResult.mResponseMessage, localajv);
    }
  }
}

/* Location:
 * Qualified Name:     pp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */