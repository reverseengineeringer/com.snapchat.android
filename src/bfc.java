import android.opengl.GLES20;

public final class bfc
{
  private static final String TAG = "ShaderHelper";
  
  public static int a(int paramInt, String paramString)
  {
    paramInt = GLES20.glCreateShader(paramInt);
    if (paramInt != 0)
    {
      GLES20.glShaderSource(paramInt, paramString);
      GLES20.glCompileShader(paramInt);
      paramString = new int[1];
      GLES20.glGetShaderiv(paramInt, 35713, paramString, 0);
      if (paramString[0] == 0) {
        throw new RuntimeException("Error compiling shader: " + GLES20.glGetShaderInfoLog(paramInt));
      }
    }
    if (paramInt == 0) {
      throw new RuntimeException("Error creating shader.");
    }
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     bfc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */