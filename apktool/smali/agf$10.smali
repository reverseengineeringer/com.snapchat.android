.class final Lagf$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lagf;


# direct methods
.method constructor <init>(Lagf;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lagf$10;->c:Lagf;

    iput-object p2, p0, Lagf$10;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lagf$10;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 464
    iget-object v0, p0, Lagf$10;->c:Lagf;

    iget-object v0, v0, Lagf;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lagf$10;->c:Lagf;

    iget-object v0, v0, Lagf;->J:Landroid/content/Context;

    iget-object v1, p0, Lagf$10;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lagf$10;->b:Landroid/os/Message;

    iget-object v3, p0, Lagf$10;->c:Lagf;

    iget-object v3, v3, Lagf;->H:Laga;

    invoke-virtual {v3}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v3

    iget-object v4, p0, Lagf$10;->c:Lagf;

    iget-object v4, v4, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a()Z

    move-result v4

    iget-object v5, p0, Lagf$10;->c:Lagf;

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ZLqg$a;)V

    .line 468
    return-void
.end method
