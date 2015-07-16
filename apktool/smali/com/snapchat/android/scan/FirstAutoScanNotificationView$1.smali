.class final Lcom/snapchat/android/scan/FirstAutoScanNotificationView$1;
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
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/scan/FirstAutoScanNotificationView$1;->a:Lcom/snapchat/android/scan/FirstAutoScanNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/scan/FirstAutoScanNotificationView;->a()Ljava/lang/String;

    .line 50
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcx;

    invoke-direct {v1}, Lbcx;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-static {}, Lagi;->a()Lagi;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;-><init>(Lcom/squareup/otto/Bus;Lagi;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
