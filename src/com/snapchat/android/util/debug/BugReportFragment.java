package com.snapchat.android.util.debug;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import ava;
import avf;
import awf;
import bar;
import bar.1;
import bhp;
import chd;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.io.File;

public class BugReportFragment
  extends SnapchatFragment
  implements BugReportRemoteLogListFragment.a
{
  public static final String LOG_FILES_KEY = "logs";
  private static final CharSequence[] PROJECT_NAMES = { "Ads", "Camera", "Looksery Lens", "Cash", "Chat", "Design/UI", "Discover", "Discover Sharing", "Feed", "Friends", "Here", "Send To Page", "Snap preview", "Snap receiving/opening", "Stories", "Live Story", "Login", "Registration", "Settings", "Profile", "Performance", "Localization" };
  public static final String SCREENSHOT_FILE_KEY = "screenshots";
  private static final String SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL = "SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL";
  private static final String TAG = "BugReportFragment";
  private Activity mActivity;
  private Button mAddRemoteLogButton;
  private EditText mBugDescription;
  private TextView mClickToSendToSelfTextView;
  private boolean mDidUserTapEnter = false;
  private String mImageFile;
  private boolean mIsReportSubmittable = false;
  private String[] mLogFiles;
  private AlertDialog.Builder mPickProjectDialog;
  private String mProjectName;
  private Button mProjectNameButton;
  private String mRemoteLogRecipient;
  private ImageView mScreenshotThumbnailCover;
  private boolean mShouldIncludeScreenshot = true;
  private boolean mShouldSendReportToSelfOnly = false;
  private EditText mStepsToRepro;
  private Button mSubmitButton;
  
  public final void a(String paramString)
  {
    if ((paramString != null) && (mAddRemoteLogButton != null))
    {
      mRemoteLogRecipient = paramString;
      mAddRemoteLogButton.setText(paramString);
    }
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    mActivity = paramActivity;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @chd ViewGroup paramViewGroup, @chd Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968593, paramViewGroup, false);
    mFragmentLayout = paramLayoutInflater;
    mImageFile = getActivity().getIntent().getStringExtra("screenshots");
    mLogFiles = getActivity().getIntent().getStringArrayExtra("logs");
    paramViewGroup = (TextView)c(2131361925);
    paramBundle = mActivity;
    paramViewGroup.setText(ScApplicationInfo.b() + "\n" + ScApplicationInfo.b(paramBundle));
    mClickToSendToSelfTextView = ((TextView)c(2131361926));
    mClickToSendToSelfTextView.setText("Send this report only to yourself?");
    mClickToSendToSelfTextView.setPaintFlags(mClickToSendToSelfTextView.getPaintFlags() | 0x8);
    mClickToSendToSelfTextView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (BugReportFragment.a(BugReportFragment.this))
        {
          BugReportFragment.a(BugReportFragment.this, false);
          BugReportFragment.b(BugReportFragment.this).setText("Send this report only to yourself?");
          return;
        }
        paramAnonymousView = new AlertDialog.Builder(BugReportFragment.c(BugReportFragment.this));
        final EditText localEditText = new EditText(BugReportFragment.c(BugReportFragment.this));
        final String str = ava.a("SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL");
        if (str != null)
        {
          localEditText.setText(str);
          localEditText.setSelection(str.length() - 13);
        }
        for (;;)
        {
          paramAnonymousView.setTitle("Please enter your email").setView(localEditText).setPositiveButton("Okay", new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface = localEditText.getText().toString();
              if (paramAnonymous2DialogInterface.endsWith("@snapchat.com"))
              {
                if (!paramAnonymous2DialogInterface.equals(str)) {
                  ava.a("SHAKE_TO_REPORT_SEND_TO_SELF_EMAIL", paramAnonymous2DialogInterface);
                }
                BugReportFragment.b(BugReportFragment.this).setText(paramAnonymous2DialogInterface);
                BugReportFragment.a(BugReportFragment.this, true);
                return;
              }
              AlertDialogUtils.a(BugReportFragment.c(BugReportFragment.this), "Please enter a valid @snapchat email!!");
            }
          }).show();
          return;
          localEditText.setText("@snapchat.com");
          localEditText.setSelection(0);
        }
      }
    });
    mScreenshotThumbnailCover = ((ImageView)c(2131361928));
    paramViewGroup = (ImageView)c(2131361927);
    if (!TextUtils.isEmpty(mImageFile))
    {
      paramBundle = BitmapFactory.decodeFile(mActivity.getFileStreamPath(mImageFile).getAbsolutePath());
      if (paramBundle != null) {
        paramViewGroup.setImageBitmap(paramBundle);
      }
    }
    paramViewGroup.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new ImageView(BugReportFragment.c(BugReportFragment.this));
        paramAnonymousView.setImageBitmap(BugReportFragment.d(BugReportFragment.this));
        new AlertDialog.Builder(BugReportFragment.c(BugReportFragment.this)).setTitle("Included Screenshot").setView(paramAnonymousView).setPositiveButton("Include", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (!BugReportFragment.f(BugReportFragment.this))
            {
              BugReportFragment.b(BugReportFragment.this, true);
              BugReportFragment.g(BugReportFragment.this).setVisibility(8);
            }
          }
        }).setNegativeButton("Remove", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (BugReportFragment.f(BugReportFragment.this))
            {
              BugReportFragment.b(BugReportFragment.this, false);
              BugReportFragment.g(BugReportFragment.this).setVisibility(0);
            }
          }
        }).setNeutralButton("Choose from Gallery", new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            BugReportFragment.e(BugReportFragment.this);
          }
        }).show();
      }
    });
    mStepsToRepro = ((EditText)c(2131361932));
    mStepsToRepro.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        paramAnonymousTextView = BugReportFragment.h(BugReportFragment.this).getText();
        int i = paramAnonymousTextView.toString().split("\n").length;
        if ((paramAnonymousInt == 5) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getKeyCode() == 66) && (paramAnonymousKeyEvent.getAction() == 0)))
        {
          paramAnonymousKeyEvent = "\n" + (i + 1) + ". ";
          BugReportFragment.h(BugReportFragment.this).setText(paramAnonymousTextView + paramAnonymousKeyEvent);
          BugReportFragment.h(BugReportFragment.this).setSelection(paramAnonymousTextView.length() + paramAnonymousKeyEvent.length());
          return true;
        }
        return false;
      }
    });
    mStepsToRepro.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          BugReportFragment.h(BugReportFragment.this).setSelection(BugReportFragment.h(BugReportFragment.this).getText().length());
        }
      }
    });
    mBugDescription = ((EditText)c(2131361930));
    mBugDescription.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 5) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getKeyCode() == 66) && (paramAnonymousKeyEvent.getAction() == 0)))
        {
          if (BugReportFragment.i(BugReportFragment.this))
          {
            BugReportFragment.h(BugReportFragment.this).requestFocus();
            return true;
          }
          BugReportFragment.c(BugReportFragment.this, true);
          new Thread(new Runnable()
          {
            public final void run()
            {
              bhp.a(300L);
              BugReportFragment.c(BugReportFragment.this, false);
            }
          }).start();
        }
        return false;
      }
    });
    mBugDescription.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if ((paramAnonymousEditable.length() > 2) && (!BugReportFragment.j(BugReportFragment.this)))
        {
          BugReportFragment.d(BugReportFragment.this, true);
          BugReportFragment.k(BugReportFragment.this).setEnabled(true);
        }
        while ((paramAnonymousEditable.length() > 2) || (!BugReportFragment.j(BugReportFragment.this))) {
          return;
        }
        BugReportFragment.d(BugReportFragment.this, false);
        BugReportFragment.k(BugReportFragment.this).setEnabled(false);
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    mAddRemoteLogButton = ((Button)c(2131361934));
    mAddRemoteLogButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (BugReportFragment.l(BugReportFragment.this) == null) {}
        try
        {
          awf.a(BugReportFragment.c(BugReportFragment.this), paramAnonymousView);
          getActivity().mFragments.beginTransaction().add(val$containerId, new BugReportRemoteLogListFragment()).addToBackStack("BugReportRemoteLogListFragment").commit();
          return;
        }
        catch (IllegalStateException paramAnonymousView) {}
        BugReportFragment.m(BugReportFragment.this);
        BugReportFragment.n(BugReportFragment.this).setText("Remote Log");
        return;
      }
    });
    mProjectNameButton = ((Button)c(2131361935));
    mProjectNameButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        BugReportFragment.o(BugReportFragment.this).show();
      }
    });
    mSubmitButton = ((Button)c(2131361936));
    mSubmitButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (BugReportFragment.p(BugReportFragment.this) == null)
        {
          BugReportFragment.o(BugReportFragment.this).show();
          return;
        }
        if (BugReportFragment.a(BugReportFragment.this))
        {
          paramAnonymousView = BugReportFragment.b(BugReportFragment.this).getText().toString();
          localObject = new StringBuilder(BugReportFragment.h(BugReportFragment.this).getText().toString());
          if ((!BugReportFragment.f(BugReportFragment.this)) || (TextUtils.isEmpty(BugReportFragment.q(BugReportFragment.this)))) {
            break label169;
          }
        }
        File[] arrayOfFile;
        label169:
        for (File localFile = BugReportFragment.c(BugReportFragment.this).getFileStreamPath(BugReportFragment.q(BugReportFragment.this));; localFile = null)
        {
          arrayOfFile = new File[BugReportFragment.r(BugReportFragment.this).length];
          int i = 0;
          while (i < arrayOfFile.length)
          {
            arrayOfFile[i] = BugReportFragment.c(BugReportFragment.this).getFileStreamPath(BugReportFragment.r(BugReportFragment.this)[i]);
            i += 1;
          }
          paramAnonymousView = "null";
          break;
        }
        bar localbar = new bar();
        String str1 = BugReportFragment.a(BugReportFragment.c(BugReportFragment.this));
        String str2 = BugReportFragment.s(BugReportFragment.this).getText().toString();
        Object localObject = ((StringBuilder)localObject).toString();
        String str3 = BugReportFragment.l(BugReportFragment.this);
        String str4 = BugReportFragment.p(BugReportFragment.this);
        bhp.a(avf.SERIAL_EXECUTOR_FOR_DEBUGGING, new bar.1(localbar, paramAnonymousView, str4, str1, str2, (String)localObject, localFile, arrayOfFile, str3));
        BugReportFragment.c(BugReportFragment.this).finish();
      }
    });
    mPickProjectDialog = new AlertDialog.Builder(mActivity).setTitle("Which project?").setItems(PROJECT_NAMES, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        BugReportFragment.a(BugReportFragment.this, BugReportFragment.i()[paramAnonymousInt].toString());
        BugReportFragment.t(BugReportFragment.this).setText(BugReportFragment.i()[paramAnonymousInt]);
      }
    });
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    mActivity = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.BugReportFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */