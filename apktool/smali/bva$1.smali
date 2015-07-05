.class final Lbva$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvb;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lbvb;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lbva$1;->a:Lbvb;

    iput-object p2, p0, Lbva$1;->b:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lbva$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lbva$1;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lbva;->a(Ljava/lang/ref/WeakReference;)V

    .line 388
    iget-object v0, p0, Lbva$1;->a:Lbvb;

    iget-boolean v1, p0, Lbva$1;->c:Z

    invoke-static {v0, v1}, Lbva;->a(Lbvb;Z)V

    .line 389
    return-void
.end method
