.class final Lcom/snapchat/android/util/AlertDialogUtils$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ZLpp$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$friend:Lcom/snapchat/android/model/Friend;

.field final synthetic val$friendActionCompleteCallback:Lpp$a;

.field final synthetic val$onFriendActionMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lpp$a;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friend:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$onFriendActionMessage:Landroid/os/Message;

    iput-object p4, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object p5, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friendActionCompleteCallback:Lpp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 433
    packed-switch p2, :pswitch_data_0

    .line 460
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friend:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$onFriendActionMessage:Landroid/os/Message;

    iget-object v3, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    goto :goto_0

    .line 440
    :pswitch_1
    new-instance v0, Lpp;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friend:Lcom/snapchat/android/model/Friend;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v0, v1, v2}, Lpp;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$onFriendActionMessage:Landroid/os/Message;

    iput-object v1, v0, Lpp;->mOnFriendActionMessage:Landroid/os/Message;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, v0, Lpp;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friendActionCompleteCallback:Lpp$a;

    iput-object v1, v0, Lpp;->mFriendActionCompleteCallback:Lpp$a;

    invoke-virtual {v0}, Lpp;->e()Lpp;

    move-result-object v0

    sget-object v1, Lic;->SETTING_GEAR:Lic;

    iput-object v1, v0, Lpp;->mActionMethod:Lic;

    invoke-virtual {v0}, Lpp;->f()V

    goto :goto_0

    .line 451
    :pswitch_2
    new-instance v0, Lpp;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friend:Lcom/snapchat/android/model/Friend;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v0, v1, v2}, Lpp;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$onFriendActionMessage:Landroid/os/Message;

    iput-object v1, v0, Lpp;->mOnFriendActionMessage:Landroid/os/Message;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, v0, Lpp;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->val$friendActionCompleteCallback:Lpp$a;

    iput-object v1, v0, Lpp;->mFriendActionCompleteCallback:Lpp$a;

    invoke-virtual {v0}, Lpp;->e()Lpp;

    move-result-object v0

    invoke-virtual {v0}, Lpp;->f()V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
