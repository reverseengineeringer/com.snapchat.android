package com.snapchat.android.fragments.settings.twofa;

import abf;
import agq;
import agq.a;
import amk;
import anc;
import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import aok;
import aol;
import apz;
import cf;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.HashSet;
import java.util.Set;

public class ForgetDeviceFragment
  extends SnapchatFragment
  implements agq.a, LoaderManager.LoaderCallbacks<Cursor>
{
  protected TextView a;
  protected ProgressBar b;
  private TextView c;
  private ListView d;
  private View e;
  private View f;
  private agq g;
  private final Set<Integer> h = new HashSet();
  private final aol i;
  private aok j = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (ForgetDeviceFragment.a(ForgetDeviceFragment.this).contains(Integer.valueOf(i)))
      {
        ForgetDeviceFragment.a(ForgetDeviceFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof anc)) {
          ForgetDeviceFragment.a(ForgetDeviceFragment.this, b);
        }
      }
    }
  };
  
  public ForgetDeviceFragment()
  {
    this(aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private ForgetDeviceFragment(aol paramaol)
  {
    i = paramaol;
  }
  
  private void i()
  {
    switch (g.getCount())
    {
    default: 
      c.setText(2131493555);
      return;
    case 0: 
      c.setText(2131493556);
      a.setVisibility(8);
      return;
    }
    c.setText(2131493551);
  }
  
  public final void a(String paramString)
  {
    h.add(Integer.valueOf(i.a(getActivity(), "twoFAForgetOneDevice", paramString, null)));
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new CursorLoader(getActivity(), SnapchatProvider.d, abf.b, null);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968769, paramViewGroup, false);
    c(2131362815).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    e = paramLayoutInflater.inflate(2130968771, null);
    f = paramLayoutInflater.inflate(2130968770, null);
    a = ((TextView)f.findViewById(2131362819));
    b = ((ProgressBar)f.findViewById(2131362820));
    c = ((TextView)e.findViewById(2131362821));
    a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ForgetDeviceFragment.a(ForgetDeviceFragment.this).add(Integer.valueOf(ForgetDeviceFragment.b(ForgetDeviceFragment.this).a(getActivity(), "twoFAForgetDevice", null, null)));
        a.setClickable(false);
        a.setText("");
        b.setVisibility(0);
      }
    });
    d = ((ListView)c(2131362818));
    g = new agq(getActivity(), this);
    d.addHeaderView(e);
    d.addFooterView(f);
    d.setAdapter(g);
    getActivity().getSupportLoaderManager().initLoader$71be8de6(1300, this);
    return mFragmentLayout;
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public void onPause()
  {
    super.onPause();
    i.b(1012, j);
    h.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    i.a(1012, j);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.ForgetDeviceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */