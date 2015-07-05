.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;
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
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 261
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/WebFragment;

    const-string v3, "https://accounts.snapchat.com"

    iget-object v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v5, 0x7f0c023c

    invoke-virtual {v4, v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "/ca/snapcash"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 266
    return-void
.end method
