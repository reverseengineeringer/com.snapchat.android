.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 343
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/settings/WebFragment;

    const-string v3, "https://www.snapchat.com/licenses/android"

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v5, 0x7f0c024b

    invoke-virtual {v4, v5}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 345
    return-void
.end method
