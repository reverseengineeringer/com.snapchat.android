package com.snapchat.android.ui.cash;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.widget.EditText;
import aua;
import azy;
import chd;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import javax.inject.Inject;
import za;

public class CardNumberEditText
  extends EditText
{
  @Inject
  public aua a;
  private za b;
  
  public CardNumberEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    SnapchatApplication.b().c().a(this);
    setKeyListener(DigitsKeyListener.getInstance("0123456789 "));
    addTextChangedListener(new a((byte)0));
  }
  
  @chd
  public CardInputError getCardInputError()
  {
    if (getUnformattedText().length() == 16) {}
    for (int i = 1; (i != 0) && (!aua.a(getUnformattedText())); i = 0) {
      return CardInputError.INVALID_CARD_NUMBER;
    }
    return null;
  }
  
  public String getUnformattedText()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < getText().length())
    {
      char c = getText().charAt(i);
      if (Character.isDigit(c)) {
        localStringBuilder.append(c);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public void setValidatedInputCallback(@chd za paramza)
  {
    b = paramza;
  }
  
  final class a
    implements TextWatcher
  {
    private CharSequence b = null;
    private boolean c = false;
    private boolean d;
    private boolean e = false;
    private int f = 0;
    
    private a() {}
    
    public final void afterTextChanged(Editable paramEditable)
    {
      if (c) {}
      StringBuilder localStringBuilder2;
      do
      {
        return;
        if (e)
        {
          c = true;
          paramEditable.delete(f - 1, f);
          e = false;
          c = false;
        }
        localStringBuilder2 = CardNumberEditText.a(paramEditable);
      } while (TextUtils.equals(b, localStringBuilder2));
      StringBuilder localStringBuilder1;
      if (localStringBuilder2.length() == 19)
      {
        localStringBuilder1 = localStringBuilder2;
        if (CardNumberEditText.a(CardNumberEditText.this) != null)
        {
          if (!aua.a(getUnformattedText())) {
            break label192;
          }
          CardNumberEditText.a(CardNumberEditText.this).b();
          localStringBuilder1 = localStringBuilder2;
        }
      }
      for (;;)
      {
        b = localStringBuilder1;
        c = true;
        paramEditable.replace(0, paramEditable.length(), localStringBuilder1);
        int i = paramEditable.length();
        if ((d) && (i > 0) && ((i % 4 == 0) || (i == 3))) {
          setSelection(getSelectionStart() + 1);
        }
        c = false;
        return;
        label192:
        CardNumberEditText.a(CardNumberEditText.this).a();
        localStringBuilder1 = localStringBuilder2;
        continue;
        if (localStringBuilder2.length() > 19)
        {
          localStringBuilder1 = new StringBuilder(b);
        }
        else
        {
          localStringBuilder1 = localStringBuilder2;
          if (CardNumberEditText.a(CardNumberEditText.this) != null)
          {
            CardNumberEditText.a(CardNumberEditText.this).a();
            localStringBuilder1 = localStringBuilder2;
          }
        }
      }
    }
    
    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      if (paramInt3 < paramInt2)
      {
        d = true;
        if ((paramCharSequence.length() > 0) && (paramCharSequence.charAt(paramInt1) == ' '))
        {
          e = true;
          f = paramInt1;
        }
        return;
      }
      d = false;
      e = false;
    }
    
    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.cash.CardNumberEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */