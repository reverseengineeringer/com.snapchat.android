.class final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;
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

.field final synthetic b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;

    invoke-interface {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;->q()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Callback attempted illegally: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
