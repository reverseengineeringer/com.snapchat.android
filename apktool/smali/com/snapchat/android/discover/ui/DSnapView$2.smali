.class public final Lcom/snapchat/android/discover/ui/DSnapView$2;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Laey;

.field final synthetic d:Z

.field final synthetic e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field final synthetic f:J

.field final synthetic g:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V
    .locals 1

    .prologue
    .line 389
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->g:Lcom/snapchat/android/discover/ui/DSnapView;

    iput p2, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->a:F

    iput p3, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:F

    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->c:Laey;

    iput-boolean p5, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->d:Z

    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iput-wide p7, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->f:J

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .prologue
    .line 392
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->g:Lcom/snapchat/android/discover/ui/DSnapView;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->a:F

    iget v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:F

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->c:Laey;

    iget-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->d:Z

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->f:J

    invoke-static/range {v0 .. v7}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/ui/DSnapView;FFLaey;ZLcom/snapchat/android/discover/model/DSnapPanel$MediaType;J)V

    .line 393
    return-void
.end method
