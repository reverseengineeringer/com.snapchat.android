.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/CompoundButton;

.field final synthetic c:Landroid/widget/ProgressBar;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLandroid/widget/CompoundButton;Landroid/widget/ProgressBar;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->f:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->a:Z

    iput-object p3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->b:Landroid/widget/CompoundButton;

    iput-object p4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->c:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 447
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->a:Z

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->b:Landroid/widget/CompoundButton;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->b:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->b:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 457
    :cond_1
    return-void
.end method
