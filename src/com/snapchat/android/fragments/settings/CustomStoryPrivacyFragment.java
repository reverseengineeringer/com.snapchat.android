package com.snapchat.android.fragments.settings;

import agn;
import agn.a;
import ajv;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Filter;
import auh;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.a;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import pa;

public class CustomStoryPrivacyFragment
  extends SnapchatFragment
  implements agn.a
{
  private final HashSet<String> a = new HashSet();
  private agn b;
  private View c;
  private View d;
  private EditText e;
  private View f;
  private boolean g = false;
  private InputMethodManager h;
  
  public final boolean a(Friend paramFriend)
  {
    return a.contains(paramFriend.h());
  }
  
  public final void b(Friend paramFriend)
  {
    a.add(paramFriend.h());
    b.notifyDataSetChanged();
  }
  
  public final void c(Friend paramFriend)
  {
    a.remove(paramFriend.h());
    b.notifyDataSetChanged();
  }
  
  public final boolean g()
  {
    boolean bool = false;
    if (g)
    {
      c.setVisibility(0);
      d.setVisibility(0);
      e.setText("");
      e.clearFocus();
      h.hideSoftInputFromWindow(getView().getWindowToken(), 0);
      e.setVisibility(4);
      g = false;
      bool = true;
    }
    return bool;
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968643, paramViewGroup, false);
    h = ((InputMethodManager)getActivity().getSystemService("input_method"));
    a.addAll(gmFriendsBlockedFromSeeingMyStory);
    b = new agn(getActivity(), ajv.g().j(), new Friend.a(), this);
    paramLayoutInflater = (StickyListHeadersListView)c(2131362195);
    paramLayoutInflater.setAdapter(b);
    paramLayoutInflater.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (CustomStoryPrivacyFragment.a(CustomStoryPrivacyFragment.this)) {
          CustomStoryPrivacyFragment.b(CustomStoryPrivacyFragment.this).hideSoftInputFromWindow(getView().getWindowToken(), 0);
        }
        return false;
      }
    });
    paramLayoutInflater.setFastScrollAlwaysVisible(true);
    paramLayoutInflater.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (CheckBox)paramAnonymousView.findViewById(2131362196);
        if (paramAnonymousAdapterView == null) {
          return;
        }
        if (!paramAnonymousAdapterView.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousAdapterView.setChecked(bool);
          return;
        }
      }
    });
    paramLayoutInflater.setTextFilterEnabled(true);
    c(2131362191).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    c = c(2131362193);
    c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CustomStoryPrivacyFragment.c(CustomStoryPrivacyFragment.this);
      }
    });
    d = c(2131361894);
    f = c(2131361836);
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CustomStoryPrivacyFragment.d(CustomStoryPrivacyFragment.this).setText("");
      }
    });
    e = ((EditText)c(2131362192));
    e.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable) {}
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        CustomStoryPrivacyFragment.e(CustomStoryPrivacyFragment.this).getFilter().filter(paramAnonymousCharSequence.toString());
        if ((paramAnonymousCharSequence.toString().equals("")) || (paramAnonymousCharSequence.toString() == null))
        {
          paramLayoutInflater.setFastScrollAlwaysVisible(true);
          paramLayoutInflater.setFastScrollEnabled(true);
          CustomStoryPrivacyFragment.f(CustomStoryPrivacyFragment.this).setVisibility(4);
          return;
        }
        paramLayoutInflater.setFastScrollAlwaysVisible(false);
        paramLayoutInflater.setFastScrollEnabled(false);
        CustomStoryPrivacyFragment.f(CustomStoryPrivacyFragment.this).setVisibility(0);
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    ArrayList localArrayList = new ArrayList(a.size());
    localArrayList.addAll(a);
    gmFriendsBlockedFromSeeingMyStory = localArrayList;
    new pa("updateStoryPrivacy", new String[] { "CUSTOM" }).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.CustomStoryPrivacyFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */