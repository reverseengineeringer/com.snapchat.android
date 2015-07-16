.class public final Lxx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lxx;

    invoke-direct {v0}, Lxx;-><init>()V

    sput-object v0, Lxx;->a:Lxx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Lavc;)Lxw;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lxw;

    invoke-direct {v0, p0}, Lxw;-><init>(Lavc;)V

    return-object v0
.end method

.method public static a()Lxx;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lxx;->a:Lxx;

    return-object v0
.end method
