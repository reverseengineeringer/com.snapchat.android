package com.snapchat.android.ui.caption;

import android.os.Bundle;
import android.os.ResultReceiver;

class CaptionEditText$IMMResult
  extends ResultReceiver
{
  public CaptionEditText$IMMResult(CaptionEditText paramCaptionEditText)
  {
    super(null);
  }
  
  public void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    if ((paramInt == 2) || (paramInt == 0)) {
      CaptionEditText.a(a, true);
    }
    while ((paramInt != 3) && (paramInt != 1)) {
      return;
    }
    CaptionEditText.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText.IMMResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */