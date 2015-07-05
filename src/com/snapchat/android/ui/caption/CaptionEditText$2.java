package com.snapchat.android.ui.caption;

final class CaptionEditText$2
  implements Runnable
{
  CaptionEditText$2(CaptionEditText paramCaptionEditText) {}
  
  public final void run()
  {
    a.d();
    int i = Math.min((int)a.getLastSelectedPositionY(), a.n);
    if (i != a.getTop()) {
      a.setCaptionPositionY(i);
    }
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */