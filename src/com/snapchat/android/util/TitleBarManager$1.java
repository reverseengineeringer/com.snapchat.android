package com.snapchat.android.util;

final class TitleBarManager$1
  implements Runnable
{
  TitleBarManager$1(TitleBarManager paramTitleBarManager, boolean paramBoolean) {}
  
  public final void run()
  {
    this$0.mTitleBarUpdateInProgress = false;
    if (val$titleBarUpdateWasInProgress) {
      this$0.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.TitleBarManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */