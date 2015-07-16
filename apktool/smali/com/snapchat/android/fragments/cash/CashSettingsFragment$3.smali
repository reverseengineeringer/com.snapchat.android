.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 466
    invoke-static {}, Lakr;->aq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 473
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 475
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    goto :goto_0
.end method
