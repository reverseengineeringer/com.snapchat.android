.class public final Lank;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

.field public final b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v1, v3, [Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iput-object v1, p0, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    .line 20
    new-array v1, v3, [Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iput-object v1, p0, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    .line 22
    iput v0, p0, Lank;->c:I

    .line 23
    iput v0, p0, Lank;->d:I

    .line 26
    :goto_0
    if-ge v0, v3, :cond_0

    .line 27
    iget-object v1, p0, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    new-instance v2, Lano;

    invoke-direct {v2, p1}, Lano;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 28
    iget-object v1, p0, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    new-instance v2, Lanl;

    invoke-direct {v2, p1}, Lanl;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lank;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a(Landroid/view/ViewGroup;)V

    .line 54
    iget-object v1, p0, Lank;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a(Landroid/view/ViewGroup;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
