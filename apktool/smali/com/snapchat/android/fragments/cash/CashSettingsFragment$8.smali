.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lqx;

    const-string v1, "SQUARE"

    invoke-virtual {v0, v1}, Lqx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lqx;

    const-string v1, "SQUARE"

    invoke-virtual {v0, v1}, Lqx;->a(Ljava/lang/String;)Lre;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v2, 0x7f0c023d

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lre;->a(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lqx;->a()V

    goto :goto_0
.end method
