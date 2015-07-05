.class final Lae$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$s;

.field public b:Landroid/support/v7/widget/RecyclerView$s;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lae$a;->a:Landroid/support/v7/widget/RecyclerView$s;

    .line 70
    iput-object p2, p0, Lae$a;->b:Landroid/support/v7/widget/RecyclerView$s;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;IIII)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lae$a;-><init>(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;)V

    .line 76
    iput p3, p0, Lae$a;->c:I

    .line 77
    iput p4, p0, Lae$a;->d:I

    .line 78
    iput p5, p0, Lae$a;->e:I

    .line 79
    iput p6, p0, Lae$a;->f:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;IIIIB)V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p6}, Lae$a;-><init>(Landroid/support/v7/widget/RecyclerView$s;Landroid/support/v7/widget/RecyclerView$s;IIII)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeInfo{oldHolder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae$a;->a:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae$a;->b:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lae$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
