.class public final Lwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lwc$b;

.field private final c:Lwc$c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lwc$b;Lwc$c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lwf;->a:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lwf;->c:Lwc$c;

    .line 28
    iput-object p2, p0, Lwf;->b:Lwc$b;

    .line 29
    return-void
.end method

.method static synthetic a(Lwf;)Lwc$c;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lwf;->c:Lwc$c;

    return-object v0
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lwf;->a:Landroid/os/Handler;

    new-instance v1, Lwf$1;

    invoke-direct {v1, p0, p1}, Lwf$1;-><init>(Lwf;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
