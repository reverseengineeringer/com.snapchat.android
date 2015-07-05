.class public final Laef$1;
.super Lavj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lavj;

.field final synthetic b:Laef;


# direct methods
.method public constructor <init>(Laef;Lavj;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Laef$1;->b:Laef;

    iput-object p2, p0, Laef$1;->a:Lavj;

    invoke-direct {p0}, Lavj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Laef$1;->a:Lavj;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Laef$1;->a:Lavj;

    invoke-virtual {v0, p1}, Lavj;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 109
    :cond_0
    return-void
.end method
