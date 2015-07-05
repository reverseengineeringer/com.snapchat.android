package com.snapchat.android.fragments.cash;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import com.snapchat.android.ui.cash.CardCvvEditText;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import com.snapchat.android.ui.cash.ZipEditText;

final class CardLinkFragment$2
  implements View.OnClickListener
{
  CardLinkFragment$2(CardLinkFragment paramCardLinkFragment) {}
  
  public final void onClick(View paramView)
  {
    CardLinkFragment.h(a);
    CardLinkFragment.i(a).setText("");
    CardLinkFragment.i(a).setClickable(false);
    CardLinkFragment.j(a).setVisibility(0);
    CardLinkFragment.k(a).a(CardLinkFragment.b(a).getUnformattedText(), CardLinkFragment.d(a).getUnformattedText(), CardLinkFragment.e(a).getUnformattedText(), CardLinkFragment.g(a).getUnformattedText(), a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */