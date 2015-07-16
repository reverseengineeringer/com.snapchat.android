.class final Lcom/snapchat/android/scan/FirstAutoScanNotificationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/scan/FirstAutoScanNotificationView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/scan/FirstAutoScanNotificationView;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$2;->a:Lcom/snapchat/android/scan/FirstAutoScanNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->a()Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$2;->a:Lcom/snapchat/android/scan/FirstAutoScanNotificationView;

    invoke-virtual {v0}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->AUTO_LIBRARY_SCANNING_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbew;

    invoke-direct {v1}, Lbew;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
