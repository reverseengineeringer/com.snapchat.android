package in.srain.cube.views.ptr;

import in.srain.cube.util.CLog;

final class PtrFrameLayout$1
  implements Runnable
{
  PtrFrameLayout$1(PtrFrameLayout paramPtrFrameLayout) {}
  
  public final void run()
  {
    if (PtrFrameLayout.a) {
      CLog.d(a.b, "mRefreshCompleteHook resume.");
    }
    PtrFrameLayout.a(a);
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrFrameLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */