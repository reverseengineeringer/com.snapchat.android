import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatConversation;
import com.squareup.otto.Bus;
import java.util.Map;
import javax.inject.Provider;

public final class yw
  implements yy
{
  private final Provider<ajv> a;
  private final Bus b;
  private final yw.a c;
  private final aol d;
  private final np e;
  
  public yw()
  {
    this(ban.a(), ajv.UNSAFE_USER_PROVIDER, new yw.a(), aol.a(), np.a());
  }
  
  private yw(Bus paramBus, Provider<ajv> paramProvider, yw.a parama, aol paramaol, np paramnp)
  {
    b = paramBus;
    a = paramProvider;
    c = parama;
    d = paramaol;
    e = paramnp;
  }
  
  private void c(aje paramaje)
  {
    ajv localajv = (ajv)a.get();
    Object localObject;
    if (localajv != null)
    {
      if (!(paramaje instanceof ajr)) {
        break label127;
      }
      localObject = (ajr)paramaje;
      if (!mWas404ResponseReceived) {
        break label109;
      }
      Timber.b("SnapConsumptionRecorder", "SNAP-VIEW: MARKING story snap %s as viewed due to 404", new Object[] { localObject });
    }
    for (;;)
    {
      ava.a(localajv, (ajr)localObject, true);
      b.a(new bdy());
      if (!(paramaje instanceof ajr)) {
        break;
      }
      if (!mStoryViewRecordsSinceLastServerChange.isEmpty()) {
        new pg().executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      }
      return;
      label109:
      Timber.b("SnapConsumptionRecorder", "SNAP-VIEW: MARKING story snap %s as viewed", new Object[] { localObject });
    }
    label127:
    if ((!paramaje.t()) && (localajv.t()))
    {
      Timber.b("SnapConsumptionRecorder", "SNAP-VIEW: MARKING snap %s as viewed and replay available", new Object[] { paramaje });
      paramaje.A_();
    }
    for (;;)
    {
      np.d(paramaje);
      localObject = ym.b(mSender);
      if (localObject != null) {
        yn.a().a((ChatConversation)localObject, true);
      }
      b.a(new bbl(mSender));
      break;
      Timber.b("SnapConsumptionRecorder", "SNAP-VIEW: MARKING snap %s as viewed", new Object[] { paramaje });
      paramaje.o();
    }
    d.d();
  }
  
  public final void a(long paramLong) {}
  
  public final void a(aje paramaje)
  {
    Timber.c("SnapConsumptionRecorder", "SNAP-VIEW: onTimerFinish %s", new Object[] { paramaje.d() });
    c(paramaje);
  }
  
  public final void b(aje paramaje)
  {
    Timber.c("SnapConsumptionRecorder", "SNAP-VIEW: onTimerSkipped %s", new Object[] { paramaje.d() });
    c(paramaje);
  }
  
  public static final class a {}
}

/* Location:
 * Qualified Name:     yw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */