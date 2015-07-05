.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$7;
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
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->a(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Lajx;

    invoke-static {}, Lajx;->bq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsEnabledFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/twofa/TwoFactorSettingsDisabledFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
