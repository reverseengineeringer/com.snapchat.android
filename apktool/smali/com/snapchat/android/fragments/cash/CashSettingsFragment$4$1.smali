.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 127
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 4
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    if-eqz p2, :cond_1

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqv;

    .line 119
    invoke-virtual {v0}, Lqv;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0, v3}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    .line 125
    return-void
.end method

.method public final b(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 129
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 2
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v1, 0x7f0c014b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    .line 134
    return-void
.end method
