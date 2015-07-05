package com.snapchat.android.util.eventbus;

import com.snapchat.android.util.AlertDialogUtils.a;

public final class ShowDialogEvent$a
{
  private ShowDialogEvent.DialogType mDialogType;
  public String mMessage;
  public int mMessageResId;
  public int mTitleResId;
  public AlertDialogUtils.a mYesNoAlertListener;
  
  public ShowDialogEvent$a(ShowDialogEvent.DialogType paramDialogType)
  {
    mDialogType = paramDialogType;
  }
  
  public final ShowDialogEvent a()
  {
    ShowDialogEvent localShowDialogEvent = new ShowDialogEvent(mDialogType, mMessageResId);
    message = mMessage;
    titleResId = mTitleResId;
    yesNoAlertListener = mYesNoAlertListener;
    return localShowDialogEvent;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.eventbus.ShowDialogEvent.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */