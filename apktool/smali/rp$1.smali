.class final Lrp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrp;

.field final synthetic val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrp;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lrp$1;->this$0:Lrp;

    iput-object p2, p0, Lrp$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, p0, Lrp$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lrp$1;->this$0:Lrp;

    invoke-static {v0}, Lrp;->b(Lrp;)V

    .line 47
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 38
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lrp$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lrp$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V

    .line 41
    iget-object v0, p0, Lrp$1;->this$0:Lrp;

    invoke-static {v0}, Lrp;->a(Lrp;)V

    .line 42
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lrp$1;->this$0:Lrp;

    invoke-static {v0}, Lrp;->c(Lrp;)V

    .line 52
    return-void
.end method
