.class final Laff$13;
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
.field final synthetic a:Lafl;

.field final synthetic b:Laff;


# direct methods
.method constructor <init>(Laff;Lafl;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Laff$13;->b:Laff;

    iput-object p2, p0, Laff$13;->a:Lafl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Laff$13;->a:Lafl;

    iget-object v0, v0, Lafl;->d:Ljava/lang/String;

    .line 502
    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laff$13;->a:Lafl;

    invoke-virtual {v2}, Lafl;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0c001e

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_0
    new-instance v1, Laff$13$1;

    iget-object v2, p0, Laff$13;->b:Laff;

    iget-object v2, v2, Laff;->J:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Laff$13$1;-><init>(Laff$13;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Laff$13$1;->show()V

    .line 510
    return-void
.end method
