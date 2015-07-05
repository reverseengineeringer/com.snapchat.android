.class public final Lbgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lbgu;->a:Ljava/lang/Runnable;

    .line 12
    iput p2, p0, Lbgu;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lbgu;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 18
    iget-object v0, p0, Lbgu;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void
.end method
