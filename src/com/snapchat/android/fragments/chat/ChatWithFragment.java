package com.snapchat.android.fragments.chat;

import agy;
import agy.a;
import agy.b;
import akp;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.Filter;
import awf;
import chd;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.a;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Provider;

public class ChatWithFragment
  extends SnapchatFragment
  implements agy.a
{
  protected final AdapterView.OnItemClickListener a = new AdapterView.OnItemClickListener()
  {
    public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      ChatFragment.a(getTagb.l());
      ((LandingPageActivity)getActivity()).a(0, false);
      getActivity().onBackPressed();
    }
  };
  protected final AbsListView.OnScrollListener b = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if (paramAnonymousInt != 0) {
        awf.a(getActivity(), ChatWithFragment.b(ChatWithFragment.this));
      }
    }
  };
  protected final TextWatcher c = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      ChatWithFragment.c(ChatWithFragment.this).getFilter().filter(paramAnonymousCharSequence.toString());
      if (TextUtils.isEmpty(paramAnonymousCharSequence))
      {
        ChatWithFragment.d(ChatWithFragment.this).setFastScrollAlwaysVisible(true);
        ChatWithFragment.d(ChatWithFragment.this).setFastScrollEnabled(true);
        ChatWithFragment.e(ChatWithFragment.this).setVisibility(4);
        return;
      }
      ChatWithFragment.d(ChatWithFragment.this).setFastScrollAlwaysVisible(false);
      ChatWithFragment.d(ChatWithFragment.this).setFastScrollEnabled(false);
      ChatWithFragment.e(ChatWithFragment.this).setVisibility(0);
    }
  };
  private StickyListHeadersListView d;
  private agy e;
  private EditText f;
  private View g;
  private View h;
  private final Provider<akp> i;
  
  public ChatWithFragment()
  {
    this(akp.UNSAFE_USER_PROVIDER);
  }
  
  @SuppressLint({"ValidFragment"})
  private ChatWithFragment(Provider<akp> paramProvider)
  {
    i = paramProvider;
  }
  
  public final void a(@chd List<Friend> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      h.setVisibility(0);
      return;
    }
    h.setVisibility(8);
  }
  
  public final void e()
  {
    super.e();
    f.requestFocus();
    awf.g(getActivity());
  }
  
  public final boolean g()
  {
    awf.a(getActivity(), mFragmentLayout);
    return false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968629, paramViewGroup, false);
    paramLayoutInflater = (akp)i.get();
    if (paramLayoutInflater != null) {}
    for (paramLayoutInflater = paramLayoutInflater.k();; paramLayoutInflater = new ArrayList())
    {
      e = new agy(getActivity(), paramLayoutInflater, new Friend.a(), this);
      d = ((StickyListHeadersListView)c(2131362127));
      d.setAdapter(e);
      d.setFastScrollAlwaysVisible(true);
      d.setTextFilterEnabled(true);
      d.setOnItemClickListener(a);
      d.setOnScrollListener(b);
      f = ((EditText)c(2131362126));
      f.addTextChangedListener(c);
      g = c(2131361837);
      g.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ChatWithFragment.a(ChatWithFragment.this).setText("");
        }
      });
      h = c(2131362128);
      c(2131362124).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          getActivity().onBackPressed();
        }
      });
      return mFragmentLayout;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatWithFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */