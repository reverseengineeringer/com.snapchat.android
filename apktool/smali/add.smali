.class public final Ladd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lakn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-direct {p0, v0}, Ladd;-><init>(Lakn;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lakn;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ladd;->a:Lakn;

    .line 39
    return-void
.end method
