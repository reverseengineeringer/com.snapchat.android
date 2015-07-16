.class final Ltd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltd;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltd;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Ltd$1;->this$0:Ltd;

    iput-object p2, p0, Ltd$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrl;)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 121
    return-void
.end method

.method public final a(Lrl;Ljava/util/List;Z)V
    .locals 4
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    iget-object v1, p0, Ltd$1;->val$title:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;-><init>(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lbgr;->a()Lbgr;

    invoke-static {}, Lbgr;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "cash/history"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 115
    const-string v2, "/"

    invoke-static {v1, v2}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public final b(Lrl;)V
    .locals 0
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 125
    return-void
.end method

.method public final b(Lrl;Ljava/util/List;Z)V
    .locals 4
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c014b

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
