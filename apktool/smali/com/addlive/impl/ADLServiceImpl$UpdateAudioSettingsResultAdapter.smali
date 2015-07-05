.class Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateAudioSettingsResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 599
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 600
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    # getter for: Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/impl/ADLServiceImpl;->access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 605
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;->responder:Lcom/addlive/service/Responder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 608
    :cond_0
    return-void
.end method
