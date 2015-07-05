package com.snapchat.android.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class AlertDialogUtils$9
  implements DialogInterface.OnClickListener
{
  AlertDialogUtils$9(CheckBox paramCheckBox, AlertDialogUtils.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (val$dontAskAgainCheckBox.isChecked())
    {
      val$listener.a(AlertDialogUtils.YesNoOption.YES_DONT_ASK_AGAIN);
      return;
    }
    val$listener.a(AlertDialogUtils.YesNoOption.YES);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.AlertDialogUtils.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */