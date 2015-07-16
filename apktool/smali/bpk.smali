.class abstract Lbpk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lbqe;

.field final b:Lbqh;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I

.field final g:I

.field final h:Landroid/graphics/drawable/Drawable;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Object;

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Lbqe;Ljava/lang/Object;Lbqh;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbqe;",
            "TT;",
            "Lbqh;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lbpk;->a:Lbqe;

    .line 52
    iput-object p3, p0, Lbpk;->b:Lbqh;

    .line 53
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbpk;->c:Ljava/lang/ref/WeakReference;

    .line 55
    iput p4, p0, Lbpk;->e:I

    .line 56
    iput p5, p0, Lbpk;->f:I

    .line 57
    iput-boolean p10, p0, Lbpk;->d:Z

    .line 58
    iput p6, p0, Lbpk;->g:I

    .line 59
    iput-object p7, p0, Lbpk;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p8, p0, Lbpk;->i:Ljava/lang/String;

    .line 61
    if-eqz p9, :cond_1

    :goto_1
    iput-object p9, p0, Lbpk;->j:Ljava/lang/Object;

    .line 62
    return-void

    .line 53
    :cond_0
    new-instance v0, Lbpk$a;

    iget-object v1, p1, Lbqe;->l:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lbpk$a;-><init>(Lbpk;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    :cond_1
    move-object p9, p0

    .line 61
    goto :goto_1
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lbqe$d;)V
.end method

.method b()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbpk;->l:Z

    .line 70
    return-void
.end method

.method c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lbpk;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbpk;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
