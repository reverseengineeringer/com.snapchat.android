.class final Laif$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laif;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
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
.field final synthetic a:Laif;


# direct methods
.method constructor <init>(Laif;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Laif$4;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to terminate connection to AddLive scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Laif$4;->a:Laif;

    sget-object v1, Laif$8;->a:[I

    iget-object v2, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    iget-object v1, v0, Laif;->h:Lbjc;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laif;->h:Lbjc;

    invoke-virtual {v0, v1}, Laif;->a(Lbjc;)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
