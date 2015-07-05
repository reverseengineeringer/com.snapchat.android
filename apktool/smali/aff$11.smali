.class final Laff$11;
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
    .line 468
    iput-object p1, p0, Laff$11;->b:Laff;

    iput-object p2, p0, Laff$11;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 471
    iget-object v0, p0, Laff$11;->b:Laff;

    iget-object v0, v0, Laff;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Laff$11;->b:Laff;

    iget-object v0, v0, Laff;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcr;

    invoke-direct {v1, v2}, Lbcr;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 473
    iget-object v0, p0, Laff$11;->b:Laff;

    iget-object v0, v0, Laff;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbee;

    iget-object v2, p0, Laff$11;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbee;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 474
    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 475
    return-void
.end method
