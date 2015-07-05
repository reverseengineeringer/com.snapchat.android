.class final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Callback attempted illegally: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
