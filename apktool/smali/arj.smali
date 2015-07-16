.class public final Larj;
.super Landroid/support/v7/widget/RecyclerView$j;
.source "SourceFile"


# instance fields
.field private final a:Lbbb;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbbb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$j;-><init>()V

    .line 19
    iput-object p1, p0, Larj;->a:Lbbb;

    .line 20
    iput-object p2, p0, Larj;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 25
    if-nez p2, :cond_0

    .line 26
    iget-object v0, p0, Larj;->a:Lbbb;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Larj;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "VERTICAL"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lbbb;->b([Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Larj;->a:Lbbb;

    iput-boolean v4, v0, Lbbb;->mDeferPause:Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
