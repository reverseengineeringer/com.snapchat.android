package com.snapchat.android.fragments.signup;

import android.content.IntentFilter;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import atj;
import avh;
import bet;
import bgo;
import boh;
import com.snapchat.android.Timber;
import com.snapchat.android.receiver.SmsReceiver;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.concurrent.TimeUnit;

public abstract class GenericCodeVerificationFragment
  extends SnapchatFragment
{
  public EditText a;
  protected TextView b;
  protected View c;
  public Button d;
  public ProgressBar e;
  private a f;
  private int g;
  private Handler h = new Handler();
  private SmsReceiver i;
  
  public final void a(String paramString)
  {
    if (paramString == null)
    {
      b.setText("");
      paramString = b;
      if (a.getVisibility() == 0) {}
      for (int j = 4;; j = 8)
      {
        paramString.setVisibility(j);
        c.setVisibility(4);
        return;
      }
    }
    b.setVisibility(0);
    b.setText(paramString);
    c.setVisibility(0);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public abstract void i();
  
  public abstract void m();
  
  public abstract String n();
  
  public final void o()
  {
    ((TextView)c(2131362009)).setText(n());
    a = ((EditText)c(2131362014));
    b = ((TextView)c(2131362016));
    c = c(2131362015);
    d = ((Button)c(2131362806));
    Button localButton = d;
    getActivity().getAssets();
    atj.a(localButton);
    e = ((ProgressBar)c(2131362019));
    if (a.requestFocus()) {
      avh.f(getActivity());
    }
  }
  
  public void onPause()
  {
    super.onPause();
    Timber.c("GenericCodeVerificationFragment", "unregisterSmsReceiver()", new Object[0]);
    if (i != null)
    {
      getActivity().unregisterReceiver(i);
      i = null;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    Timber.c("GenericCodeVerificationFragment", "registerSmsReceiver()", new Object[0]);
    if (i == null)
    {
      i = new SmsReceiver();
      getActivity().registerReceiver(i, new IntentFilter("android.provider.Telephony.SMS_RECEIVED"));
    }
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    if (TextUtils.isEmpty(a.getText()))
    {
      a.setText(code);
      d.performClick();
    }
  }
  
  public final void p()
  {
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        e.setVisibility(0);
        if (GenericCodeVerificationFragment.a(GenericCodeVerificationFragment.this) != null)
        {
          GenericCodeVerificationFragment.a(GenericCodeVerificationFragment.this).c();
          GenericCodeVerificationFragment.b(GenericCodeVerificationFragment.this);
        }
        d.setText("");
        d.setClickable(false);
        a.setEnabled(false);
        if (a.length() < 6)
        {
          m();
          return;
        }
        i();
      }
    });
  }
  
  public final void q()
  {
    a.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        a(null);
        t();
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a(null);
        a.setText("");
        a.requestFocus();
      }
    });
  }
  
  public final void r()
  {
    f = new a((int)TimeUnit.MINUTES.toSeconds(1L), TimeUnit.SECONDS.toMillis(1L), h);
    f.e();
  }
  
  public final void t()
  {
    if (a.length() >= 6)
    {
      d.setText(2131493356);
      d.setClickable(true);
      d.setEnabled(true);
      return;
    }
    if (f == null)
    {
      d.setText(2131493306);
      d.setClickable(true);
      d.setEnabled(true);
      return;
    }
    d.setText(getString(2131493306) + " " + g);
    d.setEnabled(false);
  }
  
  final class a
    extends bgo
  {
    public a(int paramInt, long paramLong, Handler paramHandler)
    {
      super(paramLong, paramHandler);
      GenericCodeVerificationFragment.a(GenericCodeVerificationFragment.this, paramInt);
      t();
    }
    
    public final void a()
    {
      if (!isAdded()) {
        return;
      }
      GenericCodeVerificationFragment.c(GenericCodeVerificationFragment.this);
      t();
    }
    
    public final void b()
    {
      if (!isAdded()) {
        return;
      }
      GenericCodeVerificationFragment.b(GenericCodeVerificationFragment.this);
      t();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.GenericCodeVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */