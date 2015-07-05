import android.os.Bundle;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
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

public final class rh
  extends qv
  implements CardLinkFragment.a
{
  private static final String TAG = "SQCardFormBlocker";
  @SerializedName("card_status")
  @cgb
  CardStatus mCardStatus = CardStatus.NOT_LINKED;
  @Inject
  protected xr mCashCardManager;
  private boolean mRetriedFrom401;
  @Inject
  protected sn mSquareProvider;
  @cgc
  private CashTransaction mTransactionContext;
  private boolean mUseDefaultGreen = false;
  
  public rh()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public rh(byte paramByte)
  {
    this();
    mUseDefaultGreen = true;
  }
  
  private void a(@cgb final String paramString1, @cgb final String paramString2, @cgb final String paramString3, @cgb final String paramString4, @cgb final qw paramqw, boolean paramBoolean)
  {
    Timber.b("SQCardFormBlocker", "CASH-LOG: SQCardBlocker onValidateCardInputEvent", new Object[0]);
    rf localrf = new rf(paramBoolean);
    mListener = new qv.a()
    {
      public final void a(@cgb qv paramAnonymousqv)
      {
        Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token", new Object[0]);
        paramqw.a(CardInputError.UNKNOWN);
      }
      
      public final void a(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        paramAnonymousqv = new sh.a()
        {
          public final void a(@cgc si paramAnonymous2si)
          {
            Timber.b("SQCardFormBlocker", "CASH-LOG: SUCCESS resolve SQCardFormBlocker", new Object[0]);
            if (paramAnonymous2si != null)
            {
              localObject = (sd.b)paramAnonymous2si;
              mCashCardManager.a(cardToken);
              if ((blockers == null) || (!blockers.a())) {
                break label166;
              }
            }
            label166:
            for (Object localObject = blockers.b();; localObject = null)
            {
              if ((rh.a(rh.this) != null) && (payment != null)) {
                rh.a(rh.this).a(sn.a(payment.mState, payment.mCancellationReason));
              }
              mSquareProvider.a();
              val$callback.a();
              rh.a(rh.this, (List)localObject);
              return;
              val$callback.a(rh.a(null));
              return;
            }
          }
          
          public final void a(@cgc si paramAnonymous2si, int paramAnonymous2Int)
          {
            Timber.b("SQCardFormBlocker", "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]", new Object[] { Integer.valueOf(paramAnonymous2Int) });
            if ((paramAnonymous2Int == 404) && (rh.a(rh.this) != null))
            {
              rh.b(rh.this);
              new sd(val$pan, val$expiry, val$cvv, val$zip, this).f();
              return;
            }
            if ((paramAnonymous2Int == 401) && (!rh.c(rh.this)))
            {
              rh.d(rh.this);
              rh.a(rh.this, val$pan, val$expiry, val$cvv, val$zip, val$callback);
              return;
            }
            ErrorType localErrorType = null;
            if (paramAnonymous2Int == 429) {
              localErrorType = ErrorType.TOO_MANY_ATTEMPTS;
            }
            for (;;)
            {
              val$callback.a(rh.a(localErrorType));
              return;
              if (paramAnonymous2Int == 0) {
                localErrorType = ErrorType.NETWORK_FAILURE;
              } else if (paramAnonymous2si != null) {
                localErrorType = type;
              }
            }
          }
        };
        if ((rh.a(rh.this) != null) && (!amIsInFlight))
        {
          new sd(amTransactionId, paramString1, paramString2, paramString3, paramString4, paramAnonymousqv).f();
          return;
        }
        new sd(paramString1, paramString2, paramString3, paramString4, paramAnonymousqv).f();
      }
      
      public final void b(@cgb qv paramAnonymousqv)
      {
        Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token", new Object[0]);
        paramqw.a(CardInputError.UNKNOWN);
      }
      
      public final void b(@cgb qv paramAnonymousqv, @cgc List<qv> paramAnonymousList, boolean paramAnonymousBoolean)
      {
        Timber.c("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker failed to get access token", new Object[0]);
        paramqw.a(CardInputError.UNKNOWN);
        rh.a(rh.this, paramAnonymousList, paramAnonymousBoolean);
      }
    };
    localrf.a(null);
  }
  
  public final void a(@cgb CashTransaction paramCashTransaction)
  {
    Timber.b("SQCardFormBlocker", "CASH-LOG: ATTEMPT resolve SQCardFormBlocker", new Object[0]);
    mTransactionContext = paramCashTransaction;
    if ((mCardStatus == CardStatus.NOT_LINKED) && (mCashCardManager.a() != null))
    {
      Timber.b("SQCardFormBlocker", "CASH-LOG: Exists card token. Resolving card blocker without linking flow.", new Object[0]);
      a(null, true);
      return;
    }
    paramCashTransaction = new CardLinkFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("use_default_green", mUseDefaultGreen);
    paramCashTransaction.setArguments(localBundle);
    a = this;
    ban.a().a(new bdw(paramCashTransaction));
  }
  
  public final void a(@cgb String paramString1, @cgb String paramString2, @cgb String paramString3, @cgb String paramString4, @cgb qw paramqw)
  {
    a(paramString1, paramString2, paramString3, paramString4, paramqw, false);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_CARD_BLOCKER;
  }
  
  public final void e()
  {
    Timber.b("SQCardFormBlocker", "CASH-LOG: SQCardFormBlocker onCanceled", new Object[0]);
    AnalyticsEvents.R();
    a();
  }
}

/* Location:
 * Qualified Name:     rh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */