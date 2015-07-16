.class final Lcom/snapchat/android/util/AlertDialogUtils$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ZLqg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$friend:Lcom/snapchat/android/model/Friend;

.field final synthetic val$onFriendActionMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$friend:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$onFriendActionMessage:Landroid/os/Message;

    iput-object p4, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 514
    packed-switch p2, :pswitch_data_0

    .line 523
    :goto_0
    return-void

    .line 516
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$friend:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$onFriendActionMessage:Landroid/os/Message;

    iget-object v3, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$analyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    goto :goto_0

    .line 519
    :pswitch_1
    new-instance v0, Lagh;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$14;->val$friend:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lil;->SETTING_GEAR:Lil;

    invoke-direct {v0, v1, v2, v3}, Lagh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V

    invoke-virtual {v0}, Lagh;->a()V

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
