package com.snapchat.android.fragments.settings.phone;

import akr;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import anh;
import anz;
import apg;
import aph;
import auv;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

public class PhonePasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final aph f;
  private final Set<Integer> g = new HashSet();
  private apg h = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if ((PhonePasswordValidationFragment.a(PhonePasswordValidationFragment.this).contains(Integer.valueOf(i))) && ((paramAnonymousanh instanceof anz)))
      {
        PhonePasswordValidationFragment.a(PhonePasswordValidationFragment.this).remove(Integer.valueOf(i));
        PhonePasswordValidationFragment.a(PhonePasswordValidationFragment.this, b);
      }
    }
  };
  
  public PhonePasswordValidationFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private PhonePasswordValidationFragment(aph paramaph)
  {
    f = paramaph;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362674)).setText(auv.a(null, 2131493452, new Object[0]));
    ((TextView)c(2131362675)).setText(auv.a(null, 2131493236, new Object[0]));
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PhonePasswordValidationFragment.a(PhonePasswordValidationFragment.this).add(Integer.valueOf(PhonePasswordValidationFragment.c(PhonePasswordValidationFragment.this).a(getActivity(), "pwConfirmPhoneNumber", akr.e(), PhonePasswordValidationFragment.b(PhonePasswordValidationFragment.this).getText().toString())));
        PhonePasswordValidationFragment.d(PhonePasswordValidationFragment.this).setClickable(false);
        PhonePasswordValidationFragment.e(PhonePasswordValidationFragment.this).setText("");
        PhonePasswordValidationFragment.f(PhonePasswordValidationFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    f.b(1012, h);
    g.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    f.a(1012, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.phone.PhonePasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */