.class final Lahj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahj;
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
    .line 537
    iput-object p1, p0, Lahj$3;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 546
    const-string v0, "livechat"

    const-string v1, "Failed to publish video due to: %s (ERR: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lahj$3;->a:Lahj;

    sget v1, Lahh$d;->a:I

    iput v1, v0, Lahj;->j:I

    .line 548
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lahj$3;->a:Lahj;

    sget v1, Lahh$d;->c:I

    iput v1, v0, Lahj;->j:I

    iget-object v0, p0, Lahj$3;->a:Lahj;

    iget-object v0, v0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    return-void
.end method
