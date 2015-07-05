.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 391
    return-void
.end method
