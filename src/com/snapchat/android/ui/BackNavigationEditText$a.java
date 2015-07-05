package com.snapchat.android.ui;

import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;

final class BackNavigationEditText$a
  extends InputConnectionWrapper
{
  public BackNavigationEditText$a(BackNavigationEditText paramBackNavigationEditText, InputConnection paramInputConnection)
  {
    super(paramInputConnection, true);
  }
  
  public final boolean deleteSurroundingText(int paramInt1, int paramInt2)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (Build.VERSION.SDK_INT < 19) && (paramInt1 == 1) && (paramInt2 == 0)) {
      return (sendKeyEvent(new KeyEvent(0, 67))) && (sendKeyEvent(new KeyEvent(1, 67)));
    }
    return super.deleteSurroundingText(paramInt1, paramInt2);
  }
  
  public final boolean sendKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getKeyCode() == 67) && (a.a())) {
      return false;
    }
    return super.sendKeyEvent(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.BackNavigationEditText.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */