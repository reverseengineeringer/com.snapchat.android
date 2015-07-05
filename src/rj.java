import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class rj
  extends qv
{
  private static final String TAG = "SQConfirmBlocker";
  @Inject
  protected qg mCashErrorReporter;
  @SerializedName("requires_passcode")
  protected boolean mRequiresPasscode;
  @Inject
  protected sn mSquareProvider;
  
  public rj()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  protected static sa a(@cgb String paramString1, @cgc String paramString2, @cgb sh.a parama)
  {
    return new sa(paramString1, paramString2, parama);
  }
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    Timber.b("SQConfirmBlocker", "CASH-LOG: ATTEMPT resolve SQConfirmBlocker id[%s] recipient[%s] amount[%s]", new Object[] { mTransactionId, mRecipientUsername, paramCashTransaction.a() });
    if (mRequiresPasscode) {}
    for (final Object localObject = mSecurityCode; (mRequiresPasscode) && (TextUtils.isEmpty((CharSequence)localObject)); localObject = null)
    {
      localObject = new SecurityCodeFragment();
      b = new SecurityCodeFragment.a()
      {
        public final void a()
        {
          Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
          rj.f(rj.this);
        }
        
        public final void a(@cgb String paramAnonymousString)
        {
          paramCashTransactionmSecurityCode = paramAnonymousString;
          Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker ENTERED security code", new Object[0]);
          rj.a(paramCashTransactionmTransactionId, paramAnonymousString, new sh.a()
          {
            public final void a(@cgc si paramAnonymous2si)
            {
              Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", new Object[] { val$transaction.mTransactionId });
              val$fragment.l();
              Object localObject2 = null;
              CashTransaction.TransactionStatus localTransactionStatus = null;
              if (paramAnonymous2si != null)
              {
                Object localObject1 = localTransactionStatus;
                if (blockers != null)
                {
                  localObject1 = localTransactionStatus;
                  if (blockers.a()) {
                    localObject1 = blockers.b();
                  }
                }
                paramAnonymous2si = payment;
                localObject2 = localObject1;
                if (paramAnonymous2si != null)
                {
                  localTransactionStatus = sn.a(mState, mCancellationReason);
                  val$transaction.a(localTransactionStatus);
                  localObject2 = localObject1;
                  if (mState == CashPayment.State.CANCELED)
                  {
                    sn.a(mCancellationReason);
                    if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
                    {
                      rj.d(rj.this);
                      return;
                    }
                    rj.e(rj.this);
                    return;
                  }
                }
              }
              rj.c(rj.this, (List)localObject2);
            }
            
            public final void a(@cgc si paramAnonymous2si, int paramAnonymous2Int)
            {
              Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", new Object[] { val$transaction.mTransactionId, Integer.valueOf(paramAnonymous2Int) });
              List localList = sn.a(rj.this, paramAnonymous2Int);
              if (localList != null)
              {
                rj.d(rj.this, localList);
                return;
              }
              if (paramAnonymous2si != null) {}
              for (paramAnonymous2si = type;; paramAnonymous2si = null)
              {
                val$transaction.mSecurityCode = null;
                val$fragment.a(paramAnonymous2si, paramAnonymous2Int);
                return;
              }
            }
          }).f();
        }
        
        public final void b()
        {
          rj.e(rj.this, Arrays.asList(new qv[] { new rt() }));
        }
      };
      ban.a().a(new bdw((SnapchatFragment)localObject));
      return;
    }
    a(mTransactionId, (String)localObject, new sh.a()
    {
      public final void a(@cgc si paramAnonymoussi)
      {
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", new Object[] { paramCashTransactionmTransactionId });
        List localList;
        Object localObject;
        boolean bool1;
        if (paramAnonymoussi != null)
        {
          if ((blockers == null) || (!blockers.a())) {
            break label195;
          }
          localList = blockers.b();
          localObject = localList.iterator();
          while (((Iterator)localObject).hasNext()) {
            if (!((qv)((Iterator)localObject).next()).d()) {
              bool1 = false;
            }
          }
        }
        for (;;)
        {
          localObject = payment;
          boolean bool2 = bool1;
          paramAnonymoussi = localList;
          if (localObject != null)
          {
            CashTransaction.TransactionStatus localTransactionStatus = sn.a(mState, mCancellationReason);
            paramCashTransaction.a(localTransactionStatus);
            bool2 = bool1;
            paramAnonymoussi = localList;
            if (mState == CashPayment.State.CANCELED)
            {
              sn.a(mCancellationReason);
              if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
              {
                rj.a(rj.this);
                return;
              }
              rj.b(rj.this);
              return;
              paramAnonymoussi = null;
              bool2 = true;
            }
          }
          rj.a(rj.this, paramAnonymoussi, bool2);
          return;
          bool1 = true;
          continue;
          label195:
          localList = null;
          bool1 = true;
        }
      }
      
      public final void a(@cgc si paramAnonymoussi, int paramAnonymousInt)
      {
        ErrorType localErrorType = null;
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", new Object[] { paramCashTransactionmTransactionId, Integer.valueOf(paramAnonymousInt) });
        List localList = sn.a(rj.this, paramAnonymousInt);
        if (localList != null)
        {
          rj.a(rj.this, localList);
          return;
        }
        paramCashTransactionmSecurityCode = null;
        if (paramAnonymoussi != null) {
          localErrorType = type;
        }
        if (ErrorType.isNonRecoverableError(localErrorType))
        {
          rj.b(rj.this, Arrays.asList(new qv[] { new rt() }));
          return;
        }
        AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", paramAnonymousInt);
        qg.a(2131493290, new Object[0]);
        rj.c(rj.this);
      }
    }).f();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_CONFIRM_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */