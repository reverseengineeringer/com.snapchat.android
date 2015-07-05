.class final Lbva$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbva;->b(Ljava/lang/ref/WeakReference;Lbvb;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lbvb;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lbvb;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lbva$4;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lbva$4;->b:Lbvb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lbva$4;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbva$4;->b:Lbvb;

    invoke-static {v0, v1}, Lbva;->a(Ljava/lang/ref/WeakReference;Lbvb;)V

    .line 435
    invoke-static {}, Lbva;->a()Z

    .line 436
    return-void
.end method
