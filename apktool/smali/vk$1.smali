.class final Lvk$1;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvk;->a(Lvs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lvs;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lvk;


# direct methods
.method constructor <init>(Lvk;Landroid/widget/TextView;Landroid/widget/TextView;Lvs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lvk$1;->e:Lvk;

    iput-object p2, p0, Lvk$1;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lvk$1;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lvk$1;->c:Lvs;

    iput-object p5, p0, Lvk$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    .line 127
    new-instance v0, Laqh;

    iget-object v1, p0, Lvk$1;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lvk$1;->b:Landroid/widget/TextView;

    const-wide/16 v4, 0xbb8

    invoke-direct {v0, v1, v2, v4, v5}, Laqh;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 129
    iget-object v1, p0, Lvk$1;->c:Lvs;

    iput-object v0, v1, Lvs;->o:Laqg;

    .line 130
    iget-object v1, p0, Lvk$1;->e:Lvk;

    iget-object v1, v1, Lvk;->a:Ljava/util/Map;

    iget-object v2, p0, Lvk$1;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    return-void
.end method
