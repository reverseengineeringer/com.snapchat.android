import java.util.UUID;

public final class beh
{
  public boolean mCalledOnLoginOrOnResume;
  public ajv.a mSyncAllResult;
  public UUID mUUID;
  public boolean mWasSuccessful;
  
  public beh(UUID paramUUID)
  {
    this(paramUUID, (byte)0);
  }
  
  private beh(UUID paramUUID, byte paramByte)
  {
    this(paramUUID, false, false, new ajv.a(false, false, false, false));
  }
  
  public beh(UUID paramUUID, boolean paramBoolean1, boolean paramBoolean2, ajv.a parama)
  {
    mUUID = paramUUID;
    mWasSuccessful = paramBoolean1;
    mCalledOnLoginOrOnResume = paramBoolean2;
    mSyncAllResult = parama;
  }
}

/* Location:
 * Qualified Name:     beh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */