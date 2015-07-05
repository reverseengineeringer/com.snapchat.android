package org.webrtc.voiceengine;

import android.content.Context;
import android.media.AudioRecord;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class WebRtcAudioRecord
{
  private AudioRecord _audioRecord = null;
  private int _bufferedRecSamples = 0;
  private Context _context;
  private boolean _doRecInit = true;
  private boolean _isRecording = false;
  private ByteBuffer _recBuffer;
  private final ReentrantLock _recLock = new ReentrantLock();
  private byte[] _tempBufRec;
  
  WebRtcAudioRecord()
  {
    try
    {
      _recBuffer = ByteBuffer.allocateDirect(960);
      _tempBufRec = new byte['π'];
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    paramInt1 = AudioRecord.getMinBufferSize(paramInt2, 16, 2);
    _bufferedRecSamples = (paramInt2 / 200);
    if (_audioRecord != null)
    {
      _audioRecord.release();
      _audioRecord = null;
    }
    try
    {
      _audioRecord = new AudioRecord(7, paramInt2, 16, 2, paramInt1 * 2);
      if (_audioRecord.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      return -1;
    }
    return _bufferedRecSamples;
  }
  
  /* Error */
  private int RecordAudio(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 72	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   11: astore 4
    //   13: aload 4
    //   15: ifnonnull +13 -> 28
    //   18: aload_0
    //   19: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   22: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   25: bipush -2
    //   27: ireturn
    //   28: aload_0
    //   29: getfield 34	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   32: istore_3
    //   33: iload_3
    //   34: iconst_1
    //   35: if_icmpne +13 -> 48
    //   38: bipush -19
    //   40: invokestatic 81	android/os/Process:setThreadPriority	(I)V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 34	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   48: aload_0
    //   49: getfield 46	org/webrtc/voiceengine/WebRtcAudioRecord:_recBuffer	Ljava/nio/ByteBuffer;
    //   52: invokevirtual 85	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   55: pop
    //   56: aload_0
    //   57: getfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   60: aload_0
    //   61: getfield 48	org/webrtc/voiceengine/WebRtcAudioRecord:_tempBufRec	[B
    //   64: iconst_0
    //   65: iload_1
    //   66: invokevirtual 89	android/media/AudioRecord:read	([BII)I
    //   69: istore_2
    //   70: aload_0
    //   71: getfield 46	org/webrtc/voiceengine/WebRtcAudioRecord:_recBuffer	Ljava/nio/ByteBuffer;
    //   74: aload_0
    //   75: getfield 48	org/webrtc/voiceengine/WebRtcAudioRecord:_tempBufRec	[B
    //   78: invokevirtual 93	java/nio/ByteBuffer:put	([B)Ljava/nio/ByteBuffer;
    //   81: pop
    //   82: iload_2
    //   83: iload_1
    //   84: if_icmpeq +12 -> 96
    //   87: aload_0
    //   88: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   91: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   94: iconst_m1
    //   95: ireturn
    //   96: aload_0
    //   97: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   100: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   103: aload_0
    //   104: getfield 38	org/webrtc/voiceengine/WebRtcAudioRecord:_bufferedRecSamples	I
    //   107: ireturn
    //   108: astore 4
    //   110: aload_0
    //   111: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   114: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   117: goto -14 -> 103
    //   120: astore 4
    //   122: aload_0
    //   123: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   126: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   129: aload 4
    //   131: athrow
    //   132: astore 4
    //   134: goto -91 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	WebRtcAudioRecord
    //   0	137	1	paramInt	int
    //   69	16	2	i	int
    //   32	4	3	bool	boolean
    //   11	3	4	localAudioRecord	AudioRecord
    //   108	1	4	localException1	Exception
    //   120	10	4	localObject	Object
    //   132	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   7	13	108	java/lang/Exception
    //   28	33	108	java/lang/Exception
    //   43	48	108	java/lang/Exception
    //   48	82	108	java/lang/Exception
    //   7	13	120	finally
    //   28	33	120	finally
    //   38	43	120	finally
    //   43	48	120	finally
    //   48	82	120	finally
    //   38	43	132	java/lang/Exception
  }
  
  private int StartRecording()
  {
    try
    {
      _audioRecord.startRecording();
      _isRecording = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopRecording()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 72	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   11: invokevirtual 106	android/media/AudioRecord:getRecordingState	()I
    //   14: istore_1
    //   15: iload_1
    //   16: iconst_3
    //   17: if_icmpne +10 -> 27
    //   20: aload_0
    //   21: getfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   24: invokevirtual 109	android/media/AudioRecord:stop	()V
    //   27: aload_0
    //   28: getfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   31: invokevirtual 60	android/media/AudioRecord:release	()V
    //   34: aload_0
    //   35: aconst_null
    //   36: putfield 27	org/webrtc/voiceengine/WebRtcAudioRecord:_audioRecord	Landroid/media/AudioRecord;
    //   39: aload_0
    //   40: iconst_1
    //   41: putfield 34	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   44: aload_0
    //   45: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   48: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   51: aload_0
    //   52: iconst_0
    //   53: putfield 36	org/webrtc/voiceengine/WebRtcAudioRecord:_isRecording	Z
    //   56: iconst_0
    //   57: ireturn
    //   58: astore_2
    //   59: aload_2
    //   60: invokevirtual 102	java/lang/IllegalStateException:printStackTrace	()V
    //   63: aload_0
    //   64: iconst_1
    //   65: putfield 34	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   68: aload_0
    //   69: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   72: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   75: iconst_m1
    //   76: ireturn
    //   77: astore_2
    //   78: aload_0
    //   79: iconst_1
    //   80: putfield 34	org/webrtc/voiceengine/WebRtcAudioRecord:_doRecInit	Z
    //   83: aload_0
    //   84: getfield 32	org/webrtc/voiceengine/WebRtcAudioRecord:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   87: invokevirtual 75	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   90: aload_2
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	WebRtcAudioRecord
    //   14	4	1	i	int
    //   58	2	2	localIllegalStateException	IllegalStateException
    //   77	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	58	java/lang/IllegalStateException
    //   7	15	77	finally
    //   20	27	77	finally
    //   27	39	77	finally
    //   59	63	77	finally
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.WebRtcAudioRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */