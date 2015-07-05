.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$22$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$22;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$22;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Z)V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.snapchat.com/beta"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$22;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
