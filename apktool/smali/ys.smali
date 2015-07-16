.class public final Lys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lys$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation build Lchc;
    .end annotation
.end field

.field private final b:I
    .annotation build Lchc;
    .end annotation
.end field

.field private final c:I
    .annotation build Lchc;
    .end annotation
.end field

.field private d:Ljava/util/Random;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lys$a;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lys;->d:Ljava/util/Random;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lys;->e:Ljava/util/Set;

    .line 26
    iget v0, p1, Lys$a;->a:I

    iput v0, p0, Lys;->a:I

    .line 27
    iget v0, p1, Lys$a;->b:I

    iput v0, p0, Lys;->b:I

    .line 28
    iget v0, p1, Lys$a;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lys;->c:I

    .line 30
    iget v0, p0, Lys;->a:I

    iget v1, p0, Lys;->c:I

    div-int/2addr v0, v1

    iget v1, p0, Lys;->b:I

    iget v2, p0, Lys;->c:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lys;->f:I

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(Lys$a;B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lys;-><init>(Lys$a;)V

    return-void
.end method

.method private b(Landroid/graphics/Point;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 66
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lys;->f:I

    mul-int/2addr v0, v1

    iget v1, p0, Lys;->c:I

    div-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lys;->c:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 39
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lys;->d:Ljava/util/Random;

    iget v2, p0, Lys;->a:I

    iget v3, p0, Lys;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Lys;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lys;->d:Ljava/util/Random;

    iget v3, p0, Lys;->b:I

    iget v4, p0, Lys;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v3, p0, Lys;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    invoke-direct {p0, v0}, Lys;->b(Landroid/graphics/Point;)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lys;->e:Ljava/util/Set;

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v3, p0, Lys;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lys;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v2

    .line 51
    return-object v0

    .line 49
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/graphics/Point;)V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lys;->e:Ljava/util/Set;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lys;->e:Ljava/util/Set;

    invoke-direct {p0, p1}, Lys;->b(Landroid/graphics/Point;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
