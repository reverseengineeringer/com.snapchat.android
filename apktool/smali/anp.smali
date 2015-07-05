.class public final Lanp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanp$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ExecutorService;

.field b:Lanm;

.field private final c:Lavp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lavp;

    invoke-direct {v1, p1}, Lavp;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lanp;-><init>(Ljava/util/concurrent/ExecutorService;Lavp;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lavp;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lanp;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object p2, p0, Lanp;->c:Lavp;

    .line 30
    return-void
.end method
