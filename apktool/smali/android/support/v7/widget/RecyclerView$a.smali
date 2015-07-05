.class public abstract Landroid/support/v7/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$s;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/RecyclerView$b;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4069
    new-instance v0, Landroid/support/v7/widget/RecyclerView$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    .line 4070
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 4156
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 4271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    .line 4272
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 4184
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1

    .prologue
    .line 4285
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    .line 4286
    return-void
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 4134
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$s;->b:I

    .line 4135
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_0

    .line 4136
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$s;->d:J

    .line 4138
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$s;I)V

    .line 4139
    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$s;->a(II)V

    .line 4141
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 4353
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 4354
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 4438
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->b(I)V

    .line 4439
    return-void
.end method
