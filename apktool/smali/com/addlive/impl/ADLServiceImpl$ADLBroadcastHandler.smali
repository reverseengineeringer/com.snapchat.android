.class Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADLBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method private constructor <init>(Lcom/addlive/impl/ADLServiceImpl;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/impl/ADLServiceImpl$1;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;-><init>(Lcom/addlive/impl/ADLServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    # getter for: Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/impl/ADLServiceImpl;->access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 572
    :cond_0
    return-void
.end method
