.class public final Laff$1;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawh;

.field final synthetic b:Laff;


# direct methods
.method public constructor <init>(Laff;Lawh;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Laff$1;->b:Laff;

    iput-object p2, p0, Laff$1;->a:Lawh;

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Laff$1;->a:Lawh;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Laff$1;->a:Lawh;

    invoke-virtual {v0, p1}, Lawh;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 109
    :cond_0
    return-void
.end method
