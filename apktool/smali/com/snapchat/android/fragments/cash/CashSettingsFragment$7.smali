.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    invoke-static {}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i()Lqv;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;Z)V

    iput-object v1, v0, Lqv;->mListener:Lqv$a;

    .line 242
    invoke-virtual {v0, v3}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_0
.end method
