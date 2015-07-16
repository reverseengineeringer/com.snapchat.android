.class final Lxb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lxb;


# direct methods
.method constructor <init>(Lxb;Z)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lxb$1;->b:Lxb;

    iput-boolean p2, p0, Lxb$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lxb$1;->b:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)Lwy$c;

    move-result-object v0

    invoke-interface {v0}, Lwy$c;->a()V

    .line 37
    return-void
.end method
