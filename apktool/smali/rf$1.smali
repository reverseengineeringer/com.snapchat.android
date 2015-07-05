.class final Lrf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrf;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrf;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lrf$1;->this$0:Lrf;

    iput-object p2, p0, Lrf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 5
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 66
    const-string v0, "SQAccessTokenBlocker"

    const-string v1, "CASH-LOG: FAILED resolve SQAccessTokenBlocker status[%s] statusCode[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lrf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lrf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "GENERATE_SQUARE_ACCESS_TOKEN_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lrf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-static {v0, p1}, Lqg;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 76
    iget-object v0, p0, Lrf$1;->this$0:Lrf;

    invoke-static {v0}, Lrf;->a(Lrf;)V

    .line 77
    return-void

    .line 72
    :cond_1
    const-string v0, "GENERATE_SQUARE_ACCESS_TOKEN_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    const-string v0, "SQAccessTokenBlocker"

    const-string v1, "CASH-LOG: SUCCESS resolve SQAccessTokenBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    check-cast p1, Lql$a;

    .line 60
    iget-object v0, p0, Lrf$1;->this$0:Lrf;

    iget-object v0, v0, Lrf;->mCashAuthManager:Lxn;

    iget-object v1, p1, Lql$a;->accessToken:Lxq;

    invoke-virtual {v0, v1}, Lxn;->a(Lxq;)V

    .line 61
    iget-object v0, p0, Lrf$1;->this$0:Lrf;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lrf;->a(Ljava/util/List;Z)V

    .line 62
    return-void
.end method
