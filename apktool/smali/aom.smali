.class public final Laom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laom$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ExecutorService;

.field b:Laoj;

.field private final c:Lawn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lawn;

    invoke-direct {v1, p1}, Lawn;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Laom;-><init>(Ljava/util/concurrent/ExecutorService;Lawn;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lawn;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Laom;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object p2, p0, Laom;->c:Lawn;

    .line 30
    return-void
.end method
