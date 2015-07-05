package android.support.v4.speech.tts;

import android.content.Context;
import android.os.Build.VERSION;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.OnInitListener;

final class TextToSpeechICS
{
  private static final String TAG = "android.support.v4.speech.tts";
  
  private static TextToSpeech construct(Context paramContext, TextToSpeech.OnInitListener paramOnInitListener, String paramString)
  {
    if (Build.VERSION.SDK_INT < 14)
    {
      if (paramString == null) {
        return new TextToSpeech(paramContext, paramOnInitListener);
      }
      return new TextToSpeech(paramContext, paramOnInitListener);
    }
    return new TextToSpeech(paramContext, paramOnInitListener, paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.speech.tts.TextToSpeechICS
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */