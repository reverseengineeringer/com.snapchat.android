.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$22$3;
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
    .line 265
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$3;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Z)V

    .line 269
    return-void
.end method
