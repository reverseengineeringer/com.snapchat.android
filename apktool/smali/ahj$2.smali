.class final Lahj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahj;->b(Lbic;)V
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
.field final synthetic a:Lahj;


# direct methods
.method constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lahj$2;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 477
    iget-object v0, p0, Lahj$2;->a:Lahj;

    const-string v1, "livechat"

    const-string v2, "Got an AddLive connection error: %s (ERR: %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lahh$b;->a:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    .line 478
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lahj$2;->a:Lahj;

    invoke-virtual {v0}, Lahj;->g()V

    return-void
.end method
