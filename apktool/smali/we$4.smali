.class final Lwe$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->a(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/SurfaceTexture;

.field final synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lwe$4;->b:Lwe;

    iput-object p2, p0, Lwe$4;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lwe$4;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lwe$4;->b:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lwe$4;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    const-string v0, "SnapchatCameraManagerImpl"

    const-string v1, "Could not set preview texture"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
