.class public final Lbai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lbai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lbai;

    invoke-direct {v0}, Lbai;-><init>()V

    sput-object v0, Lbai;->sInstance:Lbai;

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

.method public static a()Lbai;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lbai;->sInstance:Lbai;

    return-object v0
.end method
