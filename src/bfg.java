import java.util.UUID;

public final class bfg
{
  public boolean mCalledOnLoginOrOnResume;
  public akp.a mSyncAllResult;
  public UUID mUUID;
  public boolean mWasSuccessful;
  
  public bfg(UUID paramUUID)
  {
    this(paramUUID, (byte)0);
  }
  
  private bfg(UUID paramUUID, byte paramByte)
  {
    this(paramUUID, false, false, new akp.a(false, false, false, false));
  }
  
  public bfg(UUID paramUUID, boolean paramBoolean1, boolean paramBoolean2, akp.a parama)
  {
    mUUID = paramUUID;
    mWasSuccessful = paramBoolean1;
    mCalledOnLoginOrOnResume = paramBoolean2;
    mSyncAllResult = parama;
  }
}

/* Location:
 * Qualified Name:     bfg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */