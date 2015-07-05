.class public abstract Lcom/snapchat/android/util/gl/GlTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/gl/GlTextureView$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GLTextureView"


# instance fields
.field public mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/snapchat/android/util/gl/GlTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/gl/GlTextureView;->setOpaque(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/snapchat/android/util/gl/GlTextureView$a;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/util/gl/GlTextureView$a;-><init>(Lcom/snapchat/android/util/gl/GlTextureView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView$a;->start()V

    .line 50
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    iput-boolean v1, v0, Lcom/snapchat/android/util/gl/GlTextureView$a;->mFinished:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->mRenderThread:Lcom/snapchat/android/util/gl/GlTextureView$a;

    .line 59
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
