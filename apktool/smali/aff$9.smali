.class final Laff$9;
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
    .line 432
    iput-object p1, p0, Laff$9;->b:Laff;

    iput-object p2, p0, Laff$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Laff$9;->b:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    invoke-virtual {v0}, Lafa;->c()Ljava/lang/String;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    iget-object v1, p0, Laff$9;->b:Laff;

    iget-object v1, v1, Laff;->H:Lafa;

    iget-boolean v1, v1, Lafa;->j:Z

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Laff$9;->b:Laff;

    iget-object v1, v1, Laff;->H:Lafa;

    invoke-virtual {v1}, Lafa;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Laff$9;->b:Laff;

    iget-object v2, v2, Laff;->H:Lafa;

    invoke-virtual {v2}, Lafa;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 439
    iget-object v0, p0, Laff$9;->b:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lafa;->j:Z

    .line 441
    :cond_0
    iget-object v0, p0, Laff$9;->b:Laff;

    iget-object v0, v0, Laff;->L:Lafa$c;

    iget-object v1, p0, Laff$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lafa$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 442
    iget-object v0, p0, Laff$9;->b:Laff;

    iget-object v0, v0, Laff;->H:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 443
    return-void
.end method
