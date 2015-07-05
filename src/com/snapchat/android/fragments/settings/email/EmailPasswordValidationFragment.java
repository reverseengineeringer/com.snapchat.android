package com.snapchat.android.fragments.settings.email;

import amk;
import ams;
import ana;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import aok;
import aol;
import atx;
import cgb;
import com.snapchat.android.fragments.settings.BasePasswordValidationFragment;
import java.util.HashSet;
import java.util.Set;

@SuppressLint({"ValidFragment"})
public class EmailPasswordValidationFragment
  extends BasePasswordValidationFragment
{
  private final String f;
  private final Set<Integer> g = new HashSet();
  private aok h = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).contains(Integer.valueOf(i)))
      {
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).remove(Integer.valueOf(i));
        if (!(paramAnonymousamk instanceof ana)) {
          break label60;
        }
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this, (ana)paramAnonymousamk);
      }
      label60:
      while (!(paramAnonymousamk instanceof ams)) {
        return;
      }
      EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this, (ams)paramAnonymousamk);
    }
  };
  private final aol i;
  
  private EmailPasswordValidationFragment(aol paramaol, @cgb String paramString)
  {
    i = paramaol;
    f = paramString;
  }
  
  @SuppressLint({"ValidFragment"})
  public EmailPasswordValidationFragment(@cgb String paramString)
  {
    this(aol.a(), paramString);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)c(2131362675)).setText(atx.a(null, 2131493442, new Object[0]));
    ((TextView)c(2131362676)).setText(atx.a(null, 2131493150, new Object[0]));
    b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        EmailPasswordValidationFragment.a(EmailPasswordValidationFragment.this).add(Integer.valueOf(EmailPasswordValidationFragment.c(EmailPasswordValidationFragment.this).b(getActivity(), EmailPasswordValidationFragment.b(EmailPasswordValidationFragment.this).getText().toString())));
        EmailPasswordValidationFragment.d(EmailPasswordValidationFragment.this).setClickable(false);
        EmailPasswordValidationFragment.e(EmailPasswordValidationFragment.this).setText("");
        EmailPasswordValidationFragment.f(EmailPasswordValidationFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    i.b(1016, h);
    i.b(1015, h);
    g.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    i.a(1016, h);
    i.a(1015, h);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailPasswordValidationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */