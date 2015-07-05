.class public final Lazj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lazj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lazj;

    invoke-direct {v0}, Lazj;-><init>()V

    sput-object v0, Lazj;->sInstance:Lazj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lazj;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lazj;->sInstance:Lazj;

    return-object v0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
