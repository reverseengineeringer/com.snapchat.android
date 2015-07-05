.class final Lmj$3;
.super Ltv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmj;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lmj$3;->this$0:Lmj;

    iput-object p2, p0, Lmj$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ltv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 6
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 595
    invoke-super {p0, p1}, Ltv;->a(Luc;)V

    .line 596
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "AdManager"

    const-string v1, "onResult recordImpressionByUrl url: %s, result: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmj$3;->val$url:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    const-string v0, "AdManager"

    const-string v1, "onResult recordImpressionByUrl url: %s, result: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lmj$3;->val$url:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lmj$3;->val$url:Ljava/lang/String;

    return-object v0
.end method
