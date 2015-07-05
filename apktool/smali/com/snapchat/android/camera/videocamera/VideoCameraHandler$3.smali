.class final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

.field final synthetic b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field final synthetic c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
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
