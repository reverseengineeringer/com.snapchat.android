.class final Laff$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Laff$10;->c:Laff;

    iput-object p2, p0, Laff$10;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Laff$10;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 461
    iget-object v0, p0, Laff$10;->c:Laff;

    iget-object v0, v0, Laff;->J:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Laff$10;->c:Laff;

    iget-object v0, v0, Laff;->J:Landroid/content/Context;

    iget-object v1, p0, Laff$10;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Laff$10;->b:Landroid/os/Message;

    iget-object v3, p0, Laff$10;->c:Laff;

    iget-object v3, v3, Laff;->H:Lafa;

    invoke-virtual {v3}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v3

    iget-object v4, p0, Laff$10;->c:Laff;

    iget-object v4, v4, Laff;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a()Z

    move-result v4

    iget-object v5, p0, Laff$10;->c:Laff;

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;ZLpp$a;)V

    .line 465
    return-void
.end method
