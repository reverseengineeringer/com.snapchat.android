.class final Lagf$9;
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
    .line 432
    iput-object p1, p0, Lagf$9;->b:Lagf;

    iput-object p2, p0, Lagf$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    invoke-virtual {v0}, Laga;->d()Ljava/lang/String;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_0

    iget-object v1, p0, Lagf$9;->b:Lagf;

    iget-object v1, v1, Lagf;->H:Laga;

    iget-boolean v1, v1, Laga;->k:Z

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lagf$9;->b:Lagf;

    iget-object v2, p0, Lagf$9;->b:Lagf;

    iget-object v2, v2, Lagf;->H:Laga;

    invoke-virtual {v2}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lagf$9;->b:Lagf;

    iget-object v3, v3, Lagf;->H:Laga;

    invoke-virtual {v3}, Laga;->c()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lagf;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 439
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laga;->k:Z

    .line 441
    :cond_0
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->L:Laga$c;

    iget-object v1, p0, Lagf$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laga$c;->b(Lcom/snapchat/android/model/Friend;)V

    .line 442
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->L:Laga$c;

    iget-object v1, p0, Lagf$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    iget-object v1, p0, Lagf$9;->b:Lagf;

    iget-object v1, v1, Lagf;->H:Laga;

    invoke-virtual {v1}, Laga;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Laga;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laga;->m:I

    .line 445
    :cond_1
    :goto_0
    iget-object v0, p0, Lagf$9;->b:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 446
    return-void

    .line 443
    :cond_2
    iget v1, v0, Laga;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laga;->l:I

    goto :goto_0
.end method
