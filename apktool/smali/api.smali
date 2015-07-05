.class public final Lapi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Larv;

.field public final b:Lcom/snapchat/android/ui/SwipeViewState;


# direct methods
.method public constructor <init>(Larv;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lapi;->a:Larv;

    .line 16
    iput-object p2, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(IZ)I
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lapi;->a:Larv;

    invoke-interface {v0}, Larv;->b()I

    move-result v3

    .line 64
    if-lez v3, :cond_5

    .line 65
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    .line 66
    :goto_0
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/SwipeViewState;->m:Z

    if-eqz v2, :cond_4

    .line 68
    iget-object v1, p0, Lapi;->a:Larv;

    iget-object v2, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v2, v2, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    invoke-interface {v1, v2}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v1

    move v2, p1

    .line 71
    :cond_0
    :goto_1
    add-int/2addr v2, v3

    add-int/2addr v2, v0

    rem-int/2addr v2, v3

    .line 72
    iget-object v4, p0, Lapi;->a:Larv;

    invoke-interface {v4, v2}, Larv;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v4

    if-eq v4, v1, :cond_1

    iget-object v4, p0, Lapi;->a:Larv;

    invoke-interface {v4, v2}, Larv;->a(I)Larn;

    move-result-object v4

    invoke-virtual {v4}, Larn;->f()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-ne v2, p1, :cond_0

    .line 74
    :cond_2
    :goto_2
    return v2

    .line 65
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    move v2, p1

    goto :goto_1

    :cond_5
    move v2, p1

    goto :goto_2
.end method

.method public final a(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    iget-object v0, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    .line 84
    iget-object v0, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v1, v1, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    iput v1, v0, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    iget-object v0, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v0, v0, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    .line 88
    iget-object v3, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v3, v3, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    .line 89
    iget-object v4, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v5, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v5, v5, Lcom/snapchat/android/ui/SwipeViewState;->b:I

    iput v5, v4, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    .line 90
    iget-object v4, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v5, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v5, v5, Lcom/snapchat/android/ui/SwipeViewState;->d:I

    iput v5, v4, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    .line 91
    iget-object v4, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v5, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-boolean v5, v5, Lcom/snapchat/android/ui/SwipeViewState;->m:Z

    iput-boolean v5, v4, Lcom/snapchat/android/ui/SwipeViewState;->l:Z

    .line 92
    iget-object v4, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->a:I

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 93
    :goto_1
    iget-object v4, p0, Lapi;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget v4, v4, Lcom/snapchat/android/ui/SwipeViewState;->c:I

    if-eq v3, v4, :cond_4

    move v3, v1

    .line 94
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 92
    goto :goto_1

    :cond_4
    move v3, v2

    .line 93
    goto :goto_2
.end method
