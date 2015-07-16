.class final Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v1, Lpr;

    const-string v2, "updateSearchableByPhoneNumber"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lpr;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    sget-object v0, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lpr;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Z)V

    .line 96
    return-void

    .line 92
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
