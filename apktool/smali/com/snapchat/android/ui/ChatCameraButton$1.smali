.class final Lcom/snapchat/android/ui/ChatCameraButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ChatCameraButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ChatCameraButton;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ChatCameraButton;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-static {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Lcom/snapchat/android/ui/ChatCameraButton;)Z

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-static {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->b(Lcom/snapchat/android/ui/ChatCameraButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-static {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->c(Lcom/snapchat/android/ui/ChatCameraButton;)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Lcom/snapchat/android/ui/ChatCameraButton;J)J

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-static {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->d(Lcom/snapchat/android/ui/ChatCameraButton;)Z

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$1;->a:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_0
.end method
