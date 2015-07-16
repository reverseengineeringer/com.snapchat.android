.class public final Lxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lwy$b;

.field private final c:Lwy$c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lwy$b;Lwy$c;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lxb;->a:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lxb;->c:Lwy$c;

    .line 28
    iput-object p2, p0, Lxb;->b:Lwy$b;

    .line 29
    return-void
.end method

.method static synthetic a(Lxb;)Lwy$c;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lxb;->c:Lwy$c;

    return-object v0
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lxb;->a:Landroid/os/Handler;

    new-instance v1, Lxb$1;

    invoke-direct {v1, p0, p1}, Lxb$1;-><init>(Lxb;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
