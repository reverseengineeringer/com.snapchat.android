import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public abstract class apw
  extends AlertDialog
{
  private Context mContext;
  private String mInitialInputText;
  private int mInputType;
  public Integer mTextLimit = null;
  private TextWatcher mTextWatcher;
  private String mTitle;
  
  public apw(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    super(paramContext);
    mContext = paramContext;
    mTitle = paramString1;
    mInitialInputText = paramString2;
    mTextWatcher = null;
    mInputType = paramInt;
  }
  
  public abstract void a(String paramString);
  
  protected void onCreate(Bundle paramBundle)
  {
    final EditText localEditText = new EditText(mContext);
    localEditText.setInputType(mInputType);
    if (mTextLimit != null) {
      localEditText.setFilters(new InputFilter[] { new InputFilter.LengthFilter(mTextLimit.intValue()) });
    }
    if (mInitialInputText != null) {
      localEditText.append(mInitialInputText);
    }
    localEditText.setInputType(0x80000 | mInputType);
    setView(localEditText);
    setTitle(mTitle);
    setCancelable(true);
    setButton(-1, mContext.getString(2131493368), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ((InputMethodManager)apw.a(apw.this).getSystemService("input_method")).hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
        a(localEditText.getText().toString());
      }
    });
    setButton(-2, mContext.getString(2131492952), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ((InputMethodManager)apw.a(apw.this).getSystemService("input_method")).hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
        paramAnonymousDialogInterface.cancel();
      }
    });
    localEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          getWindow().setSoftInputMode(5);
        }
      }
    });
    localEditText.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 6) || ((paramAnonymousKeyEvent != null) && (paramAnonymousKeyEvent.getAction() == 0) && (paramAnonymousInt == 0)))
        {
          ((InputMethodManager)apw.a(apw.this).getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousTextView.getWindowToken(), 0);
          a(paramAnonymousTextView.getText().toString());
          dismiss();
          return true;
        }
        return false;
      }
    });
    if (mTextWatcher != null) {
      localEditText.addTextChangedListener(mTextWatcher);
    }
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     apw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */