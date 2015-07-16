.class public final Lawp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawp$a;
    }
.end annotation


# instance fields
.field private final mBitmapPool:Lawo;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mTaskFactory:Lawp$a$a;


# direct methods
.method private constructor <init>(Lawp$a$a;Lawo;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lawp;->mTaskFactory:Lawp$a$a;

    .line 33
    iput-object p2, p0, Lawp;->mBitmapPool:Lawo;

    .line 34
    iput-object p3, p0, Lawp;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lawp$a$a;

    invoke-direct {v0}, Lawp$a$a;-><init>()V

    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lawp;-><init>(Lawp$a$a;Lawo;Ljava/util/concurrent/ExecutorService;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lawp;->mBitmapPool:Lawo;

    new-instance v1, Lawp$a;

    invoke-direct {v1, v0, p1, p2, p3}, Lawp$a;-><init>(Lawo;IILandroid/graphics/Bitmap$Config;)V

    .line 45
    iget-object v0, p0, Lawp;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lawp$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
