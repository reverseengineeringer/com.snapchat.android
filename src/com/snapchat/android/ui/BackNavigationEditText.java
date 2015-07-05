package com.snapchat.android.ui;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;

public class BackNavigationEditText
  extends EditText
{
  public BackNavigationEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public BackNavigationEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BackNavigationEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return new a(super.onCreateInputConnection(paramEditorInfo));
  }
  
  final class a
    extends InputConnectionWrapper
  {
    public a(InputConnection paramInputConnection)
    {
      super(true);
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
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getKeyCode() == 67) && (a())) {
        return false;
      }
      return super.sendKeyEvent(paramKeyEvent);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.BackNavigationEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */