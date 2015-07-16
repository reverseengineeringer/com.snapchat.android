.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic b:Landroid/widget/CompoundButton;

.field final synthetic c:Z

.field final synthetic d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;)V
    .locals 1

    .prologue
    .line 359
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iput-object p3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->b:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 367
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->c:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 369
    return-void

    .line 367
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 362
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iget-boolean v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Ltk$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/String;Ltk$b;)Ltg;

    move-result-object v0

    invoke-virtual {v0}, Ltg;->execute()V

    .line 364
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 372
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;->c:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 374
    return-void

    .line 372
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
