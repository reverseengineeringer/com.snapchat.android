.class final Laff$12;
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

.field final synthetic b:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Laff$12;->b:Laff;

    iput-object p2, p0, Laff$12;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 481
    iget-object v0, p0, Laff$12;->b:Laff;

    iget-object v0, v0, Laff;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcr;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbcr;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Laff$12;->b:Laff;

    iget-object v0, v0, Laff;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcz;

    iget-object v2, p0, Laff$12;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lbcz;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 484
    new-instance v0, Ljo;

    invoke-direct {v0}, Ljo;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 485
    return-void
.end method
