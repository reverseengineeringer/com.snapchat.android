.class public final Laip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Laip;


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lakv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Laip;

    invoke-direct {v0}, Laip;-><init>()V

    sput-object v0, Laip;->c:Laip;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laip;->a:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static a()Laip;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Laip;->c:Laip;

    return-object v0
.end method


# virtual methods
.method public final b()Lakv;
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Laip;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Laip;->b:Lakv;

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
