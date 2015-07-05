.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$a;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$a;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    .line 535
    const v0, 0x7f0c022f

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Z)V

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$a;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    .line 542
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Z)V

    .line 547
    return-void
.end method
