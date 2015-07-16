.class final Lbwb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lbwc;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Lbwc;Z)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lbwb$3;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lbwb$3;->b:Lbwc;

    iput-boolean p3, p0, Lbwb$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lbwb$3;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lbwb$3;->b:Lbwc;

    iget-boolean v2, p0, Lbwb$3;->c:Z

    invoke-static {v0, v1, v2}, Lbwb;->a(Ljava/lang/ref/WeakReference;Lbwc;Z)V

    .line 414
    return-void
.end method
