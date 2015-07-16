.class final Lbnh$2;
.super Lbni;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnh;->d()Lcaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lbnh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const-class v0, Lbnh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbnh$2;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lbnh;Lcbj;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lbnh$2;->b:Lbnh;

    invoke-direct {p0, p2}, Lbni;-><init>(Lcbj;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lbnh$2;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnh$2;->b:Lbnh;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lbnh$2;->b:Lbnh;

    invoke-static {v0}, Lbnh;->g(Lbnh;)Z

    .line 307
    return-void
.end method
