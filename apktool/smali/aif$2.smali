.class final Laif$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laif;->b(Lbjc;)V
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
        "Lcom/addlive/service/MediaConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laif;


# direct methods
.method constructor <init>(Laif;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Laif$2;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Laif$2;->a:Laif;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 489
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Laif$2;->a:Laif;

    invoke-virtual {v0}, Laif;->h()V

    return-void
.end method
