.class final Lagf$12;
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

.field final synthetic b:Lagf;


# direct methods
.method constructor <init>(Lagf;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lagf$12;->b:Lagf;

    iput-object p2, p0, Lagf$12;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 495
    iget-object v0, p0, Lagf$12;->b:Lagf;

    iget-object v0, v0, Lagf;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdr;

    invoke-direct {v1, v13}, Lbdr;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lagf$12;->b:Lagf;

    iget-object v0, v0, Lagf;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdz;

    iget-object v2, p0, Lagf$12;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v8}, Lbdz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 498
    new-instance v0, Lkc;

    invoke-direct {v0}, Lkc;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 499
    sget-object v0, Lkf;->SNAP_BUTTON:Lkf;

    iget-object v1, p0, Lagf$12;->b:Lagf;

    iget-object v1, v1, Lagf;->H:Laga;

    invoke-virtual {v1}, Laga;->getCount()I

    move-result v1

    iget-object v2, p0, Lagf$12;->b:Lagf;

    iget-object v2, v2, Lagf;->H:Laga;

    invoke-virtual {v2, v8}, Laga;->a(Z)I

    move-result v2

    iget-object v3, p0, Lagf$12;->b:Lagf;

    iget-object v3, v3, Lagf;->H:Laga;

    sget-object v4, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v3, v4, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v3

    iget-object v4, p0, Lagf$12;->b:Lagf;

    iget-object v4, v4, Lagf;->H:Laga;

    sget-object v5, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v4, v5, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v4

    iget-object v5, p0, Lagf$12;->b:Lagf;

    iget-object v5, v5, Lagf;->H:Laga;

    sget-object v6, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v5, v6, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v5

    iget-object v6, p0, Lagf$12;->b:Lagf;

    iget-object v6, v6, Lagf;->H:Laga;

    sget-object v7, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6, v7, v8}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v6

    iget-object v7, p0, Lagf$12;->b:Lagf;

    iget-object v7, v7, Lagf;->H:Laga;

    invoke-virtual {v7, v13}, Laga;->a(Z)I

    move-result v7

    iget-object v8, p0, Lagf$12;->b:Lagf;

    iget-object v8, v8, Lagf;->H:Laga;

    sget-object v9, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v8, v9, v13}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v8

    iget-object v9, p0, Lagf$12;->b:Lagf;

    iget-object v9, v9, Lagf;->H:Laga;

    sget-object v10, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v9, v10, v13}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v9

    iget-object v10, p0, Lagf$12;->b:Lagf;

    iget-object v10, v10, Lagf;->H:Laga;

    sget-object v11, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v10, v11, v13}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v10

    iget-object v11, p0, Lagf$12;->b:Lagf;

    iget-object v11, v11, Lagf;->H:Laga;

    sget-object v12, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v11, v12, v13}, Laga;->a(Lcom/snapchat/android/model/FriendAction;Z)I

    move-result v11

    invoke-static/range {v0 .. v11}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;IIIIIIIIIII)V

    .line 510
    return-void
.end method
