.class public Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lbus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Ljava/util/Set;

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundColor(I)V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->c:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 117
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 120
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;-><init>(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$a;

    .line 55
    invoke-interface {v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$a;->a()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundColor(I)V

    .line 58
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04008a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    .line 78
    :cond_0
    return-void
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a()V

    .line 63
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    const v0, 0x7f020294

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    .line 68
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a()V

    .line 73
    return-void
.end method
