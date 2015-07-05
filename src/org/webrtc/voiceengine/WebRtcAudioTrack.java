package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Build.VERSION;
import com.addlive.impl.RuntimeConfig;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioTrack
{
  private AudioManager _audioManager;
  private AudioTrack _audioTrack = null;
  private int _bufferedPlaySamples = 0;
  private Context _context;
  private boolean _doPlayInit = true;
  private boolean _doRecInit = true;
  private boolean _isPlaying = false;
  private boolean _isRecording = false;
  private ByteBuffer _playBuffer;
  private final ReentrantLock _playLock = new ReentrantLock();
  private int _playPosition = 0;
  private byte[] _tempBufPlay;
  
  WebRtcAudioTrack()
  {
    try
    {
      _playBuffer = ByteBuffer.allocateDirect(960);
      _tempBufPlay = new byte['π'];
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private int GetPlayoutVolume()
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null) {
      i = _audioManager.getStreamVolume(RuntimeConfig.AUDIO_STREAM_TYPE);
    }
    return i;
  }
  
  private int InitPlayback(int paramInt)
  {
    int j = AudioTrack.getMinBufferSize(paramInt, 4, 2);
    int i = j;
    if (j < 6000) {
      i = j * 2;
    }
    _bufferedPlaySamples = 0;
    if (_audioTrack != null)
    {
      _audioTrack.release();
      _audioTrack = null;
    }
    try
    {
      _audioTrack = new AudioTrack(RuntimeConfig.AUDIO_STREAM_TYPE, paramInt, 4, 2, i, 1);
      if (_audioTrack.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      return -1;
    }
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null) {
      return 0;
    }
    return _audioManager.getStreamMaxVolume(RuntimeConfig.AUDIO_STREAM_TYPE);
  }
  
  /* Error */
  private int PlayAudio(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 108	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   11: astore 5
    //   13: aload 5
    //   15: ifnonnull +13 -> 28
    //   18: aload_0
    //   19: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   22: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: bipush -2
    //   27: ireturn
    //   28: aload_0
    //   29: getfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   32: istore 4
    //   34: iload 4
    //   36: iconst_1
    //   37: if_icmpne +13 -> 50
    //   40: bipush -19
    //   42: invokestatic 117	android/os/Process:setThreadPriority	(I)V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   50: aload_0
    //   51: getfield 57	org/webrtc/voiceengine/WebRtcAudioTrack:_playBuffer	Ljava/nio/ByteBuffer;
    //   54: aload_0
    //   55: getfield 59	org/webrtc/voiceengine/WebRtcAudioTrack:_tempBufPlay	[B
    //   58: invokevirtual 121	java/nio/ByteBuffer:get	([B)Ljava/nio/ByteBuffer;
    //   61: pop
    //   62: aload_0
    //   63: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   66: aload_0
    //   67: getfield 59	org/webrtc/voiceengine/WebRtcAudioTrack:_tempBufPlay	[B
    //   70: iconst_0
    //   71: iload_1
    //   72: invokevirtual 125	android/media/AudioTrack:write	([BII)I
    //   75: istore_2
    //   76: aload_0
    //   77: getfield 57	org/webrtc/voiceengine/WebRtcAudioTrack:_playBuffer	Ljava/nio/ByteBuffer;
    //   80: invokevirtual 129	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   83: pop
    //   84: aload_0
    //   85: aload_0
    //   86: getfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_bufferedPlaySamples	I
    //   89: iload_2
    //   90: iconst_1
    //   91: ishr
    //   92: iadd
    //   93: putfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_bufferedPlaySamples	I
    //   96: aload_0
    //   97: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   100: invokevirtual 132	android/media/AudioTrack:getPlaybackHeadPosition	()I
    //   103: istore_3
    //   104: iload_3
    //   105: aload_0
    //   106: getfield 49	org/webrtc/voiceengine/WebRtcAudioTrack:_playPosition	I
    //   109: if_icmpge +8 -> 117
    //   112: aload_0
    //   113: iconst_0
    //   114: putfield 49	org/webrtc/voiceengine/WebRtcAudioTrack:_playPosition	I
    //   117: aload_0
    //   118: aload_0
    //   119: getfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_bufferedPlaySamples	I
    //   122: iload_3
    //   123: aload_0
    //   124: getfield 49	org/webrtc/voiceengine/WebRtcAudioTrack:_playPosition	I
    //   127: isub
    //   128: isub
    //   129: putfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_bufferedPlaySamples	I
    //   132: aload_0
    //   133: iload_3
    //   134: putfield 49	org/webrtc/voiceengine/WebRtcAudioTrack:_playPosition	I
    //   137: iload_2
    //   138: iload_1
    //   139: if_icmpeq +12 -> 151
    //   142: aload_0
    //   143: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   146: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   149: iconst_m1
    //   150: ireturn
    //   151: aload_0
    //   152: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   155: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   158: aload_0
    //   159: getfield 47	org/webrtc/voiceengine/WebRtcAudioTrack:_bufferedPlaySamples	I
    //   162: ireturn
    //   163: astore 5
    //   165: aload_0
    //   166: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   169: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   172: aload 5
    //   174: athrow
    //   175: astore 5
    //   177: goto -132 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	180	0	this	WebRtcAudioTrack
    //   0	180	1	paramInt	int
    //   75	65	2	i	int
    //   103	31	3	j	int
    //   32	6	4	bool	boolean
    //   11	3	5	localAudioTrack	AudioTrack
    //   163	10	5	localObject	Object
    //   175	1	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   7	13	163	finally
    //   28	34	163	finally
    //   40	45	163	finally
    //   45	50	163	finally
    //   50	117	163	finally
    //   117	137	163	finally
    //   40	45	175	java/lang/Exception
  }
  
  private int SetPlayoutSpeaker(boolean paramBoolean)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null) {
      return -1;
    }
    int i = Build.VERSION.SDK_INT;
    if ((3 == i) || (4 == i)) {
      if (paramBoolean) {
        _audioManager.setMode(0);
      }
    }
    for (;;)
    {
      return 0;
      _audioManager.setMode(2);
      continue;
      if (((Build.BRAND.equals("Samsung")) || (Build.BRAND.equals("samsung"))) && ((5 == i) || (6 == i) || (7 == i)))
      {
        if (paramBoolean) {
          _audioManager.setMode(2);
        }
      }
      else
      {
        _audioManager.setSpeakerphoneOn(paramBoolean);
        continue;
      }
      _audioManager.setSpeakerphoneOn(paramBoolean);
      _audioManager.setMode(0);
    }
  }
  
  private int SetPlayoutVolume(int paramInt)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null)
    {
      _audioManager.setStreamVolume(RuntimeConfig.AUDIO_STREAM_TYPE, paramInt, 0);
      i = 0;
    }
    return i;
  }
  
  private int StartPlayback()
  {
    try
    {
      _audioTrack.play();
      _isPlaying = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopPlayback()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 108	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   11: invokevirtual 180	android/media/AudioTrack:getPlayState	()I
    //   14: istore_1
    //   15: iload_1
    //   16: iconst_3
    //   17: if_icmpne +17 -> 34
    //   20: aload_0
    //   21: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   24: invokevirtual 183	android/media/AudioTrack:stop	()V
    //   27: aload_0
    //   28: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   31: invokevirtual 186	android/media/AudioTrack:flush	()V
    //   34: aload_0
    //   35: getfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   38: invokevirtual 95	android/media/AudioTrack:release	()V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 32	org/webrtc/voiceengine/WebRtcAudioTrack:_audioTrack	Landroid/media/AudioTrack;
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   51: aload_0
    //   52: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_0
    //   59: iconst_0
    //   60: putfield 45	org/webrtc/voiceengine/WebRtcAudioTrack:_isPlaying	Z
    //   63: iconst_0
    //   64: ireturn
    //   65: astore_2
    //   66: aload_2
    //   67: invokevirtual 176	java/lang/IllegalStateException:printStackTrace	()V
    //   70: aload_0
    //   71: iconst_1
    //   72: putfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   75: aload_0
    //   76: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   79: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   82: iconst_m1
    //   83: ireturn
    //   84: astore_2
    //   85: aload_0
    //   86: iconst_1
    //   87: putfield 39	org/webrtc/voiceengine/WebRtcAudioTrack:_doPlayInit	Z
    //   90: aload_0
    //   91: getfield 37	org/webrtc/voiceengine/WebRtcAudioTrack:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   94: invokevirtual 111	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   97: aload_2
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	WebRtcAudioTrack
    //   14	4	1	i	int
    //   65	2	2	localIllegalStateException	IllegalStateException
    //   84	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	65	java/lang/IllegalStateException
    //   7	15	84	finally
    //   20	27	84	finally
    //   27	34	84	finally
    //   34	46	84	finally
    //   66	70	84	finally
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioTrack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */