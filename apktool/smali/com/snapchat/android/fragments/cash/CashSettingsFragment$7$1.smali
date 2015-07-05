.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;Z)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->a:Z

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
    .line 229
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 8
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 207
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->a:Z

    if-nez v0, :cond_1

    .line 209
    invoke-static {}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;

    invoke-direct {v3, v1, v0, v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;)V

    iput-object v3, v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;

    .line 212
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbdw;

    invoke-direct {v2, v0}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Lsu$b;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lsu$b;)Lsq;

    move-result-object v0

    invoke-virtual {v0}, Lsq;->f()V

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v6, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    const v2, 0x7f0c01c2

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v3, v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v7, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->a:Z

    if-nez v7, :cond_3

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1
.end method

.method public final b(Lqv;)V
    .locals 0
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 231
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 7
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

    const/4 v4, 0x0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c01c2

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    iget-object v3, v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v6, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;->a:Z

    if-nez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 240
    return-void
.end method
