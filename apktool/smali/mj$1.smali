.class final Lmj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmj;->a(Lml;Lmn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmj;

.field final synthetic val$adPlacement:Lml;

.field final synthetic val$adTransformListener:Lmn;


# direct methods
.method constructor <init>(Lmj;Lml;Lmn;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmj$1;->this$0:Lmj;

    iput-object p2, p0, Lmj$1;->val$adPlacement:Lml;

    iput-object p3, p0, Lmj$1;->val$adTransformListener:Lmn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lmj$1;->this$0:Lmj;

    iget-object v1, p0, Lmj$1;->val$adPlacement:Lml;

    iget-object v2, p0, Lmj$1;->val$adTransformListener:Lmn;

    invoke-virtual {v0, v1, v2}, Lmj;->b(Lml;Lmn;)Lmj$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lmj$1;->val$adTransformListener:Lmn;

    if-eqz v1, :cond_1

    .line 115
    instance-of v1, v0, Lcom/snapchat/android/ads/AdRequestError;

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Lmo$a;

    invoke-direct {v1}, Lmo$a;-><init>()V

    check-cast v0, Lcom/snapchat/android/ads/AdRequestError;

    iput-object v0, v1, Lmo$a;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    invoke-virtual {v1}, Lmo$a;->a()Lmo;

    move-result-object v0

    .line 124
    :goto_1
    iget-object v1, p0, Lmj$1;->val$adTransformListener:Lmn;

    invoke-interface {v1, v0}, Lmn;->a(Lmo;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lmo$a;

    invoke-direct {v1}, Lmo$a;-><init>()V

    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    iput-object v2, v1, Lmo$a;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    invoke-virtual {v1}, Lmo$a;->a()Lmo;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_1
    const-string v1, "AdManager"

    const-string v2, "transformAsync error:%s for adPlaceholder:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lmj$1;->val$adPlacement:Lml;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
