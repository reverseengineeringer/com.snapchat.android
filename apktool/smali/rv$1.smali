.class final Lrv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrv;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrv;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lrv$1;->this$0:Lrv;

    iput-object p2, p0, Lrv$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 3
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    iget-object v0, p0, Lrv$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lrv$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

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
    iget-object v0, p0, Lrv$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-static {v0, p1}, Lqw;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 76
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    invoke-static {v0}, Lrv;->a(Lrv;)V

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
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 58
    check-cast p1, Lrb$a;

    .line 60
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    iget-object v0, v0, Lrv;->mCashAuthManager:Lyj;

    iget-object v1, p1, Lrb$a;->accessToken:Lym;

    invoke-virtual {v0, v1}, Lyj;->a(Lym;)V

    .line 61
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lrv;->a(Ljava/util/List;Z)V

    .line 62
    return-void
.end method
