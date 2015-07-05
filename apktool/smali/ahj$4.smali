.class final Lahj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahj;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/addlive/service/Responder",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lahj;


# direct methods
.method constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lahj$4;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 564
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to terminate connection to AddLive scope: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v0, p0, Lahj$4;->a:Lahj;

    sget-object v1, Lahj$8;->a:[I

    iget-object v2, v0, Lahj;->i:Lahh$b;

    invoke-virtual {v2}, Lahh$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "livechat"

    const-string v1, "Got a disconnect result while the SDK is already disconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lahh$b;->a:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    iget-object v1, v0, Lahj;->h:Lbic;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lahj;->h:Lbic;

    invoke-virtual {v0, v1}, Lahj;->a(Lbic;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "livechat"

    const-string v1, "Got a disconnect result while the SDK is in the middle of setting up other connection"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lahh$b;->a:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
