package com.snapchat.android.ui.cash;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import cgc;
import com.snapchat.android.ui.StickyEndEditText;
import ye;

public class CardCvvEditText
  extends StickyEndEditText
{
  public boolean a = false;
  private ye b;
  
  public CardCvvEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    addTextChangedListener(new a((byte)0));
    setKeyListener(DigitsKeyListener.getInstance("0123456789"));
  }
  
  protected final boolean a()
  {
    if ((getEditableText().length() == 0) && (b != null))
    {
      b.c();
      return true;
    }
    return false;
  }
  
  public String getUnformattedText()
  {
    return getText().toString().trim();
  }
  
  public void setValidatedInputCallback(@cgc ye paramye)
  {
    b = paramye;
  }
  
  final class a
    implements TextWatcher
  {
    private CharSequence b = null;
    
    private a() {}
    
    public final void afterTextChanged(Editable paramEditable)
    {
      paramEditable = new StringBuilder(paramEditable);
      if (!TextUtils.equals(b, paramEditable))
      {
        if (paramEditable.length() != 3) {
          break label65;
        }
        CardCvvEditText.a(CardCvvEditText.this, true);
        if (CardCvvEditText.a(CardCvvEditText.this) != null) {
          CardCvvEditText.a(CardCvvEditText.this).b();
        }
      }
      for (;;)
      {
        b = paramEditable;
        return;
        label65:
        CardCvvEditText.a(CardCvvEditText.this, false);
        if (CardCvvEditText.a(CardCvvEditText.this) != null) {
          CardCvvEditText.a(CardCvvEditText.this).a();
        }
      }
    }
    
    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardCvvEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */