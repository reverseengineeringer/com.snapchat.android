package com.snapchat.android.fragments.cash;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;
import android.widget.TextView;
import chc;

final class CardLinkFragment$b
  implements TextWatcher
{
  private TextView a;
  private ImageView b;
  
  CardLinkFragment$b(@chc TextView paramTextView, @chc ImageView paramImageView)
  {
    a = paramTextView;
    b = paramImageView;
  }
  
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (a.getVisibility() == 0)
    {
      a.setText("");
      a.setVisibility(4);
      b.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */