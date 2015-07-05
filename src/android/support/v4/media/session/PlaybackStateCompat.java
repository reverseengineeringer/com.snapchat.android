package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;

public final class PlaybackStateCompat
  implements Parcelable
{
  public static final long ACTION_FAST_FORWARD = 64L;
  public static final long ACTION_PAUSE = 2L;
  public static final long ACTION_PLAY = 4L;
  public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024L;
  public static final long ACTION_PLAY_FROM_SEARCH = 2048L;
  public static final long ACTION_PLAY_PAUSE = 512L;
  public static final long ACTION_REWIND = 8L;
  public static final long ACTION_SEEK_TO = 256L;
  public static final long ACTION_SET_RATING = 128L;
  public static final long ACTION_SKIP_TO_NEXT = 32L;
  public static final long ACTION_SKIP_TO_PREVIOUS = 16L;
  public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096L;
  public static final long ACTION_STOP = 1L;
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator()
  {
    private static PlaybackStateCompat createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PlaybackStateCompat(paramAnonymousParcel, (byte)0);
    }
    
    private static PlaybackStateCompat[] newArray(int paramAnonymousInt)
    {
      return new PlaybackStateCompat[paramAnonymousInt];
    }
  };
  public static final long PLAYBACK_POSITION_UNKNOWN = -1L;
  public static final int STATE_BUFFERING = 6;
  public static final int STATE_CONNECTING = 8;
  public static final int STATE_ERROR = 7;
  public static final int STATE_FAST_FORWARDING = 4;
  public static final int STATE_NONE = 0;
  public static final int STATE_PAUSED = 2;
  public static final int STATE_PLAYING = 3;
  public static final int STATE_REWINDING = 5;
  public static final int STATE_SKIPPING_TO_NEXT = 10;
  public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
  public static final int STATE_STOPPED = 1;
  final long mActions;
  final long mBufferedPosition;
  final CharSequence mErrorMessage;
  final long mPosition;
  final float mSpeed;
  final int mState;
  Object mStateObj;
  final long mUpdateTime;
  
  private PlaybackStateCompat(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4)
  {
    mState = paramInt;
    mPosition = paramLong1;
    mBufferedPosition = paramLong2;
    mSpeed = paramFloat;
    mActions = paramLong3;
    mErrorMessage = paramCharSequence;
    mUpdateTime = paramLong4;
  }
  
  private PlaybackStateCompat(Parcel paramParcel)
  {
    mState = paramParcel.readInt();
    mPosition = paramParcel.readLong();
    mSpeed = paramParcel.readFloat();
    mUpdateTime = paramParcel.readLong();
    mBufferedPosition = paramParcel.readLong();
    mActions = paramParcel.readLong();
    mErrorMessage = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }
  
  public static PlaybackStateCompat fromPlaybackState(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    PlaybackStateCompat localPlaybackStateCompat = new PlaybackStateCompat(PlaybackStateCompatApi21.getState(paramObject), PlaybackStateCompatApi21.getPosition(paramObject), PlaybackStateCompatApi21.getBufferedPosition(paramObject), PlaybackStateCompatApi21.getPlaybackSpeed(paramObject), PlaybackStateCompatApi21.getActions(paramObject), PlaybackStateCompatApi21.getErrorMessage(paramObject), PlaybackStateCompatApi21.getLastPositionUpdateTime(paramObject));
    mStateObj = paramObject;
    return localPlaybackStateCompat;
  }
  
  private long getActions()
  {
    return mActions;
  }
  
  private long getBufferedPosition()
  {
    return mBufferedPosition;
  }
  
  private CharSequence getErrorMessage()
  {
    return mErrorMessage;
  }
  
  private long getLastPositionUpdateTime()
  {
    return mUpdateTime;
  }
  
  private float getPlaybackSpeed()
  {
    return mSpeed;
  }
  
  private Object getPlaybackState()
  {
    if ((mStateObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mStateObj;
    }
    mStateObj = PlaybackStateCompatApi21.newInstance(mState, mPosition, mBufferedPosition, mSpeed, mActions, mErrorMessage, mUpdateTime);
    return mStateObj;
  }
  
  private long getPosition()
  {
    return mPosition;
  }
  
  private int getState()
  {
    return mState;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PlaybackState {");
    localStringBuilder.append("state=").append(mState);
    localStringBuilder.append(", position=").append(mPosition);
    localStringBuilder.append(", buffered position=").append(mBufferedPosition);
    localStringBuilder.append(", speed=").append(mSpeed);
    localStringBuilder.append(", updated=").append(mUpdateTime);
    localStringBuilder.append(", actions=").append(mActions);
    localStringBuilder.append(", error=").append(mErrorMessage);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mState);
    paramParcel.writeLong(mPosition);
    paramParcel.writeFloat(mSpeed);
    paramParcel.writeLong(mUpdateTime);
    paramParcel.writeLong(mBufferedPosition);
    paramParcel.writeLong(mActions);
    TextUtils.writeToParcel(mErrorMessage, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private long mActions;
    private long mBufferedPosition;
    private CharSequence mErrorMessage;
    private long mPosition;
    private float mRate;
    private int mState;
    private long mUpdateTime;
    
    public Builder() {}
    
    private Builder(PlaybackStateCompat paramPlaybackStateCompat)
    {
      mState = mState;
      mPosition = mPosition;
      mRate = mSpeed;
      mUpdateTime = mUpdateTime;
      mBufferedPosition = mBufferedPosition;
      mActions = mActions;
      mErrorMessage = mErrorMessage;
    }
    
    private PlaybackStateCompat build()
    {
      return new PlaybackStateCompat(mState, mPosition, mBufferedPosition, mRate, mActions, mErrorMessage, mUpdateTime, (byte)0);
    }
    
    private void setActions(long paramLong)
    {
      mActions = paramLong;
    }
    
    private void setBufferedPosition(long paramLong)
    {
      mBufferedPosition = paramLong;
    }
    
    private void setErrorMessage(CharSequence paramCharSequence)
    {
      mErrorMessage = paramCharSequence;
    }
    
    private void setState(int paramInt, long paramLong, float paramFloat)
    {
      mState = paramInt;
      mPosition = paramLong;
      mRate = paramFloat;
      mUpdateTime = SystemClock.elapsedRealtime();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */