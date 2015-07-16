.class public final Lbgc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderHelper"


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 38
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 42
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 44
    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error compiling shader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    return v0
.end method
