.class final Laif$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laif;
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
    .line 548
    iput-object p1, p0, Laif$3;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 558
    iget-object v0, p0, Laif$3;->a:Laif;

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v1, v0, Laif;->j:I

    .line 559
    return-void
.end method

.method public final synthetic resultHandler(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Laif$3;->a:Laif;

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->c:I

    iput v1, v0, Laif;->j:I

    iget-object v0, p0, Laif$3;->a:Laif;

    iget-object v0, v0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    return-void
.end method
