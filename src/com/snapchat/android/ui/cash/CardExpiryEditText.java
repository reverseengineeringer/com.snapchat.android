package com.snapchat.android.ui.cash;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import chd;
import com.snapchat.android.ui.StickyEndEditText;
import java.util.Calendar;
import za;

public class CardExpiryEditText
  extends StickyEndEditText
{
  final Calendar a = Calendar.getInstance();
  final Calendar b = Calendar.getInstance();
  public boolean c = false;
  private Animation d;
  private za e;
  
  public CardExpiryEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d = AnimationUtils.loadAnimation(paramContext, 2131034114);
    addTextChangedListener(new a((byte)0));
    setKeyListener(DigitsKeyListener.getInstance("0123456789//"));
  }
  
  protected final boolean a()
  {
    if ((getEditableText().length() == 0) && (e != null))
    {
      e.c();
      return true;
    }
    return false;
  }
  
  public String getUnformattedText()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < getText().length())
    {
      char c1 = getText().charAt(i);
      if (Character.isDigit(c1)) {
        localStringBuilder.append(c1);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public void setValidatedInputCallback(@chd za paramza)
  {
    e = paramza;
  }
  
  final class a
    implements TextWatcher
  {
    private CharSequence b = null;
    private boolean c = false;
    private boolean d = false;
    
    private a() {}
    
    public final void afterTextChanged(Editable paramEditable)
    {
      if (d) {
        return;
      }
      StringBuilder localStringBuilder = CardExpiryEditText.a(CardExpiryEditText.this, paramEditable);
      if (c) {
        localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
      }
      CardExpiryEditText localCardExpiryEditText;
      Object localObject;
      int k;
      int i;
      if (!TextUtils.equals(b, localStringBuilder.toString()))
      {
        localCardExpiryEditText = CardExpiryEditText.this;
        localObject = localStringBuilder.toString();
        if (!((String)localObject).matches("[0-9]{2}/[0-9]{2}")) {
          break label305;
        }
        localObject = ((String)localObject).split("/");
        k = Integer.parseInt(localObject[0]);
        if ((k > 0) && (k <= 12)) {
          break label181;
        }
        i = 0;
        if (i == 0) {
          break label310;
        }
        CardExpiryEditText.a(CardExpiryEditText.this, true);
        if (CardExpiryEditText.a(CardExpiryEditText.this) != null) {
          CardExpiryEditText.a(CardExpiryEditText.this).b();
        }
      }
      for (;;)
      {
        b = localStringBuilder;
        d = true;
        paramEditable.replace(0, paramEditable.length(), localStringBuilder);
        d = false;
        return;
        label181:
        i = Integer.parseInt(localObject[1]);
        int m = a.get(1);
        int j = i + (m - m % 100);
        i = j;
        if (j < m) {
          i = j + 100;
        }
        b.set(1, i);
        b.set(2, k - 1);
        b.set(5, b.getActualMaximum(5));
        b.add(5, 1);
        if ((!b.before(a)) && (i - m <= 25))
        {
          i = 1;
          break;
        }
        label305:
        i = 0;
        break;
        label310:
        CardExpiryEditText.a(CardExpiryEditText.this, false);
        if (CardExpiryEditText.a(CardExpiryEditText.this) != null) {
          CardExpiryEditText.a(CardExpiryEditText.this).a();
        }
      }
    }
    
    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      if ((paramInt3 == 0) && (paramCharSequence.subSequence(paramInt1, paramInt1 + paramInt2).toString().equals("/"))) {}
      for (boolean bool = true;; bool = false)
      {
        c = bool;
        return;
      }
    }
    
    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardExpiryEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */