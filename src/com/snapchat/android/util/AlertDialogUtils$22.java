package com.snapchat.android.util;

import android.os.CountDownTimer;
import java.util.Map;

final class AlertDialogUtils$22
  extends CountDownTimer
{
  AlertDialogUtils$22(String paramString)
  {
    super(2000L, 1L);
  }
  
  public final void onFinish()
  {
    AlertDialogUtils.c().remove(val$stringResToToast);
  }
  
  public final void onTick(long paramLong) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */