.class public final Laqm;
.super Landroid/support/v7/widget/RecyclerView$j;
.source "SourceFile"


# instance fields
.field private final a:Lbaa;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbaa;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$j;-><init>()V

    .line 18
    iput-object p1, p0, Laqm;->a:Lbaa;

    .line 19
    iput-object p2, p0, Laqm;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 24
    if-nez p2, :cond_0

    .line 25
    iget-object v0, p0, Laqm;->a:Lbaa;

    iget-object v1, p0, Laqm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbaa;->a(Ljava/lang/String;Z)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Laqm;->a:Lbaa;

    iput-boolean v2, v0, Lbaa;->mDeferPause:Z

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
