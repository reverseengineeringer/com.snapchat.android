.class final Lbwb$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwb;->b(Ljava/lang/ref/WeakReference;Lbwc;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lbwc;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lbwc;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lbwb$4;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lbwb$4;->b:Lbwc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lbwb$4;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbwb$4;->b:Lbwc;

    invoke-static {v0, v1}, Lbwb;->a(Ljava/lang/ref/WeakReference;Lbwc;)V

    .line 435
    invoke-static {}, Lbwb;->a()Z

    .line 436
    return-void
.end method
