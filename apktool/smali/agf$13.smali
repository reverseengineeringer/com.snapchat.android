.class final Lagf$13;
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
.field final synthetic a:Lagl;

.field final synthetic b:Lagf;


# direct methods
.method constructor <init>(Lagf;Lagl;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lagf$13;->b:Lagf;

    iput-object p2, p0, Lagf$13;->a:Lagl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lagf$13;->a:Lagl;

    iget-object v0, v0, Lagl;->d:Ljava/lang/String;

    .line 527
    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lagf$13;->a:Lagl;

    invoke-virtual {v2}, Lagl;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c001e

    invoke-static {v1, v2, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_0
    new-instance v1, Lagf$13$1;

    iget-object v2, p0, Lagf$13;->b:Lagf;

    iget-object v2, v2, Lagf;->J:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lagf$13$1;-><init>(Lagf$13;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lagf$13$1;->show()V

    .line 535
    return-void
.end method
