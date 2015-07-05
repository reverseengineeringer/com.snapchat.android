package com.snapchat.android.fragments.signup;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import android.widget.EditText;
import com.snapchat.android.analytics.AnalyticsEvents;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

final class SignupFragment$11
  implements DatePickerDialog.OnDateSetListener
{
  SignupFragment$11(SignupFragment paramSignupFragment) {}
  
  public final void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool2 = false;
    paramDatePicker = new GregorianCalendar(paramInt1, paramInt2, paramInt3);
    SignupFragment localSignupFragment = a;
    if ((SignupFragment.n(a)) || (SignupFragment.o(a).get(1) != paramDatePicker.get(1)))
    {
      bool1 = true;
      SignupFragment.c(localSignupFragment, bool1);
      localSignupFragment = a;
      if ((!SignupFragment.p(a)) && (SignupFragment.o(a).get(2) == paramDatePicker.get(2))) {
        break label272;
      }
    }
    label272:
    for (boolean bool1 = true;; bool1 = false)
    {
      SignupFragment.d(localSignupFragment, bool1);
      localSignupFragment = a;
      if (!SignupFragment.q(a))
      {
        bool1 = bool2;
        if (SignupFragment.o(a).get(5) == paramDatePicker.get(5)) {}
      }
      else
      {
        bool1 = true;
      }
      SignupFragment.e(localSignupFragment, bool1);
      if ((SignupFragment.o(a).get(1) != paramDatePicker.get(1)) || (SignupFragment.o(a).get(2) != paramDatePicker.get(2)) || (SignupFragment.o(a).get(5) != paramDatePicker.get(5)))
      {
        SignupFragment.a(a, paramDatePicker);
        SignupFragment.r(a).setText(new SimpleDateFormat("MM/dd/yyyy").format(SignupFragment.o(a).getTime()));
        SignupFragment.f(a);
        AnalyticsEvents.z();
      }
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */