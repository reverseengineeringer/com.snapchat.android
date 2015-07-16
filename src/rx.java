import android.os.Bundle;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.blockers.CardInputError;
import com.snapchat.android.api2.cash.square.data.CardStatus;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.fragments.cash.CardLinkFragment;
import com.snapchat.android.fragments.cash.CardLinkFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.squareup.otto.Bus;
import java.util.List;
import javax.inject.Inject;

public final class rx
  extends rl
  implements CardLinkFragment.a
{
  private static final String TAG = "SQCardFormBlocker";
  @SerializedName("card_status")
  @chc
  CardStatus mCardStatus = CardStatus.NOT_LINKED;
  @Inject
  protected yn mCashCardManager;
  private boolean mRetriedFrom401;
  @Inject
  protected td mSquareProvider;
  @chd
  private CashTransaction mTransactionContext;
  private boolean mUseDefaultGreen = false;
  
  public rx()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public rx(byte paramByte)
  {
    this();
    mUseDefaultGreen = true;
  }
  
  private void a(@chc final String paramString1, @chc final String paramString2, @chc final String paramString3, @chc final String paramString4, @chc final rm paramrm, boolean paramBoolean)
  {
    rv localrv = new rv(paramBoolean);
    mListener = new rl.a()
    {
      public final void a(@chc rl paramAnonymousrl)
      {
        paramrm.a(CardInputError.UNKNOWN);
      }
      
      public final void a(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousrl = new sx.a()
        {
          public final void a(@chd sy paramAnonymous2sy)
          {
            if (paramAnonymous2sy != null)
            {
              localObject = (st.b)paramAnonymous2sy;
              mCashCardManager.a(cardToken);
              if ((blockers == null) || (!blockers.a())) {
                break label155;
              }
            }
            label155:
            for (Object localObject = blockers.b();; localObject = null)
            {
              if ((rx.a(rx.this) != null) && (payment != null)) {
                rx.a(rx.this).a(td.a(payment.mState, payment.mCancellationReason));
              }
              mSquareProvider.a();
              val$callback.a();
              rx.a(rx.this, (List)localObject);
              return;
              val$callback.a(rx.a(null));
              return;
            }
          }
          
          public final void a(@chd sy paramAnonymous2sy, int paramAnonymous2Int)
          {
            if ((paramAnonymous2Int == 404) && (rx.a(rx.this) != null))
            {
              rx.b(rx.this);
              new st(val$pan, val$expiry, val$cvv, val$zip, this).execute();
              return;
            }
            if ((paramAnonymous2Int == 401) && (!rx.c(rx.this)))
            {
              rx.d(rx.this);
              rx.a(rx.this, val$pan, val$expiry, val$cvv, val$zip, val$callback);
              return;
            }
            ErrorType localErrorType = null;
            if (paramAnonymous2Int == 429) {
              localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
            }
            for (;;)
            {
              val$callback.a(rx.a(localErrorType));
              return;
              if (paramAnonymous2Int == 0) {
                localErrorType = ErrorType.NETWORK_FAILURE;
              } else if (paramAnonymous2sy != null) {
                localErrorType = type;
              }
            }
          }
        };
        if ((rx.a(rx.this) != null) && (!amIsInFlight))
        {
          new st(amTransactionId, paramString1, paramString2, paramString3, paramString4, paramAnonymousrl).execute();
          return;
        }
        new st(paramString1, paramString2, paramString3, paramString4, paramAnonymousrl).execute();
      }
      
      public final void b(@chc rl paramAnonymousrl)
      {
        paramrm.a(CardInputError.UNKNOWN);
      }
      
      public final void b(@chc rl paramAnonymousrl, @chd List<rl> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramrm.a(CardInputError.UNKNOWN);
        rx.a(rx.this, paramAnonymousList, paramAnonymousBoolean);
      }
    };
    localrv.a(null);
  }
  
  public final void a(@chc CashTransaction paramCashTransaction)
  {
    mTransactionContext = paramCashTransaction;
    if ((mCardStatus == CardStatus.NOT_LINKED) && (mCashCardManager.a() != null))
    {
      a(null, true);
      return;
    }
    paramCashTransaction = new CardLinkFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("use_default_green", mUseDefaultGreen);
    paramCashTransaction.setArguments(localBundle);
    a = this;
    bbo.a().a(new bev(paramCashTransaction));
  }
  
  public final void a(@chc String paramString1, @chc String paramString2, @chc String paramString3, @chc String paramString4, @chc rm paramrm)
  {
    a(paramString1, paramString2, paramString3, paramString4, paramrm, false);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_CARD_BLOCKER;
  }
  
  public final void e()
  {
    AnalyticsEvents.R();
    a();
  }
}

/* Location:
 * Qualified Name:     rx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */