.class final Lcom/snapchat/android/ui/ChatCameraButton$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ChatCameraButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/ui/ChatCameraButton;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton$2;->b:Lcom/snapchat/android/ui/ChatCameraButton;

    iput-object p2, p0, Lcom/snapchat/android/ui/ChatCameraButton$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton$2;->b:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton$2;->a:Landroid/content/Context;

    const v2, 0x7f060007

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 164
    return-void
.end method
