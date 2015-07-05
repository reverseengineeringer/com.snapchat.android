package com.snapchat.android.fragments.cash;

import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.ui.cash.CardExpiryEditText;
import com.snapchat.android.ui.cash.CardNumberEditText;
import ye;

final class CardLinkFragment$7
  implements ye
{
  CardLinkFragment$7(CardLinkFragment paramCardLinkFragment) {}
  
  public final void a()
  {
    CardLinkFragment.a(a);
    CardInputError localCardInputError = CardLinkFragment.b(a).getCardInputError();
    if (localCardInputError != null) {
      a.a(localCardInputError);
    }
  }
  
  public final void b()
  {
    if (!CardLinkFragment.c(a)) {
      CardLinkFragment.d(a).requestFocus();
    }
  }
  
  public final void c() {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */