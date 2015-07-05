.class public final Lbuq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Lbuo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbuo",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbuq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbuq;->a:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbuq;->b:Ljava/lang/Object;

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbuo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lbuq;->b:Ljava/lang/Object;

    iput-object v0, p0, Lbuq;->d:Ljava/lang/Object;

    .line 33
    sget-boolean v0, Lbuq;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lbuq;->c:Lbuo;

    .line 35
    return-void
.end method

.method public static a(Lbuo;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbuo",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Lbuq;

    invoke-direct {v0, p0}, Lbuq;-><init>(Lbuo;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lbuq;->d:Ljava/lang/Object;

    .line 42
    sget-object v1, Lbuq;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lbuq;->d:Ljava/lang/Object;

    .line 45
    sget-object v1, Lbuq;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lbuq;->c:Lbuo;

    invoke-interface {v0}, Lbuo;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbuq;->d:Ljava/lang/Object;

    .line 48
    :cond_0
    monitor-exit p0

    .line 50
    :cond_1
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
